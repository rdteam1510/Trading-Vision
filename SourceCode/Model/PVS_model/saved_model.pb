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
dense_166/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_166/kernel
u
$dense_166/kernel/Read/ReadVariableOpReadVariableOpdense_166/kernel*
_output_shapes

:
*
dtype0
t
dense_166/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_166/bias
m
"dense_166/bias/Read/ReadVariableOpReadVariableOpdense_166/bias*
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
lstm_498/lstm_cell_498/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_498/lstm_cell_498/kernel
?
1lstm_498/lstm_cell_498/kernel/Read/ReadVariableOpReadVariableOplstm_498/lstm_cell_498/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_498/lstm_cell_498/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_498/lstm_cell_498/recurrent_kernel
?
;lstm_498/lstm_cell_498/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_498/lstm_cell_498/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_498/lstm_cell_498/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_498/lstm_cell_498/bias
?
/lstm_498/lstm_cell_498/bias/Read/ReadVariableOpReadVariableOplstm_498/lstm_cell_498/bias*
_output_shapes	
:?*
dtype0
?
lstm_499/lstm_cell_499/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_499/lstm_cell_499/kernel
?
1lstm_499/lstm_cell_499/kernel/Read/ReadVariableOpReadVariableOplstm_499/lstm_cell_499/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_499/lstm_cell_499/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_499/lstm_cell_499/recurrent_kernel
?
;lstm_499/lstm_cell_499/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_499/lstm_cell_499/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_499/lstm_cell_499/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_499/lstm_cell_499/bias
?
/lstm_499/lstm_cell_499/bias/Read/ReadVariableOpReadVariableOplstm_499/lstm_cell_499/bias*
_output_shapes	
:?*
dtype0
?
lstm_500/lstm_cell_500/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_500/lstm_cell_500/kernel
?
1lstm_500/lstm_cell_500/kernel/Read/ReadVariableOpReadVariableOplstm_500/lstm_cell_500/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_500/lstm_cell_500/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_500/lstm_cell_500/recurrent_kernel
?
;lstm_500/lstm_cell_500/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_500/lstm_cell_500/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_500/lstm_cell_500/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_500/lstm_cell_500/bias
?
/lstm_500/lstm_cell_500/bias/Read/ReadVariableOpReadVariableOplstm_500/lstm_cell_500/bias*
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
Adam/dense_166/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_166/kernel/m
?
+Adam/dense_166/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_166/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_166/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_166/bias/m
{
)Adam/dense_166/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_166/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_498/lstm_cell_498/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_498/lstm_cell_498/kernel/m
?
8Adam/lstm_498/lstm_cell_498/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_498/lstm_cell_498/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_498/lstm_cell_498/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_498/lstm_cell_498/recurrent_kernel/m
?
BAdam/lstm_498/lstm_cell_498/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_498/lstm_cell_498/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_498/lstm_cell_498/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_498/lstm_cell_498/bias/m
?
6Adam/lstm_498/lstm_cell_498/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_498/lstm_cell_498/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_499/lstm_cell_499/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_499/lstm_cell_499/kernel/m
?
8Adam/lstm_499/lstm_cell_499/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_499/lstm_cell_499/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_499/lstm_cell_499/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_499/lstm_cell_499/recurrent_kernel/m
?
BAdam/lstm_499/lstm_cell_499/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_499/lstm_cell_499/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_499/lstm_cell_499/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_499/lstm_cell_499/bias/m
?
6Adam/lstm_499/lstm_cell_499/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_499/lstm_cell_499/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_500/lstm_cell_500/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_500/lstm_cell_500/kernel/m
?
8Adam/lstm_500/lstm_cell_500/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_500/lstm_cell_500/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_500/lstm_cell_500/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_500/lstm_cell_500/recurrent_kernel/m
?
BAdam/lstm_500/lstm_cell_500/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_500/lstm_cell_500/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_500/lstm_cell_500/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_500/lstm_cell_500/bias/m
?
6Adam/lstm_500/lstm_cell_500/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_500/lstm_cell_500/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_166/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_166/kernel/v
?
+Adam/dense_166/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_166/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_166/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_166/bias/v
{
)Adam/dense_166/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_166/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_498/lstm_cell_498/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_498/lstm_cell_498/kernel/v
?
8Adam/lstm_498/lstm_cell_498/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_498/lstm_cell_498/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_498/lstm_cell_498/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_498/lstm_cell_498/recurrent_kernel/v
?
BAdam/lstm_498/lstm_cell_498/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_498/lstm_cell_498/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_498/lstm_cell_498/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_498/lstm_cell_498/bias/v
?
6Adam/lstm_498/lstm_cell_498/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_498/lstm_cell_498/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_499/lstm_cell_499/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_499/lstm_cell_499/kernel/v
?
8Adam/lstm_499/lstm_cell_499/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_499/lstm_cell_499/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_499/lstm_cell_499/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_499/lstm_cell_499/recurrent_kernel/v
?
BAdam/lstm_499/lstm_cell_499/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_499/lstm_cell_499/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_499/lstm_cell_499/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_499/lstm_cell_499/bias/v
?
6Adam/lstm_499/lstm_cell_499/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_499/lstm_cell_499/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_500/lstm_cell_500/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_500/lstm_cell_500/kernel/v
?
8Adam/lstm_500/lstm_cell_500/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_500/lstm_cell_500/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_500/lstm_cell_500/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_500/lstm_cell_500/recurrent_kernel/v
?
BAdam/lstm_500/lstm_cell_500/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_500/lstm_cell_500/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_500/lstm_cell_500/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_500/lstm_cell_500/bias/v
?
6Adam/lstm_500/lstm_cell_500/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_500/lstm_cell_500/bias/v*
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
VARIABLE_VALUEdense_166/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_166/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_498/lstm_cell_498/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_498/lstm_cell_498/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_498/lstm_cell_498/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_499/lstm_cell_499/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_499/lstm_cell_499/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_499/lstm_cell_499/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_500/lstm_cell_500/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_500/lstm_cell_500/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_500/lstm_cell_500/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_166/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_166/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_498/lstm_cell_498/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_498/lstm_cell_498/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_498/lstm_cell_498/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_499/lstm_cell_499/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_499/lstm_cell_499/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_499/lstm_cell_499/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_500/lstm_cell_500/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_500/lstm_cell_500/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_500/lstm_cell_500/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_166/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_166/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_498/lstm_cell_498/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_498/lstm_cell_498/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_498/lstm_cell_498/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_499/lstm_cell_499/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_499/lstm_cell_499/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_499/lstm_cell_499/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_500/lstm_cell_500/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_500/lstm_cell_500/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_500/lstm_cell_500/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_498_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_498_inputlstm_498/lstm_cell_498/kernel'lstm_498/lstm_cell_498/recurrent_kernellstm_498/lstm_cell_498/biaslstm_499/lstm_cell_499/kernel'lstm_499/lstm_cell_499/recurrent_kernellstm_499/lstm_cell_499/biaslstm_500/lstm_cell_500/kernel'lstm_500/lstm_cell_500/recurrent_kernellstm_500/lstm_cell_500/biasdense_166/kerneldense_166/bias*
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
%__inference_signature_wrapper_2589691
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_166/kernel/Read/ReadVariableOp"dense_166/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_498/lstm_cell_498/kernel/Read/ReadVariableOp;lstm_498/lstm_cell_498/recurrent_kernel/Read/ReadVariableOp/lstm_498/lstm_cell_498/bias/Read/ReadVariableOp1lstm_499/lstm_cell_499/kernel/Read/ReadVariableOp;lstm_499/lstm_cell_499/recurrent_kernel/Read/ReadVariableOp/lstm_499/lstm_cell_499/bias/Read/ReadVariableOp1lstm_500/lstm_cell_500/kernel/Read/ReadVariableOp;lstm_500/lstm_cell_500/recurrent_kernel/Read/ReadVariableOp/lstm_500/lstm_cell_500/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_166/kernel/m/Read/ReadVariableOp)Adam/dense_166/bias/m/Read/ReadVariableOp8Adam/lstm_498/lstm_cell_498/kernel/m/Read/ReadVariableOpBAdam/lstm_498/lstm_cell_498/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_498/lstm_cell_498/bias/m/Read/ReadVariableOp8Adam/lstm_499/lstm_cell_499/kernel/m/Read/ReadVariableOpBAdam/lstm_499/lstm_cell_499/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_499/lstm_cell_499/bias/m/Read/ReadVariableOp8Adam/lstm_500/lstm_cell_500/kernel/m/Read/ReadVariableOpBAdam/lstm_500/lstm_cell_500/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_500/lstm_cell_500/bias/m/Read/ReadVariableOp+Adam/dense_166/kernel/v/Read/ReadVariableOp)Adam/dense_166/bias/v/Read/ReadVariableOp8Adam/lstm_498/lstm_cell_498/kernel/v/Read/ReadVariableOpBAdam/lstm_498/lstm_cell_498/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_498/lstm_cell_498/bias/v/Read/ReadVariableOp8Adam/lstm_499/lstm_cell_499/kernel/v/Read/ReadVariableOpBAdam/lstm_499/lstm_cell_499/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_499/lstm_cell_499/bias/v/Read/ReadVariableOp8Adam/lstm_500/lstm_cell_500/kernel/v/Read/ReadVariableOpBAdam/lstm_500/lstm_cell_500/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_500/lstm_cell_500/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2592903
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_166/kerneldense_166/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_498/lstm_cell_498/kernel'lstm_498/lstm_cell_498/recurrent_kernellstm_498/lstm_cell_498/biaslstm_499/lstm_cell_499/kernel'lstm_499/lstm_cell_499/recurrent_kernellstm_499/lstm_cell_499/biaslstm_500/lstm_cell_500/kernel'lstm_500/lstm_cell_500/recurrent_kernellstm_500/lstm_cell_500/biastotalcountAdam/dense_166/kernel/mAdam/dense_166/bias/m$Adam/lstm_498/lstm_cell_498/kernel/m.Adam/lstm_498/lstm_cell_498/recurrent_kernel/m"Adam/lstm_498/lstm_cell_498/bias/m$Adam/lstm_499/lstm_cell_499/kernel/m.Adam/lstm_499/lstm_cell_499/recurrent_kernel/m"Adam/lstm_499/lstm_cell_499/bias/m$Adam/lstm_500/lstm_cell_500/kernel/m.Adam/lstm_500/lstm_cell_500/recurrent_kernel/m"Adam/lstm_500/lstm_cell_500/bias/mAdam/dense_166/kernel/vAdam/dense_166/bias/v$Adam/lstm_498/lstm_cell_498/kernel/v.Adam/lstm_498/lstm_cell_498/recurrent_kernel/v"Adam/lstm_498/lstm_cell_498/bias/v$Adam/lstm_499/lstm_cell_499/kernel/v.Adam/lstm_499/lstm_cell_499/recurrent_kernel/v"Adam/lstm_499/lstm_cell_499/bias/v$Adam/lstm_500/lstm_cell_500/kernel/v.Adam/lstm_500/lstm_cell_500/recurrent_kernel/v"Adam/lstm_500/lstm_cell_500/bias/v*4
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
#__inference__traced_restore_2593033??+
?K
?
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591545
inputs_0?
,lstm_cell_427_matmul_readvariableop_resource:	d?A
.lstm_cell_427_matmul_1_readvariableop_resource:	2?<
-lstm_cell_427_biasadd_readvariableop_resource:	?
identity??$lstm_cell_427/BiasAdd/ReadVariableOp?#lstm_cell_427/MatMul/ReadVariableOp?%lstm_cell_427/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_427/MatMul/ReadVariableOpReadVariableOp,lstm_cell_427_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_427/MatMulMatMulstrided_slice_2:output:0+lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_427_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_427/MatMul_1MatMulzeros:output:0-lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_427/addAddV2lstm_cell_427/MatMul:product:0 lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_427/BiasAddBiasAddlstm_cell_427/add:z:0,lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_427/splitSplit&lstm_cell_427/split/split_dim:output:0lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_427/SigmoidSigmoidlstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_1Sigmoidlstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_427/mulMullstm_cell_427/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_427/ReluRelulstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_1Mullstm_cell_427/Sigmoid:y:0 lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_427/add_1AddV2lstm_cell_427/mul:z:0lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_2Sigmoidlstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_427/Relu_1Relulstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_2Mullstm_cell_427/Sigmoid_2:y:0"lstm_cell_427/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_427_matmul_readvariableop_resource.lstm_cell_427_matmul_1_readvariableop_resource-lstm_cell_427_biasadd_readvariableop_resource*
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
while_body_2591461*
condR
while_cond_2591460*K
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
NoOpNoOp%^lstm_cell_427/BiasAdd/ReadVariableOp$^lstm_cell_427/MatMul/ReadVariableOp&^lstm_cell_427/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_427/BiasAdd/ReadVariableOp$lstm_cell_427/BiasAdd/ReadVariableOp2J
#lstm_cell_427/MatMul/ReadVariableOp#lstm_cell_427/MatMul/ReadVariableOp2N
%lstm_cell_427/MatMul_1/ReadVariableOp%lstm_cell_427/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_498_layer_call_and_return_conditional_losses_2587772

inputs(
lstm_cell_426_2587690:	?(
lstm_cell_426_2587692:	d?$
lstm_cell_426_2587694:	?
identity??%lstm_cell_426/StatefulPartitionedCall?while;
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
%lstm_cell_426/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_426_2587690lstm_cell_426_2587692lstm_cell_426_2587694*
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
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2587644n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_426_2587690lstm_cell_426_2587692lstm_cell_426_2587694*
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
while_body_2587703*
condR
while_cond_2587702*K
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
NoOpNoOp&^lstm_cell_426/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_426/StatefulPartitionedCall%lstm_cell_426/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_2588212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_428_2588236_0:2(/
while_lstm_cell_428_2588238_0:
(+
while_lstm_cell_428_2588240_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_428_2588236:2(-
while_lstm_cell_428_2588238:
()
while_lstm_cell_428_2588240:(??+while/lstm_cell_428/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_428/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_428_2588236_0while_lstm_cell_428_2588238_0while_lstm_cell_428_2588240_0*
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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2588198?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_428/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_428/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_428/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_428/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_428_2588236while_lstm_cell_428_2588236_0"<
while_lstm_cell_428_2588238while_lstm_cell_428_2588238_0"<
while_lstm_cell_428_2588240while_lstm_cell_428_2588240_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_428/StatefulPartitionedCall+while/lstm_cell_428/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2587581

inputs(
lstm_cell_426_2587499:	?(
lstm_cell_426_2587501:	d?$
lstm_cell_426_2587503:	?
identity??%lstm_cell_426/StatefulPartitionedCall?while;
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
%lstm_cell_426/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_426_2587499lstm_cell_426_2587501lstm_cell_426_2587503*
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
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2587498n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_426_2587499lstm_cell_426_2587501lstm_cell_426_2587503*
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
while_body_2587512*
condR
while_cond_2587511*K
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
NoOpNoOp&^lstm_cell_426/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_426/StatefulPartitionedCall%lstm_cell_426/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_166_layer_call_and_return_conditional_losses_2590599

inputsH
5lstm_498_lstm_cell_426_matmul_readvariableop_resource:	?J
7lstm_498_lstm_cell_426_matmul_1_readvariableop_resource:	d?E
6lstm_498_lstm_cell_426_biasadd_readvariableop_resource:	?H
5lstm_499_lstm_cell_427_matmul_readvariableop_resource:	d?J
7lstm_499_lstm_cell_427_matmul_1_readvariableop_resource:	2?E
6lstm_499_lstm_cell_427_biasadd_readvariableop_resource:	?G
5lstm_500_lstm_cell_428_matmul_readvariableop_resource:2(I
7lstm_500_lstm_cell_428_matmul_1_readvariableop_resource:
(D
6lstm_500_lstm_cell_428_biasadd_readvariableop_resource:(:
(dense_166_matmul_readvariableop_resource:
7
)dense_166_biasadd_readvariableop_resource:
identity?? dense_166/BiasAdd/ReadVariableOp?dense_166/MatMul/ReadVariableOp?-lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp?,lstm_498/lstm_cell_426/MatMul/ReadVariableOp?.lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp?lstm_498/while?-lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp?,lstm_499/lstm_cell_427/MatMul/ReadVariableOp?.lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp?lstm_499/while?-lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp?,lstm_500/lstm_cell_428/MatMul/ReadVariableOp?.lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp?lstm_500/whileD
lstm_498/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_498/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_498/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_498/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_498/strided_sliceStridedSlicelstm_498/Shape:output:0%lstm_498/strided_slice/stack:output:0'lstm_498/strided_slice/stack_1:output:0'lstm_498/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_498/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_498/zeros/packedPacklstm_498/strided_slice:output:0 lstm_498/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_498/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_498/zerosFilllstm_498/zeros/packed:output:0lstm_498/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_498/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_498/zeros_1/packedPacklstm_498/strided_slice:output:0"lstm_498/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_498/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_498/zeros_1Fill lstm_498/zeros_1/packed:output:0lstm_498/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_498/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_498/transpose	Transposeinputs lstm_498/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_498/Shape_1Shapelstm_498/transpose:y:0*
T0*
_output_shapes
:h
lstm_498/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_498/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_498/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_498/strided_slice_1StridedSlicelstm_498/Shape_1:output:0'lstm_498/strided_slice_1/stack:output:0)lstm_498/strided_slice_1/stack_1:output:0)lstm_498/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_498/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_498/TensorArrayV2TensorListReserve-lstm_498/TensorArrayV2/element_shape:output:0!lstm_498/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_498/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_498/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_498/transpose:y:0Glstm_498/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_498/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_498/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_498/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_498/strided_slice_2StridedSlicelstm_498/transpose:y:0'lstm_498/strided_slice_2/stack:output:0)lstm_498/strided_slice_2/stack_1:output:0)lstm_498/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_498/lstm_cell_426/MatMul/ReadVariableOpReadVariableOp5lstm_498_lstm_cell_426_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_498/lstm_cell_426/MatMulMatMul!lstm_498/strided_slice_2:output:04lstm_498/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_498/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp7lstm_498_lstm_cell_426_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_498/lstm_cell_426/MatMul_1MatMullstm_498/zeros:output:06lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_498/lstm_cell_426/addAddV2'lstm_498/lstm_cell_426/MatMul:product:0)lstm_498/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_498/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp6lstm_498_lstm_cell_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_498/lstm_cell_426/BiasAddBiasAddlstm_498/lstm_cell_426/add:z:05lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_498/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_498/lstm_cell_426/splitSplit/lstm_498/lstm_cell_426/split/split_dim:output:0'lstm_498/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_498/lstm_cell_426/SigmoidSigmoid%lstm_498/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_498/lstm_cell_426/Sigmoid_1Sigmoid%lstm_498/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_498/lstm_cell_426/mulMul$lstm_498/lstm_cell_426/Sigmoid_1:y:0lstm_498/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_498/lstm_cell_426/ReluRelu%lstm_498/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_498/lstm_cell_426/mul_1Mul"lstm_498/lstm_cell_426/Sigmoid:y:0)lstm_498/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_498/lstm_cell_426/add_1AddV2lstm_498/lstm_cell_426/mul:z:0 lstm_498/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_498/lstm_cell_426/Sigmoid_2Sigmoid%lstm_498/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_498/lstm_cell_426/Relu_1Relu lstm_498/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_498/lstm_cell_426/mul_2Mul$lstm_498/lstm_cell_426/Sigmoid_2:y:0+lstm_498/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_498/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_498/TensorArrayV2_1TensorListReserve/lstm_498/TensorArrayV2_1/element_shape:output:0!lstm_498/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_498/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_498/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_498/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_498/whileWhile$lstm_498/while/loop_counter:output:0*lstm_498/while/maximum_iterations:output:0lstm_498/time:output:0!lstm_498/TensorArrayV2_1:handle:0lstm_498/zeros:output:0lstm_498/zeros_1:output:0!lstm_498/strided_slice_1:output:0@lstm_498/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_498_lstm_cell_426_matmul_readvariableop_resource7lstm_498_lstm_cell_426_matmul_1_readvariableop_resource6lstm_498_lstm_cell_426_biasadd_readvariableop_resource*
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
lstm_498_while_body_2590231*'
condR
lstm_498_while_cond_2590230*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_498/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_498/TensorArrayV2Stack/TensorListStackTensorListStacklstm_498/while:output:3Blstm_498/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_498/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_498/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_498/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_498/strided_slice_3StridedSlice4lstm_498/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_498/strided_slice_3/stack:output:0)lstm_498/strided_slice_3/stack_1:output:0)lstm_498/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_498/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_498/transpose_1	Transpose4lstm_498/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_498/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_498/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_499/ShapeShapelstm_498/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_499/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_499/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_499/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_499/strided_sliceStridedSlicelstm_499/Shape:output:0%lstm_499/strided_slice/stack:output:0'lstm_499/strided_slice/stack_1:output:0'lstm_499/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_499/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_499/zeros/packedPacklstm_499/strided_slice:output:0 lstm_499/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_499/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_499/zerosFilllstm_499/zeros/packed:output:0lstm_499/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_499/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_499/zeros_1/packedPacklstm_499/strided_slice:output:0"lstm_499/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_499/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_499/zeros_1Fill lstm_499/zeros_1/packed:output:0lstm_499/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_499/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_499/transpose	Transposelstm_498/transpose_1:y:0 lstm_499/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_499/Shape_1Shapelstm_499/transpose:y:0*
T0*
_output_shapes
:h
lstm_499/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_499/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_499/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_499/strided_slice_1StridedSlicelstm_499/Shape_1:output:0'lstm_499/strided_slice_1/stack:output:0)lstm_499/strided_slice_1/stack_1:output:0)lstm_499/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_499/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_499/TensorArrayV2TensorListReserve-lstm_499/TensorArrayV2/element_shape:output:0!lstm_499/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_499/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_499/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_499/transpose:y:0Glstm_499/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_499/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_499/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_499/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_499/strided_slice_2StridedSlicelstm_499/transpose:y:0'lstm_499/strided_slice_2/stack:output:0)lstm_499/strided_slice_2/stack_1:output:0)lstm_499/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_499/lstm_cell_427/MatMul/ReadVariableOpReadVariableOp5lstm_499_lstm_cell_427_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_499/lstm_cell_427/MatMulMatMul!lstm_499/strided_slice_2:output:04lstm_499/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_499/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp7lstm_499_lstm_cell_427_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_499/lstm_cell_427/MatMul_1MatMullstm_499/zeros:output:06lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_499/lstm_cell_427/addAddV2'lstm_499/lstm_cell_427/MatMul:product:0)lstm_499/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_499/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp6lstm_499_lstm_cell_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_499/lstm_cell_427/BiasAddBiasAddlstm_499/lstm_cell_427/add:z:05lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_499/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_499/lstm_cell_427/splitSplit/lstm_499/lstm_cell_427/split/split_dim:output:0'lstm_499/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_499/lstm_cell_427/SigmoidSigmoid%lstm_499/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_499/lstm_cell_427/Sigmoid_1Sigmoid%lstm_499/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_499/lstm_cell_427/mulMul$lstm_499/lstm_cell_427/Sigmoid_1:y:0lstm_499/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_499/lstm_cell_427/ReluRelu%lstm_499/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_499/lstm_cell_427/mul_1Mul"lstm_499/lstm_cell_427/Sigmoid:y:0)lstm_499/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_499/lstm_cell_427/add_1AddV2lstm_499/lstm_cell_427/mul:z:0 lstm_499/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_499/lstm_cell_427/Sigmoid_2Sigmoid%lstm_499/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_499/lstm_cell_427/Relu_1Relu lstm_499/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_499/lstm_cell_427/mul_2Mul$lstm_499/lstm_cell_427/Sigmoid_2:y:0+lstm_499/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_499/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_499/TensorArrayV2_1TensorListReserve/lstm_499/TensorArrayV2_1/element_shape:output:0!lstm_499/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_499/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_499/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_499/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_499/whileWhile$lstm_499/while/loop_counter:output:0*lstm_499/while/maximum_iterations:output:0lstm_499/time:output:0!lstm_499/TensorArrayV2_1:handle:0lstm_499/zeros:output:0lstm_499/zeros_1:output:0!lstm_499/strided_slice_1:output:0@lstm_499/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_499_lstm_cell_427_matmul_readvariableop_resource7lstm_499_lstm_cell_427_matmul_1_readvariableop_resource6lstm_499_lstm_cell_427_biasadd_readvariableop_resource*
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
lstm_499_while_body_2590370*'
condR
lstm_499_while_cond_2590369*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_499/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_499/TensorArrayV2Stack/TensorListStackTensorListStacklstm_499/while:output:3Blstm_499/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_499/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_499/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_499/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_499/strided_slice_3StridedSlice4lstm_499/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_499/strided_slice_3/stack:output:0)lstm_499/strided_slice_3/stack_1:output:0)lstm_499/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_499/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_499/transpose_1	Transpose4lstm_499/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_499/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_499/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_500/ShapeShapelstm_499/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_500/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_500/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_500/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_500/strided_sliceStridedSlicelstm_500/Shape:output:0%lstm_500/strided_slice/stack:output:0'lstm_500/strided_slice/stack_1:output:0'lstm_500/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_500/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_500/zeros/packedPacklstm_500/strided_slice:output:0 lstm_500/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_500/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_500/zerosFilllstm_500/zeros/packed:output:0lstm_500/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_500/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_500/zeros_1/packedPacklstm_500/strided_slice:output:0"lstm_500/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_500/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_500/zeros_1Fill lstm_500/zeros_1/packed:output:0lstm_500/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_500/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_500/transpose	Transposelstm_499/transpose_1:y:0 lstm_500/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_500/Shape_1Shapelstm_500/transpose:y:0*
T0*
_output_shapes
:h
lstm_500/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_500/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_500/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_500/strided_slice_1StridedSlicelstm_500/Shape_1:output:0'lstm_500/strided_slice_1/stack:output:0)lstm_500/strided_slice_1/stack_1:output:0)lstm_500/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_500/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_500/TensorArrayV2TensorListReserve-lstm_500/TensorArrayV2/element_shape:output:0!lstm_500/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_500/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_500/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_500/transpose:y:0Glstm_500/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_500/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_500/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_500/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_500/strided_slice_2StridedSlicelstm_500/transpose:y:0'lstm_500/strided_slice_2/stack:output:0)lstm_500/strided_slice_2/stack_1:output:0)lstm_500/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_500/lstm_cell_428/MatMul/ReadVariableOpReadVariableOp5lstm_500_lstm_cell_428_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_500/lstm_cell_428/MatMulMatMul!lstm_500/strided_slice_2:output:04lstm_500/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_500/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp7lstm_500_lstm_cell_428_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_500/lstm_cell_428/MatMul_1MatMullstm_500/zeros:output:06lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_500/lstm_cell_428/addAddV2'lstm_500/lstm_cell_428/MatMul:product:0)lstm_500/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_500/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp6lstm_500_lstm_cell_428_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_500/lstm_cell_428/BiasAddBiasAddlstm_500/lstm_cell_428/add:z:05lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_500/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_500/lstm_cell_428/splitSplit/lstm_500/lstm_cell_428/split/split_dim:output:0'lstm_500/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_500/lstm_cell_428/SigmoidSigmoid%lstm_500/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_500/lstm_cell_428/Sigmoid_1Sigmoid%lstm_500/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_500/lstm_cell_428/mulMul$lstm_500/lstm_cell_428/Sigmoid_1:y:0lstm_500/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_500/lstm_cell_428/ReluRelu%lstm_500/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_500/lstm_cell_428/mul_1Mul"lstm_500/lstm_cell_428/Sigmoid:y:0)lstm_500/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_500/lstm_cell_428/add_1AddV2lstm_500/lstm_cell_428/mul:z:0 lstm_500/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_500/lstm_cell_428/Sigmoid_2Sigmoid%lstm_500/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_500/lstm_cell_428/Relu_1Relu lstm_500/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_500/lstm_cell_428/mul_2Mul$lstm_500/lstm_cell_428/Sigmoid_2:y:0+lstm_500/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_500/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_500/TensorArrayV2_1TensorListReserve/lstm_500/TensorArrayV2_1/element_shape:output:0!lstm_500/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_500/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_500/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_500/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_500/whileWhile$lstm_500/while/loop_counter:output:0*lstm_500/while/maximum_iterations:output:0lstm_500/time:output:0!lstm_500/TensorArrayV2_1:handle:0lstm_500/zeros:output:0lstm_500/zeros_1:output:0!lstm_500/strided_slice_1:output:0@lstm_500/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_500_lstm_cell_428_matmul_readvariableop_resource7lstm_500_lstm_cell_428_matmul_1_readvariableop_resource6lstm_500_lstm_cell_428_biasadd_readvariableop_resource*
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
lstm_500_while_body_2590509*'
condR
lstm_500_while_cond_2590508*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_500/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_500/TensorArrayV2Stack/TensorListStackTensorListStacklstm_500/while:output:3Blstm_500/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_500/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_500/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_500/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_500/strided_slice_3StridedSlice4lstm_500/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_500/strided_slice_3/stack:output:0)lstm_500/strided_slice_3/stack_1:output:0)lstm_500/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_500/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_500/transpose_1	Transpose4lstm_500/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_500/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_500/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_166/MatMul/ReadVariableOpReadVariableOp(dense_166_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_166/MatMulMatMul!lstm_500/strided_slice_3:output:0'dense_166/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_166/BiasAdd/ReadVariableOpReadVariableOp)dense_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_166/BiasAddBiasAdddense_166/MatMul:product:0(dense_166/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_166/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_166/BiasAdd/ReadVariableOp ^dense_166/MatMul/ReadVariableOp.^lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp-^lstm_498/lstm_cell_426/MatMul/ReadVariableOp/^lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp^lstm_498/while.^lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp-^lstm_499/lstm_cell_427/MatMul/ReadVariableOp/^lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp^lstm_499/while.^lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp-^lstm_500/lstm_cell_428/MatMul/ReadVariableOp/^lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp^lstm_500/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_166/BiasAdd/ReadVariableOp dense_166/BiasAdd/ReadVariableOp2B
dense_166/MatMul/ReadVariableOpdense_166/MatMul/ReadVariableOp2^
-lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp-lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp2\
,lstm_498/lstm_cell_426/MatMul/ReadVariableOp,lstm_498/lstm_cell_426/MatMul/ReadVariableOp2`
.lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp.lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp2 
lstm_498/whilelstm_498/while2^
-lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp-lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp2\
,lstm_499/lstm_cell_427/MatMul/ReadVariableOp,lstm_499/lstm_cell_427/MatMul/ReadVariableOp2`
.lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp.lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp2 
lstm_499/whilelstm_499/while2^
-lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp-lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp2\
,lstm_500/lstm_cell_428/MatMul/ReadVariableOp,lstm_500/lstm_cell_428/MatMul/ReadVariableOp2`
.lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp.lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp2 
lstm_500/whilelstm_500/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592018
inputs_0>
,lstm_cell_428_matmul_readvariableop_resource:2(@
.lstm_cell_428_matmul_1_readvariableop_resource:
(;
-lstm_cell_428_biasadd_readvariableop_resource:(
identity??$lstm_cell_428/BiasAdd/ReadVariableOp?#lstm_cell_428/MatMul/ReadVariableOp?%lstm_cell_428/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_428/MatMul/ReadVariableOpReadVariableOp,lstm_cell_428_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_428/MatMulMatMulstrided_slice_2:output:0+lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_428_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_428/MatMul_1MatMulzeros:output:0-lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_428/addAddV2lstm_cell_428/MatMul:product:0 lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_428_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_428/BiasAddBiasAddlstm_cell_428/add:z:0,lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_428/splitSplit&lstm_cell_428/split/split_dim:output:0lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_428/SigmoidSigmoidlstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_1Sigmoidlstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_428/mulMullstm_cell_428/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_428/ReluRelulstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_1Mullstm_cell_428/Sigmoid:y:0 lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_428/add_1AddV2lstm_cell_428/mul:z:0lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_2Sigmoidlstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_428/Relu_1Relulstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_2Mullstm_cell_428/Sigmoid_2:y:0"lstm_cell_428/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_428_matmul_readvariableop_resource.lstm_cell_428_matmul_1_readvariableop_resource-lstm_cell_428_biasadd_readvariableop_resource*
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
while_body_2591934*
condR
while_cond_2591933*K
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
NoOpNoOp%^lstm_cell_428/BiasAdd/ReadVariableOp$^lstm_cell_428/MatMul/ReadVariableOp&^lstm_cell_428/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_428/BiasAdd/ReadVariableOp$lstm_cell_428/BiasAdd/ReadVariableOp2J
#lstm_cell_428/MatMul/ReadVariableOp#lstm_cell_428/MatMul/ReadVariableOp2N
%lstm_cell_428/MatMul_1/ReadVariableOp%lstm_cell_428/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_2589061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2589061___redundant_placeholder05
1while_while_cond_2589061___redundant_placeholder15
1while_while_cond_2589061___redundant_placeholder25
1while_while_cond_2589061___redundant_placeholder3
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

lstm_498_while_body_2590231.
*lstm_498_while_lstm_498_while_loop_counter4
0lstm_498_while_lstm_498_while_maximum_iterations
lstm_498_while_placeholder 
lstm_498_while_placeholder_1 
lstm_498_while_placeholder_2 
lstm_498_while_placeholder_3-
)lstm_498_while_lstm_498_strided_slice_1_0i
elstm_498_while_tensorarrayv2read_tensorlistgetitem_lstm_498_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_498_while_lstm_cell_426_matmul_readvariableop_resource_0:	?R
?lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource_0:	d?M
>lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource_0:	?
lstm_498_while_identity
lstm_498_while_identity_1
lstm_498_while_identity_2
lstm_498_while_identity_3
lstm_498_while_identity_4
lstm_498_while_identity_5+
'lstm_498_while_lstm_498_strided_slice_1g
clstm_498_while_tensorarrayv2read_tensorlistgetitem_lstm_498_tensorarrayunstack_tensorlistfromtensorN
;lstm_498_while_lstm_cell_426_matmul_readvariableop_resource:	?P
=lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource:	d?K
<lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource:	???3lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp?2lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp?4lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp?
@lstm_498/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_498/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_498_while_tensorarrayv2read_tensorlistgetitem_lstm_498_tensorarrayunstack_tensorlistfromtensor_0lstm_498_while_placeholderIlstm_498/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_498/while/lstm_cell_426/MatMul/ReadVariableOpReadVariableOp=lstm_498_while_lstm_cell_426_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_498/while/lstm_cell_426/MatMulMatMul9lstm_498/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp?lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_498/while/lstm_cell_426/MatMul_1MatMullstm_498_while_placeholder_2<lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_498/while/lstm_cell_426/addAddV2-lstm_498/while/lstm_cell_426/MatMul:product:0/lstm_498/while/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp>lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_498/while/lstm_cell_426/BiasAddBiasAdd$lstm_498/while/lstm_cell_426/add:z:0;lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_498/while/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_498/while/lstm_cell_426/splitSplit5lstm_498/while/lstm_cell_426/split/split_dim:output:0-lstm_498/while/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_498/while/lstm_cell_426/SigmoidSigmoid+lstm_498/while/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_498/while/lstm_cell_426/Sigmoid_1Sigmoid+lstm_498/while/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_498/while/lstm_cell_426/mulMul*lstm_498/while/lstm_cell_426/Sigmoid_1:y:0lstm_498_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_498/while/lstm_cell_426/ReluRelu+lstm_498/while/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_498/while/lstm_cell_426/mul_1Mul(lstm_498/while/lstm_cell_426/Sigmoid:y:0/lstm_498/while/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_498/while/lstm_cell_426/add_1AddV2$lstm_498/while/lstm_cell_426/mul:z:0&lstm_498/while/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_498/while/lstm_cell_426/Sigmoid_2Sigmoid+lstm_498/while/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_498/while/lstm_cell_426/Relu_1Relu&lstm_498/while/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_498/while/lstm_cell_426/mul_2Mul*lstm_498/while/lstm_cell_426/Sigmoid_2:y:01lstm_498/while/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_498/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_498_while_placeholder_1lstm_498_while_placeholder&lstm_498/while/lstm_cell_426/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_498/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_498/while/addAddV2lstm_498_while_placeholderlstm_498/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_498/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_498/while/add_1AddV2*lstm_498_while_lstm_498_while_loop_counterlstm_498/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_498/while/IdentityIdentitylstm_498/while/add_1:z:0^lstm_498/while/NoOp*
T0*
_output_shapes
: ?
lstm_498/while/Identity_1Identity0lstm_498_while_lstm_498_while_maximum_iterations^lstm_498/while/NoOp*
T0*
_output_shapes
: t
lstm_498/while/Identity_2Identitylstm_498/while/add:z:0^lstm_498/while/NoOp*
T0*
_output_shapes
: ?
lstm_498/while/Identity_3IdentityClstm_498/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_498/while/NoOp*
T0*
_output_shapes
: ?
lstm_498/while/Identity_4Identity&lstm_498/while/lstm_cell_426/mul_2:z:0^lstm_498/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_498/while/Identity_5Identity&lstm_498/while/lstm_cell_426/add_1:z:0^lstm_498/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_498/while/NoOpNoOp4^lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp3^lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp5^lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_498_while_identity lstm_498/while/Identity:output:0"?
lstm_498_while_identity_1"lstm_498/while/Identity_1:output:0"?
lstm_498_while_identity_2"lstm_498/while/Identity_2:output:0"?
lstm_498_while_identity_3"lstm_498/while/Identity_3:output:0"?
lstm_498_while_identity_4"lstm_498/while/Identity_4:output:0"?
lstm_498_while_identity_5"lstm_498/while/Identity_5:output:0"T
'lstm_498_while_lstm_498_strided_slice_1)lstm_498_while_lstm_498_strided_slice_1_0"~
<lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource>lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource_0"?
=lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource?lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource_0"|
;lstm_498_while_lstm_cell_426_matmul_readvariableop_resource=lstm_498_while_lstm_cell_426_matmul_readvariableop_resource_0"?
clstm_498_while_tensorarrayv2read_tensorlistgetitem_lstm_498_tensorarrayunstack_tensorlistfromtensorelstm_498_while_tensorarrayv2read_tensorlistgetitem_lstm_498_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp3lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp2h
2lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp2lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp2l
4lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp4lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_2587431
lstm_498_inputW
Dsequential_166_lstm_498_lstm_cell_426_matmul_readvariableop_resource:	?Y
Fsequential_166_lstm_498_lstm_cell_426_matmul_1_readvariableop_resource:	d?T
Esequential_166_lstm_498_lstm_cell_426_biasadd_readvariableop_resource:	?W
Dsequential_166_lstm_499_lstm_cell_427_matmul_readvariableop_resource:	d?Y
Fsequential_166_lstm_499_lstm_cell_427_matmul_1_readvariableop_resource:	2?T
Esequential_166_lstm_499_lstm_cell_427_biasadd_readvariableop_resource:	?V
Dsequential_166_lstm_500_lstm_cell_428_matmul_readvariableop_resource:2(X
Fsequential_166_lstm_500_lstm_cell_428_matmul_1_readvariableop_resource:
(S
Esequential_166_lstm_500_lstm_cell_428_biasadd_readvariableop_resource:(I
7sequential_166_dense_166_matmul_readvariableop_resource:
F
8sequential_166_dense_166_biasadd_readvariableop_resource:
identity??/sequential_166/dense_166/BiasAdd/ReadVariableOp?.sequential_166/dense_166/MatMul/ReadVariableOp?<sequential_166/lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp?;sequential_166/lstm_498/lstm_cell_426/MatMul/ReadVariableOp?=sequential_166/lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp?sequential_166/lstm_498/while?<sequential_166/lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp?;sequential_166/lstm_499/lstm_cell_427/MatMul/ReadVariableOp?=sequential_166/lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp?sequential_166/lstm_499/while?<sequential_166/lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp?;sequential_166/lstm_500/lstm_cell_428/MatMul/ReadVariableOp?=sequential_166/lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp?sequential_166/lstm_500/while[
sequential_166/lstm_498/ShapeShapelstm_498_input*
T0*
_output_shapes
:u
+sequential_166/lstm_498/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_166/lstm_498/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_166/lstm_498/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_166/lstm_498/strided_sliceStridedSlice&sequential_166/lstm_498/Shape:output:04sequential_166/lstm_498/strided_slice/stack:output:06sequential_166/lstm_498/strided_slice/stack_1:output:06sequential_166/lstm_498/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_166/lstm_498/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_166/lstm_498/zeros/packedPack.sequential_166/lstm_498/strided_slice:output:0/sequential_166/lstm_498/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_166/lstm_498/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_166/lstm_498/zerosFill-sequential_166/lstm_498/zeros/packed:output:0,sequential_166/lstm_498/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_166/lstm_498/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_166/lstm_498/zeros_1/packedPack.sequential_166/lstm_498/strided_slice:output:01sequential_166/lstm_498/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_166/lstm_498/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_166/lstm_498/zeros_1Fill/sequential_166/lstm_498/zeros_1/packed:output:0.sequential_166/lstm_498/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_166/lstm_498/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_166/lstm_498/transpose	Transposelstm_498_input/sequential_166/lstm_498/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_166/lstm_498/Shape_1Shape%sequential_166/lstm_498/transpose:y:0*
T0*
_output_shapes
:w
-sequential_166/lstm_498/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_166/lstm_498/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_166/lstm_498/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_166/lstm_498/strided_slice_1StridedSlice(sequential_166/lstm_498/Shape_1:output:06sequential_166/lstm_498/strided_slice_1/stack:output:08sequential_166/lstm_498/strided_slice_1/stack_1:output:08sequential_166/lstm_498/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_166/lstm_498/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_166/lstm_498/TensorArrayV2TensorListReserve<sequential_166/lstm_498/TensorArrayV2/element_shape:output:00sequential_166/lstm_498/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_166/lstm_498/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_166/lstm_498/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_166/lstm_498/transpose:y:0Vsequential_166/lstm_498/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_166/lstm_498/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_166/lstm_498/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_166/lstm_498/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_166/lstm_498/strided_slice_2StridedSlice%sequential_166/lstm_498/transpose:y:06sequential_166/lstm_498/strided_slice_2/stack:output:08sequential_166/lstm_498/strided_slice_2/stack_1:output:08sequential_166/lstm_498/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_166/lstm_498/lstm_cell_426/MatMul/ReadVariableOpReadVariableOpDsequential_166_lstm_498_lstm_cell_426_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_166/lstm_498/lstm_cell_426/MatMulMatMul0sequential_166/lstm_498/strided_slice_2:output:0Csequential_166/lstm_498/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_166/lstm_498/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOpFsequential_166_lstm_498_lstm_cell_426_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_166/lstm_498/lstm_cell_426/MatMul_1MatMul&sequential_166/lstm_498/zeros:output:0Esequential_166/lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_166/lstm_498/lstm_cell_426/addAddV26sequential_166/lstm_498/lstm_cell_426/MatMul:product:08sequential_166/lstm_498/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_166/lstm_498/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOpEsequential_166_lstm_498_lstm_cell_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_166/lstm_498/lstm_cell_426/BiasAddBiasAdd-sequential_166/lstm_498/lstm_cell_426/add:z:0Dsequential_166/lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_166/lstm_498/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_166/lstm_498/lstm_cell_426/splitSplit>sequential_166/lstm_498/lstm_cell_426/split/split_dim:output:06sequential_166/lstm_498/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_166/lstm_498/lstm_cell_426/SigmoidSigmoid4sequential_166/lstm_498/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_166/lstm_498/lstm_cell_426/Sigmoid_1Sigmoid4sequential_166/lstm_498/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_166/lstm_498/lstm_cell_426/mulMul3sequential_166/lstm_498/lstm_cell_426/Sigmoid_1:y:0(sequential_166/lstm_498/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_166/lstm_498/lstm_cell_426/ReluRelu4sequential_166/lstm_498/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_166/lstm_498/lstm_cell_426/mul_1Mul1sequential_166/lstm_498/lstm_cell_426/Sigmoid:y:08sequential_166/lstm_498/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_166/lstm_498/lstm_cell_426/add_1AddV2-sequential_166/lstm_498/lstm_cell_426/mul:z:0/sequential_166/lstm_498/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_166/lstm_498/lstm_cell_426/Sigmoid_2Sigmoid4sequential_166/lstm_498/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_166/lstm_498/lstm_cell_426/Relu_1Relu/sequential_166/lstm_498/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_166/lstm_498/lstm_cell_426/mul_2Mul3sequential_166/lstm_498/lstm_cell_426/Sigmoid_2:y:0:sequential_166/lstm_498/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_166/lstm_498/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_166/lstm_498/TensorArrayV2_1TensorListReserve>sequential_166/lstm_498/TensorArrayV2_1/element_shape:output:00sequential_166/lstm_498/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_166/lstm_498/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_166/lstm_498/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_166/lstm_498/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_166/lstm_498/whileWhile3sequential_166/lstm_498/while/loop_counter:output:09sequential_166/lstm_498/while/maximum_iterations:output:0%sequential_166/lstm_498/time:output:00sequential_166/lstm_498/TensorArrayV2_1:handle:0&sequential_166/lstm_498/zeros:output:0(sequential_166/lstm_498/zeros_1:output:00sequential_166/lstm_498/strided_slice_1:output:0Osequential_166/lstm_498/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_166_lstm_498_lstm_cell_426_matmul_readvariableop_resourceFsequential_166_lstm_498_lstm_cell_426_matmul_1_readvariableop_resourceEsequential_166_lstm_498_lstm_cell_426_biasadd_readvariableop_resource*
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
*sequential_166_lstm_498_while_body_2587063*6
cond.R,
*sequential_166_lstm_498_while_cond_2587062*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_166/lstm_498/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_166/lstm_498/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_166/lstm_498/while:output:3Qsequential_166/lstm_498/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_166/lstm_498/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_166/lstm_498/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_166/lstm_498/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_166/lstm_498/strided_slice_3StridedSliceCsequential_166/lstm_498/TensorArrayV2Stack/TensorListStack:tensor:06sequential_166/lstm_498/strided_slice_3/stack:output:08sequential_166/lstm_498/strided_slice_3/stack_1:output:08sequential_166/lstm_498/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_166/lstm_498/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_166/lstm_498/transpose_1	TransposeCsequential_166/lstm_498/TensorArrayV2Stack/TensorListStack:tensor:01sequential_166/lstm_498/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_166/lstm_498/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_166/lstm_499/ShapeShape'sequential_166/lstm_498/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_166/lstm_499/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_166/lstm_499/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_166/lstm_499/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_166/lstm_499/strided_sliceStridedSlice&sequential_166/lstm_499/Shape:output:04sequential_166/lstm_499/strided_slice/stack:output:06sequential_166/lstm_499/strided_slice/stack_1:output:06sequential_166/lstm_499/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_166/lstm_499/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_166/lstm_499/zeros/packedPack.sequential_166/lstm_499/strided_slice:output:0/sequential_166/lstm_499/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_166/lstm_499/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_166/lstm_499/zerosFill-sequential_166/lstm_499/zeros/packed:output:0,sequential_166/lstm_499/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_166/lstm_499/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_166/lstm_499/zeros_1/packedPack.sequential_166/lstm_499/strided_slice:output:01sequential_166/lstm_499/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_166/lstm_499/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_166/lstm_499/zeros_1Fill/sequential_166/lstm_499/zeros_1/packed:output:0.sequential_166/lstm_499/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_166/lstm_499/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_166/lstm_499/transpose	Transpose'sequential_166/lstm_498/transpose_1:y:0/sequential_166/lstm_499/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_166/lstm_499/Shape_1Shape%sequential_166/lstm_499/transpose:y:0*
T0*
_output_shapes
:w
-sequential_166/lstm_499/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_166/lstm_499/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_166/lstm_499/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_166/lstm_499/strided_slice_1StridedSlice(sequential_166/lstm_499/Shape_1:output:06sequential_166/lstm_499/strided_slice_1/stack:output:08sequential_166/lstm_499/strided_slice_1/stack_1:output:08sequential_166/lstm_499/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_166/lstm_499/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_166/lstm_499/TensorArrayV2TensorListReserve<sequential_166/lstm_499/TensorArrayV2/element_shape:output:00sequential_166/lstm_499/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_166/lstm_499/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_166/lstm_499/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_166/lstm_499/transpose:y:0Vsequential_166/lstm_499/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_166/lstm_499/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_166/lstm_499/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_166/lstm_499/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_166/lstm_499/strided_slice_2StridedSlice%sequential_166/lstm_499/transpose:y:06sequential_166/lstm_499/strided_slice_2/stack:output:08sequential_166/lstm_499/strided_slice_2/stack_1:output:08sequential_166/lstm_499/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_166/lstm_499/lstm_cell_427/MatMul/ReadVariableOpReadVariableOpDsequential_166_lstm_499_lstm_cell_427_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_166/lstm_499/lstm_cell_427/MatMulMatMul0sequential_166/lstm_499/strided_slice_2:output:0Csequential_166/lstm_499/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_166/lstm_499/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOpFsequential_166_lstm_499_lstm_cell_427_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_166/lstm_499/lstm_cell_427/MatMul_1MatMul&sequential_166/lstm_499/zeros:output:0Esequential_166/lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_166/lstm_499/lstm_cell_427/addAddV26sequential_166/lstm_499/lstm_cell_427/MatMul:product:08sequential_166/lstm_499/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_166/lstm_499/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOpEsequential_166_lstm_499_lstm_cell_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_166/lstm_499/lstm_cell_427/BiasAddBiasAdd-sequential_166/lstm_499/lstm_cell_427/add:z:0Dsequential_166/lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_166/lstm_499/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_166/lstm_499/lstm_cell_427/splitSplit>sequential_166/lstm_499/lstm_cell_427/split/split_dim:output:06sequential_166/lstm_499/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_166/lstm_499/lstm_cell_427/SigmoidSigmoid4sequential_166/lstm_499/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_166/lstm_499/lstm_cell_427/Sigmoid_1Sigmoid4sequential_166/lstm_499/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_166/lstm_499/lstm_cell_427/mulMul3sequential_166/lstm_499/lstm_cell_427/Sigmoid_1:y:0(sequential_166/lstm_499/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_166/lstm_499/lstm_cell_427/ReluRelu4sequential_166/lstm_499/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_166/lstm_499/lstm_cell_427/mul_1Mul1sequential_166/lstm_499/lstm_cell_427/Sigmoid:y:08sequential_166/lstm_499/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_166/lstm_499/lstm_cell_427/add_1AddV2-sequential_166/lstm_499/lstm_cell_427/mul:z:0/sequential_166/lstm_499/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_166/lstm_499/lstm_cell_427/Sigmoid_2Sigmoid4sequential_166/lstm_499/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_166/lstm_499/lstm_cell_427/Relu_1Relu/sequential_166/lstm_499/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_166/lstm_499/lstm_cell_427/mul_2Mul3sequential_166/lstm_499/lstm_cell_427/Sigmoid_2:y:0:sequential_166/lstm_499/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_166/lstm_499/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_166/lstm_499/TensorArrayV2_1TensorListReserve>sequential_166/lstm_499/TensorArrayV2_1/element_shape:output:00sequential_166/lstm_499/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_166/lstm_499/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_166/lstm_499/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_166/lstm_499/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_166/lstm_499/whileWhile3sequential_166/lstm_499/while/loop_counter:output:09sequential_166/lstm_499/while/maximum_iterations:output:0%sequential_166/lstm_499/time:output:00sequential_166/lstm_499/TensorArrayV2_1:handle:0&sequential_166/lstm_499/zeros:output:0(sequential_166/lstm_499/zeros_1:output:00sequential_166/lstm_499/strided_slice_1:output:0Osequential_166/lstm_499/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_166_lstm_499_lstm_cell_427_matmul_readvariableop_resourceFsequential_166_lstm_499_lstm_cell_427_matmul_1_readvariableop_resourceEsequential_166_lstm_499_lstm_cell_427_biasadd_readvariableop_resource*
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
*sequential_166_lstm_499_while_body_2587202*6
cond.R,
*sequential_166_lstm_499_while_cond_2587201*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_166/lstm_499/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_166/lstm_499/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_166/lstm_499/while:output:3Qsequential_166/lstm_499/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_166/lstm_499/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_166/lstm_499/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_166/lstm_499/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_166/lstm_499/strided_slice_3StridedSliceCsequential_166/lstm_499/TensorArrayV2Stack/TensorListStack:tensor:06sequential_166/lstm_499/strided_slice_3/stack:output:08sequential_166/lstm_499/strided_slice_3/stack_1:output:08sequential_166/lstm_499/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_166/lstm_499/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_166/lstm_499/transpose_1	TransposeCsequential_166/lstm_499/TensorArrayV2Stack/TensorListStack:tensor:01sequential_166/lstm_499/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_166/lstm_499/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_166/lstm_500/ShapeShape'sequential_166/lstm_499/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_166/lstm_500/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_166/lstm_500/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_166/lstm_500/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_166/lstm_500/strided_sliceStridedSlice&sequential_166/lstm_500/Shape:output:04sequential_166/lstm_500/strided_slice/stack:output:06sequential_166/lstm_500/strided_slice/stack_1:output:06sequential_166/lstm_500/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_166/lstm_500/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_166/lstm_500/zeros/packedPack.sequential_166/lstm_500/strided_slice:output:0/sequential_166/lstm_500/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_166/lstm_500/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_166/lstm_500/zerosFill-sequential_166/lstm_500/zeros/packed:output:0,sequential_166/lstm_500/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_166/lstm_500/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_166/lstm_500/zeros_1/packedPack.sequential_166/lstm_500/strided_slice:output:01sequential_166/lstm_500/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_166/lstm_500/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_166/lstm_500/zeros_1Fill/sequential_166/lstm_500/zeros_1/packed:output:0.sequential_166/lstm_500/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_166/lstm_500/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_166/lstm_500/transpose	Transpose'sequential_166/lstm_499/transpose_1:y:0/sequential_166/lstm_500/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_166/lstm_500/Shape_1Shape%sequential_166/lstm_500/transpose:y:0*
T0*
_output_shapes
:w
-sequential_166/lstm_500/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_166/lstm_500/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_166/lstm_500/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_166/lstm_500/strided_slice_1StridedSlice(sequential_166/lstm_500/Shape_1:output:06sequential_166/lstm_500/strided_slice_1/stack:output:08sequential_166/lstm_500/strided_slice_1/stack_1:output:08sequential_166/lstm_500/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_166/lstm_500/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_166/lstm_500/TensorArrayV2TensorListReserve<sequential_166/lstm_500/TensorArrayV2/element_shape:output:00sequential_166/lstm_500/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_166/lstm_500/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_166/lstm_500/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_166/lstm_500/transpose:y:0Vsequential_166/lstm_500/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_166/lstm_500/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_166/lstm_500/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_166/lstm_500/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_166/lstm_500/strided_slice_2StridedSlice%sequential_166/lstm_500/transpose:y:06sequential_166/lstm_500/strided_slice_2/stack:output:08sequential_166/lstm_500/strided_slice_2/stack_1:output:08sequential_166/lstm_500/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_166/lstm_500/lstm_cell_428/MatMul/ReadVariableOpReadVariableOpDsequential_166_lstm_500_lstm_cell_428_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_166/lstm_500/lstm_cell_428/MatMulMatMul0sequential_166/lstm_500/strided_slice_2:output:0Csequential_166/lstm_500/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_166/lstm_500/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOpFsequential_166_lstm_500_lstm_cell_428_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_166/lstm_500/lstm_cell_428/MatMul_1MatMul&sequential_166/lstm_500/zeros:output:0Esequential_166/lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_166/lstm_500/lstm_cell_428/addAddV26sequential_166/lstm_500/lstm_cell_428/MatMul:product:08sequential_166/lstm_500/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_166/lstm_500/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOpEsequential_166_lstm_500_lstm_cell_428_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_166/lstm_500/lstm_cell_428/BiasAddBiasAdd-sequential_166/lstm_500/lstm_cell_428/add:z:0Dsequential_166/lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_166/lstm_500/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_166/lstm_500/lstm_cell_428/splitSplit>sequential_166/lstm_500/lstm_cell_428/split/split_dim:output:06sequential_166/lstm_500/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_166/lstm_500/lstm_cell_428/SigmoidSigmoid4sequential_166/lstm_500/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_166/lstm_500/lstm_cell_428/Sigmoid_1Sigmoid4sequential_166/lstm_500/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_166/lstm_500/lstm_cell_428/mulMul3sequential_166/lstm_500/lstm_cell_428/Sigmoid_1:y:0(sequential_166/lstm_500/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_166/lstm_500/lstm_cell_428/ReluRelu4sequential_166/lstm_500/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_166/lstm_500/lstm_cell_428/mul_1Mul1sequential_166/lstm_500/lstm_cell_428/Sigmoid:y:08sequential_166/lstm_500/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_166/lstm_500/lstm_cell_428/add_1AddV2-sequential_166/lstm_500/lstm_cell_428/mul:z:0/sequential_166/lstm_500/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_166/lstm_500/lstm_cell_428/Sigmoid_2Sigmoid4sequential_166/lstm_500/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_166/lstm_500/lstm_cell_428/Relu_1Relu/sequential_166/lstm_500/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_166/lstm_500/lstm_cell_428/mul_2Mul3sequential_166/lstm_500/lstm_cell_428/Sigmoid_2:y:0:sequential_166/lstm_500/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_166/lstm_500/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_166/lstm_500/TensorArrayV2_1TensorListReserve>sequential_166/lstm_500/TensorArrayV2_1/element_shape:output:00sequential_166/lstm_500/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_166/lstm_500/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_166/lstm_500/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_166/lstm_500/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_166/lstm_500/whileWhile3sequential_166/lstm_500/while/loop_counter:output:09sequential_166/lstm_500/while/maximum_iterations:output:0%sequential_166/lstm_500/time:output:00sequential_166/lstm_500/TensorArrayV2_1:handle:0&sequential_166/lstm_500/zeros:output:0(sequential_166/lstm_500/zeros_1:output:00sequential_166/lstm_500/strided_slice_1:output:0Osequential_166/lstm_500/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_166_lstm_500_lstm_cell_428_matmul_readvariableop_resourceFsequential_166_lstm_500_lstm_cell_428_matmul_1_readvariableop_resourceEsequential_166_lstm_500_lstm_cell_428_biasadd_readvariableop_resource*
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
*sequential_166_lstm_500_while_body_2587341*6
cond.R,
*sequential_166_lstm_500_while_cond_2587340*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_166/lstm_500/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_166/lstm_500/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_166/lstm_500/while:output:3Qsequential_166/lstm_500/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_166/lstm_500/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_166/lstm_500/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_166/lstm_500/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_166/lstm_500/strided_slice_3StridedSliceCsequential_166/lstm_500/TensorArrayV2Stack/TensorListStack:tensor:06sequential_166/lstm_500/strided_slice_3/stack:output:08sequential_166/lstm_500/strided_slice_3/stack_1:output:08sequential_166/lstm_500/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_166/lstm_500/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_166/lstm_500/transpose_1	TransposeCsequential_166/lstm_500/TensorArrayV2Stack/TensorListStack:tensor:01sequential_166/lstm_500/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_166/lstm_500/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_166/dense_166/MatMul/ReadVariableOpReadVariableOp7sequential_166_dense_166_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_166/dense_166/MatMulMatMul0sequential_166/lstm_500/strided_slice_3:output:06sequential_166/dense_166/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_166/dense_166/BiasAdd/ReadVariableOpReadVariableOp8sequential_166_dense_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_166/dense_166/BiasAddBiasAdd)sequential_166/dense_166/MatMul:product:07sequential_166/dense_166/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_166/dense_166/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_166/dense_166/BiasAdd/ReadVariableOp/^sequential_166/dense_166/MatMul/ReadVariableOp=^sequential_166/lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp<^sequential_166/lstm_498/lstm_cell_426/MatMul/ReadVariableOp>^sequential_166/lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp^sequential_166/lstm_498/while=^sequential_166/lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp<^sequential_166/lstm_499/lstm_cell_427/MatMul/ReadVariableOp>^sequential_166/lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp^sequential_166/lstm_499/while=^sequential_166/lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp<^sequential_166/lstm_500/lstm_cell_428/MatMul/ReadVariableOp>^sequential_166/lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp^sequential_166/lstm_500/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_166/dense_166/BiasAdd/ReadVariableOp/sequential_166/dense_166/BiasAdd/ReadVariableOp2`
.sequential_166/dense_166/MatMul/ReadVariableOp.sequential_166/dense_166/MatMul/ReadVariableOp2|
<sequential_166/lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp<sequential_166/lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp2z
;sequential_166/lstm_498/lstm_cell_426/MatMul/ReadVariableOp;sequential_166/lstm_498/lstm_cell_426/MatMul/ReadVariableOp2~
=sequential_166/lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp=sequential_166/lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp2>
sequential_166/lstm_498/whilesequential_166/lstm_498/while2|
<sequential_166/lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp<sequential_166/lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp2z
;sequential_166/lstm_499/lstm_cell_427/MatMul/ReadVariableOp;sequential_166/lstm_499/lstm_cell_427/MatMul/ReadVariableOp2~
=sequential_166/lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp=sequential_166/lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp2>
sequential_166/lstm_499/whilesequential_166/lstm_499/while2|
<sequential_166/lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp<sequential_166/lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp2z
;sequential_166/lstm_500/lstm_cell_428/MatMul/ReadVariableOp;sequential_166/lstm_500/lstm_cell_428/MatMul/ReadVariableOp2~
=sequential_166/lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp=sequential_166/lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp2>
sequential_166/lstm_500/whilesequential_166/lstm_500/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_498_input
?
?
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2587498

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
while_cond_2590701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2590701___redundant_placeholder05
1while_while_cond_2590701___redundant_placeholder15
1while_while_cond_2590701___redundant_placeholder25
1while_while_cond_2590701___redundant_placeholder3
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
while_body_2588403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_428_2588427_0:2(/
while_lstm_cell_428_2588429_0:
(+
while_lstm_cell_428_2588431_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_428_2588427:2(-
while_lstm_cell_428_2588429:
()
while_lstm_cell_428_2588431:(??+while/lstm_cell_428/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_428/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_428_2588427_0while_lstm_cell_428_2588429_0while_lstm_cell_428_2588431_0*
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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2588344?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_428/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_428/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_428/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_428/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_428_2588427while_lstm_cell_428_2588427_0"<
while_lstm_cell_428_2588429while_lstm_cell_428_2588429_0"<
while_lstm_cell_428_2588431while_lstm_cell_428_2588431_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_428/StatefulPartitionedCall+while/lstm_cell_428/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_499_layer_call_fn_2591259

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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2589311s
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
?
?
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2592532

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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592304

inputs>
,lstm_cell_428_matmul_readvariableop_resource:2(@
.lstm_cell_428_matmul_1_readvariableop_resource:
(;
-lstm_cell_428_biasadd_readvariableop_resource:(
identity??$lstm_cell_428/BiasAdd/ReadVariableOp?#lstm_cell_428/MatMul/ReadVariableOp?%lstm_cell_428/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_428/MatMul/ReadVariableOpReadVariableOp,lstm_cell_428_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_428/MatMulMatMulstrided_slice_2:output:0+lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_428_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_428/MatMul_1MatMulzeros:output:0-lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_428/addAddV2lstm_cell_428/MatMul:product:0 lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_428_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_428/BiasAddBiasAddlstm_cell_428/add:z:0,lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_428/splitSplit&lstm_cell_428/split/split_dim:output:0lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_428/SigmoidSigmoidlstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_1Sigmoidlstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_428/mulMullstm_cell_428/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_428/ReluRelulstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_1Mullstm_cell_428/Sigmoid:y:0 lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_428/add_1AddV2lstm_cell_428/mul:z:0lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_2Sigmoidlstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_428/Relu_1Relulstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_2Mullstm_cell_428/Sigmoid_2:y:0"lstm_cell_428/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_428_matmul_readvariableop_resource.lstm_cell_428_matmul_1_readvariableop_resource-lstm_cell_428_biasadd_readvariableop_resource*
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
while_body_2592220*
condR
while_cond_2592219*K
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
NoOpNoOp%^lstm_cell_428/BiasAdd/ReadVariableOp$^lstm_cell_428/MatMul/ReadVariableOp&^lstm_cell_428/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_428/BiasAdd/ReadVariableOp$lstm_cell_428/BiasAdd/ReadVariableOp2J
#lstm_cell_428/MatMul/ReadVariableOp#lstm_cell_428/MatMul/ReadVariableOp2N
%lstm_cell_428/MatMul_1/ReadVariableOp%lstm_cell_428/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2591604
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_427_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_427_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_427_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_427_matmul_readvariableop_resource:	d?G
4while_lstm_cell_427_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_427_biasadd_readvariableop_resource:	???*while/lstm_cell_427/BiasAdd/ReadVariableOp?)while/lstm_cell_427/MatMul/ReadVariableOp?+while/lstm_cell_427/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_427/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_427_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_427/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_427_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_427/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_427/addAddV2$while/lstm_cell_427/MatMul:product:0&while/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_427_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_427/BiasAddBiasAddwhile/lstm_cell_427/add:z:02while/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_427/splitSplit,while/lstm_cell_427/split/split_dim:output:0$while/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_427/SigmoidSigmoid"while/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_1Sigmoid"while/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mulMul!while/lstm_cell_427/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_427/ReluRelu"while/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_1Mulwhile/lstm_cell_427/Sigmoid:y:0&while/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/add_1AddV2while/lstm_cell_427/mul:z:0while/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_2Sigmoid"while/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_427/Relu_1Reluwhile/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_2Mul!while/lstm_cell_427/Sigmoid_2:y:0(while/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_427/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_427/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_427/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_427/BiasAdd/ReadVariableOp*^while/lstm_cell_427/MatMul/ReadVariableOp,^while/lstm_cell_427/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_427_biasadd_readvariableop_resource5while_lstm_cell_427_biasadd_readvariableop_resource_0"n
4while_lstm_cell_427_matmul_1_readvariableop_resource6while_lstm_cell_427_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_427_matmul_readvariableop_resource4while_lstm_cell_427_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_427/BiasAdd/ReadVariableOp*while/lstm_cell_427/BiasAdd/ReadVariableOp2V
)while/lstm_cell_427/MatMul/ReadVariableOp)while/lstm_cell_427/MatMul/ReadVariableOp2Z
+while/lstm_cell_427/MatMul_1/ReadVariableOp+while/lstm_cell_427/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2588211
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2588211___redundant_placeholder05
1while_while_cond_2588211___redundant_placeholder15
1while_while_cond_2588211___redundant_placeholder25
1while_while_cond_2588211___redundant_placeholder3
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
?#
?
while_body_2588053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_427_2588077_0:	d?0
while_lstm_cell_427_2588079_0:	2?,
while_lstm_cell_427_2588081_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_427_2588077:	d?.
while_lstm_cell_427_2588079:	2?*
while_lstm_cell_427_2588081:	???+while/lstm_cell_427/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_427/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_427_2588077_0while_lstm_cell_427_2588079_0while_lstm_cell_427_2588081_0*
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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2587994?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_427/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_427/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_427/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_427/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_427_2588077while_lstm_cell_427_2588077_0"<
while_lstm_cell_427_2588079while_lstm_cell_427_2588079_0"<
while_lstm_cell_427_2588081while_lstm_cell_427_2588081_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_427/StatefulPartitionedCall+while/lstm_cell_427/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2592077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_428_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_428_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_428_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_428_matmul_readvariableop_resource:2(F
4while_lstm_cell_428_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_428_biasadd_readvariableop_resource:(??*while/lstm_cell_428/BiasAdd/ReadVariableOp?)while/lstm_cell_428/MatMul/ReadVariableOp?+while/lstm_cell_428/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_428/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_428_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_428/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_428_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_428/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_428/addAddV2$while/lstm_cell_428/MatMul:product:0&while/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_428_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_428/BiasAddBiasAddwhile/lstm_cell_428/add:z:02while/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_428/splitSplit,while/lstm_cell_428/split/split_dim:output:0$while/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_428/SigmoidSigmoid"while/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_1Sigmoid"while/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mulMul!while/lstm_cell_428/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_428/ReluRelu"while/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_1Mulwhile/lstm_cell_428/Sigmoid:y:0&while/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/add_1AddV2while/lstm_cell_428/mul:z:0while/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_2Sigmoid"while/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_428/Relu_1Reluwhile/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_2Mul!while/lstm_cell_428/Sigmoid_2:y:0(while/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_428/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_428/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_428/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_428/BiasAdd/ReadVariableOp*^while/lstm_cell_428/MatMul/ReadVariableOp,^while/lstm_cell_428/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_428_biasadd_readvariableop_resource5while_lstm_cell_428_biasadd_readvariableop_resource_0"n
4while_lstm_cell_428_matmul_1_readvariableop_resource6while_lstm_cell_428_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_428_matmul_readvariableop_resource4while_lstm_cell_428_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_428/BiasAdd/ReadVariableOp*while/lstm_cell_428/BiasAdd/ReadVariableOp2V
)while/lstm_cell_428/MatMul/ReadVariableOp)while/lstm_cell_428/MatMul/ReadVariableOp2Z
+while/lstm_cell_428/MatMul_1/ReadVariableOp+while/lstm_cell_428/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_166_layer_call_fn_2592456

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
F__inference_dense_166_layer_call_and_return_conditional_losses_2588948o
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
?C
?

lstm_499_while_body_2589943.
*lstm_499_while_lstm_499_while_loop_counter4
0lstm_499_while_lstm_499_while_maximum_iterations
lstm_499_while_placeholder 
lstm_499_while_placeholder_1 
lstm_499_while_placeholder_2 
lstm_499_while_placeholder_3-
)lstm_499_while_lstm_499_strided_slice_1_0i
elstm_499_while_tensorarrayv2read_tensorlistgetitem_lstm_499_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_499_while_lstm_cell_427_matmul_readvariableop_resource_0:	d?R
?lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource_0:	2?M
>lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource_0:	?
lstm_499_while_identity
lstm_499_while_identity_1
lstm_499_while_identity_2
lstm_499_while_identity_3
lstm_499_while_identity_4
lstm_499_while_identity_5+
'lstm_499_while_lstm_499_strided_slice_1g
clstm_499_while_tensorarrayv2read_tensorlistgetitem_lstm_499_tensorarrayunstack_tensorlistfromtensorN
;lstm_499_while_lstm_cell_427_matmul_readvariableop_resource:	d?P
=lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource:	2?K
<lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource:	???3lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp?2lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp?4lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp?
@lstm_499/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_499/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_499_while_tensorarrayv2read_tensorlistgetitem_lstm_499_tensorarrayunstack_tensorlistfromtensor_0lstm_499_while_placeholderIlstm_499/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_499/while/lstm_cell_427/MatMul/ReadVariableOpReadVariableOp=lstm_499_while_lstm_cell_427_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_499/while/lstm_cell_427/MatMulMatMul9lstm_499/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp?lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_499/while/lstm_cell_427/MatMul_1MatMullstm_499_while_placeholder_2<lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_499/while/lstm_cell_427/addAddV2-lstm_499/while/lstm_cell_427/MatMul:product:0/lstm_499/while/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp>lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_499/while/lstm_cell_427/BiasAddBiasAdd$lstm_499/while/lstm_cell_427/add:z:0;lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_499/while/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_499/while/lstm_cell_427/splitSplit5lstm_499/while/lstm_cell_427/split/split_dim:output:0-lstm_499/while/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_499/while/lstm_cell_427/SigmoidSigmoid+lstm_499/while/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_499/while/lstm_cell_427/Sigmoid_1Sigmoid+lstm_499/while/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_499/while/lstm_cell_427/mulMul*lstm_499/while/lstm_cell_427/Sigmoid_1:y:0lstm_499_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_499/while/lstm_cell_427/ReluRelu+lstm_499/while/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_499/while/lstm_cell_427/mul_1Mul(lstm_499/while/lstm_cell_427/Sigmoid:y:0/lstm_499/while/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_499/while/lstm_cell_427/add_1AddV2$lstm_499/while/lstm_cell_427/mul:z:0&lstm_499/while/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_499/while/lstm_cell_427/Sigmoid_2Sigmoid+lstm_499/while/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_499/while/lstm_cell_427/Relu_1Relu&lstm_499/while/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_499/while/lstm_cell_427/mul_2Mul*lstm_499/while/lstm_cell_427/Sigmoid_2:y:01lstm_499/while/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_499/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_499_while_placeholder_1lstm_499_while_placeholder&lstm_499/while/lstm_cell_427/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_499/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_499/while/addAddV2lstm_499_while_placeholderlstm_499/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_499/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_499/while/add_1AddV2*lstm_499_while_lstm_499_while_loop_counterlstm_499/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_499/while/IdentityIdentitylstm_499/while/add_1:z:0^lstm_499/while/NoOp*
T0*
_output_shapes
: ?
lstm_499/while/Identity_1Identity0lstm_499_while_lstm_499_while_maximum_iterations^lstm_499/while/NoOp*
T0*
_output_shapes
: t
lstm_499/while/Identity_2Identitylstm_499/while/add:z:0^lstm_499/while/NoOp*
T0*
_output_shapes
: ?
lstm_499/while/Identity_3IdentityClstm_499/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_499/while/NoOp*
T0*
_output_shapes
: ?
lstm_499/while/Identity_4Identity&lstm_499/while/lstm_cell_427/mul_2:z:0^lstm_499/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_499/while/Identity_5Identity&lstm_499/while/lstm_cell_427/add_1:z:0^lstm_499/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_499/while/NoOpNoOp4^lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp3^lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp5^lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_499_while_identity lstm_499/while/Identity:output:0"?
lstm_499_while_identity_1"lstm_499/while/Identity_1:output:0"?
lstm_499_while_identity_2"lstm_499/while/Identity_2:output:0"?
lstm_499_while_identity_3"lstm_499/while/Identity_3:output:0"?
lstm_499_while_identity_4"lstm_499/while/Identity_4:output:0"?
lstm_499_while_identity_5"lstm_499/while/Identity_5:output:0"T
'lstm_499_while_lstm_499_strided_slice_1)lstm_499_while_lstm_499_strided_slice_1_0"~
<lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource>lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource_0"?
=lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource?lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource_0"|
;lstm_499_while_lstm_cell_427_matmul_readvariableop_resource=lstm_499_while_lstm_cell_427_matmul_readvariableop_resource_0"?
clstm_499_while_tensorarrayv2read_tensorlistgetitem_lstm_499_tensorarrayunstack_tensorlistfromtensorelstm_499_while_tensorarrayv2read_tensorlistgetitem_lstm_499_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp3lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp2h
2lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp2lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp2l
4lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp4lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2588780

inputs?
,lstm_cell_427_matmul_readvariableop_resource:	d?A
.lstm_cell_427_matmul_1_readvariableop_resource:	2?<
-lstm_cell_427_biasadd_readvariableop_resource:	?
identity??$lstm_cell_427/BiasAdd/ReadVariableOp?#lstm_cell_427/MatMul/ReadVariableOp?%lstm_cell_427/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_427/MatMul/ReadVariableOpReadVariableOp,lstm_cell_427_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_427/MatMulMatMulstrided_slice_2:output:0+lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_427_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_427/MatMul_1MatMulzeros:output:0-lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_427/addAddV2lstm_cell_427/MatMul:product:0 lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_427/BiasAddBiasAddlstm_cell_427/add:z:0,lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_427/splitSplit&lstm_cell_427/split/split_dim:output:0lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_427/SigmoidSigmoidlstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_1Sigmoidlstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_427/mulMullstm_cell_427/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_427/ReluRelulstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_1Mullstm_cell_427/Sigmoid:y:0 lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_427/add_1AddV2lstm_cell_427/mul:z:0lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_2Sigmoidlstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_427/Relu_1Relulstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_2Mullstm_cell_427/Sigmoid_2:y:0"lstm_cell_427/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_427_matmul_readvariableop_resource.lstm_cell_427_matmul_1_readvariableop_resource-lstm_cell_427_biasadd_readvariableop_resource*
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
while_body_2588696*
condR
while_cond_2588695*K
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
NoOpNoOp%^lstm_cell_427/BiasAdd/ReadVariableOp$^lstm_cell_427/MatMul/ReadVariableOp&^lstm_cell_427/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_427/BiasAdd/ReadVariableOp$lstm_cell_427/BiasAdd/ReadVariableOp2J
#lstm_cell_427/MatMul/ReadVariableOp#lstm_cell_427/MatMul/ReadVariableOp2N
%lstm_cell_427/MatMul_1/ReadVariableOp%lstm_cell_427/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_499_while_cond_2589942.
*lstm_499_while_lstm_499_while_loop_counter4
0lstm_499_while_lstm_499_while_maximum_iterations
lstm_499_while_placeholder 
lstm_499_while_placeholder_1 
lstm_499_while_placeholder_2 
lstm_499_while_placeholder_30
,lstm_499_while_less_lstm_499_strided_slice_1G
Clstm_499_while_lstm_499_while_cond_2589942___redundant_placeholder0G
Clstm_499_while_lstm_499_while_cond_2589942___redundant_placeholder1G
Clstm_499_while_lstm_499_while_cond_2589942___redundant_placeholder2G
Clstm_499_while_lstm_499_while_cond_2589942___redundant_placeholder3
lstm_499_while_identity
?
lstm_499/while/LessLesslstm_499_while_placeholder,lstm_499_while_less_lstm_499_strided_slice_1*
T0*
_output_shapes
: ]
lstm_499/while/IdentityIdentitylstm_499/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_499_while_identity lstm_499/while/Identity:output:0*(
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
lstm_500_while_cond_2590081.
*lstm_500_while_lstm_500_while_loop_counter4
0lstm_500_while_lstm_500_while_maximum_iterations
lstm_500_while_placeholder 
lstm_500_while_placeholder_1 
lstm_500_while_placeholder_2 
lstm_500_while_placeholder_30
,lstm_500_while_less_lstm_500_strided_slice_1G
Clstm_500_while_lstm_500_while_cond_2590081___redundant_placeholder0G
Clstm_500_while_lstm_500_while_cond_2590081___redundant_placeholder1G
Clstm_500_while_lstm_500_while_cond_2590081___redundant_placeholder2G
Clstm_500_while_lstm_500_while_cond_2590081___redundant_placeholder3
lstm_500_while_identity
?
lstm_500/while/LessLesslstm_500_while_placeholder,lstm_500_while_less_lstm_500_strided_slice_1*
T0*
_output_shapes
: ]
lstm_500/while/IdentityIdentitylstm_500/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_500_while_identity lstm_500/while/Identity:output:0*(
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
?#
?
while_body_2587703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_426_2587727_0:	?0
while_lstm_cell_426_2587729_0:	d?,
while_lstm_cell_426_2587731_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_426_2587727:	?.
while_lstm_cell_426_2587729:	d?*
while_lstm_cell_426_2587731:	???+while/lstm_cell_426/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_426/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_426_2587727_0while_lstm_cell_426_2587729_0while_lstm_cell_426_2587731_0*
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
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2587644?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_426/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_426/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_426/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_426/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_426_2587727while_lstm_cell_426_2587727_0"<
while_lstm_cell_426_2587729while_lstm_cell_426_2587729_0"<
while_lstm_cell_426_2587731while_lstm_cell_426_2587731_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_426/StatefulPartitionedCall+while/lstm_cell_426/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_499_layer_call_fn_2591248

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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2588780s
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
?
E__inference_lstm_499_layer_call_and_return_conditional_losses_2587931

inputs(
lstm_cell_427_2587849:	d?(
lstm_cell_427_2587851:	2?$
lstm_cell_427_2587853:	?
identity??%lstm_cell_427/StatefulPartitionedCall?while;
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
%lstm_cell_427/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_427_2587849lstm_cell_427_2587851lstm_cell_427_2587853*
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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2587848n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_427_2587849lstm_cell_427_2587851lstm_cell_427_2587853*
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
while_body_2587862*
condR
while_cond_2587861*K
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
NoOpNoOp&^lstm_cell_427/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_427/StatefulPartitionedCall%lstm_cell_427/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_498_layer_call_fn_2590632

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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2588630s
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
?
?
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2587994

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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2588198

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
/__inference_lstm_cell_428_layer_call_fn_2592679

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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2588198o
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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2592760

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
?T
?
*sequential_166_lstm_498_while_body_2587063L
Hsequential_166_lstm_498_while_sequential_166_lstm_498_while_loop_counterR
Nsequential_166_lstm_498_while_sequential_166_lstm_498_while_maximum_iterations-
)sequential_166_lstm_498_while_placeholder/
+sequential_166_lstm_498_while_placeholder_1/
+sequential_166_lstm_498_while_placeholder_2/
+sequential_166_lstm_498_while_placeholder_3K
Gsequential_166_lstm_498_while_sequential_166_lstm_498_strided_slice_1_0?
?sequential_166_lstm_498_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_498_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_166_lstm_498_while_lstm_cell_426_matmul_readvariableop_resource_0:	?a
Nsequential_166_lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource_0:	d?\
Msequential_166_lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource_0:	?*
&sequential_166_lstm_498_while_identity,
(sequential_166_lstm_498_while_identity_1,
(sequential_166_lstm_498_while_identity_2,
(sequential_166_lstm_498_while_identity_3,
(sequential_166_lstm_498_while_identity_4,
(sequential_166_lstm_498_while_identity_5I
Esequential_166_lstm_498_while_sequential_166_lstm_498_strided_slice_1?
?sequential_166_lstm_498_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_498_tensorarrayunstack_tensorlistfromtensor]
Jsequential_166_lstm_498_while_lstm_cell_426_matmul_readvariableop_resource:	?_
Lsequential_166_lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource:	d?Z
Ksequential_166_lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource:	???Bsequential_166/lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp?Asequential_166/lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp?Csequential_166/lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp?
Osequential_166/lstm_498/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_166/lstm_498/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_166_lstm_498_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_498_tensorarrayunstack_tensorlistfromtensor_0)sequential_166_lstm_498_while_placeholderXsequential_166/lstm_498/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_166/lstm_498/while/lstm_cell_426/MatMul/ReadVariableOpReadVariableOpLsequential_166_lstm_498_while_lstm_cell_426_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_166/lstm_498/while/lstm_cell_426/MatMulMatMulHsequential_166/lstm_498/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_166/lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_166/lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOpNsequential_166_lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_166/lstm_498/while/lstm_cell_426/MatMul_1MatMul+sequential_166_lstm_498_while_placeholder_2Ksequential_166/lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_166/lstm_498/while/lstm_cell_426/addAddV2<sequential_166/lstm_498/while/lstm_cell_426/MatMul:product:0>sequential_166/lstm_498/while/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_166/lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOpMsequential_166_lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_166/lstm_498/while/lstm_cell_426/BiasAddBiasAdd3sequential_166/lstm_498/while/lstm_cell_426/add:z:0Jsequential_166/lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_166/lstm_498/while/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_166/lstm_498/while/lstm_cell_426/splitSplitDsequential_166/lstm_498/while/lstm_cell_426/split/split_dim:output:0<sequential_166/lstm_498/while/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_166/lstm_498/while/lstm_cell_426/SigmoidSigmoid:sequential_166/lstm_498/while/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_166/lstm_498/while/lstm_cell_426/Sigmoid_1Sigmoid:sequential_166/lstm_498/while/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_166/lstm_498/while/lstm_cell_426/mulMul9sequential_166/lstm_498/while/lstm_cell_426/Sigmoid_1:y:0+sequential_166_lstm_498_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_166/lstm_498/while/lstm_cell_426/ReluRelu:sequential_166/lstm_498/while/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_166/lstm_498/while/lstm_cell_426/mul_1Mul7sequential_166/lstm_498/while/lstm_cell_426/Sigmoid:y:0>sequential_166/lstm_498/while/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_166/lstm_498/while/lstm_cell_426/add_1AddV23sequential_166/lstm_498/while/lstm_cell_426/mul:z:05sequential_166/lstm_498/while/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_166/lstm_498/while/lstm_cell_426/Sigmoid_2Sigmoid:sequential_166/lstm_498/while/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_166/lstm_498/while/lstm_cell_426/Relu_1Relu5sequential_166/lstm_498/while/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_166/lstm_498/while/lstm_cell_426/mul_2Mul9sequential_166/lstm_498/while/lstm_cell_426/Sigmoid_2:y:0@sequential_166/lstm_498/while/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_166/lstm_498/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_166_lstm_498_while_placeholder_1)sequential_166_lstm_498_while_placeholder5sequential_166/lstm_498/while/lstm_cell_426/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_166/lstm_498/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_166/lstm_498/while/addAddV2)sequential_166_lstm_498_while_placeholder,sequential_166/lstm_498/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_166/lstm_498/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_166/lstm_498/while/add_1AddV2Hsequential_166_lstm_498_while_sequential_166_lstm_498_while_loop_counter.sequential_166/lstm_498/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_166/lstm_498/while/IdentityIdentity'sequential_166/lstm_498/while/add_1:z:0#^sequential_166/lstm_498/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_498/while/Identity_1IdentityNsequential_166_lstm_498_while_sequential_166_lstm_498_while_maximum_iterations#^sequential_166/lstm_498/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_498/while/Identity_2Identity%sequential_166/lstm_498/while/add:z:0#^sequential_166/lstm_498/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_498/while/Identity_3IdentityRsequential_166/lstm_498/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_166/lstm_498/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_498/while/Identity_4Identity5sequential_166/lstm_498/while/lstm_cell_426/mul_2:z:0#^sequential_166/lstm_498/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_166/lstm_498/while/Identity_5Identity5sequential_166/lstm_498/while/lstm_cell_426/add_1:z:0#^sequential_166/lstm_498/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_166/lstm_498/while/NoOpNoOpC^sequential_166/lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOpB^sequential_166/lstm_498/while/lstm_cell_426/MatMul/ReadVariableOpD^sequential_166/lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_166_lstm_498_while_identity/sequential_166/lstm_498/while/Identity:output:0"]
(sequential_166_lstm_498_while_identity_11sequential_166/lstm_498/while/Identity_1:output:0"]
(sequential_166_lstm_498_while_identity_21sequential_166/lstm_498/while/Identity_2:output:0"]
(sequential_166_lstm_498_while_identity_31sequential_166/lstm_498/while/Identity_3:output:0"]
(sequential_166_lstm_498_while_identity_41sequential_166/lstm_498/while/Identity_4:output:0"]
(sequential_166_lstm_498_while_identity_51sequential_166/lstm_498/while/Identity_5:output:0"?
Ksequential_166_lstm_498_while_lstm_cell_426_biasadd_readvariableop_resourceMsequential_166_lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource_0"?
Lsequential_166_lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resourceNsequential_166_lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource_0"?
Jsequential_166_lstm_498_while_lstm_cell_426_matmul_readvariableop_resourceLsequential_166_lstm_498_while_lstm_cell_426_matmul_readvariableop_resource_0"?
Esequential_166_lstm_498_while_sequential_166_lstm_498_strided_slice_1Gsequential_166_lstm_498_while_sequential_166_lstm_498_strided_slice_1_0"?
?sequential_166_lstm_498_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_498_tensorarrayunstack_tensorlistfromtensor?sequential_166_lstm_498_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_498_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_166/lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOpBsequential_166/lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp2?
Asequential_166/lstm_498/while/lstm_cell_426/MatMul/ReadVariableOpAsequential_166/lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp2?
Csequential_166/lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOpCsequential_166/lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2592076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2592076___redundant_placeholder05
1while_while_cond_2592076___redundant_placeholder15
1while_while_cond_2592076___redundant_placeholder25
1while_while_cond_2592076___redundant_placeholder3
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
0__inference_sequential_166_layer_call_fn_2588980
lstm_498_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_498_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_166_layer_call_and_return_conditional_losses_2588955o
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
_user_specified_namelstm_498_input
?
?
*__inference_lstm_500_layer_call_fn_2591853
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2588472o
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
/__inference_lstm_cell_428_layer_call_fn_2592696

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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2588344o
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
while_cond_2588402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2588402___redundant_placeholder05
1while_while_cond_2588402___redundant_placeholder15
1while_while_cond_2588402___redundant_placeholder25
1while_while_cond_2588402___redundant_placeholder3
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
*__inference_lstm_500_layer_call_fn_2591875

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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2589146o
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
?C
?

lstm_500_while_body_2590082.
*lstm_500_while_lstm_500_while_loop_counter4
0lstm_500_while_lstm_500_while_maximum_iterations
lstm_500_while_placeholder 
lstm_500_while_placeholder_1 
lstm_500_while_placeholder_2 
lstm_500_while_placeholder_3-
)lstm_500_while_lstm_500_strided_slice_1_0i
elstm_500_while_tensorarrayv2read_tensorlistgetitem_lstm_500_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_500_while_lstm_cell_428_matmul_readvariableop_resource_0:2(Q
?lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource_0:
(L
>lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource_0:(
lstm_500_while_identity
lstm_500_while_identity_1
lstm_500_while_identity_2
lstm_500_while_identity_3
lstm_500_while_identity_4
lstm_500_while_identity_5+
'lstm_500_while_lstm_500_strided_slice_1g
clstm_500_while_tensorarrayv2read_tensorlistgetitem_lstm_500_tensorarrayunstack_tensorlistfromtensorM
;lstm_500_while_lstm_cell_428_matmul_readvariableop_resource:2(O
=lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource:
(J
<lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource:(??3lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp?2lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp?4lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp?
@lstm_500/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_500/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_500_while_tensorarrayv2read_tensorlistgetitem_lstm_500_tensorarrayunstack_tensorlistfromtensor_0lstm_500_while_placeholderIlstm_500/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_500/while/lstm_cell_428/MatMul/ReadVariableOpReadVariableOp=lstm_500_while_lstm_cell_428_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_500/while/lstm_cell_428/MatMulMatMul9lstm_500/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp?lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_500/while/lstm_cell_428/MatMul_1MatMullstm_500_while_placeholder_2<lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_500/while/lstm_cell_428/addAddV2-lstm_500/while/lstm_cell_428/MatMul:product:0/lstm_500/while/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp>lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_500/while/lstm_cell_428/BiasAddBiasAdd$lstm_500/while/lstm_cell_428/add:z:0;lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_500/while/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_500/while/lstm_cell_428/splitSplit5lstm_500/while/lstm_cell_428/split/split_dim:output:0-lstm_500/while/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_500/while/lstm_cell_428/SigmoidSigmoid+lstm_500/while/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_500/while/lstm_cell_428/Sigmoid_1Sigmoid+lstm_500/while/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_500/while/lstm_cell_428/mulMul*lstm_500/while/lstm_cell_428/Sigmoid_1:y:0lstm_500_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_500/while/lstm_cell_428/ReluRelu+lstm_500/while/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_500/while/lstm_cell_428/mul_1Mul(lstm_500/while/lstm_cell_428/Sigmoid:y:0/lstm_500/while/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_500/while/lstm_cell_428/add_1AddV2$lstm_500/while/lstm_cell_428/mul:z:0&lstm_500/while/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_500/while/lstm_cell_428/Sigmoid_2Sigmoid+lstm_500/while/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_500/while/lstm_cell_428/Relu_1Relu&lstm_500/while/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_500/while/lstm_cell_428/mul_2Mul*lstm_500/while/lstm_cell_428/Sigmoid_2:y:01lstm_500/while/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_500/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_500_while_placeholder_1lstm_500_while_placeholder&lstm_500/while/lstm_cell_428/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_500/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_500/while/addAddV2lstm_500_while_placeholderlstm_500/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_500/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_500/while/add_1AddV2*lstm_500_while_lstm_500_while_loop_counterlstm_500/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_500/while/IdentityIdentitylstm_500/while/add_1:z:0^lstm_500/while/NoOp*
T0*
_output_shapes
: ?
lstm_500/while/Identity_1Identity0lstm_500_while_lstm_500_while_maximum_iterations^lstm_500/while/NoOp*
T0*
_output_shapes
: t
lstm_500/while/Identity_2Identitylstm_500/while/add:z:0^lstm_500/while/NoOp*
T0*
_output_shapes
: ?
lstm_500/while/Identity_3IdentityClstm_500/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_500/while/NoOp*
T0*
_output_shapes
: ?
lstm_500/while/Identity_4Identity&lstm_500/while/lstm_cell_428/mul_2:z:0^lstm_500/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_500/while/Identity_5Identity&lstm_500/while/lstm_cell_428/add_1:z:0^lstm_500/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_500/while/NoOpNoOp4^lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp3^lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp5^lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_500_while_identity lstm_500/while/Identity:output:0"?
lstm_500_while_identity_1"lstm_500/while/Identity_1:output:0"?
lstm_500_while_identity_2"lstm_500/while/Identity_2:output:0"?
lstm_500_while_identity_3"lstm_500/while/Identity_3:output:0"?
lstm_500_while_identity_4"lstm_500/while/Identity_4:output:0"?
lstm_500_while_identity_5"lstm_500/while/Identity_5:output:0"T
'lstm_500_while_lstm_500_strided_slice_1)lstm_500_while_lstm_500_strided_slice_1_0"~
<lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource>lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource_0"?
=lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource?lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource_0"|
;lstm_500_while_lstm_cell_428_matmul_readvariableop_resource=lstm_500_while_lstm_cell_428_matmul_readvariableop_resource_0"?
clstm_500_while_tensorarrayv2read_tensorlistgetitem_lstm_500_tensorarrayunstack_tensorlistfromtensorelstm_500_while_tensorarrayv2read_tensorlistgetitem_lstm_500_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp3lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp2h
2lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp2lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp2l
4lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp4lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_426_layer_call_fn_2592483

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
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2587498o
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

lstm_498_while_body_2589804.
*lstm_498_while_lstm_498_while_loop_counter4
0lstm_498_while_lstm_498_while_maximum_iterations
lstm_498_while_placeholder 
lstm_498_while_placeholder_1 
lstm_498_while_placeholder_2 
lstm_498_while_placeholder_3-
)lstm_498_while_lstm_498_strided_slice_1_0i
elstm_498_while_tensorarrayv2read_tensorlistgetitem_lstm_498_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_498_while_lstm_cell_426_matmul_readvariableop_resource_0:	?R
?lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource_0:	d?M
>lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource_0:	?
lstm_498_while_identity
lstm_498_while_identity_1
lstm_498_while_identity_2
lstm_498_while_identity_3
lstm_498_while_identity_4
lstm_498_while_identity_5+
'lstm_498_while_lstm_498_strided_slice_1g
clstm_498_while_tensorarrayv2read_tensorlistgetitem_lstm_498_tensorarrayunstack_tensorlistfromtensorN
;lstm_498_while_lstm_cell_426_matmul_readvariableop_resource:	?P
=lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource:	d?K
<lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource:	???3lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp?2lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp?4lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp?
@lstm_498/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_498/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_498_while_tensorarrayv2read_tensorlistgetitem_lstm_498_tensorarrayunstack_tensorlistfromtensor_0lstm_498_while_placeholderIlstm_498/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_498/while/lstm_cell_426/MatMul/ReadVariableOpReadVariableOp=lstm_498_while_lstm_cell_426_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_498/while/lstm_cell_426/MatMulMatMul9lstm_498/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp?lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_498/while/lstm_cell_426/MatMul_1MatMullstm_498_while_placeholder_2<lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_498/while/lstm_cell_426/addAddV2-lstm_498/while/lstm_cell_426/MatMul:product:0/lstm_498/while/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp>lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_498/while/lstm_cell_426/BiasAddBiasAdd$lstm_498/while/lstm_cell_426/add:z:0;lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_498/while/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_498/while/lstm_cell_426/splitSplit5lstm_498/while/lstm_cell_426/split/split_dim:output:0-lstm_498/while/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_498/while/lstm_cell_426/SigmoidSigmoid+lstm_498/while/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_498/while/lstm_cell_426/Sigmoid_1Sigmoid+lstm_498/while/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_498/while/lstm_cell_426/mulMul*lstm_498/while/lstm_cell_426/Sigmoid_1:y:0lstm_498_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_498/while/lstm_cell_426/ReluRelu+lstm_498/while/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_498/while/lstm_cell_426/mul_1Mul(lstm_498/while/lstm_cell_426/Sigmoid:y:0/lstm_498/while/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_498/while/lstm_cell_426/add_1AddV2$lstm_498/while/lstm_cell_426/mul:z:0&lstm_498/while/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_498/while/lstm_cell_426/Sigmoid_2Sigmoid+lstm_498/while/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_498/while/lstm_cell_426/Relu_1Relu&lstm_498/while/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_498/while/lstm_cell_426/mul_2Mul*lstm_498/while/lstm_cell_426/Sigmoid_2:y:01lstm_498/while/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_498/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_498_while_placeholder_1lstm_498_while_placeholder&lstm_498/while/lstm_cell_426/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_498/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_498/while/addAddV2lstm_498_while_placeholderlstm_498/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_498/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_498/while/add_1AddV2*lstm_498_while_lstm_498_while_loop_counterlstm_498/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_498/while/IdentityIdentitylstm_498/while/add_1:z:0^lstm_498/while/NoOp*
T0*
_output_shapes
: ?
lstm_498/while/Identity_1Identity0lstm_498_while_lstm_498_while_maximum_iterations^lstm_498/while/NoOp*
T0*
_output_shapes
: t
lstm_498/while/Identity_2Identitylstm_498/while/add:z:0^lstm_498/while/NoOp*
T0*
_output_shapes
: ?
lstm_498/while/Identity_3IdentityClstm_498/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_498/while/NoOp*
T0*
_output_shapes
: ?
lstm_498/while/Identity_4Identity&lstm_498/while/lstm_cell_426/mul_2:z:0^lstm_498/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_498/while/Identity_5Identity&lstm_498/while/lstm_cell_426/add_1:z:0^lstm_498/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_498/while/NoOpNoOp4^lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp3^lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp5^lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_498_while_identity lstm_498/while/Identity:output:0"?
lstm_498_while_identity_1"lstm_498/while/Identity_1:output:0"?
lstm_498_while_identity_2"lstm_498/while/Identity_2:output:0"?
lstm_498_while_identity_3"lstm_498/while/Identity_3:output:0"?
lstm_498_while_identity_4"lstm_498/while/Identity_4:output:0"?
lstm_498_while_identity_5"lstm_498/while/Identity_5:output:0"T
'lstm_498_while_lstm_498_strided_slice_1)lstm_498_while_lstm_498_strided_slice_1_0"~
<lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource>lstm_498_while_lstm_cell_426_biasadd_readvariableop_resource_0"?
=lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource?lstm_498_while_lstm_cell_426_matmul_1_readvariableop_resource_0"|
;lstm_498_while_lstm_cell_426_matmul_readvariableop_resource=lstm_498_while_lstm_cell_426_matmul_readvariableop_resource_0"?
clstm_498_while_tensorarrayv2read_tensorlistgetitem_lstm_498_tensorarrayunstack_tensorlistfromtensorelstm_498_while_tensorarrayv2read_tensorlistgetitem_lstm_498_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp3lstm_498/while/lstm_cell_426/BiasAdd/ReadVariableOp2h
2lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp2lstm_498/while/lstm_cell_426/MatMul/ReadVariableOp2l
4lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp4lstm_498/while/lstm_cell_426/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_499_layer_call_fn_2591237
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2588122|
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
while_body_2589392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_426_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_426_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_426_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_426_matmul_readvariableop_resource:	?G
4while_lstm_cell_426_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_426_biasadd_readvariableop_resource:	???*while/lstm_cell_426/BiasAdd/ReadVariableOp?)while/lstm_cell_426/MatMul/ReadVariableOp?+while/lstm_cell_426/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_426/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_426_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_426/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_426_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_426/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_426/addAddV2$while/lstm_cell_426/MatMul:product:0&while/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_426_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_426/BiasAddBiasAddwhile/lstm_cell_426/add:z:02while/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_426/splitSplit,while/lstm_cell_426/split/split_dim:output:0$while/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_426/SigmoidSigmoid"while/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_1Sigmoid"while/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mulMul!while/lstm_cell_426/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_426/ReluRelu"while/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_1Mulwhile/lstm_cell_426/Sigmoid:y:0&while/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/add_1AddV2while/lstm_cell_426/mul:z:0while/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_2Sigmoid"while/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_426/Relu_1Reluwhile/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_2Mul!while/lstm_cell_426/Sigmoid_2:y:0(while/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_426/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_426/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_426/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_426/BiasAdd/ReadVariableOp*^while/lstm_cell_426/MatMul/ReadVariableOp,^while/lstm_cell_426/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_426_biasadd_readvariableop_resource5while_lstm_cell_426_biasadd_readvariableop_resource_0"n
4while_lstm_cell_426_matmul_1_readvariableop_resource6while_lstm_cell_426_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_426_matmul_readvariableop_resource4while_lstm_cell_426_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_426/BiasAdd/ReadVariableOp*while/lstm_cell_426/BiasAdd/ReadVariableOp2V
)while/lstm_cell_426/MatMul/ReadVariableOp)while/lstm_cell_426/MatMul/ReadVariableOp2Z
+while/lstm_cell_426/MatMul_1/ReadVariableOp+while/lstm_cell_426/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2589391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2589391___redundant_placeholder05
1while_while_cond_2589391___redundant_placeholder15
1while_while_cond_2589391___redundant_placeholder25
1while_while_cond_2589391___redundant_placeholder3
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
?
F__inference_dense_166_layer_call_and_return_conditional_losses_2592466

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
?
?
K__inference_sequential_166_layer_call_and_return_conditional_losses_2588955

inputs#
lstm_498_2588631:	?#
lstm_498_2588633:	d?
lstm_498_2588635:	?#
lstm_499_2588781:	d?#
lstm_499_2588783:	2?
lstm_499_2588785:	?"
lstm_500_2588931:2("
lstm_500_2588933:
(
lstm_500_2588935:(#
dense_166_2588949:

dense_166_2588951:
identity??!dense_166/StatefulPartitionedCall? lstm_498/StatefulPartitionedCall? lstm_499/StatefulPartitionedCall? lstm_500/StatefulPartitionedCall?
 lstm_498/StatefulPartitionedCallStatefulPartitionedCallinputslstm_498_2588631lstm_498_2588633lstm_498_2588635*
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2588630?
 lstm_499/StatefulPartitionedCallStatefulPartitionedCall)lstm_498/StatefulPartitionedCall:output:0lstm_499_2588781lstm_499_2588783lstm_499_2588785*
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2588780?
 lstm_500/StatefulPartitionedCallStatefulPartitionedCall)lstm_499/StatefulPartitionedCall:output:0lstm_500_2588931lstm_500_2588933lstm_500_2588935*
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2588930?
!dense_166/StatefulPartitionedCallStatefulPartitionedCall)lstm_500/StatefulPartitionedCall:output:0dense_166_2588949dense_166_2588951*
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
F__inference_dense_166_layer_call_and_return_conditional_losses_2588948y
IdentityIdentity*dense_166/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_166/StatefulPartitionedCall!^lstm_498/StatefulPartitionedCall!^lstm_499/StatefulPartitionedCall!^lstm_500/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_166/StatefulPartitionedCall!dense_166/StatefulPartitionedCall2D
 lstm_498/StatefulPartitionedCall lstm_498/StatefulPartitionedCall2D
 lstm_499/StatefulPartitionedCall lstm_499/StatefulPartitionedCall2D
 lstm_500/StatefulPartitionedCall lstm_500/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2589226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2589226___redundant_placeholder05
1while_while_cond_2589226___redundant_placeholder15
1while_while_cond_2589226___redundant_placeholder25
1while_while_cond_2589226___redundant_placeholder3
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
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2592564

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
while_body_2592363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_428_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_428_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_428_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_428_matmul_readvariableop_resource:2(F
4while_lstm_cell_428_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_428_biasadd_readvariableop_resource:(??*while/lstm_cell_428/BiasAdd/ReadVariableOp?)while/lstm_cell_428/MatMul/ReadVariableOp?+while/lstm_cell_428/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_428/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_428_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_428/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_428_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_428/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_428/addAddV2$while/lstm_cell_428/MatMul:product:0&while/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_428_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_428/BiasAddBiasAddwhile/lstm_cell_428/add:z:02while/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_428/splitSplit,while/lstm_cell_428/split/split_dim:output:0$while/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_428/SigmoidSigmoid"while/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_1Sigmoid"while/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mulMul!while/lstm_cell_428/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_428/ReluRelu"while/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_1Mulwhile/lstm_cell_428/Sigmoid:y:0&while/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/add_1AddV2while/lstm_cell_428/mul:z:0while/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_2Sigmoid"while/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_428/Relu_1Reluwhile/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_2Mul!while/lstm_cell_428/Sigmoid_2:y:0(while/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_428/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_428/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_428/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_428/BiasAdd/ReadVariableOp*^while/lstm_cell_428/MatMul/ReadVariableOp,^while/lstm_cell_428/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_428_biasadd_readvariableop_resource5while_lstm_cell_428_biasadd_readvariableop_resource_0"n
4while_lstm_cell_428_matmul_1_readvariableop_resource6while_lstm_cell_428_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_428_matmul_readvariableop_resource4while_lstm_cell_428_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_428/BiasAdd/ReadVariableOp*while/lstm_cell_428/BiasAdd/ReadVariableOp2V
)while/lstm_cell_428/MatMul/ReadVariableOp)while/lstm_cell_428/MatMul/ReadVariableOp2Z
+while/lstm_cell_428/MatMul_1/ReadVariableOp+while/lstm_cell_428/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2591934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_428_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_428_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_428_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_428_matmul_readvariableop_resource:2(F
4while_lstm_cell_428_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_428_biasadd_readvariableop_resource:(??*while/lstm_cell_428/BiasAdd/ReadVariableOp?)while/lstm_cell_428/MatMul/ReadVariableOp?+while/lstm_cell_428/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_428/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_428_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_428/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_428_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_428/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_428/addAddV2$while/lstm_cell_428/MatMul:product:0&while/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_428_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_428/BiasAddBiasAddwhile/lstm_cell_428/add:z:02while/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_428/splitSplit,while/lstm_cell_428/split/split_dim:output:0$while/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_428/SigmoidSigmoid"while/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_1Sigmoid"while/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mulMul!while/lstm_cell_428/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_428/ReluRelu"while/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_1Mulwhile/lstm_cell_428/Sigmoid:y:0&while/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/add_1AddV2while/lstm_cell_428/mul:z:0while/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_2Sigmoid"while/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_428/Relu_1Reluwhile/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_2Mul!while/lstm_cell_428/Sigmoid_2:y:0(while/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_428/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_428/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_428/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_428/BiasAdd/ReadVariableOp*^while/lstm_cell_428/MatMul/ReadVariableOp,^while/lstm_cell_428/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_428_biasadd_readvariableop_resource5while_lstm_cell_428_biasadd_readvariableop_resource_0"n
4while_lstm_cell_428_matmul_1_readvariableop_resource6while_lstm_cell_428_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_428_matmul_readvariableop_resource4while_lstm_cell_428_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_428/BiasAdd/ReadVariableOp*while/lstm_cell_428/BiasAdd/ReadVariableOp2V
)while/lstm_cell_428/MatMul/ReadVariableOp)while/lstm_cell_428/MatMul/ReadVariableOp2Z
+while/lstm_cell_428/MatMul_1/ReadVariableOp+while/lstm_cell_428/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2588845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2588845___redundant_placeholder05
1while_while_cond_2588845___redundant_placeholder15
1while_while_cond_2588845___redundant_placeholder25
1while_while_cond_2588845___redundant_placeholder3
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
lstm_500_while_cond_2590508.
*lstm_500_while_lstm_500_while_loop_counter4
0lstm_500_while_lstm_500_while_maximum_iterations
lstm_500_while_placeholder 
lstm_500_while_placeholder_1 
lstm_500_while_placeholder_2 
lstm_500_while_placeholder_30
,lstm_500_while_less_lstm_500_strided_slice_1G
Clstm_500_while_lstm_500_while_cond_2590508___redundant_placeholder0G
Clstm_500_while_lstm_500_while_cond_2590508___redundant_placeholder1G
Clstm_500_while_lstm_500_while_cond_2590508___redundant_placeholder2G
Clstm_500_while_lstm_500_while_cond_2590508___redundant_placeholder3
lstm_500_while_identity
?
lstm_500/while/LessLesslstm_500_while_placeholder,lstm_500_while_less_lstm_500_strided_slice_1*
T0*
_output_shapes
: ]
lstm_500/while/IdentityIdentitylstm_500/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_500_while_identity lstm_500/while/Identity:output:0*(
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2588930

inputs>
,lstm_cell_428_matmul_readvariableop_resource:2(@
.lstm_cell_428_matmul_1_readvariableop_resource:
(;
-lstm_cell_428_biasadd_readvariableop_resource:(
identity??$lstm_cell_428/BiasAdd/ReadVariableOp?#lstm_cell_428/MatMul/ReadVariableOp?%lstm_cell_428/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_428/MatMul/ReadVariableOpReadVariableOp,lstm_cell_428_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_428/MatMulMatMulstrided_slice_2:output:0+lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_428_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_428/MatMul_1MatMulzeros:output:0-lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_428/addAddV2lstm_cell_428/MatMul:product:0 lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_428_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_428/BiasAddBiasAddlstm_cell_428/add:z:0,lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_428/splitSplit&lstm_cell_428/split/split_dim:output:0lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_428/SigmoidSigmoidlstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_1Sigmoidlstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_428/mulMullstm_cell_428/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_428/ReluRelulstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_1Mullstm_cell_428/Sigmoid:y:0 lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_428/add_1AddV2lstm_cell_428/mul:z:0lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_2Sigmoidlstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_428/Relu_1Relulstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_2Mullstm_cell_428/Sigmoid_2:y:0"lstm_cell_428/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_428_matmul_readvariableop_resource.lstm_cell_428_matmul_1_readvariableop_resource-lstm_cell_428_biasadd_readvariableop_resource*
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
while_body_2588846*
condR
while_cond_2588845*K
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
NoOpNoOp%^lstm_cell_428/BiasAdd/ReadVariableOp$^lstm_cell_428/MatMul/ReadVariableOp&^lstm_cell_428/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_428/BiasAdd/ReadVariableOp$lstm_cell_428/BiasAdd/ReadVariableOp2J
#lstm_cell_428/MatMul/ReadVariableOp#lstm_cell_428/MatMul/ReadVariableOp2N
%lstm_cell_428/MatMul_1/ReadVariableOp%lstm_cell_428/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_500_layer_call_fn_2591842
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2588281o
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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2592662

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
*__inference_lstm_498_layer_call_fn_2590610
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2587581|
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
while_cond_2587702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2587702___redundant_placeholder05
1while_while_cond_2587702___redundant_placeholder15
1while_while_cond_2587702___redundant_placeholder25
1while_while_cond_2587702___redundant_placeholder3
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
lstm_498_while_cond_2589803.
*lstm_498_while_lstm_498_while_loop_counter4
0lstm_498_while_lstm_498_while_maximum_iterations
lstm_498_while_placeholder 
lstm_498_while_placeholder_1 
lstm_498_while_placeholder_2 
lstm_498_while_placeholder_30
,lstm_498_while_less_lstm_498_strided_slice_1G
Clstm_498_while_lstm_498_while_cond_2589803___redundant_placeholder0G
Clstm_498_while_lstm_498_while_cond_2589803___redundant_placeholder1G
Clstm_498_while_lstm_498_while_cond_2589803___redundant_placeholder2G
Clstm_498_while_lstm_498_while_cond_2589803___redundant_placeholder3
lstm_498_while_identity
?
lstm_498/while/LessLesslstm_498_while_placeholder,lstm_498_while_less_lstm_498_strided_slice_1*
T0*
_output_shapes
: ]
lstm_498/while/IdentityIdentitylstm_498/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_498_while_identity lstm_498/while/Identity:output:0*(
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
lstm_499_while_cond_2590369.
*lstm_499_while_lstm_499_while_loop_counter4
0lstm_499_while_lstm_499_while_maximum_iterations
lstm_499_while_placeholder 
lstm_499_while_placeholder_1 
lstm_499_while_placeholder_2 
lstm_499_while_placeholder_30
,lstm_499_while_less_lstm_499_strided_slice_1G
Clstm_499_while_lstm_499_while_cond_2590369___redundant_placeholder0G
Clstm_499_while_lstm_499_while_cond_2590369___redundant_placeholder1G
Clstm_499_while_lstm_499_while_cond_2590369___redundant_placeholder2G
Clstm_499_while_lstm_499_while_cond_2590369___redundant_placeholder3
lstm_499_while_identity
?
lstm_499/while/LessLesslstm_499_while_placeholder,lstm_499_while_less_lstm_499_strided_slice_1*
T0*
_output_shapes
: ]
lstm_499/while/IdentityIdentitylstm_499/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_499_while_identity lstm_499/while/Identity:output:0*(
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
/__inference_lstm_cell_426_layer_call_fn_2592500

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
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2587644o
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2591215

inputs?
,lstm_cell_426_matmul_readvariableop_resource:	?A
.lstm_cell_426_matmul_1_readvariableop_resource:	d?<
-lstm_cell_426_biasadd_readvariableop_resource:	?
identity??$lstm_cell_426/BiasAdd/ReadVariableOp?#lstm_cell_426/MatMul/ReadVariableOp?%lstm_cell_426/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_426/MatMul/ReadVariableOpReadVariableOp,lstm_cell_426_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_426/MatMulMatMulstrided_slice_2:output:0+lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_426_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_426/MatMul_1MatMulzeros:output:0-lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_426/addAddV2lstm_cell_426/MatMul:product:0 lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_426/BiasAddBiasAddlstm_cell_426/add:z:0,lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_426/splitSplit&lstm_cell_426/split/split_dim:output:0lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_426/SigmoidSigmoidlstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_1Sigmoidlstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_426/mulMullstm_cell_426/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_426/ReluRelulstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_1Mullstm_cell_426/Sigmoid:y:0 lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_426/add_1AddV2lstm_cell_426/mul:z:0lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_2Sigmoidlstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_426/Relu_1Relulstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_2Mullstm_cell_426/Sigmoid_2:y:0"lstm_cell_426/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_426_matmul_readvariableop_resource.lstm_cell_426_matmul_1_readvariableop_resource-lstm_cell_426_biasadd_readvariableop_resource*
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
while_body_2591131*
condR
while_cond_2591130*K
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
NoOpNoOp%^lstm_cell_426/BiasAdd/ReadVariableOp$^lstm_cell_426/MatMul/ReadVariableOp&^lstm_cell_426/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_426/BiasAdd/ReadVariableOp$lstm_cell_426/BiasAdd/ReadVariableOp2J
#lstm_cell_426/MatMul/ReadVariableOp#lstm_cell_426/MatMul/ReadVariableOp2N
%lstm_cell_426/MatMul_1/ReadVariableOp%lstm_cell_426/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2588696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_427_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_427_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_427_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_427_matmul_readvariableop_resource:	d?G
4while_lstm_cell_427_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_427_biasadd_readvariableop_resource:	???*while/lstm_cell_427/BiasAdd/ReadVariableOp?)while/lstm_cell_427/MatMul/ReadVariableOp?+while/lstm_cell_427/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_427/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_427_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_427/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_427_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_427/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_427/addAddV2$while/lstm_cell_427/MatMul:product:0&while/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_427_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_427/BiasAddBiasAddwhile/lstm_cell_427/add:z:02while/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_427/splitSplit,while/lstm_cell_427/split/split_dim:output:0$while/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_427/SigmoidSigmoid"while/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_1Sigmoid"while/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mulMul!while/lstm_cell_427/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_427/ReluRelu"while/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_1Mulwhile/lstm_cell_427/Sigmoid:y:0&while/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/add_1AddV2while/lstm_cell_427/mul:z:0while/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_2Sigmoid"while/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_427/Relu_1Reluwhile/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_2Mul!while/lstm_cell_427/Sigmoid_2:y:0(while/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_427/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_427/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_427/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_427/BiasAdd/ReadVariableOp*^while/lstm_cell_427/MatMul/ReadVariableOp,^while/lstm_cell_427/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_427_biasadd_readvariableop_resource5while_lstm_cell_427_biasadd_readvariableop_resource_0"n
4while_lstm_cell_427_matmul_1_readvariableop_resource6while_lstm_cell_427_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_427_matmul_readvariableop_resource4while_lstm_cell_427_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_427/BiasAdd/ReadVariableOp*while/lstm_cell_427/BiasAdd/ReadVariableOp2V
)while/lstm_cell_427/MatMul/ReadVariableOp)while/lstm_cell_427/MatMul/ReadVariableOp2Z
+while/lstm_cell_427/MatMul_1/ReadVariableOp+while/lstm_cell_427/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2588122

inputs(
lstm_cell_427_2588040:	d?(
lstm_cell_427_2588042:	2?$
lstm_cell_427_2588044:	?
identity??%lstm_cell_427/StatefulPartitionedCall?while;
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
%lstm_cell_427/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_427_2588040lstm_cell_427_2588042lstm_cell_427_2588044*
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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2587994n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_427_2588040lstm_cell_427_2588042lstm_cell_427_2588044*
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
while_body_2588053*
condR
while_cond_2588052*K
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
NoOpNoOp&^lstm_cell_427/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_427/StatefulPartitionedCall%lstm_cell_427/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_2591933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2591933___redundant_placeholder05
1while_while_cond_2591933___redundant_placeholder15
1while_while_cond_2591933___redundant_placeholder25
1while_while_cond_2591933___redundant_placeholder3
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
?
E__inference_lstm_500_layer_call_and_return_conditional_losses_2588472

inputs'
lstm_cell_428_2588390:2('
lstm_cell_428_2588392:
(#
lstm_cell_428_2588394:(
identity??%lstm_cell_428/StatefulPartitionedCall?while;
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
%lstm_cell_428/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_428_2588390lstm_cell_428_2588392lstm_cell_428_2588394*
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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2588344n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_428_2588390lstm_cell_428_2588392lstm_cell_428_2588394*
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
while_body_2588403*
condR
while_cond_2588402*K
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
NoOpNoOp&^lstm_cell_428/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_428/StatefulPartitionedCall%lstm_cell_428/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2592728

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
while_body_2590702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_426_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_426_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_426_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_426_matmul_readvariableop_resource:	?G
4while_lstm_cell_426_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_426_biasadd_readvariableop_resource:	???*while/lstm_cell_426/BiasAdd/ReadVariableOp?)while/lstm_cell_426/MatMul/ReadVariableOp?+while/lstm_cell_426/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_426/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_426_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_426/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_426_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_426/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_426/addAddV2$while/lstm_cell_426/MatMul:product:0&while/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_426_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_426/BiasAddBiasAddwhile/lstm_cell_426/add:z:02while/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_426/splitSplit,while/lstm_cell_426/split/split_dim:output:0$while/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_426/SigmoidSigmoid"while/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_1Sigmoid"while/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mulMul!while/lstm_cell_426/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_426/ReluRelu"while/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_1Mulwhile/lstm_cell_426/Sigmoid:y:0&while/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/add_1AddV2while/lstm_cell_426/mul:z:0while/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_2Sigmoid"while/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_426/Relu_1Reluwhile/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_2Mul!while/lstm_cell_426/Sigmoid_2:y:0(while/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_426/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_426/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_426/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_426/BiasAdd/ReadVariableOp*^while/lstm_cell_426/MatMul/ReadVariableOp,^while/lstm_cell_426/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_426_biasadd_readvariableop_resource5while_lstm_cell_426_biasadd_readvariableop_resource_0"n
4while_lstm_cell_426_matmul_1_readvariableop_resource6while_lstm_cell_426_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_426_matmul_readvariableop_resource4while_lstm_cell_426_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_426/BiasAdd/ReadVariableOp*while/lstm_cell_426/BiasAdd/ReadVariableOp2V
)while/lstm_cell_426/MatMul/ReadVariableOp)while/lstm_cell_426/MatMul/ReadVariableOp2Z
+while/lstm_cell_426/MatMul_1/ReadVariableOp+while/lstm_cell_426/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_166_layer_call_fn_2589596
lstm_498_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_498_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_166_layer_call_and_return_conditional_losses_2589544o
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
_user_specified_namelstm_498_input
?
?
*sequential_166_lstm_500_while_cond_2587340L
Hsequential_166_lstm_500_while_sequential_166_lstm_500_while_loop_counterR
Nsequential_166_lstm_500_while_sequential_166_lstm_500_while_maximum_iterations-
)sequential_166_lstm_500_while_placeholder/
+sequential_166_lstm_500_while_placeholder_1/
+sequential_166_lstm_500_while_placeholder_2/
+sequential_166_lstm_500_while_placeholder_3N
Jsequential_166_lstm_500_while_less_sequential_166_lstm_500_strided_slice_1e
asequential_166_lstm_500_while_sequential_166_lstm_500_while_cond_2587340___redundant_placeholder0e
asequential_166_lstm_500_while_sequential_166_lstm_500_while_cond_2587340___redundant_placeholder1e
asequential_166_lstm_500_while_sequential_166_lstm_500_while_cond_2587340___redundant_placeholder2e
asequential_166_lstm_500_while_sequential_166_lstm_500_while_cond_2587340___redundant_placeholder3*
&sequential_166_lstm_500_while_identity
?
"sequential_166/lstm_500/while/LessLess)sequential_166_lstm_500_while_placeholderJsequential_166_lstm_500_while_less_sequential_166_lstm_500_strided_slice_1*
T0*
_output_shapes
: {
&sequential_166/lstm_500/while/IdentityIdentity&sequential_166/lstm_500/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_166_lstm_500_while_identity/sequential_166/lstm_500/while/Identity:output:0*(
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
?
*sequential_166_lstm_499_while_cond_2587201L
Hsequential_166_lstm_499_while_sequential_166_lstm_499_while_loop_counterR
Nsequential_166_lstm_499_while_sequential_166_lstm_499_while_maximum_iterations-
)sequential_166_lstm_499_while_placeholder/
+sequential_166_lstm_499_while_placeholder_1/
+sequential_166_lstm_499_while_placeholder_2/
+sequential_166_lstm_499_while_placeholder_3N
Jsequential_166_lstm_499_while_less_sequential_166_lstm_499_strided_slice_1e
asequential_166_lstm_499_while_sequential_166_lstm_499_while_cond_2587201___redundant_placeholder0e
asequential_166_lstm_499_while_sequential_166_lstm_499_while_cond_2587201___redundant_placeholder1e
asequential_166_lstm_499_while_sequential_166_lstm_499_while_cond_2587201___redundant_placeholder2e
asequential_166_lstm_499_while_sequential_166_lstm_499_while_cond_2587201___redundant_placeholder3*
&sequential_166_lstm_499_while_identity
?
"sequential_166/lstm_499/while/LessLess)sequential_166_lstm_499_while_placeholderJsequential_166_lstm_499_while_less_sequential_166_lstm_499_strided_slice_1*
T0*
_output_shapes
: {
&sequential_166/lstm_499/while/IdentityIdentity&sequential_166/lstm_499/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_166_lstm_499_while_identity/sequential_166/lstm_499/while/Identity:output:0*(
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
 __inference__traced_save_2592903
file_prefix/
+savev2_dense_166_kernel_read_readvariableop-
)savev2_dense_166_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_498_lstm_cell_498_kernel_read_readvariableopF
Bsavev2_lstm_498_lstm_cell_498_recurrent_kernel_read_readvariableop:
6savev2_lstm_498_lstm_cell_498_bias_read_readvariableop<
8savev2_lstm_499_lstm_cell_499_kernel_read_readvariableopF
Bsavev2_lstm_499_lstm_cell_499_recurrent_kernel_read_readvariableop:
6savev2_lstm_499_lstm_cell_499_bias_read_readvariableop<
8savev2_lstm_500_lstm_cell_500_kernel_read_readvariableopF
Bsavev2_lstm_500_lstm_cell_500_recurrent_kernel_read_readvariableop:
6savev2_lstm_500_lstm_cell_500_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_166_kernel_m_read_readvariableop4
0savev2_adam_dense_166_bias_m_read_readvariableopC
?savev2_adam_lstm_498_lstm_cell_498_kernel_m_read_readvariableopM
Isavev2_adam_lstm_498_lstm_cell_498_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_498_lstm_cell_498_bias_m_read_readvariableopC
?savev2_adam_lstm_499_lstm_cell_499_kernel_m_read_readvariableopM
Isavev2_adam_lstm_499_lstm_cell_499_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_499_lstm_cell_499_bias_m_read_readvariableopC
?savev2_adam_lstm_500_lstm_cell_500_kernel_m_read_readvariableopM
Isavev2_adam_lstm_500_lstm_cell_500_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_500_lstm_cell_500_bias_m_read_readvariableop6
2savev2_adam_dense_166_kernel_v_read_readvariableop4
0savev2_adam_dense_166_bias_v_read_readvariableopC
?savev2_adam_lstm_498_lstm_cell_498_kernel_v_read_readvariableopM
Isavev2_adam_lstm_498_lstm_cell_498_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_498_lstm_cell_498_bias_v_read_readvariableopC
?savev2_adam_lstm_499_lstm_cell_499_kernel_v_read_readvariableopM
Isavev2_adam_lstm_499_lstm_cell_499_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_499_lstm_cell_499_bias_v_read_readvariableopC
?savev2_adam_lstm_500_lstm_cell_500_kernel_v_read_readvariableopM
Isavev2_adam_lstm_500_lstm_cell_500_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_500_lstm_cell_500_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_166_kernel_read_readvariableop)savev2_dense_166_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_498_lstm_cell_498_kernel_read_readvariableopBsavev2_lstm_498_lstm_cell_498_recurrent_kernel_read_readvariableop6savev2_lstm_498_lstm_cell_498_bias_read_readvariableop8savev2_lstm_499_lstm_cell_499_kernel_read_readvariableopBsavev2_lstm_499_lstm_cell_499_recurrent_kernel_read_readvariableop6savev2_lstm_499_lstm_cell_499_bias_read_readvariableop8savev2_lstm_500_lstm_cell_500_kernel_read_readvariableopBsavev2_lstm_500_lstm_cell_500_recurrent_kernel_read_readvariableop6savev2_lstm_500_lstm_cell_500_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_166_kernel_m_read_readvariableop0savev2_adam_dense_166_bias_m_read_readvariableop?savev2_adam_lstm_498_lstm_cell_498_kernel_m_read_readvariableopIsavev2_adam_lstm_498_lstm_cell_498_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_498_lstm_cell_498_bias_m_read_readvariableop?savev2_adam_lstm_499_lstm_cell_499_kernel_m_read_readvariableopIsavev2_adam_lstm_499_lstm_cell_499_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_499_lstm_cell_499_bias_m_read_readvariableop?savev2_adam_lstm_500_lstm_cell_500_kernel_m_read_readvariableopIsavev2_adam_lstm_500_lstm_cell_500_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_500_lstm_cell_500_bias_m_read_readvariableop2savev2_adam_dense_166_kernel_v_read_readvariableop0savev2_adam_dense_166_bias_v_read_readvariableop?savev2_adam_lstm_498_lstm_cell_498_kernel_v_read_readvariableopIsavev2_adam_lstm_498_lstm_cell_498_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_498_lstm_cell_498_bias_v_read_readvariableop?savev2_adam_lstm_499_lstm_cell_499_kernel_v_read_readvariableopIsavev2_adam_lstm_499_lstm_cell_499_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_499_lstm_cell_499_bias_v_read_readvariableop?savev2_adam_lstm_500_lstm_cell_500_kernel_v_read_readvariableopIsavev2_adam_lstm_500_lstm_cell_500_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_500_lstm_cell_500_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_2588846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_428_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_428_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_428_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_428_matmul_readvariableop_resource:2(F
4while_lstm_cell_428_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_428_biasadd_readvariableop_resource:(??*while/lstm_cell_428/BiasAdd/ReadVariableOp?)while/lstm_cell_428/MatMul/ReadVariableOp?+while/lstm_cell_428/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_428/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_428_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_428/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_428_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_428/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_428/addAddV2$while/lstm_cell_428/MatMul:product:0&while/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_428_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_428/BiasAddBiasAddwhile/lstm_cell_428/add:z:02while/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_428/splitSplit,while/lstm_cell_428/split/split_dim:output:0$while/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_428/SigmoidSigmoid"while/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_1Sigmoid"while/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mulMul!while/lstm_cell_428/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_428/ReluRelu"while/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_1Mulwhile/lstm_cell_428/Sigmoid:y:0&while/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/add_1AddV2while/lstm_cell_428/mul:z:0while/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_2Sigmoid"while/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_428/Relu_1Reluwhile/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_2Mul!while/lstm_cell_428/Sigmoid_2:y:0(while/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_428/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_428/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_428/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_428/BiasAdd/ReadVariableOp*^while/lstm_cell_428/MatMul/ReadVariableOp,^while/lstm_cell_428/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_428_biasadd_readvariableop_resource5while_lstm_cell_428_biasadd_readvariableop_resource_0"n
4while_lstm_cell_428_matmul_1_readvariableop_resource6while_lstm_cell_428_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_428_matmul_readvariableop_resource4while_lstm_cell_428_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_428/BiasAdd/ReadVariableOp*while/lstm_cell_428/BiasAdd/ReadVariableOp2V
)while/lstm_cell_428/MatMul/ReadVariableOp)while/lstm_cell_428/MatMul/ReadVariableOp2Z
+while/lstm_cell_428/MatMul_1/ReadVariableOp+while/lstm_cell_428/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2591746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2591746___redundant_placeholder05
1while_while_cond_2591746___redundant_placeholder15
1while_while_cond_2591746___redundant_placeholder25
1while_while_cond_2591746___redundant_placeholder3
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
/__inference_lstm_cell_427_layer_call_fn_2592581

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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2587848o
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
?
?
K__inference_sequential_166_layer_call_and_return_conditional_losses_2589544

inputs#
lstm_498_2589517:	?#
lstm_498_2589519:	d?
lstm_498_2589521:	?#
lstm_499_2589524:	d?#
lstm_499_2589526:	2?
lstm_499_2589528:	?"
lstm_500_2589531:2("
lstm_500_2589533:
(
lstm_500_2589535:(#
dense_166_2589538:

dense_166_2589540:
identity??!dense_166/StatefulPartitionedCall? lstm_498/StatefulPartitionedCall? lstm_499/StatefulPartitionedCall? lstm_500/StatefulPartitionedCall?
 lstm_498/StatefulPartitionedCallStatefulPartitionedCallinputslstm_498_2589517lstm_498_2589519lstm_498_2589521*
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2589476?
 lstm_499/StatefulPartitionedCallStatefulPartitionedCall)lstm_498/StatefulPartitionedCall:output:0lstm_499_2589524lstm_499_2589526lstm_499_2589528*
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2589311?
 lstm_500/StatefulPartitionedCallStatefulPartitionedCall)lstm_499/StatefulPartitionedCall:output:0lstm_500_2589531lstm_500_2589533lstm_500_2589535*
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2589146?
!dense_166/StatefulPartitionedCallStatefulPartitionedCall)lstm_500/StatefulPartitionedCall:output:0dense_166_2589538dense_166_2589540*
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
F__inference_dense_166_layer_call_and_return_conditional_losses_2588948y
IdentityIdentity*dense_166/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_166/StatefulPartitionedCall!^lstm_498/StatefulPartitionedCall!^lstm_499/StatefulPartitionedCall!^lstm_500/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_166/StatefulPartitionedCall!dense_166/StatefulPartitionedCall2D
 lstm_498/StatefulPartitionedCall lstm_498/StatefulPartitionedCall2D
 lstm_499/StatefulPartitionedCall lstm_499/StatefulPartitionedCall2D
 lstm_500/StatefulPartitionedCall lstm_500/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_166_layer_call_and_return_conditional_losses_2589626
lstm_498_input#
lstm_498_2589599:	?#
lstm_498_2589601:	d?
lstm_498_2589603:	?#
lstm_499_2589606:	d?#
lstm_499_2589608:	2?
lstm_499_2589610:	?"
lstm_500_2589613:2("
lstm_500_2589615:
(
lstm_500_2589617:(#
dense_166_2589620:

dense_166_2589622:
identity??!dense_166/StatefulPartitionedCall? lstm_498/StatefulPartitionedCall? lstm_499/StatefulPartitionedCall? lstm_500/StatefulPartitionedCall?
 lstm_498/StatefulPartitionedCallStatefulPartitionedCalllstm_498_inputlstm_498_2589599lstm_498_2589601lstm_498_2589603*
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2588630?
 lstm_499/StatefulPartitionedCallStatefulPartitionedCall)lstm_498/StatefulPartitionedCall:output:0lstm_499_2589606lstm_499_2589608lstm_499_2589610*
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2588780?
 lstm_500/StatefulPartitionedCallStatefulPartitionedCall)lstm_499/StatefulPartitionedCall:output:0lstm_500_2589613lstm_500_2589615lstm_500_2589617*
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2588930?
!dense_166/StatefulPartitionedCallStatefulPartitionedCall)lstm_500/StatefulPartitionedCall:output:0dense_166_2589620dense_166_2589622*
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
F__inference_dense_166_layer_call_and_return_conditional_losses_2588948y
IdentityIdentity*dense_166/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_166/StatefulPartitionedCall!^lstm_498/StatefulPartitionedCall!^lstm_499/StatefulPartitionedCall!^lstm_500/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_166/StatefulPartitionedCall!dense_166/StatefulPartitionedCall2D
 lstm_498/StatefulPartitionedCall lstm_498/StatefulPartitionedCall2D
 lstm_499/StatefulPartitionedCall lstm_499/StatefulPartitionedCall2D
 lstm_500/StatefulPartitionedCall lstm_500/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_498_input
?J
?
E__inference_lstm_498_layer_call_and_return_conditional_losses_2588630

inputs?
,lstm_cell_426_matmul_readvariableop_resource:	?A
.lstm_cell_426_matmul_1_readvariableop_resource:	d?<
-lstm_cell_426_biasadd_readvariableop_resource:	?
identity??$lstm_cell_426/BiasAdd/ReadVariableOp?#lstm_cell_426/MatMul/ReadVariableOp?%lstm_cell_426/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_426/MatMul/ReadVariableOpReadVariableOp,lstm_cell_426_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_426/MatMulMatMulstrided_slice_2:output:0+lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_426_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_426/MatMul_1MatMulzeros:output:0-lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_426/addAddV2lstm_cell_426/MatMul:product:0 lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_426/BiasAddBiasAddlstm_cell_426/add:z:0,lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_426/splitSplit&lstm_cell_426/split/split_dim:output:0lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_426/SigmoidSigmoidlstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_1Sigmoidlstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_426/mulMullstm_cell_426/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_426/ReluRelulstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_1Mullstm_cell_426/Sigmoid:y:0 lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_426/add_1AddV2lstm_cell_426/mul:z:0lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_2Sigmoidlstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_426/Relu_1Relulstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_2Mullstm_cell_426/Sigmoid_2:y:0"lstm_cell_426/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_426_matmul_readvariableop_resource.lstm_cell_426_matmul_1_readvariableop_resource-lstm_cell_426_biasadd_readvariableop_resource*
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
while_body_2588546*
condR
while_cond_2588545*K
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
NoOpNoOp%^lstm_cell_426/BiasAdd/ReadVariableOp$^lstm_cell_426/MatMul/ReadVariableOp&^lstm_cell_426/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_426/BiasAdd/ReadVariableOp$lstm_cell_426/BiasAdd/ReadVariableOp2J
#lstm_cell_426/MatMul/ReadVariableOp#lstm_cell_426/MatMul/ReadVariableOp2N
%lstm_cell_426/MatMul_1/ReadVariableOp%lstm_cell_426/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591402
inputs_0?
,lstm_cell_427_matmul_readvariableop_resource:	d?A
.lstm_cell_427_matmul_1_readvariableop_resource:	2?<
-lstm_cell_427_biasadd_readvariableop_resource:	?
identity??$lstm_cell_427/BiasAdd/ReadVariableOp?#lstm_cell_427/MatMul/ReadVariableOp?%lstm_cell_427/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_427/MatMul/ReadVariableOpReadVariableOp,lstm_cell_427_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_427/MatMulMatMulstrided_slice_2:output:0+lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_427_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_427/MatMul_1MatMulzeros:output:0-lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_427/addAddV2lstm_cell_427/MatMul:product:0 lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_427/BiasAddBiasAddlstm_cell_427/add:z:0,lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_427/splitSplit&lstm_cell_427/split/split_dim:output:0lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_427/SigmoidSigmoidlstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_1Sigmoidlstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_427/mulMullstm_cell_427/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_427/ReluRelulstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_1Mullstm_cell_427/Sigmoid:y:0 lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_427/add_1AddV2lstm_cell_427/mul:z:0lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_2Sigmoidlstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_427/Relu_1Relulstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_2Mullstm_cell_427/Sigmoid_2:y:0"lstm_cell_427/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_427_matmul_readvariableop_resource.lstm_cell_427_matmul_1_readvariableop_resource-lstm_cell_427_biasadd_readvariableop_resource*
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
while_body_2591318*
condR
while_cond_2591317*K
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
NoOpNoOp%^lstm_cell_427/BiasAdd/ReadVariableOp$^lstm_cell_427/MatMul/ReadVariableOp&^lstm_cell_427/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_427/BiasAdd/ReadVariableOp$lstm_cell_427/BiasAdd/ReadVariableOp2J
#lstm_cell_427/MatMul/ReadVariableOp#lstm_cell_427/MatMul/ReadVariableOp2N
%lstm_cell_427/MatMul_1/ReadVariableOp%lstm_cell_427/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_2591747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_427_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_427_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_427_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_427_matmul_readvariableop_resource:	d?G
4while_lstm_cell_427_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_427_biasadd_readvariableop_resource:	???*while/lstm_cell_427/BiasAdd/ReadVariableOp?)while/lstm_cell_427/MatMul/ReadVariableOp?+while/lstm_cell_427/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_427/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_427_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_427/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_427_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_427/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_427/addAddV2$while/lstm_cell_427/MatMul:product:0&while/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_427_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_427/BiasAddBiasAddwhile/lstm_cell_427/add:z:02while/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_427/splitSplit,while/lstm_cell_427/split/split_dim:output:0$while/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_427/SigmoidSigmoid"while/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_1Sigmoid"while/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mulMul!while/lstm_cell_427/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_427/ReluRelu"while/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_1Mulwhile/lstm_cell_427/Sigmoid:y:0&while/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/add_1AddV2while/lstm_cell_427/mul:z:0while/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_2Sigmoid"while/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_427/Relu_1Reluwhile/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_2Mul!while/lstm_cell_427/Sigmoid_2:y:0(while/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_427/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_427/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_427/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_427/BiasAdd/ReadVariableOp*^while/lstm_cell_427/MatMul/ReadVariableOp,^while/lstm_cell_427/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_427_biasadd_readvariableop_resource5while_lstm_cell_427_biasadd_readvariableop_resource_0"n
4while_lstm_cell_427_matmul_1_readvariableop_resource6while_lstm_cell_427_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_427_matmul_readvariableop_resource4while_lstm_cell_427_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_427/BiasAdd/ReadVariableOp*while/lstm_cell_427/BiasAdd/ReadVariableOp2V
)while/lstm_cell_427/MatMul/ReadVariableOp)while/lstm_cell_427/MatMul/ReadVariableOp2Z
+while/lstm_cell_427/MatMul_1/ReadVariableOp+while/lstm_cell_427/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_2593033
file_prefix3
!assignvariableop_dense_166_kernel:
/
!assignvariableop_1_dense_166_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_498_lstm_cell_498_kernel:	?M
:assignvariableop_8_lstm_498_lstm_cell_498_recurrent_kernel:	d?=
.assignvariableop_9_lstm_498_lstm_cell_498_bias:	?D
1assignvariableop_10_lstm_499_lstm_cell_499_kernel:	d?N
;assignvariableop_11_lstm_499_lstm_cell_499_recurrent_kernel:	2?>
/assignvariableop_12_lstm_499_lstm_cell_499_bias:	?C
1assignvariableop_13_lstm_500_lstm_cell_500_kernel:2(M
;assignvariableop_14_lstm_500_lstm_cell_500_recurrent_kernel:
(=
/assignvariableop_15_lstm_500_lstm_cell_500_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_166_kernel_m:
7
)assignvariableop_19_adam_dense_166_bias_m:K
8assignvariableop_20_adam_lstm_498_lstm_cell_498_kernel_m:	?U
Bassignvariableop_21_adam_lstm_498_lstm_cell_498_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_498_lstm_cell_498_bias_m:	?K
8assignvariableop_23_adam_lstm_499_lstm_cell_499_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_499_lstm_cell_499_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_499_lstm_cell_499_bias_m:	?J
8assignvariableop_26_adam_lstm_500_lstm_cell_500_kernel_m:2(T
Bassignvariableop_27_adam_lstm_500_lstm_cell_500_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_500_lstm_cell_500_bias_m:(=
+assignvariableop_29_adam_dense_166_kernel_v:
7
)assignvariableop_30_adam_dense_166_bias_v:K
8assignvariableop_31_adam_lstm_498_lstm_cell_498_kernel_v:	?U
Bassignvariableop_32_adam_lstm_498_lstm_cell_498_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_498_lstm_cell_498_bias_v:	?K
8assignvariableop_34_adam_lstm_499_lstm_cell_499_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_499_lstm_cell_499_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_499_lstm_cell_499_bias_v:	?J
8assignvariableop_37_adam_lstm_500_lstm_cell_500_kernel_v:2(T
Bassignvariableop_38_adam_lstm_500_lstm_cell_500_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_500_lstm_cell_500_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_166_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_166_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_498_lstm_cell_498_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_498_lstm_cell_498_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_498_lstm_cell_498_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_499_lstm_cell_499_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_499_lstm_cell_499_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_499_lstm_cell_499_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_500_lstm_cell_500_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_500_lstm_cell_500_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_500_lstm_cell_500_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_166_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_166_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_498_lstm_cell_498_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_498_lstm_cell_498_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_498_lstm_cell_498_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_499_lstm_cell_499_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_499_lstm_cell_499_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_499_lstm_cell_499_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_500_lstm_cell_500_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_500_lstm_cell_500_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_500_lstm_cell_500_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_166_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_166_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_498_lstm_cell_498_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_498_lstm_cell_498_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_498_lstm_cell_498_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_499_lstm_cell_499_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_499_lstm_cell_499_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_499_lstm_cell_499_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_500_lstm_cell_500_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_500_lstm_cell_500_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_500_lstm_cell_500_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_2591130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2591130___redundant_placeholder05
1while_while_cond_2591130___redundant_placeholder15
1while_while_cond_2591130___redundant_placeholder25
1while_while_cond_2591130___redundant_placeholder3
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
while_cond_2588695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2588695___redundant_placeholder05
1while_while_cond_2588695___redundant_placeholder15
1while_while_cond_2588695___redundant_placeholder25
1while_while_cond_2588695___redundant_placeholder3
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
*__inference_lstm_499_layer_call_fn_2591226
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2587931|
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
while_cond_2587861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2587861___redundant_placeholder05
1while_while_cond_2587861___redundant_placeholder15
1while_while_cond_2587861___redundant_placeholder25
1while_while_cond_2587861___redundant_placeholder3
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
while_cond_2592362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2592362___redundant_placeholder05
1while_while_cond_2592362___redundant_placeholder15
1while_while_cond_2592362___redundant_placeholder25
1while_while_cond_2592362___redundant_placeholder3
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
K__inference_sequential_166_layer_call_and_return_conditional_losses_2589656
lstm_498_input#
lstm_498_2589629:	?#
lstm_498_2589631:	d?
lstm_498_2589633:	?#
lstm_499_2589636:	d?#
lstm_499_2589638:	2?
lstm_499_2589640:	?"
lstm_500_2589643:2("
lstm_500_2589645:
(
lstm_500_2589647:(#
dense_166_2589650:

dense_166_2589652:
identity??!dense_166/StatefulPartitionedCall? lstm_498/StatefulPartitionedCall? lstm_499/StatefulPartitionedCall? lstm_500/StatefulPartitionedCall?
 lstm_498/StatefulPartitionedCallStatefulPartitionedCalllstm_498_inputlstm_498_2589629lstm_498_2589631lstm_498_2589633*
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2589476?
 lstm_499/StatefulPartitionedCallStatefulPartitionedCall)lstm_498/StatefulPartitionedCall:output:0lstm_499_2589636lstm_499_2589638lstm_499_2589640*
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2589311?
 lstm_500/StatefulPartitionedCallStatefulPartitionedCall)lstm_499/StatefulPartitionedCall:output:0lstm_500_2589643lstm_500_2589645lstm_500_2589647*
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2589146?
!dense_166/StatefulPartitionedCallStatefulPartitionedCall)lstm_500/StatefulPartitionedCall:output:0dense_166_2589650dense_166_2589652*
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
F__inference_dense_166_layer_call_and_return_conditional_losses_2588948y
IdentityIdentity*dense_166/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_166/StatefulPartitionedCall!^lstm_498/StatefulPartitionedCall!^lstm_499/StatefulPartitionedCall!^lstm_500/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_166/StatefulPartitionedCall!dense_166/StatefulPartitionedCall2D
 lstm_498/StatefulPartitionedCall lstm_498/StatefulPartitionedCall2D
 lstm_499/StatefulPartitionedCall lstm_499/StatefulPartitionedCall2D
 lstm_500/StatefulPartitionedCall lstm_500/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_498_input
?J
?
E__inference_lstm_498_layer_call_and_return_conditional_losses_2589476

inputs?
,lstm_cell_426_matmul_readvariableop_resource:	?A
.lstm_cell_426_matmul_1_readvariableop_resource:	d?<
-lstm_cell_426_biasadd_readvariableop_resource:	?
identity??$lstm_cell_426/BiasAdd/ReadVariableOp?#lstm_cell_426/MatMul/ReadVariableOp?%lstm_cell_426/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_426/MatMul/ReadVariableOpReadVariableOp,lstm_cell_426_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_426/MatMulMatMulstrided_slice_2:output:0+lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_426_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_426/MatMul_1MatMulzeros:output:0-lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_426/addAddV2lstm_cell_426/MatMul:product:0 lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_426/BiasAddBiasAddlstm_cell_426/add:z:0,lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_426/splitSplit&lstm_cell_426/split/split_dim:output:0lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_426/SigmoidSigmoidlstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_1Sigmoidlstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_426/mulMullstm_cell_426/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_426/ReluRelulstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_1Mullstm_cell_426/Sigmoid:y:0 lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_426/add_1AddV2lstm_cell_426/mul:z:0lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_2Sigmoidlstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_426/Relu_1Relulstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_2Mullstm_cell_426/Sigmoid_2:y:0"lstm_cell_426/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_426_matmul_readvariableop_resource.lstm_cell_426_matmul_1_readvariableop_resource-lstm_cell_426_biasadd_readvariableop_resource*
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
while_body_2589392*
condR
while_cond_2589391*K
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
NoOpNoOp%^lstm_cell_426/BiasAdd/ReadVariableOp$^lstm_cell_426/MatMul/ReadVariableOp&^lstm_cell_426/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_426/BiasAdd/ReadVariableOp$lstm_cell_426/BiasAdd/ReadVariableOp2J
#lstm_cell_426/MatMul/ReadVariableOp#lstm_cell_426/MatMul/ReadVariableOp2N
%lstm_cell_426/MatMul_1/ReadVariableOp%lstm_cell_426/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2591131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_426_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_426_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_426_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_426_matmul_readvariableop_resource:	?G
4while_lstm_cell_426_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_426_biasadd_readvariableop_resource:	???*while/lstm_cell_426/BiasAdd/ReadVariableOp?)while/lstm_cell_426/MatMul/ReadVariableOp?+while/lstm_cell_426/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_426/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_426_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_426/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_426_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_426/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_426/addAddV2$while/lstm_cell_426/MatMul:product:0&while/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_426_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_426/BiasAddBiasAddwhile/lstm_cell_426/add:z:02while/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_426/splitSplit,while/lstm_cell_426/split/split_dim:output:0$while/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_426/SigmoidSigmoid"while/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_1Sigmoid"while/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mulMul!while/lstm_cell_426/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_426/ReluRelu"while/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_1Mulwhile/lstm_cell_426/Sigmoid:y:0&while/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/add_1AddV2while/lstm_cell_426/mul:z:0while/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_2Sigmoid"while/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_426/Relu_1Reluwhile/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_2Mul!while/lstm_cell_426/Sigmoid_2:y:0(while/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_426/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_426/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_426/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_426/BiasAdd/ReadVariableOp*^while/lstm_cell_426/MatMul/ReadVariableOp,^while/lstm_cell_426/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_426_biasadd_readvariableop_resource5while_lstm_cell_426_biasadd_readvariableop_resource_0"n
4while_lstm_cell_426_matmul_1_readvariableop_resource6while_lstm_cell_426_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_426_matmul_readvariableop_resource4while_lstm_cell_426_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_426/BiasAdd/ReadVariableOp*while/lstm_cell_426/BiasAdd/ReadVariableOp2V
)while/lstm_cell_426/MatMul/ReadVariableOp)while/lstm_cell_426/MatMul/ReadVariableOp2Z
+while/lstm_cell_426/MatMul_1/ReadVariableOp+while/lstm_cell_426/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_166_layer_call_and_return_conditional_losses_2590172

inputsH
5lstm_498_lstm_cell_426_matmul_readvariableop_resource:	?J
7lstm_498_lstm_cell_426_matmul_1_readvariableop_resource:	d?E
6lstm_498_lstm_cell_426_biasadd_readvariableop_resource:	?H
5lstm_499_lstm_cell_427_matmul_readvariableop_resource:	d?J
7lstm_499_lstm_cell_427_matmul_1_readvariableop_resource:	2?E
6lstm_499_lstm_cell_427_biasadd_readvariableop_resource:	?G
5lstm_500_lstm_cell_428_matmul_readvariableop_resource:2(I
7lstm_500_lstm_cell_428_matmul_1_readvariableop_resource:
(D
6lstm_500_lstm_cell_428_biasadd_readvariableop_resource:(:
(dense_166_matmul_readvariableop_resource:
7
)dense_166_biasadd_readvariableop_resource:
identity?? dense_166/BiasAdd/ReadVariableOp?dense_166/MatMul/ReadVariableOp?-lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp?,lstm_498/lstm_cell_426/MatMul/ReadVariableOp?.lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp?lstm_498/while?-lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp?,lstm_499/lstm_cell_427/MatMul/ReadVariableOp?.lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp?lstm_499/while?-lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp?,lstm_500/lstm_cell_428/MatMul/ReadVariableOp?.lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp?lstm_500/whileD
lstm_498/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_498/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_498/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_498/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_498/strided_sliceStridedSlicelstm_498/Shape:output:0%lstm_498/strided_slice/stack:output:0'lstm_498/strided_slice/stack_1:output:0'lstm_498/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_498/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_498/zeros/packedPacklstm_498/strided_slice:output:0 lstm_498/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_498/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_498/zerosFilllstm_498/zeros/packed:output:0lstm_498/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_498/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_498/zeros_1/packedPacklstm_498/strided_slice:output:0"lstm_498/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_498/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_498/zeros_1Fill lstm_498/zeros_1/packed:output:0lstm_498/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_498/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_498/transpose	Transposeinputs lstm_498/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_498/Shape_1Shapelstm_498/transpose:y:0*
T0*
_output_shapes
:h
lstm_498/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_498/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_498/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_498/strided_slice_1StridedSlicelstm_498/Shape_1:output:0'lstm_498/strided_slice_1/stack:output:0)lstm_498/strided_slice_1/stack_1:output:0)lstm_498/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_498/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_498/TensorArrayV2TensorListReserve-lstm_498/TensorArrayV2/element_shape:output:0!lstm_498/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_498/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_498/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_498/transpose:y:0Glstm_498/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_498/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_498/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_498/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_498/strided_slice_2StridedSlicelstm_498/transpose:y:0'lstm_498/strided_slice_2/stack:output:0)lstm_498/strided_slice_2/stack_1:output:0)lstm_498/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_498/lstm_cell_426/MatMul/ReadVariableOpReadVariableOp5lstm_498_lstm_cell_426_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_498/lstm_cell_426/MatMulMatMul!lstm_498/strided_slice_2:output:04lstm_498/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_498/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp7lstm_498_lstm_cell_426_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_498/lstm_cell_426/MatMul_1MatMullstm_498/zeros:output:06lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_498/lstm_cell_426/addAddV2'lstm_498/lstm_cell_426/MatMul:product:0)lstm_498/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_498/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp6lstm_498_lstm_cell_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_498/lstm_cell_426/BiasAddBiasAddlstm_498/lstm_cell_426/add:z:05lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_498/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_498/lstm_cell_426/splitSplit/lstm_498/lstm_cell_426/split/split_dim:output:0'lstm_498/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_498/lstm_cell_426/SigmoidSigmoid%lstm_498/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_498/lstm_cell_426/Sigmoid_1Sigmoid%lstm_498/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_498/lstm_cell_426/mulMul$lstm_498/lstm_cell_426/Sigmoid_1:y:0lstm_498/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_498/lstm_cell_426/ReluRelu%lstm_498/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_498/lstm_cell_426/mul_1Mul"lstm_498/lstm_cell_426/Sigmoid:y:0)lstm_498/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_498/lstm_cell_426/add_1AddV2lstm_498/lstm_cell_426/mul:z:0 lstm_498/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_498/lstm_cell_426/Sigmoid_2Sigmoid%lstm_498/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_498/lstm_cell_426/Relu_1Relu lstm_498/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_498/lstm_cell_426/mul_2Mul$lstm_498/lstm_cell_426/Sigmoid_2:y:0+lstm_498/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_498/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_498/TensorArrayV2_1TensorListReserve/lstm_498/TensorArrayV2_1/element_shape:output:0!lstm_498/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_498/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_498/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_498/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_498/whileWhile$lstm_498/while/loop_counter:output:0*lstm_498/while/maximum_iterations:output:0lstm_498/time:output:0!lstm_498/TensorArrayV2_1:handle:0lstm_498/zeros:output:0lstm_498/zeros_1:output:0!lstm_498/strided_slice_1:output:0@lstm_498/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_498_lstm_cell_426_matmul_readvariableop_resource7lstm_498_lstm_cell_426_matmul_1_readvariableop_resource6lstm_498_lstm_cell_426_biasadd_readvariableop_resource*
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
lstm_498_while_body_2589804*'
condR
lstm_498_while_cond_2589803*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_498/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_498/TensorArrayV2Stack/TensorListStackTensorListStacklstm_498/while:output:3Blstm_498/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_498/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_498/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_498/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_498/strided_slice_3StridedSlice4lstm_498/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_498/strided_slice_3/stack:output:0)lstm_498/strided_slice_3/stack_1:output:0)lstm_498/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_498/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_498/transpose_1	Transpose4lstm_498/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_498/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_498/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_499/ShapeShapelstm_498/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_499/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_499/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_499/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_499/strided_sliceStridedSlicelstm_499/Shape:output:0%lstm_499/strided_slice/stack:output:0'lstm_499/strided_slice/stack_1:output:0'lstm_499/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_499/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_499/zeros/packedPacklstm_499/strided_slice:output:0 lstm_499/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_499/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_499/zerosFilllstm_499/zeros/packed:output:0lstm_499/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_499/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_499/zeros_1/packedPacklstm_499/strided_slice:output:0"lstm_499/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_499/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_499/zeros_1Fill lstm_499/zeros_1/packed:output:0lstm_499/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_499/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_499/transpose	Transposelstm_498/transpose_1:y:0 lstm_499/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_499/Shape_1Shapelstm_499/transpose:y:0*
T0*
_output_shapes
:h
lstm_499/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_499/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_499/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_499/strided_slice_1StridedSlicelstm_499/Shape_1:output:0'lstm_499/strided_slice_1/stack:output:0)lstm_499/strided_slice_1/stack_1:output:0)lstm_499/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_499/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_499/TensorArrayV2TensorListReserve-lstm_499/TensorArrayV2/element_shape:output:0!lstm_499/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_499/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_499/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_499/transpose:y:0Glstm_499/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_499/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_499/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_499/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_499/strided_slice_2StridedSlicelstm_499/transpose:y:0'lstm_499/strided_slice_2/stack:output:0)lstm_499/strided_slice_2/stack_1:output:0)lstm_499/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_499/lstm_cell_427/MatMul/ReadVariableOpReadVariableOp5lstm_499_lstm_cell_427_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_499/lstm_cell_427/MatMulMatMul!lstm_499/strided_slice_2:output:04lstm_499/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_499/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp7lstm_499_lstm_cell_427_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_499/lstm_cell_427/MatMul_1MatMullstm_499/zeros:output:06lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_499/lstm_cell_427/addAddV2'lstm_499/lstm_cell_427/MatMul:product:0)lstm_499/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_499/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp6lstm_499_lstm_cell_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_499/lstm_cell_427/BiasAddBiasAddlstm_499/lstm_cell_427/add:z:05lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_499/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_499/lstm_cell_427/splitSplit/lstm_499/lstm_cell_427/split/split_dim:output:0'lstm_499/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_499/lstm_cell_427/SigmoidSigmoid%lstm_499/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_499/lstm_cell_427/Sigmoid_1Sigmoid%lstm_499/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_499/lstm_cell_427/mulMul$lstm_499/lstm_cell_427/Sigmoid_1:y:0lstm_499/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_499/lstm_cell_427/ReluRelu%lstm_499/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_499/lstm_cell_427/mul_1Mul"lstm_499/lstm_cell_427/Sigmoid:y:0)lstm_499/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_499/lstm_cell_427/add_1AddV2lstm_499/lstm_cell_427/mul:z:0 lstm_499/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_499/lstm_cell_427/Sigmoid_2Sigmoid%lstm_499/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_499/lstm_cell_427/Relu_1Relu lstm_499/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_499/lstm_cell_427/mul_2Mul$lstm_499/lstm_cell_427/Sigmoid_2:y:0+lstm_499/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_499/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_499/TensorArrayV2_1TensorListReserve/lstm_499/TensorArrayV2_1/element_shape:output:0!lstm_499/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_499/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_499/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_499/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_499/whileWhile$lstm_499/while/loop_counter:output:0*lstm_499/while/maximum_iterations:output:0lstm_499/time:output:0!lstm_499/TensorArrayV2_1:handle:0lstm_499/zeros:output:0lstm_499/zeros_1:output:0!lstm_499/strided_slice_1:output:0@lstm_499/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_499_lstm_cell_427_matmul_readvariableop_resource7lstm_499_lstm_cell_427_matmul_1_readvariableop_resource6lstm_499_lstm_cell_427_biasadd_readvariableop_resource*
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
lstm_499_while_body_2589943*'
condR
lstm_499_while_cond_2589942*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_499/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_499/TensorArrayV2Stack/TensorListStackTensorListStacklstm_499/while:output:3Blstm_499/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_499/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_499/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_499/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_499/strided_slice_3StridedSlice4lstm_499/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_499/strided_slice_3/stack:output:0)lstm_499/strided_slice_3/stack_1:output:0)lstm_499/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_499/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_499/transpose_1	Transpose4lstm_499/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_499/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_499/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_500/ShapeShapelstm_499/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_500/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_500/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_500/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_500/strided_sliceStridedSlicelstm_500/Shape:output:0%lstm_500/strided_slice/stack:output:0'lstm_500/strided_slice/stack_1:output:0'lstm_500/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_500/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_500/zeros/packedPacklstm_500/strided_slice:output:0 lstm_500/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_500/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_500/zerosFilllstm_500/zeros/packed:output:0lstm_500/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_500/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_500/zeros_1/packedPacklstm_500/strided_slice:output:0"lstm_500/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_500/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_500/zeros_1Fill lstm_500/zeros_1/packed:output:0lstm_500/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_500/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_500/transpose	Transposelstm_499/transpose_1:y:0 lstm_500/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_500/Shape_1Shapelstm_500/transpose:y:0*
T0*
_output_shapes
:h
lstm_500/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_500/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_500/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_500/strided_slice_1StridedSlicelstm_500/Shape_1:output:0'lstm_500/strided_slice_1/stack:output:0)lstm_500/strided_slice_1/stack_1:output:0)lstm_500/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_500/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_500/TensorArrayV2TensorListReserve-lstm_500/TensorArrayV2/element_shape:output:0!lstm_500/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_500/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_500/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_500/transpose:y:0Glstm_500/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_500/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_500/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_500/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_500/strided_slice_2StridedSlicelstm_500/transpose:y:0'lstm_500/strided_slice_2/stack:output:0)lstm_500/strided_slice_2/stack_1:output:0)lstm_500/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_500/lstm_cell_428/MatMul/ReadVariableOpReadVariableOp5lstm_500_lstm_cell_428_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_500/lstm_cell_428/MatMulMatMul!lstm_500/strided_slice_2:output:04lstm_500/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_500/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp7lstm_500_lstm_cell_428_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_500/lstm_cell_428/MatMul_1MatMullstm_500/zeros:output:06lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_500/lstm_cell_428/addAddV2'lstm_500/lstm_cell_428/MatMul:product:0)lstm_500/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_500/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp6lstm_500_lstm_cell_428_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_500/lstm_cell_428/BiasAddBiasAddlstm_500/lstm_cell_428/add:z:05lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_500/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_500/lstm_cell_428/splitSplit/lstm_500/lstm_cell_428/split/split_dim:output:0'lstm_500/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_500/lstm_cell_428/SigmoidSigmoid%lstm_500/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_500/lstm_cell_428/Sigmoid_1Sigmoid%lstm_500/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_500/lstm_cell_428/mulMul$lstm_500/lstm_cell_428/Sigmoid_1:y:0lstm_500/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_500/lstm_cell_428/ReluRelu%lstm_500/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_500/lstm_cell_428/mul_1Mul"lstm_500/lstm_cell_428/Sigmoid:y:0)lstm_500/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_500/lstm_cell_428/add_1AddV2lstm_500/lstm_cell_428/mul:z:0 lstm_500/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_500/lstm_cell_428/Sigmoid_2Sigmoid%lstm_500/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_500/lstm_cell_428/Relu_1Relu lstm_500/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_500/lstm_cell_428/mul_2Mul$lstm_500/lstm_cell_428/Sigmoid_2:y:0+lstm_500/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_500/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_500/TensorArrayV2_1TensorListReserve/lstm_500/TensorArrayV2_1/element_shape:output:0!lstm_500/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_500/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_500/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_500/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_500/whileWhile$lstm_500/while/loop_counter:output:0*lstm_500/while/maximum_iterations:output:0lstm_500/time:output:0!lstm_500/TensorArrayV2_1:handle:0lstm_500/zeros:output:0lstm_500/zeros_1:output:0!lstm_500/strided_slice_1:output:0@lstm_500/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_500_lstm_cell_428_matmul_readvariableop_resource7lstm_500_lstm_cell_428_matmul_1_readvariableop_resource6lstm_500_lstm_cell_428_biasadd_readvariableop_resource*
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
lstm_500_while_body_2590082*'
condR
lstm_500_while_cond_2590081*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_500/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_500/TensorArrayV2Stack/TensorListStackTensorListStacklstm_500/while:output:3Blstm_500/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_500/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_500/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_500/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_500/strided_slice_3StridedSlice4lstm_500/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_500/strided_slice_3/stack:output:0)lstm_500/strided_slice_3/stack_1:output:0)lstm_500/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_500/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_500/transpose_1	Transpose4lstm_500/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_500/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_500/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_166/MatMul/ReadVariableOpReadVariableOp(dense_166_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_166/MatMulMatMul!lstm_500/strided_slice_3:output:0'dense_166/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_166/BiasAdd/ReadVariableOpReadVariableOp)dense_166_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_166/BiasAddBiasAdddense_166/MatMul:product:0(dense_166/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_166/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_166/BiasAdd/ReadVariableOp ^dense_166/MatMul/ReadVariableOp.^lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp-^lstm_498/lstm_cell_426/MatMul/ReadVariableOp/^lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp^lstm_498/while.^lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp-^lstm_499/lstm_cell_427/MatMul/ReadVariableOp/^lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp^lstm_499/while.^lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp-^lstm_500/lstm_cell_428/MatMul/ReadVariableOp/^lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp^lstm_500/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_166/BiasAdd/ReadVariableOp dense_166/BiasAdd/ReadVariableOp2B
dense_166/MatMul/ReadVariableOpdense_166/MatMul/ReadVariableOp2^
-lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp-lstm_498/lstm_cell_426/BiasAdd/ReadVariableOp2\
,lstm_498/lstm_cell_426/MatMul/ReadVariableOp,lstm_498/lstm_cell_426/MatMul/ReadVariableOp2`
.lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp.lstm_498/lstm_cell_426/MatMul_1/ReadVariableOp2 
lstm_498/whilelstm_498/while2^
-lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp-lstm_499/lstm_cell_427/BiasAdd/ReadVariableOp2\
,lstm_499/lstm_cell_427/MatMul/ReadVariableOp,lstm_499/lstm_cell_427/MatMul/ReadVariableOp2`
.lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp.lstm_499/lstm_cell_427/MatMul_1/ReadVariableOp2 
lstm_499/whilelstm_499/while2^
-lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp-lstm_500/lstm_cell_428/BiasAdd/ReadVariableOp2\
,lstm_500/lstm_cell_428/MatMul/ReadVariableOp,lstm_500/lstm_cell_428/MatMul/ReadVariableOp2`
.lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp.lstm_500/lstm_cell_428/MatMul_1/ReadVariableOp2 
lstm_500/whilelstm_500/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2587644

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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2589146

inputs>
,lstm_cell_428_matmul_readvariableop_resource:2(@
.lstm_cell_428_matmul_1_readvariableop_resource:
(;
-lstm_cell_428_biasadd_readvariableop_resource:(
identity??$lstm_cell_428/BiasAdd/ReadVariableOp?#lstm_cell_428/MatMul/ReadVariableOp?%lstm_cell_428/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_428/MatMul/ReadVariableOpReadVariableOp,lstm_cell_428_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_428/MatMulMatMulstrided_slice_2:output:0+lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_428_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_428/MatMul_1MatMulzeros:output:0-lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_428/addAddV2lstm_cell_428/MatMul:product:0 lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_428_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_428/BiasAddBiasAddlstm_cell_428/add:z:0,lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_428/splitSplit&lstm_cell_428/split/split_dim:output:0lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_428/SigmoidSigmoidlstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_1Sigmoidlstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_428/mulMullstm_cell_428/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_428/ReluRelulstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_1Mullstm_cell_428/Sigmoid:y:0 lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_428/add_1AddV2lstm_cell_428/mul:z:0lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_2Sigmoidlstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_428/Relu_1Relulstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_2Mullstm_cell_428/Sigmoid_2:y:0"lstm_cell_428/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_428_matmul_readvariableop_resource.lstm_cell_428_matmul_1_readvariableop_resource-lstm_cell_428_biasadd_readvariableop_resource*
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
while_body_2589062*
condR
while_cond_2589061*K
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
NoOpNoOp%^lstm_cell_428/BiasAdd/ReadVariableOp$^lstm_cell_428/MatMul/ReadVariableOp&^lstm_cell_428/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_428/BiasAdd/ReadVariableOp$lstm_cell_428/BiasAdd/ReadVariableOp2J
#lstm_cell_428/MatMul/ReadVariableOp#lstm_cell_428/MatMul/ReadVariableOp2N
%lstm_cell_428/MatMul_1/ReadVariableOp%lstm_cell_428/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2591317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2591317___redundant_placeholder05
1while_while_cond_2591317___redundant_placeholder15
1while_while_cond_2591317___redundant_placeholder25
1while_while_cond_2591317___redundant_placeholder3
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
while_cond_2590987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2590987___redundant_placeholder05
1while_while_cond_2590987___redundant_placeholder15
1while_while_cond_2590987___redundant_placeholder25
1while_while_cond_2590987___redundant_placeholder3
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
while_cond_2587511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2587511___redundant_placeholder05
1while_while_cond_2587511___redundant_placeholder15
1while_while_cond_2587511___redundant_placeholder25
1while_while_cond_2587511___redundant_placeholder3
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
while_cond_2588052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2588052___redundant_placeholder05
1while_while_cond_2588052___redundant_placeholder15
1while_while_cond_2588052___redundant_placeholder25
1while_while_cond_2588052___redundant_placeholder3
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
while_body_2588546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_426_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_426_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_426_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_426_matmul_readvariableop_resource:	?G
4while_lstm_cell_426_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_426_biasadd_readvariableop_resource:	???*while/lstm_cell_426/BiasAdd/ReadVariableOp?)while/lstm_cell_426/MatMul/ReadVariableOp?+while/lstm_cell_426/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_426/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_426_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_426/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_426_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_426/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_426/addAddV2$while/lstm_cell_426/MatMul:product:0&while/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_426_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_426/BiasAddBiasAddwhile/lstm_cell_426/add:z:02while/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_426/splitSplit,while/lstm_cell_426/split/split_dim:output:0$while/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_426/SigmoidSigmoid"while/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_1Sigmoid"while/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mulMul!while/lstm_cell_426/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_426/ReluRelu"while/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_1Mulwhile/lstm_cell_426/Sigmoid:y:0&while/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/add_1AddV2while/lstm_cell_426/mul:z:0while/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_2Sigmoid"while/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_426/Relu_1Reluwhile/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_2Mul!while/lstm_cell_426/Sigmoid_2:y:0(while/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_426/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_426/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_426/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_426/BiasAdd/ReadVariableOp*^while/lstm_cell_426/MatMul/ReadVariableOp,^while/lstm_cell_426/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_426_biasadd_readvariableop_resource5while_lstm_cell_426_biasadd_readvariableop_resource_0"n
4while_lstm_cell_426_matmul_1_readvariableop_resource6while_lstm_cell_426_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_426_matmul_readvariableop_resource4while_lstm_cell_426_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_426/BiasAdd/ReadVariableOp*while/lstm_cell_426/BiasAdd/ReadVariableOp2V
)while/lstm_cell_426/MatMul/ReadVariableOp)while/lstm_cell_426/MatMul/ReadVariableOp2Z
+while/lstm_cell_426/MatMul_1/ReadVariableOp+while/lstm_cell_426/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2592630

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
*sequential_166_lstm_499_while_body_2587202L
Hsequential_166_lstm_499_while_sequential_166_lstm_499_while_loop_counterR
Nsequential_166_lstm_499_while_sequential_166_lstm_499_while_maximum_iterations-
)sequential_166_lstm_499_while_placeholder/
+sequential_166_lstm_499_while_placeholder_1/
+sequential_166_lstm_499_while_placeholder_2/
+sequential_166_lstm_499_while_placeholder_3K
Gsequential_166_lstm_499_while_sequential_166_lstm_499_strided_slice_1_0?
?sequential_166_lstm_499_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_499_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_166_lstm_499_while_lstm_cell_427_matmul_readvariableop_resource_0:	d?a
Nsequential_166_lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource_0:	2?\
Msequential_166_lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource_0:	?*
&sequential_166_lstm_499_while_identity,
(sequential_166_lstm_499_while_identity_1,
(sequential_166_lstm_499_while_identity_2,
(sequential_166_lstm_499_while_identity_3,
(sequential_166_lstm_499_while_identity_4,
(sequential_166_lstm_499_while_identity_5I
Esequential_166_lstm_499_while_sequential_166_lstm_499_strided_slice_1?
?sequential_166_lstm_499_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_499_tensorarrayunstack_tensorlistfromtensor]
Jsequential_166_lstm_499_while_lstm_cell_427_matmul_readvariableop_resource:	d?_
Lsequential_166_lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource:	2?Z
Ksequential_166_lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource:	???Bsequential_166/lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp?Asequential_166/lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp?Csequential_166/lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp?
Osequential_166/lstm_499/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_166/lstm_499/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_166_lstm_499_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_499_tensorarrayunstack_tensorlistfromtensor_0)sequential_166_lstm_499_while_placeholderXsequential_166/lstm_499/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_166/lstm_499/while/lstm_cell_427/MatMul/ReadVariableOpReadVariableOpLsequential_166_lstm_499_while_lstm_cell_427_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_166/lstm_499/while/lstm_cell_427/MatMulMatMulHsequential_166/lstm_499/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_166/lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_166/lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOpNsequential_166_lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_166/lstm_499/while/lstm_cell_427/MatMul_1MatMul+sequential_166_lstm_499_while_placeholder_2Ksequential_166/lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_166/lstm_499/while/lstm_cell_427/addAddV2<sequential_166/lstm_499/while/lstm_cell_427/MatMul:product:0>sequential_166/lstm_499/while/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_166/lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOpMsequential_166_lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_166/lstm_499/while/lstm_cell_427/BiasAddBiasAdd3sequential_166/lstm_499/while/lstm_cell_427/add:z:0Jsequential_166/lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_166/lstm_499/while/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_166/lstm_499/while/lstm_cell_427/splitSplitDsequential_166/lstm_499/while/lstm_cell_427/split/split_dim:output:0<sequential_166/lstm_499/while/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_166/lstm_499/while/lstm_cell_427/SigmoidSigmoid:sequential_166/lstm_499/while/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_166/lstm_499/while/lstm_cell_427/Sigmoid_1Sigmoid:sequential_166/lstm_499/while/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_166/lstm_499/while/lstm_cell_427/mulMul9sequential_166/lstm_499/while/lstm_cell_427/Sigmoid_1:y:0+sequential_166_lstm_499_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_166/lstm_499/while/lstm_cell_427/ReluRelu:sequential_166/lstm_499/while/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_166/lstm_499/while/lstm_cell_427/mul_1Mul7sequential_166/lstm_499/while/lstm_cell_427/Sigmoid:y:0>sequential_166/lstm_499/while/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_166/lstm_499/while/lstm_cell_427/add_1AddV23sequential_166/lstm_499/while/lstm_cell_427/mul:z:05sequential_166/lstm_499/while/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_166/lstm_499/while/lstm_cell_427/Sigmoid_2Sigmoid:sequential_166/lstm_499/while/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_166/lstm_499/while/lstm_cell_427/Relu_1Relu5sequential_166/lstm_499/while/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_166/lstm_499/while/lstm_cell_427/mul_2Mul9sequential_166/lstm_499/while/lstm_cell_427/Sigmoid_2:y:0@sequential_166/lstm_499/while/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_166/lstm_499/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_166_lstm_499_while_placeholder_1)sequential_166_lstm_499_while_placeholder5sequential_166/lstm_499/while/lstm_cell_427/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_166/lstm_499/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_166/lstm_499/while/addAddV2)sequential_166_lstm_499_while_placeholder,sequential_166/lstm_499/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_166/lstm_499/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_166/lstm_499/while/add_1AddV2Hsequential_166_lstm_499_while_sequential_166_lstm_499_while_loop_counter.sequential_166/lstm_499/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_166/lstm_499/while/IdentityIdentity'sequential_166/lstm_499/while/add_1:z:0#^sequential_166/lstm_499/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_499/while/Identity_1IdentityNsequential_166_lstm_499_while_sequential_166_lstm_499_while_maximum_iterations#^sequential_166/lstm_499/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_499/while/Identity_2Identity%sequential_166/lstm_499/while/add:z:0#^sequential_166/lstm_499/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_499/while/Identity_3IdentityRsequential_166/lstm_499/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_166/lstm_499/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_499/while/Identity_4Identity5sequential_166/lstm_499/while/lstm_cell_427/mul_2:z:0#^sequential_166/lstm_499/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_166/lstm_499/while/Identity_5Identity5sequential_166/lstm_499/while/lstm_cell_427/add_1:z:0#^sequential_166/lstm_499/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_166/lstm_499/while/NoOpNoOpC^sequential_166/lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOpB^sequential_166/lstm_499/while/lstm_cell_427/MatMul/ReadVariableOpD^sequential_166/lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_166_lstm_499_while_identity/sequential_166/lstm_499/while/Identity:output:0"]
(sequential_166_lstm_499_while_identity_11sequential_166/lstm_499/while/Identity_1:output:0"]
(sequential_166_lstm_499_while_identity_21sequential_166/lstm_499/while/Identity_2:output:0"]
(sequential_166_lstm_499_while_identity_31sequential_166/lstm_499/while/Identity_3:output:0"]
(sequential_166_lstm_499_while_identity_41sequential_166/lstm_499/while/Identity_4:output:0"]
(sequential_166_lstm_499_while_identity_51sequential_166/lstm_499/while/Identity_5:output:0"?
Ksequential_166_lstm_499_while_lstm_cell_427_biasadd_readvariableop_resourceMsequential_166_lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource_0"?
Lsequential_166_lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resourceNsequential_166_lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource_0"?
Jsequential_166_lstm_499_while_lstm_cell_427_matmul_readvariableop_resourceLsequential_166_lstm_499_while_lstm_cell_427_matmul_readvariableop_resource_0"?
Esequential_166_lstm_499_while_sequential_166_lstm_499_strided_slice_1Gsequential_166_lstm_499_while_sequential_166_lstm_499_strided_slice_1_0"?
?sequential_166_lstm_499_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_499_tensorarrayunstack_tensorlistfromtensor?sequential_166_lstm_499_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_499_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_166/lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOpBsequential_166/lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp2?
Asequential_166/lstm_499/while/lstm_cell_427/MatMul/ReadVariableOpAsequential_166/lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp2?
Csequential_166/lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOpCsequential_166/lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2589311

inputs?
,lstm_cell_427_matmul_readvariableop_resource:	d?A
.lstm_cell_427_matmul_1_readvariableop_resource:	2?<
-lstm_cell_427_biasadd_readvariableop_resource:	?
identity??$lstm_cell_427/BiasAdd/ReadVariableOp?#lstm_cell_427/MatMul/ReadVariableOp?%lstm_cell_427/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_427/MatMul/ReadVariableOpReadVariableOp,lstm_cell_427_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_427/MatMulMatMulstrided_slice_2:output:0+lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_427_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_427/MatMul_1MatMulzeros:output:0-lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_427/addAddV2lstm_cell_427/MatMul:product:0 lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_427/BiasAddBiasAddlstm_cell_427/add:z:0,lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_427/splitSplit&lstm_cell_427/split/split_dim:output:0lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_427/SigmoidSigmoidlstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_1Sigmoidlstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_427/mulMullstm_cell_427/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_427/ReluRelulstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_1Mullstm_cell_427/Sigmoid:y:0 lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_427/add_1AddV2lstm_cell_427/mul:z:0lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_2Sigmoidlstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_427/Relu_1Relulstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_2Mullstm_cell_427/Sigmoid_2:y:0"lstm_cell_427/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_427_matmul_readvariableop_resource.lstm_cell_427_matmul_1_readvariableop_resource-lstm_cell_427_biasadd_readvariableop_resource*
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
while_body_2589227*
condR
while_cond_2589226*K
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
NoOpNoOp%^lstm_cell_427/BiasAdd/ReadVariableOp$^lstm_cell_427/MatMul/ReadVariableOp&^lstm_cell_427/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_427/BiasAdd/ReadVariableOp$lstm_cell_427/BiasAdd/ReadVariableOp2J
#lstm_cell_427/MatMul/ReadVariableOp#lstm_cell_427/MatMul/ReadVariableOp2N
%lstm_cell_427/MatMul_1/ReadVariableOp%lstm_cell_427/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2590845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_426_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_426_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_426_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_426_matmul_readvariableop_resource:	?G
4while_lstm_cell_426_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_426_biasadd_readvariableop_resource:	???*while/lstm_cell_426/BiasAdd/ReadVariableOp?)while/lstm_cell_426/MatMul/ReadVariableOp?+while/lstm_cell_426/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_426/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_426_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_426/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_426_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_426/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_426/addAddV2$while/lstm_cell_426/MatMul:product:0&while/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_426_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_426/BiasAddBiasAddwhile/lstm_cell_426/add:z:02while/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_426/splitSplit,while/lstm_cell_426/split/split_dim:output:0$while/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_426/SigmoidSigmoid"while/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_1Sigmoid"while/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mulMul!while/lstm_cell_426/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_426/ReluRelu"while/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_1Mulwhile/lstm_cell_426/Sigmoid:y:0&while/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/add_1AddV2while/lstm_cell_426/mul:z:0while/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_2Sigmoid"while/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_426/Relu_1Reluwhile/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_2Mul!while/lstm_cell_426/Sigmoid_2:y:0(while/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_426/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_426/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_426/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_426/BiasAdd/ReadVariableOp*^while/lstm_cell_426/MatMul/ReadVariableOp,^while/lstm_cell_426/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_426_biasadd_readvariableop_resource5while_lstm_cell_426_biasadd_readvariableop_resource_0"n
4while_lstm_cell_426_matmul_1_readvariableop_resource6while_lstm_cell_426_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_426_matmul_readvariableop_resource4while_lstm_cell_426_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_426/BiasAdd/ReadVariableOp*while/lstm_cell_426/BiasAdd/ReadVariableOp2V
)while/lstm_cell_426/MatMul/ReadVariableOp)while/lstm_cell_426/MatMul/ReadVariableOp2Z
+while/lstm_cell_426/MatMul_1/ReadVariableOp+while/lstm_cell_426/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2590988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_426_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_426_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_426_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_426_matmul_readvariableop_resource:	?G
4while_lstm_cell_426_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_426_biasadd_readvariableop_resource:	???*while/lstm_cell_426/BiasAdd/ReadVariableOp?)while/lstm_cell_426/MatMul/ReadVariableOp?+while/lstm_cell_426/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_426/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_426_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_426/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_426_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_426/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_426/addAddV2$while/lstm_cell_426/MatMul:product:0&while/lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_426_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_426/BiasAddBiasAddwhile/lstm_cell_426/add:z:02while/lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_426/splitSplit,while/lstm_cell_426/split/split_dim:output:0$while/lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_426/SigmoidSigmoid"while/lstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_1Sigmoid"while/lstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mulMul!while/lstm_cell_426/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_426/ReluRelu"while/lstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_1Mulwhile/lstm_cell_426/Sigmoid:y:0&while/lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/add_1AddV2while/lstm_cell_426/mul:z:0while/lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_426/Sigmoid_2Sigmoid"while/lstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_426/Relu_1Reluwhile/lstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_426/mul_2Mul!while/lstm_cell_426/Sigmoid_2:y:0(while/lstm_cell_426/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_426/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_426/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_426/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_426/BiasAdd/ReadVariableOp*^while/lstm_cell_426/MatMul/ReadVariableOp,^while/lstm_cell_426/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_426_biasadd_readvariableop_resource5while_lstm_cell_426_biasadd_readvariableop_resource_0"n
4while_lstm_cell_426_matmul_1_readvariableop_resource6while_lstm_cell_426_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_426_matmul_readvariableop_resource4while_lstm_cell_426_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_426/BiasAdd/ReadVariableOp*while/lstm_cell_426/BiasAdd/ReadVariableOp2V
)while/lstm_cell_426/MatMul/ReadVariableOp)while/lstm_cell_426/MatMul/ReadVariableOp2Z
+while/lstm_cell_426/MatMul_1/ReadVariableOp+while/lstm_cell_426/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2591318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_427_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_427_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_427_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_427_matmul_readvariableop_resource:	d?G
4while_lstm_cell_427_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_427_biasadd_readvariableop_resource:	???*while/lstm_cell_427/BiasAdd/ReadVariableOp?)while/lstm_cell_427/MatMul/ReadVariableOp?+while/lstm_cell_427/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_427/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_427_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_427/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_427_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_427/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_427/addAddV2$while/lstm_cell_427/MatMul:product:0&while/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_427_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_427/BiasAddBiasAddwhile/lstm_cell_427/add:z:02while/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_427/splitSplit,while/lstm_cell_427/split/split_dim:output:0$while/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_427/SigmoidSigmoid"while/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_1Sigmoid"while/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mulMul!while/lstm_cell_427/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_427/ReluRelu"while/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_1Mulwhile/lstm_cell_427/Sigmoid:y:0&while/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/add_1AddV2while/lstm_cell_427/mul:z:0while/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_2Sigmoid"while/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_427/Relu_1Reluwhile/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_2Mul!while/lstm_cell_427/Sigmoid_2:y:0(while/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_427/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_427/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_427/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_427/BiasAdd/ReadVariableOp*^while/lstm_cell_427/MatMul/ReadVariableOp,^while/lstm_cell_427/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_427_biasadd_readvariableop_resource5while_lstm_cell_427_biasadd_readvariableop_resource_0"n
4while_lstm_cell_427_matmul_1_readvariableop_resource6while_lstm_cell_427_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_427_matmul_readvariableop_resource4while_lstm_cell_427_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_427/BiasAdd/ReadVariableOp*while/lstm_cell_427/BiasAdd/ReadVariableOp2V
)while/lstm_cell_427/MatMul/ReadVariableOp)while/lstm_cell_427/MatMul/ReadVariableOp2Z
+while/lstm_cell_427/MatMul_1/ReadVariableOp+while/lstm_cell_427/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_166_layer_call_fn_2589745

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
K__inference_sequential_166_layer_call_and_return_conditional_losses_2589544o
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
while_cond_2590844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2590844___redundant_placeholder05
1while_while_cond_2590844___redundant_placeholder15
1while_while_cond_2590844___redundant_placeholder25
1while_while_cond_2590844___redundant_placeholder3
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2590929
inputs_0?
,lstm_cell_426_matmul_readvariableop_resource:	?A
.lstm_cell_426_matmul_1_readvariableop_resource:	d?<
-lstm_cell_426_biasadd_readvariableop_resource:	?
identity??$lstm_cell_426/BiasAdd/ReadVariableOp?#lstm_cell_426/MatMul/ReadVariableOp?%lstm_cell_426/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_426/MatMul/ReadVariableOpReadVariableOp,lstm_cell_426_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_426/MatMulMatMulstrided_slice_2:output:0+lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_426_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_426/MatMul_1MatMulzeros:output:0-lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_426/addAddV2lstm_cell_426/MatMul:product:0 lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_426/BiasAddBiasAddlstm_cell_426/add:z:0,lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_426/splitSplit&lstm_cell_426/split/split_dim:output:0lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_426/SigmoidSigmoidlstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_1Sigmoidlstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_426/mulMullstm_cell_426/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_426/ReluRelulstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_1Mullstm_cell_426/Sigmoid:y:0 lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_426/add_1AddV2lstm_cell_426/mul:z:0lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_2Sigmoidlstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_426/Relu_1Relulstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_2Mullstm_cell_426/Sigmoid_2:y:0"lstm_cell_426/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_426_matmul_readvariableop_resource.lstm_cell_426_matmul_1_readvariableop_resource-lstm_cell_426_biasadd_readvariableop_resource*
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
while_body_2590845*
condR
while_cond_2590844*K
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
NoOpNoOp%^lstm_cell_426/BiasAdd/ReadVariableOp$^lstm_cell_426/MatMul/ReadVariableOp&^lstm_cell_426/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_426/BiasAdd/ReadVariableOp$lstm_cell_426/BiasAdd/ReadVariableOp2J
#lstm_cell_426/MatMul/ReadVariableOp#lstm_cell_426/MatMul/ReadVariableOp2N
%lstm_cell_426/MatMul_1/ReadVariableOp%lstm_cell_426/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_2592220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_428_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_428_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_428_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_428_matmul_readvariableop_resource:2(F
4while_lstm_cell_428_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_428_biasadd_readvariableop_resource:(??*while/lstm_cell_428/BiasAdd/ReadVariableOp?)while/lstm_cell_428/MatMul/ReadVariableOp?+while/lstm_cell_428/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_428/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_428_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_428/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_428_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_428/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_428/addAddV2$while/lstm_cell_428/MatMul:product:0&while/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_428_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_428/BiasAddBiasAddwhile/lstm_cell_428/add:z:02while/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_428/splitSplit,while/lstm_cell_428/split/split_dim:output:0$while/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_428/SigmoidSigmoid"while/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_1Sigmoid"while/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mulMul!while/lstm_cell_428/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_428/ReluRelu"while/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_1Mulwhile/lstm_cell_428/Sigmoid:y:0&while/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/add_1AddV2while/lstm_cell_428/mul:z:0while/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_2Sigmoid"while/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_428/Relu_1Reluwhile/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_2Mul!while/lstm_cell_428/Sigmoid_2:y:0(while/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_428/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_428/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_428/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_428/BiasAdd/ReadVariableOp*^while/lstm_cell_428/MatMul/ReadVariableOp,^while/lstm_cell_428/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_428_biasadd_readvariableop_resource5while_lstm_cell_428_biasadd_readvariableop_resource_0"n
4while_lstm_cell_428_matmul_1_readvariableop_resource6while_lstm_cell_428_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_428_matmul_readvariableop_resource4while_lstm_cell_428_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_428/BiasAdd/ReadVariableOp*while/lstm_cell_428/BiasAdd/ReadVariableOp2V
)while/lstm_cell_428/MatMul/ReadVariableOp)while/lstm_cell_428/MatMul/ReadVariableOp2Z
+while/lstm_cell_428/MatMul_1/ReadVariableOp+while/lstm_cell_428/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2588281

inputs'
lstm_cell_428_2588199:2('
lstm_cell_428_2588201:
(#
lstm_cell_428_2588203:(
identity??%lstm_cell_428/StatefulPartitionedCall?while;
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
%lstm_cell_428/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_428_2588199lstm_cell_428_2588201lstm_cell_428_2588203*
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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2588198n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_428_2588199lstm_cell_428_2588201lstm_cell_428_2588203*
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
while_body_2588212*
condR
while_cond_2588211*K
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
NoOpNoOp&^lstm_cell_428/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_428/StatefulPartitionedCall%lstm_cell_428/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591688

inputs?
,lstm_cell_427_matmul_readvariableop_resource:	d?A
.lstm_cell_427_matmul_1_readvariableop_resource:	2?<
-lstm_cell_427_biasadd_readvariableop_resource:	?
identity??$lstm_cell_427/BiasAdd/ReadVariableOp?#lstm_cell_427/MatMul/ReadVariableOp?%lstm_cell_427/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_427/MatMul/ReadVariableOpReadVariableOp,lstm_cell_427_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_427/MatMulMatMulstrided_slice_2:output:0+lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_427_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_427/MatMul_1MatMulzeros:output:0-lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_427/addAddV2lstm_cell_427/MatMul:product:0 lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_427/BiasAddBiasAddlstm_cell_427/add:z:0,lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_427/splitSplit&lstm_cell_427/split/split_dim:output:0lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_427/SigmoidSigmoidlstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_1Sigmoidlstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_427/mulMullstm_cell_427/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_427/ReluRelulstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_1Mullstm_cell_427/Sigmoid:y:0 lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_427/add_1AddV2lstm_cell_427/mul:z:0lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_2Sigmoidlstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_427/Relu_1Relulstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_2Mullstm_cell_427/Sigmoid_2:y:0"lstm_cell_427/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_427_matmul_readvariableop_resource.lstm_cell_427_matmul_1_readvariableop_resource-lstm_cell_427_biasadd_readvariableop_resource*
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
while_body_2591604*
condR
while_cond_2591603*K
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
NoOpNoOp%^lstm_cell_427/BiasAdd/ReadVariableOp$^lstm_cell_427/MatMul/ReadVariableOp&^lstm_cell_427/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_427/BiasAdd/ReadVariableOp$lstm_cell_427/BiasAdd/ReadVariableOp2J
#lstm_cell_427/MatMul/ReadVariableOp#lstm_cell_427/MatMul/ReadVariableOp2N
%lstm_cell_427/MatMul_1/ReadVariableOp%lstm_cell_427/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2592219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2592219___redundant_placeholder05
1while_while_cond_2592219___redundant_placeholder15
1while_while_cond_2592219___redundant_placeholder25
1while_while_cond_2592219___redundant_placeholder3
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
%__inference_signature_wrapper_2589691
lstm_498_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_498_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2587431o
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
_user_specified_namelstm_498_input
?8
?
while_body_2589062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_428_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_428_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_428_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_428_matmul_readvariableop_resource:2(F
4while_lstm_cell_428_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_428_biasadd_readvariableop_resource:(??*while/lstm_cell_428/BiasAdd/ReadVariableOp?)while/lstm_cell_428/MatMul/ReadVariableOp?+while/lstm_cell_428/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_428/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_428_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_428/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_428_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_428/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_428/addAddV2$while/lstm_cell_428/MatMul:product:0&while/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_428_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_428/BiasAddBiasAddwhile/lstm_cell_428/add:z:02while/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_428/splitSplit,while/lstm_cell_428/split/split_dim:output:0$while/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_428/SigmoidSigmoid"while/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_1Sigmoid"while/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mulMul!while/lstm_cell_428/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_428/ReluRelu"while/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_1Mulwhile/lstm_cell_428/Sigmoid:y:0&while/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/add_1AddV2while/lstm_cell_428/mul:z:0while/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_428/Sigmoid_2Sigmoid"while/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_428/Relu_1Reluwhile/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_428/mul_2Mul!while/lstm_cell_428/Sigmoid_2:y:0(while/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_428/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_428/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_428/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_428/BiasAdd/ReadVariableOp*^while/lstm_cell_428/MatMul/ReadVariableOp,^while/lstm_cell_428/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_428_biasadd_readvariableop_resource5while_lstm_cell_428_biasadd_readvariableop_resource_0"n
4while_lstm_cell_428_matmul_1_readvariableop_resource6while_lstm_cell_428_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_428_matmul_readvariableop_resource4while_lstm_cell_428_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_428/BiasAdd/ReadVariableOp*while/lstm_cell_428/BiasAdd/ReadVariableOp2V
)while/lstm_cell_428/MatMul/ReadVariableOp)while/lstm_cell_428/MatMul/ReadVariableOp2Z
+while/lstm_cell_428/MatMul_1/ReadVariableOp+while/lstm_cell_428/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2590786
inputs_0?
,lstm_cell_426_matmul_readvariableop_resource:	?A
.lstm_cell_426_matmul_1_readvariableop_resource:	d?<
-lstm_cell_426_biasadd_readvariableop_resource:	?
identity??$lstm_cell_426/BiasAdd/ReadVariableOp?#lstm_cell_426/MatMul/ReadVariableOp?%lstm_cell_426/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_426/MatMul/ReadVariableOpReadVariableOp,lstm_cell_426_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_426/MatMulMatMulstrided_slice_2:output:0+lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_426_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_426/MatMul_1MatMulzeros:output:0-lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_426/addAddV2lstm_cell_426/MatMul:product:0 lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_426/BiasAddBiasAddlstm_cell_426/add:z:0,lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_426/splitSplit&lstm_cell_426/split/split_dim:output:0lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_426/SigmoidSigmoidlstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_1Sigmoidlstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_426/mulMullstm_cell_426/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_426/ReluRelulstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_1Mullstm_cell_426/Sigmoid:y:0 lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_426/add_1AddV2lstm_cell_426/mul:z:0lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_2Sigmoidlstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_426/Relu_1Relulstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_2Mullstm_cell_426/Sigmoid_2:y:0"lstm_cell_426/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_426_matmul_readvariableop_resource.lstm_cell_426_matmul_1_readvariableop_resource-lstm_cell_426_biasadd_readvariableop_resource*
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
while_body_2590702*
condR
while_cond_2590701*K
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
NoOpNoOp%^lstm_cell_426/BiasAdd/ReadVariableOp$^lstm_cell_426/MatMul/ReadVariableOp&^lstm_cell_426/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_426/BiasAdd/ReadVariableOp$lstm_cell_426/BiasAdd/ReadVariableOp2J
#lstm_cell_426/MatMul/ReadVariableOp#lstm_cell_426/MatMul/ReadVariableOp2N
%lstm_cell_426/MatMul_1/ReadVariableOp%lstm_cell_426/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*sequential_166_lstm_498_while_cond_2587062L
Hsequential_166_lstm_498_while_sequential_166_lstm_498_while_loop_counterR
Nsequential_166_lstm_498_while_sequential_166_lstm_498_while_maximum_iterations-
)sequential_166_lstm_498_while_placeholder/
+sequential_166_lstm_498_while_placeholder_1/
+sequential_166_lstm_498_while_placeholder_2/
+sequential_166_lstm_498_while_placeholder_3N
Jsequential_166_lstm_498_while_less_sequential_166_lstm_498_strided_slice_1e
asequential_166_lstm_498_while_sequential_166_lstm_498_while_cond_2587062___redundant_placeholder0e
asequential_166_lstm_498_while_sequential_166_lstm_498_while_cond_2587062___redundant_placeholder1e
asequential_166_lstm_498_while_sequential_166_lstm_498_while_cond_2587062___redundant_placeholder2e
asequential_166_lstm_498_while_sequential_166_lstm_498_while_cond_2587062___redundant_placeholder3*
&sequential_166_lstm_498_while_identity
?
"sequential_166/lstm_498/while/LessLess)sequential_166_lstm_498_while_placeholderJsequential_166_lstm_498_while_less_sequential_166_lstm_498_strided_slice_1*
T0*
_output_shapes
: {
&sequential_166/lstm_498/while/IdentityIdentity&sequential_166/lstm_498/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_166_lstm_498_while_identity/sequential_166/lstm_498/while/Identity:output:0*(
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
while_body_2589227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_427_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_427_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_427_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_427_matmul_readvariableop_resource:	d?G
4while_lstm_cell_427_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_427_biasadd_readvariableop_resource:	???*while/lstm_cell_427/BiasAdd/ReadVariableOp?)while/lstm_cell_427/MatMul/ReadVariableOp?+while/lstm_cell_427/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_427/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_427_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_427/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_427_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_427/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_427/addAddV2$while/lstm_cell_427/MatMul:product:0&while/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_427_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_427/BiasAddBiasAddwhile/lstm_cell_427/add:z:02while/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_427/splitSplit,while/lstm_cell_427/split/split_dim:output:0$while/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_427/SigmoidSigmoid"while/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_1Sigmoid"while/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mulMul!while/lstm_cell_427/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_427/ReluRelu"while/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_1Mulwhile/lstm_cell_427/Sigmoid:y:0&while/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/add_1AddV2while/lstm_cell_427/mul:z:0while/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_2Sigmoid"while/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_427/Relu_1Reluwhile/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_2Mul!while/lstm_cell_427/Sigmoid_2:y:0(while/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_427/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_427/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_427/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_427/BiasAdd/ReadVariableOp*^while/lstm_cell_427/MatMul/ReadVariableOp,^while/lstm_cell_427/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_427_biasadd_readvariableop_resource5while_lstm_cell_427_biasadd_readvariableop_resource_0"n
4while_lstm_cell_427_matmul_1_readvariableop_resource6while_lstm_cell_427_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_427_matmul_readvariableop_resource4while_lstm_cell_427_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_427/BiasAdd/ReadVariableOp*while/lstm_cell_427/BiasAdd/ReadVariableOp2V
)while/lstm_cell_427/MatMul/ReadVariableOp)while/lstm_cell_427/MatMul/ReadVariableOp2Z
+while/lstm_cell_427/MatMul_1/ReadVariableOp+while/lstm_cell_427/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2587512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_426_2587536_0:	?0
while_lstm_cell_426_2587538_0:	d?,
while_lstm_cell_426_2587540_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_426_2587536:	?.
while_lstm_cell_426_2587538:	d?*
while_lstm_cell_426_2587540:	???+while/lstm_cell_426/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_426/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_426_2587536_0while_lstm_cell_426_2587538_0while_lstm_cell_426_2587540_0*
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
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2587498?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_426/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_426/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_426/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_426/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_426_2587536while_lstm_cell_426_2587536_0"<
while_lstm_cell_426_2587538while_lstm_cell_426_2587538_0"<
while_lstm_cell_426_2587540while_lstm_cell_426_2587540_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_426/StatefulPartitionedCall+while/lstm_cell_426/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2587862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_427_2587886_0:	d?0
while_lstm_cell_427_2587888_0:	2?,
while_lstm_cell_427_2587890_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_427_2587886:	d?.
while_lstm_cell_427_2587888:	2?*
while_lstm_cell_427_2587890:	???+while/lstm_cell_427/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_427/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_427_2587886_0while_lstm_cell_427_2587888_0while_lstm_cell_427_2587890_0*
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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2587848?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_427/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_427/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_427/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_427/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_427_2587886while_lstm_cell_427_2587886_0"<
while_lstm_cell_427_2587888while_lstm_cell_427_2587888_0"<
while_lstm_cell_427_2587890while_lstm_cell_427_2587890_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_427/StatefulPartitionedCall+while/lstm_cell_427/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_427_layer_call_fn_2592598

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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2587994o
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
*sequential_166_lstm_500_while_body_2587341L
Hsequential_166_lstm_500_while_sequential_166_lstm_500_while_loop_counterR
Nsequential_166_lstm_500_while_sequential_166_lstm_500_while_maximum_iterations-
)sequential_166_lstm_500_while_placeholder/
+sequential_166_lstm_500_while_placeholder_1/
+sequential_166_lstm_500_while_placeholder_2/
+sequential_166_lstm_500_while_placeholder_3K
Gsequential_166_lstm_500_while_sequential_166_lstm_500_strided_slice_1_0?
?sequential_166_lstm_500_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_500_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_166_lstm_500_while_lstm_cell_428_matmul_readvariableop_resource_0:2(`
Nsequential_166_lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource_0:
([
Msequential_166_lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource_0:(*
&sequential_166_lstm_500_while_identity,
(sequential_166_lstm_500_while_identity_1,
(sequential_166_lstm_500_while_identity_2,
(sequential_166_lstm_500_while_identity_3,
(sequential_166_lstm_500_while_identity_4,
(sequential_166_lstm_500_while_identity_5I
Esequential_166_lstm_500_while_sequential_166_lstm_500_strided_slice_1?
?sequential_166_lstm_500_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_500_tensorarrayunstack_tensorlistfromtensor\
Jsequential_166_lstm_500_while_lstm_cell_428_matmul_readvariableop_resource:2(^
Lsequential_166_lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource:
(Y
Ksequential_166_lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource:(??Bsequential_166/lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp?Asequential_166/lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp?Csequential_166/lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp?
Osequential_166/lstm_500/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_166/lstm_500/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_166_lstm_500_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_500_tensorarrayunstack_tensorlistfromtensor_0)sequential_166_lstm_500_while_placeholderXsequential_166/lstm_500/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_166/lstm_500/while/lstm_cell_428/MatMul/ReadVariableOpReadVariableOpLsequential_166_lstm_500_while_lstm_cell_428_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_166/lstm_500/while/lstm_cell_428/MatMulMatMulHsequential_166/lstm_500/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_166/lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_166/lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOpNsequential_166_lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_166/lstm_500/while/lstm_cell_428/MatMul_1MatMul+sequential_166_lstm_500_while_placeholder_2Ksequential_166/lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_166/lstm_500/while/lstm_cell_428/addAddV2<sequential_166/lstm_500/while/lstm_cell_428/MatMul:product:0>sequential_166/lstm_500/while/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_166/lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOpMsequential_166_lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_166/lstm_500/while/lstm_cell_428/BiasAddBiasAdd3sequential_166/lstm_500/while/lstm_cell_428/add:z:0Jsequential_166/lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_166/lstm_500/while/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_166/lstm_500/while/lstm_cell_428/splitSplitDsequential_166/lstm_500/while/lstm_cell_428/split/split_dim:output:0<sequential_166/lstm_500/while/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_166/lstm_500/while/lstm_cell_428/SigmoidSigmoid:sequential_166/lstm_500/while/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_166/lstm_500/while/lstm_cell_428/Sigmoid_1Sigmoid:sequential_166/lstm_500/while/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_166/lstm_500/while/lstm_cell_428/mulMul9sequential_166/lstm_500/while/lstm_cell_428/Sigmoid_1:y:0+sequential_166_lstm_500_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_166/lstm_500/while/lstm_cell_428/ReluRelu:sequential_166/lstm_500/while/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_166/lstm_500/while/lstm_cell_428/mul_1Mul7sequential_166/lstm_500/while/lstm_cell_428/Sigmoid:y:0>sequential_166/lstm_500/while/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_166/lstm_500/while/lstm_cell_428/add_1AddV23sequential_166/lstm_500/while/lstm_cell_428/mul:z:05sequential_166/lstm_500/while/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_166/lstm_500/while/lstm_cell_428/Sigmoid_2Sigmoid:sequential_166/lstm_500/while/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_166/lstm_500/while/lstm_cell_428/Relu_1Relu5sequential_166/lstm_500/while/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_166/lstm_500/while/lstm_cell_428/mul_2Mul9sequential_166/lstm_500/while/lstm_cell_428/Sigmoid_2:y:0@sequential_166/lstm_500/while/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_166/lstm_500/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_166_lstm_500_while_placeholder_1)sequential_166_lstm_500_while_placeholder5sequential_166/lstm_500/while/lstm_cell_428/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_166/lstm_500/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_166/lstm_500/while/addAddV2)sequential_166_lstm_500_while_placeholder,sequential_166/lstm_500/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_166/lstm_500/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_166/lstm_500/while/add_1AddV2Hsequential_166_lstm_500_while_sequential_166_lstm_500_while_loop_counter.sequential_166/lstm_500/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_166/lstm_500/while/IdentityIdentity'sequential_166/lstm_500/while/add_1:z:0#^sequential_166/lstm_500/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_500/while/Identity_1IdentityNsequential_166_lstm_500_while_sequential_166_lstm_500_while_maximum_iterations#^sequential_166/lstm_500/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_500/while/Identity_2Identity%sequential_166/lstm_500/while/add:z:0#^sequential_166/lstm_500/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_500/while/Identity_3IdentityRsequential_166/lstm_500/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_166/lstm_500/while/NoOp*
T0*
_output_shapes
: ?
(sequential_166/lstm_500/while/Identity_4Identity5sequential_166/lstm_500/while/lstm_cell_428/mul_2:z:0#^sequential_166/lstm_500/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_166/lstm_500/while/Identity_5Identity5sequential_166/lstm_500/while/lstm_cell_428/add_1:z:0#^sequential_166/lstm_500/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_166/lstm_500/while/NoOpNoOpC^sequential_166/lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOpB^sequential_166/lstm_500/while/lstm_cell_428/MatMul/ReadVariableOpD^sequential_166/lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_166_lstm_500_while_identity/sequential_166/lstm_500/while/Identity:output:0"]
(sequential_166_lstm_500_while_identity_11sequential_166/lstm_500/while/Identity_1:output:0"]
(sequential_166_lstm_500_while_identity_21sequential_166/lstm_500/while/Identity_2:output:0"]
(sequential_166_lstm_500_while_identity_31sequential_166/lstm_500/while/Identity_3:output:0"]
(sequential_166_lstm_500_while_identity_41sequential_166/lstm_500/while/Identity_4:output:0"]
(sequential_166_lstm_500_while_identity_51sequential_166/lstm_500/while/Identity_5:output:0"?
Ksequential_166_lstm_500_while_lstm_cell_428_biasadd_readvariableop_resourceMsequential_166_lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource_0"?
Lsequential_166_lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resourceNsequential_166_lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource_0"?
Jsequential_166_lstm_500_while_lstm_cell_428_matmul_readvariableop_resourceLsequential_166_lstm_500_while_lstm_cell_428_matmul_readvariableop_resource_0"?
Esequential_166_lstm_500_while_sequential_166_lstm_500_strided_slice_1Gsequential_166_lstm_500_while_sequential_166_lstm_500_strided_slice_1_0"?
?sequential_166_lstm_500_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_500_tensorarrayunstack_tensorlistfromtensor?sequential_166_lstm_500_while_tensorarrayv2read_tensorlistgetitem_sequential_166_lstm_500_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_166/lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOpBsequential_166/lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp2?
Asequential_166/lstm_500/while/lstm_cell_428/MatMul/ReadVariableOpAsequential_166/lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp2?
Csequential_166/lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOpCsequential_166/lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_498_while_cond_2590230.
*lstm_498_while_lstm_498_while_loop_counter4
0lstm_498_while_lstm_498_while_maximum_iterations
lstm_498_while_placeholder 
lstm_498_while_placeholder_1 
lstm_498_while_placeholder_2 
lstm_498_while_placeholder_30
,lstm_498_while_less_lstm_498_strided_slice_1G
Clstm_498_while_lstm_498_while_cond_2590230___redundant_placeholder0G
Clstm_498_while_lstm_498_while_cond_2590230___redundant_placeholder1G
Clstm_498_while_lstm_498_while_cond_2590230___redundant_placeholder2G
Clstm_498_while_lstm_498_while_cond_2590230___redundant_placeholder3
lstm_498_while_identity
?
lstm_498/while/LessLesslstm_498_while_placeholder,lstm_498_while_less_lstm_498_strided_slice_1*
T0*
_output_shapes
: ]
lstm_498/while/IdentityIdentitylstm_498/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_498_while_identity lstm_498/while/Identity:output:0*(
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2591072

inputs?
,lstm_cell_426_matmul_readvariableop_resource:	?A
.lstm_cell_426_matmul_1_readvariableop_resource:	d?<
-lstm_cell_426_biasadd_readvariableop_resource:	?
identity??$lstm_cell_426/BiasAdd/ReadVariableOp?#lstm_cell_426/MatMul/ReadVariableOp?%lstm_cell_426/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_426/MatMul/ReadVariableOpReadVariableOp,lstm_cell_426_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_426/MatMulMatMulstrided_slice_2:output:0+lstm_cell_426/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_426/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_426_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_426/MatMul_1MatMulzeros:output:0-lstm_cell_426/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_426/addAddV2lstm_cell_426/MatMul:product:0 lstm_cell_426/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_426/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_426_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_426/BiasAddBiasAddlstm_cell_426/add:z:0,lstm_cell_426/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_426/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_426/splitSplit&lstm_cell_426/split/split_dim:output:0lstm_cell_426/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_426/SigmoidSigmoidlstm_cell_426/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_1Sigmoidlstm_cell_426/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_426/mulMullstm_cell_426/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_426/ReluRelulstm_cell_426/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_1Mullstm_cell_426/Sigmoid:y:0 lstm_cell_426/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_426/add_1AddV2lstm_cell_426/mul:z:0lstm_cell_426/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_426/Sigmoid_2Sigmoidlstm_cell_426/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_426/Relu_1Relulstm_cell_426/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_426/mul_2Mullstm_cell_426/Sigmoid_2:y:0"lstm_cell_426/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_426_matmul_readvariableop_resource.lstm_cell_426_matmul_1_readvariableop_resource-lstm_cell_426_biasadd_readvariableop_resource*
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
while_body_2590988*
condR
while_cond_2590987*K
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
NoOpNoOp%^lstm_cell_426/BiasAdd/ReadVariableOp$^lstm_cell_426/MatMul/ReadVariableOp&^lstm_cell_426/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_426/BiasAdd/ReadVariableOp$lstm_cell_426/BiasAdd/ReadVariableOp2J
#lstm_cell_426/MatMul/ReadVariableOp#lstm_cell_426/MatMul/ReadVariableOp2N
%lstm_cell_426/MatMul_1/ReadVariableOp%lstm_cell_426/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592447

inputs>
,lstm_cell_428_matmul_readvariableop_resource:2(@
.lstm_cell_428_matmul_1_readvariableop_resource:
(;
-lstm_cell_428_biasadd_readvariableop_resource:(
identity??$lstm_cell_428/BiasAdd/ReadVariableOp?#lstm_cell_428/MatMul/ReadVariableOp?%lstm_cell_428/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_428/MatMul/ReadVariableOpReadVariableOp,lstm_cell_428_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_428/MatMulMatMulstrided_slice_2:output:0+lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_428_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_428/MatMul_1MatMulzeros:output:0-lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_428/addAddV2lstm_cell_428/MatMul:product:0 lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_428_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_428/BiasAddBiasAddlstm_cell_428/add:z:0,lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_428/splitSplit&lstm_cell_428/split/split_dim:output:0lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_428/SigmoidSigmoidlstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_1Sigmoidlstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_428/mulMullstm_cell_428/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_428/ReluRelulstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_1Mullstm_cell_428/Sigmoid:y:0 lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_428/add_1AddV2lstm_cell_428/mul:z:0lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_2Sigmoidlstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_428/Relu_1Relulstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_2Mullstm_cell_428/Sigmoid_2:y:0"lstm_cell_428/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_428_matmul_readvariableop_resource.lstm_cell_428_matmul_1_readvariableop_resource-lstm_cell_428_biasadd_readvariableop_resource*
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
while_body_2592363*
condR
while_cond_2592362*K
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
NoOpNoOp%^lstm_cell_428/BiasAdd/ReadVariableOp$^lstm_cell_428/MatMul/ReadVariableOp&^lstm_cell_428/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_428/BiasAdd/ReadVariableOp$lstm_cell_428/BiasAdd/ReadVariableOp2J
#lstm_cell_428/MatMul/ReadVariableOp#lstm_cell_428/MatMul/ReadVariableOp2N
%lstm_cell_428/MatMul_1/ReadVariableOp%lstm_cell_428/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_498_layer_call_fn_2590621
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2587772|
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592161
inputs_0>
,lstm_cell_428_matmul_readvariableop_resource:2(@
.lstm_cell_428_matmul_1_readvariableop_resource:
(;
-lstm_cell_428_biasadd_readvariableop_resource:(
identity??$lstm_cell_428/BiasAdd/ReadVariableOp?#lstm_cell_428/MatMul/ReadVariableOp?%lstm_cell_428/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_428/MatMul/ReadVariableOpReadVariableOp,lstm_cell_428_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_428/MatMulMatMulstrided_slice_2:output:0+lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_428_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_428/MatMul_1MatMulzeros:output:0-lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_428/addAddV2lstm_cell_428/MatMul:product:0 lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_428_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_428/BiasAddBiasAddlstm_cell_428/add:z:0,lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_428/splitSplit&lstm_cell_428/split/split_dim:output:0lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_428/SigmoidSigmoidlstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_1Sigmoidlstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_428/mulMullstm_cell_428/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_428/ReluRelulstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_1Mullstm_cell_428/Sigmoid:y:0 lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_428/add_1AddV2lstm_cell_428/mul:z:0lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_428/Sigmoid_2Sigmoidlstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_428/Relu_1Relulstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_428/mul_2Mullstm_cell_428/Sigmoid_2:y:0"lstm_cell_428/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_428_matmul_readvariableop_resource.lstm_cell_428_matmul_1_readvariableop_resource-lstm_cell_428_biasadd_readvariableop_resource*
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
while_body_2592077*
condR
while_cond_2592076*K
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
NoOpNoOp%^lstm_cell_428/BiasAdd/ReadVariableOp$^lstm_cell_428/MatMul/ReadVariableOp&^lstm_cell_428/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_428/BiasAdd/ReadVariableOp$lstm_cell_428/BiasAdd/ReadVariableOp2J
#lstm_cell_428/MatMul/ReadVariableOp#lstm_cell_428/MatMul/ReadVariableOp2N
%lstm_cell_428/MatMul_1/ReadVariableOp%lstm_cell_428/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_2591460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2591460___redundant_placeholder05
1while_while_cond_2591460___redundant_placeholder15
1while_while_cond_2591460___redundant_placeholder25
1while_while_cond_2591460___redundant_placeholder3
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
while_body_2591461
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_427_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_427_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_427_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_427_matmul_readvariableop_resource:	d?G
4while_lstm_cell_427_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_427_biasadd_readvariableop_resource:	???*while/lstm_cell_427/BiasAdd/ReadVariableOp?)while/lstm_cell_427/MatMul/ReadVariableOp?+while/lstm_cell_427/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_427/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_427_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_427/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_427_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_427/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_427/addAddV2$while/lstm_cell_427/MatMul:product:0&while/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_427_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_427/BiasAddBiasAddwhile/lstm_cell_427/add:z:02while/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_427/splitSplit,while/lstm_cell_427/split/split_dim:output:0$while/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_427/SigmoidSigmoid"while/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_1Sigmoid"while/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mulMul!while/lstm_cell_427/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_427/ReluRelu"while/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_1Mulwhile/lstm_cell_427/Sigmoid:y:0&while/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/add_1AddV2while/lstm_cell_427/mul:z:0while/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_427/Sigmoid_2Sigmoid"while/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_427/Relu_1Reluwhile/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_427/mul_2Mul!while/lstm_cell_427/Sigmoid_2:y:0(while/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_427/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_427/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_427/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_427/BiasAdd/ReadVariableOp*^while/lstm_cell_427/MatMul/ReadVariableOp,^while/lstm_cell_427/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_427_biasadd_readvariableop_resource5while_lstm_cell_427_biasadd_readvariableop_resource_0"n
4while_lstm_cell_427_matmul_1_readvariableop_resource6while_lstm_cell_427_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_427_matmul_readvariableop_resource4while_lstm_cell_427_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_427/BiasAdd/ReadVariableOp*while/lstm_cell_427/BiasAdd/ReadVariableOp2V
)while/lstm_cell_427/MatMul/ReadVariableOp)while/lstm_cell_427/MatMul/ReadVariableOp2Z
+while/lstm_cell_427/MatMul_1/ReadVariableOp+while/lstm_cell_427/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_166_layer_call_and_return_conditional_losses_2588948

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
?
?
*__inference_lstm_500_layer_call_fn_2591864

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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2588930o
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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2588344

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
?J
?
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591831

inputs?
,lstm_cell_427_matmul_readvariableop_resource:	d?A
.lstm_cell_427_matmul_1_readvariableop_resource:	2?<
-lstm_cell_427_biasadd_readvariableop_resource:	?
identity??$lstm_cell_427/BiasAdd/ReadVariableOp?#lstm_cell_427/MatMul/ReadVariableOp?%lstm_cell_427/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_427/MatMul/ReadVariableOpReadVariableOp,lstm_cell_427_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_427/MatMulMatMulstrided_slice_2:output:0+lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_427_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_427/MatMul_1MatMulzeros:output:0-lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_427/addAddV2lstm_cell_427/MatMul:product:0 lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_427_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_427/BiasAddBiasAddlstm_cell_427/add:z:0,lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_427/splitSplit&lstm_cell_427/split/split_dim:output:0lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_427/SigmoidSigmoidlstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_1Sigmoidlstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_427/mulMullstm_cell_427/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_427/ReluRelulstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_1Mullstm_cell_427/Sigmoid:y:0 lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_427/add_1AddV2lstm_cell_427/mul:z:0lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_427/Sigmoid_2Sigmoidlstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_427/Relu_1Relulstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_427/mul_2Mullstm_cell_427/Sigmoid_2:y:0"lstm_cell_427/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_427_matmul_readvariableop_resource.lstm_cell_427_matmul_1_readvariableop_resource-lstm_cell_427_biasadd_readvariableop_resource*
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
while_body_2591747*
condR
while_cond_2591746*K
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
NoOpNoOp%^lstm_cell_427/BiasAdd/ReadVariableOp$^lstm_cell_427/MatMul/ReadVariableOp&^lstm_cell_427/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_427/BiasAdd/ReadVariableOp$lstm_cell_427/BiasAdd/ReadVariableOp2J
#lstm_cell_427/MatMul/ReadVariableOp#lstm_cell_427/MatMul/ReadVariableOp2N
%lstm_cell_427/MatMul_1/ReadVariableOp%lstm_cell_427/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_166_layer_call_fn_2589718

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
K__inference_sequential_166_layer_call_and_return_conditional_losses_2588955o
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
?C
?

lstm_500_while_body_2590509.
*lstm_500_while_lstm_500_while_loop_counter4
0lstm_500_while_lstm_500_while_maximum_iterations
lstm_500_while_placeholder 
lstm_500_while_placeholder_1 
lstm_500_while_placeholder_2 
lstm_500_while_placeholder_3-
)lstm_500_while_lstm_500_strided_slice_1_0i
elstm_500_while_tensorarrayv2read_tensorlistgetitem_lstm_500_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_500_while_lstm_cell_428_matmul_readvariableop_resource_0:2(Q
?lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource_0:
(L
>lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource_0:(
lstm_500_while_identity
lstm_500_while_identity_1
lstm_500_while_identity_2
lstm_500_while_identity_3
lstm_500_while_identity_4
lstm_500_while_identity_5+
'lstm_500_while_lstm_500_strided_slice_1g
clstm_500_while_tensorarrayv2read_tensorlistgetitem_lstm_500_tensorarrayunstack_tensorlistfromtensorM
;lstm_500_while_lstm_cell_428_matmul_readvariableop_resource:2(O
=lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource:
(J
<lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource:(??3lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp?2lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp?4lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp?
@lstm_500/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_500/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_500_while_tensorarrayv2read_tensorlistgetitem_lstm_500_tensorarrayunstack_tensorlistfromtensor_0lstm_500_while_placeholderIlstm_500/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_500/while/lstm_cell_428/MatMul/ReadVariableOpReadVariableOp=lstm_500_while_lstm_cell_428_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_500/while/lstm_cell_428/MatMulMatMul9lstm_500/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOpReadVariableOp?lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_500/while/lstm_cell_428/MatMul_1MatMullstm_500_while_placeholder_2<lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_500/while/lstm_cell_428/addAddV2-lstm_500/while/lstm_cell_428/MatMul:product:0/lstm_500/while/lstm_cell_428/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOpReadVariableOp>lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_500/while/lstm_cell_428/BiasAddBiasAdd$lstm_500/while/lstm_cell_428/add:z:0;lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_500/while/lstm_cell_428/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_500/while/lstm_cell_428/splitSplit5lstm_500/while/lstm_cell_428/split/split_dim:output:0-lstm_500/while/lstm_cell_428/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_500/while/lstm_cell_428/SigmoidSigmoid+lstm_500/while/lstm_cell_428/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_500/while/lstm_cell_428/Sigmoid_1Sigmoid+lstm_500/while/lstm_cell_428/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_500/while/lstm_cell_428/mulMul*lstm_500/while/lstm_cell_428/Sigmoid_1:y:0lstm_500_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_500/while/lstm_cell_428/ReluRelu+lstm_500/while/lstm_cell_428/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_500/while/lstm_cell_428/mul_1Mul(lstm_500/while/lstm_cell_428/Sigmoid:y:0/lstm_500/while/lstm_cell_428/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_500/while/lstm_cell_428/add_1AddV2$lstm_500/while/lstm_cell_428/mul:z:0&lstm_500/while/lstm_cell_428/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_500/while/lstm_cell_428/Sigmoid_2Sigmoid+lstm_500/while/lstm_cell_428/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_500/while/lstm_cell_428/Relu_1Relu&lstm_500/while/lstm_cell_428/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_500/while/lstm_cell_428/mul_2Mul*lstm_500/while/lstm_cell_428/Sigmoid_2:y:01lstm_500/while/lstm_cell_428/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_500/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_500_while_placeholder_1lstm_500_while_placeholder&lstm_500/while/lstm_cell_428/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_500/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_500/while/addAddV2lstm_500_while_placeholderlstm_500/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_500/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_500/while/add_1AddV2*lstm_500_while_lstm_500_while_loop_counterlstm_500/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_500/while/IdentityIdentitylstm_500/while/add_1:z:0^lstm_500/while/NoOp*
T0*
_output_shapes
: ?
lstm_500/while/Identity_1Identity0lstm_500_while_lstm_500_while_maximum_iterations^lstm_500/while/NoOp*
T0*
_output_shapes
: t
lstm_500/while/Identity_2Identitylstm_500/while/add:z:0^lstm_500/while/NoOp*
T0*
_output_shapes
: ?
lstm_500/while/Identity_3IdentityClstm_500/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_500/while/NoOp*
T0*
_output_shapes
: ?
lstm_500/while/Identity_4Identity&lstm_500/while/lstm_cell_428/mul_2:z:0^lstm_500/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_500/while/Identity_5Identity&lstm_500/while/lstm_cell_428/add_1:z:0^lstm_500/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_500/while/NoOpNoOp4^lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp3^lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp5^lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_500_while_identity lstm_500/while/Identity:output:0"?
lstm_500_while_identity_1"lstm_500/while/Identity_1:output:0"?
lstm_500_while_identity_2"lstm_500/while/Identity_2:output:0"?
lstm_500_while_identity_3"lstm_500/while/Identity_3:output:0"?
lstm_500_while_identity_4"lstm_500/while/Identity_4:output:0"?
lstm_500_while_identity_5"lstm_500/while/Identity_5:output:0"T
'lstm_500_while_lstm_500_strided_slice_1)lstm_500_while_lstm_500_strided_slice_1_0"~
<lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource>lstm_500_while_lstm_cell_428_biasadd_readvariableop_resource_0"?
=lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource?lstm_500_while_lstm_cell_428_matmul_1_readvariableop_resource_0"|
;lstm_500_while_lstm_cell_428_matmul_readvariableop_resource=lstm_500_while_lstm_cell_428_matmul_readvariableop_resource_0"?
clstm_500_while_tensorarrayv2read_tensorlistgetitem_lstm_500_tensorarrayunstack_tensorlistfromtensorelstm_500_while_tensorarrayv2read_tensorlistgetitem_lstm_500_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp3lstm_500/while/lstm_cell_428/BiasAdd/ReadVariableOp2h
2lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp2lstm_500/while/lstm_cell_428/MatMul/ReadVariableOp2l
4lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp4lstm_500/while/lstm_cell_428/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_499_while_body_2590370.
*lstm_499_while_lstm_499_while_loop_counter4
0lstm_499_while_lstm_499_while_maximum_iterations
lstm_499_while_placeholder 
lstm_499_while_placeholder_1 
lstm_499_while_placeholder_2 
lstm_499_while_placeholder_3-
)lstm_499_while_lstm_499_strided_slice_1_0i
elstm_499_while_tensorarrayv2read_tensorlistgetitem_lstm_499_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_499_while_lstm_cell_427_matmul_readvariableop_resource_0:	d?R
?lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource_0:	2?M
>lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource_0:	?
lstm_499_while_identity
lstm_499_while_identity_1
lstm_499_while_identity_2
lstm_499_while_identity_3
lstm_499_while_identity_4
lstm_499_while_identity_5+
'lstm_499_while_lstm_499_strided_slice_1g
clstm_499_while_tensorarrayv2read_tensorlistgetitem_lstm_499_tensorarrayunstack_tensorlistfromtensorN
;lstm_499_while_lstm_cell_427_matmul_readvariableop_resource:	d?P
=lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource:	2?K
<lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource:	???3lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp?2lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp?4lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp?
@lstm_499/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_499/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_499_while_tensorarrayv2read_tensorlistgetitem_lstm_499_tensorarrayunstack_tensorlistfromtensor_0lstm_499_while_placeholderIlstm_499/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_499/while/lstm_cell_427/MatMul/ReadVariableOpReadVariableOp=lstm_499_while_lstm_cell_427_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_499/while/lstm_cell_427/MatMulMatMul9lstm_499/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOpReadVariableOp?lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_499/while/lstm_cell_427/MatMul_1MatMullstm_499_while_placeholder_2<lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_499/while/lstm_cell_427/addAddV2-lstm_499/while/lstm_cell_427/MatMul:product:0/lstm_499/while/lstm_cell_427/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOpReadVariableOp>lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_499/while/lstm_cell_427/BiasAddBiasAdd$lstm_499/while/lstm_cell_427/add:z:0;lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_499/while/lstm_cell_427/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_499/while/lstm_cell_427/splitSplit5lstm_499/while/lstm_cell_427/split/split_dim:output:0-lstm_499/while/lstm_cell_427/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_499/while/lstm_cell_427/SigmoidSigmoid+lstm_499/while/lstm_cell_427/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_499/while/lstm_cell_427/Sigmoid_1Sigmoid+lstm_499/while/lstm_cell_427/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_499/while/lstm_cell_427/mulMul*lstm_499/while/lstm_cell_427/Sigmoid_1:y:0lstm_499_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_499/while/lstm_cell_427/ReluRelu+lstm_499/while/lstm_cell_427/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_499/while/lstm_cell_427/mul_1Mul(lstm_499/while/lstm_cell_427/Sigmoid:y:0/lstm_499/while/lstm_cell_427/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_499/while/lstm_cell_427/add_1AddV2$lstm_499/while/lstm_cell_427/mul:z:0&lstm_499/while/lstm_cell_427/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_499/while/lstm_cell_427/Sigmoid_2Sigmoid+lstm_499/while/lstm_cell_427/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_499/while/lstm_cell_427/Relu_1Relu&lstm_499/while/lstm_cell_427/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_499/while/lstm_cell_427/mul_2Mul*lstm_499/while/lstm_cell_427/Sigmoid_2:y:01lstm_499/while/lstm_cell_427/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_499/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_499_while_placeholder_1lstm_499_while_placeholder&lstm_499/while/lstm_cell_427/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_499/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_499/while/addAddV2lstm_499_while_placeholderlstm_499/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_499/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_499/while/add_1AddV2*lstm_499_while_lstm_499_while_loop_counterlstm_499/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_499/while/IdentityIdentitylstm_499/while/add_1:z:0^lstm_499/while/NoOp*
T0*
_output_shapes
: ?
lstm_499/while/Identity_1Identity0lstm_499_while_lstm_499_while_maximum_iterations^lstm_499/while/NoOp*
T0*
_output_shapes
: t
lstm_499/while/Identity_2Identitylstm_499/while/add:z:0^lstm_499/while/NoOp*
T0*
_output_shapes
: ?
lstm_499/while/Identity_3IdentityClstm_499/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_499/while/NoOp*
T0*
_output_shapes
: ?
lstm_499/while/Identity_4Identity&lstm_499/while/lstm_cell_427/mul_2:z:0^lstm_499/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_499/while/Identity_5Identity&lstm_499/while/lstm_cell_427/add_1:z:0^lstm_499/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_499/while/NoOpNoOp4^lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp3^lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp5^lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_499_while_identity lstm_499/while/Identity:output:0"?
lstm_499_while_identity_1"lstm_499/while/Identity_1:output:0"?
lstm_499_while_identity_2"lstm_499/while/Identity_2:output:0"?
lstm_499_while_identity_3"lstm_499/while/Identity_3:output:0"?
lstm_499_while_identity_4"lstm_499/while/Identity_4:output:0"?
lstm_499_while_identity_5"lstm_499/while/Identity_5:output:0"T
'lstm_499_while_lstm_499_strided_slice_1)lstm_499_while_lstm_499_strided_slice_1_0"~
<lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource>lstm_499_while_lstm_cell_427_biasadd_readvariableop_resource_0"?
=lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource?lstm_499_while_lstm_cell_427_matmul_1_readvariableop_resource_0"|
;lstm_499_while_lstm_cell_427_matmul_readvariableop_resource=lstm_499_while_lstm_cell_427_matmul_readvariableop_resource_0"?
clstm_499_while_tensorarrayv2read_tensorlistgetitem_lstm_499_tensorarrayunstack_tensorlistfromtensorelstm_499_while_tensorarrayv2read_tensorlistgetitem_lstm_499_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp3lstm_499/while/lstm_cell_427/BiasAdd/ReadVariableOp2h
2lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp2lstm_499/while/lstm_cell_427/MatMul/ReadVariableOp2l
4lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp4lstm_499/while/lstm_cell_427/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2587848

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
while_cond_2588545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2588545___redundant_placeholder05
1while_while_cond_2588545___redundant_placeholder15
1while_while_cond_2588545___redundant_placeholder25
1while_while_cond_2588545___redundant_placeholder3
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
while_cond_2591603
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2591603___redundant_placeholder05
1while_while_cond_2591603___redundant_placeholder15
1while_while_cond_2591603___redundant_placeholder25
1while_while_cond_2591603___redundant_placeholder3
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
*__inference_lstm_498_layer_call_fn_2590643

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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2589476s
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
lstm_498_input;
 serving_default_lstm_498_input:0?????????=
	dense_1660
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
2dense_166/kernel
:2dense_166/bias
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
0:.	?2lstm_498/lstm_cell_498/kernel
::8	d?2'lstm_498/lstm_cell_498/recurrent_kernel
*:(?2lstm_498/lstm_cell_498/bias
0:.	d?2lstm_499/lstm_cell_499/kernel
::8	2?2'lstm_499/lstm_cell_499/recurrent_kernel
*:(?2lstm_499/lstm_cell_499/bias
/:-2(2lstm_500/lstm_cell_500/kernel
9:7
(2'lstm_500/lstm_cell_500/recurrent_kernel
):'(2lstm_500/lstm_cell_500/bias
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
2Adam/dense_166/kernel/m
!:2Adam/dense_166/bias/m
5:3	?2$Adam/lstm_498/lstm_cell_498/kernel/m
?:=	d?2.Adam/lstm_498/lstm_cell_498/recurrent_kernel/m
/:-?2"Adam/lstm_498/lstm_cell_498/bias/m
5:3	d?2$Adam/lstm_499/lstm_cell_499/kernel/m
?:=	2?2.Adam/lstm_499/lstm_cell_499/recurrent_kernel/m
/:-?2"Adam/lstm_499/lstm_cell_499/bias/m
4:22(2$Adam/lstm_500/lstm_cell_500/kernel/m
>:<
(2.Adam/lstm_500/lstm_cell_500/recurrent_kernel/m
.:,(2"Adam/lstm_500/lstm_cell_500/bias/m
':%
2Adam/dense_166/kernel/v
!:2Adam/dense_166/bias/v
5:3	?2$Adam/lstm_498/lstm_cell_498/kernel/v
?:=	d?2.Adam/lstm_498/lstm_cell_498/recurrent_kernel/v
/:-?2"Adam/lstm_498/lstm_cell_498/bias/v
5:3	d?2$Adam/lstm_499/lstm_cell_499/kernel/v
?:=	2?2.Adam/lstm_499/lstm_cell_499/recurrent_kernel/v
/:-?2"Adam/lstm_499/lstm_cell_499/bias/v
4:22(2$Adam/lstm_500/lstm_cell_500/kernel/v
>:<
(2.Adam/lstm_500/lstm_cell_500/recurrent_kernel/v
.:,(2"Adam/lstm_500/lstm_cell_500/bias/v
?2?
0__inference_sequential_166_layer_call_fn_2588980
0__inference_sequential_166_layer_call_fn_2589718
0__inference_sequential_166_layer_call_fn_2589745
0__inference_sequential_166_layer_call_fn_2589596?
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
K__inference_sequential_166_layer_call_and_return_conditional_losses_2590172
K__inference_sequential_166_layer_call_and_return_conditional_losses_2590599
K__inference_sequential_166_layer_call_and_return_conditional_losses_2589626
K__inference_sequential_166_layer_call_and_return_conditional_losses_2589656?
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
"__inference__wrapped_model_2587431lstm_498_input"?
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
*__inference_lstm_498_layer_call_fn_2590610
*__inference_lstm_498_layer_call_fn_2590621
*__inference_lstm_498_layer_call_fn_2590632
*__inference_lstm_498_layer_call_fn_2590643?
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2590786
E__inference_lstm_498_layer_call_and_return_conditional_losses_2590929
E__inference_lstm_498_layer_call_and_return_conditional_losses_2591072
E__inference_lstm_498_layer_call_and_return_conditional_losses_2591215?
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
*__inference_lstm_499_layer_call_fn_2591226
*__inference_lstm_499_layer_call_fn_2591237
*__inference_lstm_499_layer_call_fn_2591248
*__inference_lstm_499_layer_call_fn_2591259?
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591402
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591545
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591688
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591831?
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
*__inference_lstm_500_layer_call_fn_2591842
*__inference_lstm_500_layer_call_fn_2591853
*__inference_lstm_500_layer_call_fn_2591864
*__inference_lstm_500_layer_call_fn_2591875?
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592018
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592161
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592304
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592447?
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
+__inference_dense_166_layer_call_fn_2592456?
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
F__inference_dense_166_layer_call_and_return_conditional_losses_2592466?
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
%__inference_signature_wrapper_2589691lstm_498_input"?
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
/__inference_lstm_cell_426_layer_call_fn_2592483
/__inference_lstm_cell_426_layer_call_fn_2592500?
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
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2592532
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2592564?
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
/__inference_lstm_cell_427_layer_call_fn_2592581
/__inference_lstm_cell_427_layer_call_fn_2592598?
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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2592630
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2592662?
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
/__inference_lstm_cell_428_layer_call_fn_2592679
/__inference_lstm_cell_428_layer_call_fn_2592696?
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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2592728
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2592760?
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
"__inference__wrapped_model_2587431?-./012345!";?8
1?.
,?)
lstm_498_input?????????
? "5?2
0
	dense_166#? 
	dense_166??????????
F__inference_dense_166_layer_call_and_return_conditional_losses_2592466\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_166_layer_call_fn_2592456O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_498_layer_call_and_return_conditional_losses_2590786?-./O?L
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2590929?-./O?L
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2591072q-./??<
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
E__inference_lstm_498_layer_call_and_return_conditional_losses_2591215q-./??<
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
*__inference_lstm_498_layer_call_fn_2590610}-./O?L
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
*__inference_lstm_498_layer_call_fn_2590621}-./O?L
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
*__inference_lstm_498_layer_call_fn_2590632d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_498_layer_call_fn_2590643d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591402?012O?L
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591545?012O?L
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591688q012??<
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
E__inference_lstm_499_layer_call_and_return_conditional_losses_2591831q012??<
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
*__inference_lstm_499_layer_call_fn_2591226}012O?L
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
*__inference_lstm_499_layer_call_fn_2591237}012O?L
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
*__inference_lstm_499_layer_call_fn_2591248d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_499_layer_call_fn_2591259d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592018}345O?L
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592161}345O?L
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592304m345??<
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
E__inference_lstm_500_layer_call_and_return_conditional_losses_2592447m345??<
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
*__inference_lstm_500_layer_call_fn_2591842p345O?L
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
*__inference_lstm_500_layer_call_fn_2591853p345O?L
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
*__inference_lstm_500_layer_call_fn_2591864`345??<
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
*__inference_lstm_500_layer_call_fn_2591875`345??<
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
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2592532?-./??}
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
J__inference_lstm_cell_426_layer_call_and_return_conditional_losses_2592564?-./??}
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
/__inference_lstm_cell_426_layer_call_fn_2592483?-./??}
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
/__inference_lstm_cell_426_layer_call_fn_2592500?-./??}
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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2592630?012??}
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
J__inference_lstm_cell_427_layer_call_and_return_conditional_losses_2592662?012??}
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
/__inference_lstm_cell_427_layer_call_fn_2592581?012??}
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
/__inference_lstm_cell_427_layer_call_fn_2592598?012??}
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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2592728?345??}
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
J__inference_lstm_cell_428_layer_call_and_return_conditional_losses_2592760?345??}
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
/__inference_lstm_cell_428_layer_call_fn_2592679?345??}
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
/__inference_lstm_cell_428_layer_call_fn_2592696?345??}
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
K__inference_sequential_166_layer_call_and_return_conditional_losses_2589626y-./012345!"C?@
9?6
,?)
lstm_498_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_166_layer_call_and_return_conditional_losses_2589656y-./012345!"C?@
9?6
,?)
lstm_498_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_166_layer_call_and_return_conditional_losses_2590172q-./012345!";?8
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
K__inference_sequential_166_layer_call_and_return_conditional_losses_2590599q-./012345!";?8
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
0__inference_sequential_166_layer_call_fn_2588980l-./012345!"C?@
9?6
,?)
lstm_498_input?????????
p 

 
? "???????????
0__inference_sequential_166_layer_call_fn_2589596l-./012345!"C?@
9?6
,?)
lstm_498_input?????????
p

 
? "???????????
0__inference_sequential_166_layer_call_fn_2589718d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_166_layer_call_fn_2589745d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2589691?-./012345!"M?J
? 
C?@
>
lstm_498_input,?)
lstm_498_input?????????"5?2
0
	dense_166#? 
	dense_166?????????