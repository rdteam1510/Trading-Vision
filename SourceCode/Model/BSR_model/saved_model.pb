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
dense_209/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_209/kernel
u
$dense_209/kernel/Read/ReadVariableOpReadVariableOpdense_209/kernel*
_output_shapes

:
*
dtype0
t
dense_209/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_209/bias
m
"dense_209/bias/Read/ReadVariableOpReadVariableOpdense_209/bias*
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
lstm_627/lstm_cell_627/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_627/lstm_cell_627/kernel
?
1lstm_627/lstm_cell_627/kernel/Read/ReadVariableOpReadVariableOplstm_627/lstm_cell_627/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_627/lstm_cell_627/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_627/lstm_cell_627/recurrent_kernel
?
;lstm_627/lstm_cell_627/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_627/lstm_cell_627/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_627/lstm_cell_627/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_627/lstm_cell_627/bias
?
/lstm_627/lstm_cell_627/bias/Read/ReadVariableOpReadVariableOplstm_627/lstm_cell_627/bias*
_output_shapes	
:?*
dtype0
?
lstm_628/lstm_cell_628/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_628/lstm_cell_628/kernel
?
1lstm_628/lstm_cell_628/kernel/Read/ReadVariableOpReadVariableOplstm_628/lstm_cell_628/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_628/lstm_cell_628/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_628/lstm_cell_628/recurrent_kernel
?
;lstm_628/lstm_cell_628/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_628/lstm_cell_628/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_628/lstm_cell_628/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_628/lstm_cell_628/bias
?
/lstm_628/lstm_cell_628/bias/Read/ReadVariableOpReadVariableOplstm_628/lstm_cell_628/bias*
_output_shapes	
:?*
dtype0
?
lstm_629/lstm_cell_629/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_629/lstm_cell_629/kernel
?
1lstm_629/lstm_cell_629/kernel/Read/ReadVariableOpReadVariableOplstm_629/lstm_cell_629/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_629/lstm_cell_629/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_629/lstm_cell_629/recurrent_kernel
?
;lstm_629/lstm_cell_629/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_629/lstm_cell_629/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_629/lstm_cell_629/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_629/lstm_cell_629/bias
?
/lstm_629/lstm_cell_629/bias/Read/ReadVariableOpReadVariableOplstm_629/lstm_cell_629/bias*
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
Adam/dense_209/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_209/kernel/m
?
+Adam/dense_209/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_209/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_209/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_209/bias/m
{
)Adam/dense_209/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_209/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_627/lstm_cell_627/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_627/lstm_cell_627/kernel/m
?
8Adam/lstm_627/lstm_cell_627/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_627/lstm_cell_627/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_627/lstm_cell_627/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_627/lstm_cell_627/recurrent_kernel/m
?
BAdam/lstm_627/lstm_cell_627/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_627/lstm_cell_627/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_627/lstm_cell_627/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_627/lstm_cell_627/bias/m
?
6Adam/lstm_627/lstm_cell_627/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_627/lstm_cell_627/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_628/lstm_cell_628/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_628/lstm_cell_628/kernel/m
?
8Adam/lstm_628/lstm_cell_628/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_628/lstm_cell_628/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_628/lstm_cell_628/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_628/lstm_cell_628/recurrent_kernel/m
?
BAdam/lstm_628/lstm_cell_628/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_628/lstm_cell_628/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_628/lstm_cell_628/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_628/lstm_cell_628/bias/m
?
6Adam/lstm_628/lstm_cell_628/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_628/lstm_cell_628/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_629/lstm_cell_629/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_629/lstm_cell_629/kernel/m
?
8Adam/lstm_629/lstm_cell_629/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_629/lstm_cell_629/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_629/lstm_cell_629/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_629/lstm_cell_629/recurrent_kernel/m
?
BAdam/lstm_629/lstm_cell_629/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_629/lstm_cell_629/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_629/lstm_cell_629/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_629/lstm_cell_629/bias/m
?
6Adam/lstm_629/lstm_cell_629/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_629/lstm_cell_629/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_209/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_209/kernel/v
?
+Adam/dense_209/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_209/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_209/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_209/bias/v
{
)Adam/dense_209/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_209/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_627/lstm_cell_627/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_627/lstm_cell_627/kernel/v
?
8Adam/lstm_627/lstm_cell_627/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_627/lstm_cell_627/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_627/lstm_cell_627/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_627/lstm_cell_627/recurrent_kernel/v
?
BAdam/lstm_627/lstm_cell_627/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_627/lstm_cell_627/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_627/lstm_cell_627/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_627/lstm_cell_627/bias/v
?
6Adam/lstm_627/lstm_cell_627/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_627/lstm_cell_627/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_628/lstm_cell_628/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_628/lstm_cell_628/kernel/v
?
8Adam/lstm_628/lstm_cell_628/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_628/lstm_cell_628/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_628/lstm_cell_628/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_628/lstm_cell_628/recurrent_kernel/v
?
BAdam/lstm_628/lstm_cell_628/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_628/lstm_cell_628/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_628/lstm_cell_628/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_628/lstm_cell_628/bias/v
?
6Adam/lstm_628/lstm_cell_628/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_628/lstm_cell_628/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_629/lstm_cell_629/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_629/lstm_cell_629/kernel/v
?
8Adam/lstm_629/lstm_cell_629/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_629/lstm_cell_629/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_629/lstm_cell_629/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_629/lstm_cell_629/recurrent_kernel/v
?
BAdam/lstm_629/lstm_cell_629/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_629/lstm_cell_629/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_629/lstm_cell_629/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_629/lstm_cell_629/bias/v
?
6Adam/lstm_629/lstm_cell_629/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_629/lstm_cell_629/bias/v*
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
VARIABLE_VALUEdense_209/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_209/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_627/lstm_cell_627/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_627/lstm_cell_627/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_627/lstm_cell_627/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_628/lstm_cell_628/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_628/lstm_cell_628/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_628/lstm_cell_628/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_629/lstm_cell_629/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_629/lstm_cell_629/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_629/lstm_cell_629/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_209/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_209/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_627/lstm_cell_627/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_627/lstm_cell_627/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_627/lstm_cell_627/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_628/lstm_cell_628/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_628/lstm_cell_628/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_628/lstm_cell_628/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_629/lstm_cell_629/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_629/lstm_cell_629/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_629/lstm_cell_629/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_209/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_209/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_627/lstm_cell_627/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_627/lstm_cell_627/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_627/lstm_cell_627/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_628/lstm_cell_628/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_628/lstm_cell_628/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_628/lstm_cell_628/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_629/lstm_cell_629/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_629/lstm_cell_629/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_629/lstm_cell_629/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_627_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_627_inputlstm_627/lstm_cell_627/kernel'lstm_627/lstm_cell_627/recurrent_kernellstm_627/lstm_cell_627/biaslstm_628/lstm_cell_628/kernel'lstm_628/lstm_cell_628/recurrent_kernellstm_628/lstm_cell_628/biaslstm_629/lstm_cell_629/kernel'lstm_629/lstm_cell_629/recurrent_kernellstm_629/lstm_cell_629/biasdense_209/kerneldense_209/bias*
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
%__inference_signature_wrapper_3644644
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_209/kernel/Read/ReadVariableOp"dense_209/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_627/lstm_cell_627/kernel/Read/ReadVariableOp;lstm_627/lstm_cell_627/recurrent_kernel/Read/ReadVariableOp/lstm_627/lstm_cell_627/bias/Read/ReadVariableOp1lstm_628/lstm_cell_628/kernel/Read/ReadVariableOp;lstm_628/lstm_cell_628/recurrent_kernel/Read/ReadVariableOp/lstm_628/lstm_cell_628/bias/Read/ReadVariableOp1lstm_629/lstm_cell_629/kernel/Read/ReadVariableOp;lstm_629/lstm_cell_629/recurrent_kernel/Read/ReadVariableOp/lstm_629/lstm_cell_629/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_209/kernel/m/Read/ReadVariableOp)Adam/dense_209/bias/m/Read/ReadVariableOp8Adam/lstm_627/lstm_cell_627/kernel/m/Read/ReadVariableOpBAdam/lstm_627/lstm_cell_627/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_627/lstm_cell_627/bias/m/Read/ReadVariableOp8Adam/lstm_628/lstm_cell_628/kernel/m/Read/ReadVariableOpBAdam/lstm_628/lstm_cell_628/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_628/lstm_cell_628/bias/m/Read/ReadVariableOp8Adam/lstm_629/lstm_cell_629/kernel/m/Read/ReadVariableOpBAdam/lstm_629/lstm_cell_629/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_629/lstm_cell_629/bias/m/Read/ReadVariableOp+Adam/dense_209/kernel/v/Read/ReadVariableOp)Adam/dense_209/bias/v/Read/ReadVariableOp8Adam/lstm_627/lstm_cell_627/kernel/v/Read/ReadVariableOpBAdam/lstm_627/lstm_cell_627/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_627/lstm_cell_627/bias/v/Read/ReadVariableOp8Adam/lstm_628/lstm_cell_628/kernel/v/Read/ReadVariableOpBAdam/lstm_628/lstm_cell_628/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_628/lstm_cell_628/bias/v/Read/ReadVariableOp8Adam/lstm_629/lstm_cell_629/kernel/v/Read/ReadVariableOpBAdam/lstm_629/lstm_cell_629/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_629/lstm_cell_629/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3647856
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_209/kerneldense_209/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_627/lstm_cell_627/kernel'lstm_627/lstm_cell_627/recurrent_kernellstm_627/lstm_cell_627/biaslstm_628/lstm_cell_628/kernel'lstm_628/lstm_cell_628/recurrent_kernellstm_628/lstm_cell_628/biaslstm_629/lstm_cell_629/kernel'lstm_629/lstm_cell_629/recurrent_kernellstm_629/lstm_cell_629/biastotalcountAdam/dense_209/kernel/mAdam/dense_209/bias/m$Adam/lstm_627/lstm_cell_627/kernel/m.Adam/lstm_627/lstm_cell_627/recurrent_kernel/m"Adam/lstm_627/lstm_cell_627/bias/m$Adam/lstm_628/lstm_cell_628/kernel/m.Adam/lstm_628/lstm_cell_628/recurrent_kernel/m"Adam/lstm_628/lstm_cell_628/bias/m$Adam/lstm_629/lstm_cell_629/kernel/m.Adam/lstm_629/lstm_cell_629/recurrent_kernel/m"Adam/lstm_629/lstm_cell_629/bias/mAdam/dense_209/kernel/vAdam/dense_209/bias/v$Adam/lstm_627/lstm_cell_627/kernel/v.Adam/lstm_627/lstm_cell_627/recurrent_kernel/v"Adam/lstm_627/lstm_cell_627/bias/v$Adam/lstm_628/lstm_cell_628/kernel/v.Adam/lstm_628/lstm_cell_628/recurrent_kernel/v"Adam/lstm_628/lstm_cell_628/bias/v$Adam/lstm_629/lstm_cell_629/kernel/v.Adam/lstm_629/lstm_cell_629/recurrent_kernel/v"Adam/lstm_629/lstm_cell_629/bias/v*4
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
#__inference__traced_restore_3647986??+
?
?
K__inference_sequential_209_layer_call_and_return_conditional_losses_3644497

inputs#
lstm_627_3644470:	?#
lstm_627_3644472:	d?
lstm_627_3644474:	?#
lstm_628_3644477:	d?#
lstm_628_3644479:	2?
lstm_628_3644481:	?"
lstm_629_3644484:2("
lstm_629_3644486:
(
lstm_629_3644488:(#
dense_209_3644491:

dense_209_3644493:
identity??!dense_209/StatefulPartitionedCall? lstm_627/StatefulPartitionedCall? lstm_628/StatefulPartitionedCall? lstm_629/StatefulPartitionedCall?
 lstm_627/StatefulPartitionedCallStatefulPartitionedCallinputslstm_627_3644470lstm_627_3644472lstm_627_3644474*
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3644429?
 lstm_628/StatefulPartitionedCallStatefulPartitionedCall)lstm_627/StatefulPartitionedCall:output:0lstm_628_3644477lstm_628_3644479lstm_628_3644481*
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3644264?
 lstm_629/StatefulPartitionedCallStatefulPartitionedCall)lstm_628/StatefulPartitionedCall:output:0lstm_629_3644484lstm_629_3644486lstm_629_3644488*
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3644099?
!dense_209/StatefulPartitionedCallStatefulPartitionedCall)lstm_629/StatefulPartitionedCall:output:0dense_209_3644491dense_209_3644493*
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
F__inference_dense_209_layer_call_and_return_conditional_losses_3643901y
IdentityIdentity*dense_209/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_209/StatefulPartitionedCall!^lstm_627/StatefulPartitionedCall!^lstm_628/StatefulPartitionedCall!^lstm_629/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_209/StatefulPartitionedCall!dense_209/StatefulPartitionedCall2D
 lstm_627/StatefulPartitionedCall lstm_627/StatefulPartitionedCall2D
 lstm_628/StatefulPartitionedCall lstm_628/StatefulPartitionedCall2D
 lstm_629/StatefulPartitionedCall lstm_629/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3646413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3646413___redundant_placeholder05
1while_while_cond_3646413___redundant_placeholder15
1while_while_cond_3646413___redundant_placeholder25
1while_while_cond_3646413___redundant_placeholder3
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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3647485

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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3642801

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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3647681

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
?
?
+__inference_dense_209_layer_call_fn_3647409

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
F__inference_dense_209_layer_call_and_return_conditional_losses_3643901o
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
??
?
K__inference_sequential_209_layer_call_and_return_conditional_losses_3645552

inputsH
5lstm_627_lstm_cell_600_matmul_readvariableop_resource:	?J
7lstm_627_lstm_cell_600_matmul_1_readvariableop_resource:	d?E
6lstm_627_lstm_cell_600_biasadd_readvariableop_resource:	?H
5lstm_628_lstm_cell_601_matmul_readvariableop_resource:	d?J
7lstm_628_lstm_cell_601_matmul_1_readvariableop_resource:	2?E
6lstm_628_lstm_cell_601_biasadd_readvariableop_resource:	?G
5lstm_629_lstm_cell_602_matmul_readvariableop_resource:2(I
7lstm_629_lstm_cell_602_matmul_1_readvariableop_resource:
(D
6lstm_629_lstm_cell_602_biasadd_readvariableop_resource:(:
(dense_209_matmul_readvariableop_resource:
7
)dense_209_biasadd_readvariableop_resource:
identity?? dense_209/BiasAdd/ReadVariableOp?dense_209/MatMul/ReadVariableOp?-lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp?,lstm_627/lstm_cell_600/MatMul/ReadVariableOp?.lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp?lstm_627/while?-lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp?,lstm_628/lstm_cell_601/MatMul/ReadVariableOp?.lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp?lstm_628/while?-lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp?,lstm_629/lstm_cell_602/MatMul/ReadVariableOp?.lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp?lstm_629/whileD
lstm_627/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_627/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_627/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_627/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_627/strided_sliceStridedSlicelstm_627/Shape:output:0%lstm_627/strided_slice/stack:output:0'lstm_627/strided_slice/stack_1:output:0'lstm_627/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_627/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_627/zeros/packedPacklstm_627/strided_slice:output:0 lstm_627/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_627/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_627/zerosFilllstm_627/zeros/packed:output:0lstm_627/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_627/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_627/zeros_1/packedPacklstm_627/strided_slice:output:0"lstm_627/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_627/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_627/zeros_1Fill lstm_627/zeros_1/packed:output:0lstm_627/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_627/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_627/transpose	Transposeinputs lstm_627/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_627/Shape_1Shapelstm_627/transpose:y:0*
T0*
_output_shapes
:h
lstm_627/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_627/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_627/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_627/strided_slice_1StridedSlicelstm_627/Shape_1:output:0'lstm_627/strided_slice_1/stack:output:0)lstm_627/strided_slice_1/stack_1:output:0)lstm_627/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_627/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_627/TensorArrayV2TensorListReserve-lstm_627/TensorArrayV2/element_shape:output:0!lstm_627/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_627/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_627/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_627/transpose:y:0Glstm_627/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_627/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_627/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_627/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_627/strided_slice_2StridedSlicelstm_627/transpose:y:0'lstm_627/strided_slice_2/stack:output:0)lstm_627/strided_slice_2/stack_1:output:0)lstm_627/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_627/lstm_cell_600/MatMul/ReadVariableOpReadVariableOp5lstm_627_lstm_cell_600_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_627/lstm_cell_600/MatMulMatMul!lstm_627/strided_slice_2:output:04lstm_627/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_627/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp7lstm_627_lstm_cell_600_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_627/lstm_cell_600/MatMul_1MatMullstm_627/zeros:output:06lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_627/lstm_cell_600/addAddV2'lstm_627/lstm_cell_600/MatMul:product:0)lstm_627/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_627/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp6lstm_627_lstm_cell_600_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_627/lstm_cell_600/BiasAddBiasAddlstm_627/lstm_cell_600/add:z:05lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_627/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_627/lstm_cell_600/splitSplit/lstm_627/lstm_cell_600/split/split_dim:output:0'lstm_627/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_627/lstm_cell_600/SigmoidSigmoid%lstm_627/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_627/lstm_cell_600/Sigmoid_1Sigmoid%lstm_627/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_627/lstm_cell_600/mulMul$lstm_627/lstm_cell_600/Sigmoid_1:y:0lstm_627/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_627/lstm_cell_600/ReluRelu%lstm_627/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_627/lstm_cell_600/mul_1Mul"lstm_627/lstm_cell_600/Sigmoid:y:0)lstm_627/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_627/lstm_cell_600/add_1AddV2lstm_627/lstm_cell_600/mul:z:0 lstm_627/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_627/lstm_cell_600/Sigmoid_2Sigmoid%lstm_627/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_627/lstm_cell_600/Relu_1Relu lstm_627/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_627/lstm_cell_600/mul_2Mul$lstm_627/lstm_cell_600/Sigmoid_2:y:0+lstm_627/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_627/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_627/TensorArrayV2_1TensorListReserve/lstm_627/TensorArrayV2_1/element_shape:output:0!lstm_627/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_627/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_627/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_627/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_627/whileWhile$lstm_627/while/loop_counter:output:0*lstm_627/while/maximum_iterations:output:0lstm_627/time:output:0!lstm_627/TensorArrayV2_1:handle:0lstm_627/zeros:output:0lstm_627/zeros_1:output:0!lstm_627/strided_slice_1:output:0@lstm_627/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_627_lstm_cell_600_matmul_readvariableop_resource7lstm_627_lstm_cell_600_matmul_1_readvariableop_resource6lstm_627_lstm_cell_600_biasadd_readvariableop_resource*
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
lstm_627_while_body_3645184*'
condR
lstm_627_while_cond_3645183*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_627/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_627/TensorArrayV2Stack/TensorListStackTensorListStacklstm_627/while:output:3Blstm_627/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_627/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_627/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_627/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_627/strided_slice_3StridedSlice4lstm_627/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_627/strided_slice_3/stack:output:0)lstm_627/strided_slice_3/stack_1:output:0)lstm_627/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_627/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_627/transpose_1	Transpose4lstm_627/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_627/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_627/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_628/ShapeShapelstm_627/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_628/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_628/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_628/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_628/strided_sliceStridedSlicelstm_628/Shape:output:0%lstm_628/strided_slice/stack:output:0'lstm_628/strided_slice/stack_1:output:0'lstm_628/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_628/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_628/zeros/packedPacklstm_628/strided_slice:output:0 lstm_628/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_628/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_628/zerosFilllstm_628/zeros/packed:output:0lstm_628/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_628/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_628/zeros_1/packedPacklstm_628/strided_slice:output:0"lstm_628/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_628/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_628/zeros_1Fill lstm_628/zeros_1/packed:output:0lstm_628/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_628/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_628/transpose	Transposelstm_627/transpose_1:y:0 lstm_628/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_628/Shape_1Shapelstm_628/transpose:y:0*
T0*
_output_shapes
:h
lstm_628/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_628/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_628/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_628/strided_slice_1StridedSlicelstm_628/Shape_1:output:0'lstm_628/strided_slice_1/stack:output:0)lstm_628/strided_slice_1/stack_1:output:0)lstm_628/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_628/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_628/TensorArrayV2TensorListReserve-lstm_628/TensorArrayV2/element_shape:output:0!lstm_628/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_628/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_628/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_628/transpose:y:0Glstm_628/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_628/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_628/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_628/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_628/strided_slice_2StridedSlicelstm_628/transpose:y:0'lstm_628/strided_slice_2/stack:output:0)lstm_628/strided_slice_2/stack_1:output:0)lstm_628/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_628/lstm_cell_601/MatMul/ReadVariableOpReadVariableOp5lstm_628_lstm_cell_601_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_628/lstm_cell_601/MatMulMatMul!lstm_628/strided_slice_2:output:04lstm_628/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_628/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp7lstm_628_lstm_cell_601_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_628/lstm_cell_601/MatMul_1MatMullstm_628/zeros:output:06lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_628/lstm_cell_601/addAddV2'lstm_628/lstm_cell_601/MatMul:product:0)lstm_628/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_628/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp6lstm_628_lstm_cell_601_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_628/lstm_cell_601/BiasAddBiasAddlstm_628/lstm_cell_601/add:z:05lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_628/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_628/lstm_cell_601/splitSplit/lstm_628/lstm_cell_601/split/split_dim:output:0'lstm_628/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_628/lstm_cell_601/SigmoidSigmoid%lstm_628/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_628/lstm_cell_601/Sigmoid_1Sigmoid%lstm_628/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_628/lstm_cell_601/mulMul$lstm_628/lstm_cell_601/Sigmoid_1:y:0lstm_628/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_628/lstm_cell_601/ReluRelu%lstm_628/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_628/lstm_cell_601/mul_1Mul"lstm_628/lstm_cell_601/Sigmoid:y:0)lstm_628/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_628/lstm_cell_601/add_1AddV2lstm_628/lstm_cell_601/mul:z:0 lstm_628/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_628/lstm_cell_601/Sigmoid_2Sigmoid%lstm_628/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_628/lstm_cell_601/Relu_1Relu lstm_628/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_628/lstm_cell_601/mul_2Mul$lstm_628/lstm_cell_601/Sigmoid_2:y:0+lstm_628/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_628/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_628/TensorArrayV2_1TensorListReserve/lstm_628/TensorArrayV2_1/element_shape:output:0!lstm_628/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_628/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_628/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_628/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_628/whileWhile$lstm_628/while/loop_counter:output:0*lstm_628/while/maximum_iterations:output:0lstm_628/time:output:0!lstm_628/TensorArrayV2_1:handle:0lstm_628/zeros:output:0lstm_628/zeros_1:output:0!lstm_628/strided_slice_1:output:0@lstm_628/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_628_lstm_cell_601_matmul_readvariableop_resource7lstm_628_lstm_cell_601_matmul_1_readvariableop_resource6lstm_628_lstm_cell_601_biasadd_readvariableop_resource*
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
lstm_628_while_body_3645323*'
condR
lstm_628_while_cond_3645322*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_628/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_628/TensorArrayV2Stack/TensorListStackTensorListStacklstm_628/while:output:3Blstm_628/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_628/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_628/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_628/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_628/strided_slice_3StridedSlice4lstm_628/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_628/strided_slice_3/stack:output:0)lstm_628/strided_slice_3/stack_1:output:0)lstm_628/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_628/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_628/transpose_1	Transpose4lstm_628/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_628/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_628/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_629/ShapeShapelstm_628/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_629/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_629/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_629/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_629/strided_sliceStridedSlicelstm_629/Shape:output:0%lstm_629/strided_slice/stack:output:0'lstm_629/strided_slice/stack_1:output:0'lstm_629/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_629/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_629/zeros/packedPacklstm_629/strided_slice:output:0 lstm_629/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_629/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_629/zerosFilllstm_629/zeros/packed:output:0lstm_629/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_629/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_629/zeros_1/packedPacklstm_629/strided_slice:output:0"lstm_629/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_629/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_629/zeros_1Fill lstm_629/zeros_1/packed:output:0lstm_629/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_629/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_629/transpose	Transposelstm_628/transpose_1:y:0 lstm_629/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_629/Shape_1Shapelstm_629/transpose:y:0*
T0*
_output_shapes
:h
lstm_629/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_629/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_629/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_629/strided_slice_1StridedSlicelstm_629/Shape_1:output:0'lstm_629/strided_slice_1/stack:output:0)lstm_629/strided_slice_1/stack_1:output:0)lstm_629/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_629/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_629/TensorArrayV2TensorListReserve-lstm_629/TensorArrayV2/element_shape:output:0!lstm_629/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_629/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_629/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_629/transpose:y:0Glstm_629/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_629/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_629/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_629/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_629/strided_slice_2StridedSlicelstm_629/transpose:y:0'lstm_629/strided_slice_2/stack:output:0)lstm_629/strided_slice_2/stack_1:output:0)lstm_629/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_629/lstm_cell_602/MatMul/ReadVariableOpReadVariableOp5lstm_629_lstm_cell_602_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_629/lstm_cell_602/MatMulMatMul!lstm_629/strided_slice_2:output:04lstm_629/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_629/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp7lstm_629_lstm_cell_602_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_629/lstm_cell_602/MatMul_1MatMullstm_629/zeros:output:06lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_629/lstm_cell_602/addAddV2'lstm_629/lstm_cell_602/MatMul:product:0)lstm_629/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_629/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp6lstm_629_lstm_cell_602_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_629/lstm_cell_602/BiasAddBiasAddlstm_629/lstm_cell_602/add:z:05lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_629/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_629/lstm_cell_602/splitSplit/lstm_629/lstm_cell_602/split/split_dim:output:0'lstm_629/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_629/lstm_cell_602/SigmoidSigmoid%lstm_629/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_629/lstm_cell_602/Sigmoid_1Sigmoid%lstm_629/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_629/lstm_cell_602/mulMul$lstm_629/lstm_cell_602/Sigmoid_1:y:0lstm_629/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_629/lstm_cell_602/ReluRelu%lstm_629/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_629/lstm_cell_602/mul_1Mul"lstm_629/lstm_cell_602/Sigmoid:y:0)lstm_629/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_629/lstm_cell_602/add_1AddV2lstm_629/lstm_cell_602/mul:z:0 lstm_629/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_629/lstm_cell_602/Sigmoid_2Sigmoid%lstm_629/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_629/lstm_cell_602/Relu_1Relu lstm_629/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_629/lstm_cell_602/mul_2Mul$lstm_629/lstm_cell_602/Sigmoid_2:y:0+lstm_629/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_629/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_629/TensorArrayV2_1TensorListReserve/lstm_629/TensorArrayV2_1/element_shape:output:0!lstm_629/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_629/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_629/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_629/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_629/whileWhile$lstm_629/while/loop_counter:output:0*lstm_629/while/maximum_iterations:output:0lstm_629/time:output:0!lstm_629/TensorArrayV2_1:handle:0lstm_629/zeros:output:0lstm_629/zeros_1:output:0!lstm_629/strided_slice_1:output:0@lstm_629/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_629_lstm_cell_602_matmul_readvariableop_resource7lstm_629_lstm_cell_602_matmul_1_readvariableop_resource6lstm_629_lstm_cell_602_biasadd_readvariableop_resource*
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
lstm_629_while_body_3645462*'
condR
lstm_629_while_cond_3645461*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_629/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_629/TensorArrayV2Stack/TensorListStackTensorListStacklstm_629/while:output:3Blstm_629/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_629/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_629/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_629/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_629/strided_slice_3StridedSlice4lstm_629/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_629/strided_slice_3/stack:output:0)lstm_629/strided_slice_3/stack_1:output:0)lstm_629/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_629/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_629/transpose_1	Transpose4lstm_629/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_629/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_629/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_209/MatMul/ReadVariableOpReadVariableOp(dense_209_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_209/MatMulMatMul!lstm_629/strided_slice_3:output:0'dense_209/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_209/BiasAdd/ReadVariableOpReadVariableOp)dense_209_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_209/BiasAddBiasAdddense_209/MatMul:product:0(dense_209/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_209/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_209/BiasAdd/ReadVariableOp ^dense_209/MatMul/ReadVariableOp.^lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp-^lstm_627/lstm_cell_600/MatMul/ReadVariableOp/^lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp^lstm_627/while.^lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp-^lstm_628/lstm_cell_601/MatMul/ReadVariableOp/^lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp^lstm_628/while.^lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp-^lstm_629/lstm_cell_602/MatMul/ReadVariableOp/^lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp^lstm_629/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_209/BiasAdd/ReadVariableOp dense_209/BiasAdd/ReadVariableOp2B
dense_209/MatMul/ReadVariableOpdense_209/MatMul/ReadVariableOp2^
-lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp-lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp2\
,lstm_627/lstm_cell_600/MatMul/ReadVariableOp,lstm_627/lstm_cell_600/MatMul/ReadVariableOp2`
.lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp.lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp2 
lstm_627/whilelstm_627/while2^
-lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp-lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp2\
,lstm_628/lstm_cell_601/MatMul/ReadVariableOp,lstm_628/lstm_cell_601/MatMul/ReadVariableOp2`
.lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp.lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp2 
lstm_628/whilelstm_628/while2^
-lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp-lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp2\
,lstm_629/lstm_cell_602/MatMul/ReadVariableOp,lstm_629/lstm_cell_602/MatMul/ReadVariableOp2`
.lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp.lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp2 
lstm_629/whilelstm_629/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3645797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3645797___redundant_placeholder05
1while_while_cond_3645797___redundant_placeholder15
1while_while_cond_3645797___redundant_placeholder25
1while_while_cond_3645797___redundant_placeholder3
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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3645125

inputsH
5lstm_627_lstm_cell_600_matmul_readvariableop_resource:	?J
7lstm_627_lstm_cell_600_matmul_1_readvariableop_resource:	d?E
6lstm_627_lstm_cell_600_biasadd_readvariableop_resource:	?H
5lstm_628_lstm_cell_601_matmul_readvariableop_resource:	d?J
7lstm_628_lstm_cell_601_matmul_1_readvariableop_resource:	2?E
6lstm_628_lstm_cell_601_biasadd_readvariableop_resource:	?G
5lstm_629_lstm_cell_602_matmul_readvariableop_resource:2(I
7lstm_629_lstm_cell_602_matmul_1_readvariableop_resource:
(D
6lstm_629_lstm_cell_602_biasadd_readvariableop_resource:(:
(dense_209_matmul_readvariableop_resource:
7
)dense_209_biasadd_readvariableop_resource:
identity?? dense_209/BiasAdd/ReadVariableOp?dense_209/MatMul/ReadVariableOp?-lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp?,lstm_627/lstm_cell_600/MatMul/ReadVariableOp?.lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp?lstm_627/while?-lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp?,lstm_628/lstm_cell_601/MatMul/ReadVariableOp?.lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp?lstm_628/while?-lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp?,lstm_629/lstm_cell_602/MatMul/ReadVariableOp?.lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp?lstm_629/whileD
lstm_627/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_627/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_627/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_627/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_627/strided_sliceStridedSlicelstm_627/Shape:output:0%lstm_627/strided_slice/stack:output:0'lstm_627/strided_slice/stack_1:output:0'lstm_627/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_627/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_627/zeros/packedPacklstm_627/strided_slice:output:0 lstm_627/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_627/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_627/zerosFilllstm_627/zeros/packed:output:0lstm_627/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_627/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_627/zeros_1/packedPacklstm_627/strided_slice:output:0"lstm_627/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_627/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_627/zeros_1Fill lstm_627/zeros_1/packed:output:0lstm_627/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_627/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_627/transpose	Transposeinputs lstm_627/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_627/Shape_1Shapelstm_627/transpose:y:0*
T0*
_output_shapes
:h
lstm_627/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_627/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_627/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_627/strided_slice_1StridedSlicelstm_627/Shape_1:output:0'lstm_627/strided_slice_1/stack:output:0)lstm_627/strided_slice_1/stack_1:output:0)lstm_627/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_627/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_627/TensorArrayV2TensorListReserve-lstm_627/TensorArrayV2/element_shape:output:0!lstm_627/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_627/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_627/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_627/transpose:y:0Glstm_627/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_627/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_627/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_627/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_627/strided_slice_2StridedSlicelstm_627/transpose:y:0'lstm_627/strided_slice_2/stack:output:0)lstm_627/strided_slice_2/stack_1:output:0)lstm_627/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_627/lstm_cell_600/MatMul/ReadVariableOpReadVariableOp5lstm_627_lstm_cell_600_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_627/lstm_cell_600/MatMulMatMul!lstm_627/strided_slice_2:output:04lstm_627/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_627/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp7lstm_627_lstm_cell_600_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_627/lstm_cell_600/MatMul_1MatMullstm_627/zeros:output:06lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_627/lstm_cell_600/addAddV2'lstm_627/lstm_cell_600/MatMul:product:0)lstm_627/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_627/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp6lstm_627_lstm_cell_600_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_627/lstm_cell_600/BiasAddBiasAddlstm_627/lstm_cell_600/add:z:05lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_627/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_627/lstm_cell_600/splitSplit/lstm_627/lstm_cell_600/split/split_dim:output:0'lstm_627/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_627/lstm_cell_600/SigmoidSigmoid%lstm_627/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_627/lstm_cell_600/Sigmoid_1Sigmoid%lstm_627/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_627/lstm_cell_600/mulMul$lstm_627/lstm_cell_600/Sigmoid_1:y:0lstm_627/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_627/lstm_cell_600/ReluRelu%lstm_627/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_627/lstm_cell_600/mul_1Mul"lstm_627/lstm_cell_600/Sigmoid:y:0)lstm_627/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_627/lstm_cell_600/add_1AddV2lstm_627/lstm_cell_600/mul:z:0 lstm_627/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_627/lstm_cell_600/Sigmoid_2Sigmoid%lstm_627/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_627/lstm_cell_600/Relu_1Relu lstm_627/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_627/lstm_cell_600/mul_2Mul$lstm_627/lstm_cell_600/Sigmoid_2:y:0+lstm_627/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_627/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_627/TensorArrayV2_1TensorListReserve/lstm_627/TensorArrayV2_1/element_shape:output:0!lstm_627/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_627/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_627/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_627/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_627/whileWhile$lstm_627/while/loop_counter:output:0*lstm_627/while/maximum_iterations:output:0lstm_627/time:output:0!lstm_627/TensorArrayV2_1:handle:0lstm_627/zeros:output:0lstm_627/zeros_1:output:0!lstm_627/strided_slice_1:output:0@lstm_627/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_627_lstm_cell_600_matmul_readvariableop_resource7lstm_627_lstm_cell_600_matmul_1_readvariableop_resource6lstm_627_lstm_cell_600_biasadd_readvariableop_resource*
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
lstm_627_while_body_3644757*'
condR
lstm_627_while_cond_3644756*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_627/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_627/TensorArrayV2Stack/TensorListStackTensorListStacklstm_627/while:output:3Blstm_627/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_627/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_627/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_627/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_627/strided_slice_3StridedSlice4lstm_627/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_627/strided_slice_3/stack:output:0)lstm_627/strided_slice_3/stack_1:output:0)lstm_627/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_627/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_627/transpose_1	Transpose4lstm_627/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_627/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_627/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_628/ShapeShapelstm_627/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_628/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_628/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_628/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_628/strided_sliceStridedSlicelstm_628/Shape:output:0%lstm_628/strided_slice/stack:output:0'lstm_628/strided_slice/stack_1:output:0'lstm_628/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_628/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_628/zeros/packedPacklstm_628/strided_slice:output:0 lstm_628/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_628/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_628/zerosFilllstm_628/zeros/packed:output:0lstm_628/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_628/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_628/zeros_1/packedPacklstm_628/strided_slice:output:0"lstm_628/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_628/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_628/zeros_1Fill lstm_628/zeros_1/packed:output:0lstm_628/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_628/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_628/transpose	Transposelstm_627/transpose_1:y:0 lstm_628/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_628/Shape_1Shapelstm_628/transpose:y:0*
T0*
_output_shapes
:h
lstm_628/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_628/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_628/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_628/strided_slice_1StridedSlicelstm_628/Shape_1:output:0'lstm_628/strided_slice_1/stack:output:0)lstm_628/strided_slice_1/stack_1:output:0)lstm_628/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_628/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_628/TensorArrayV2TensorListReserve-lstm_628/TensorArrayV2/element_shape:output:0!lstm_628/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_628/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_628/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_628/transpose:y:0Glstm_628/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_628/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_628/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_628/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_628/strided_slice_2StridedSlicelstm_628/transpose:y:0'lstm_628/strided_slice_2/stack:output:0)lstm_628/strided_slice_2/stack_1:output:0)lstm_628/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_628/lstm_cell_601/MatMul/ReadVariableOpReadVariableOp5lstm_628_lstm_cell_601_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_628/lstm_cell_601/MatMulMatMul!lstm_628/strided_slice_2:output:04lstm_628/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_628/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp7lstm_628_lstm_cell_601_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_628/lstm_cell_601/MatMul_1MatMullstm_628/zeros:output:06lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_628/lstm_cell_601/addAddV2'lstm_628/lstm_cell_601/MatMul:product:0)lstm_628/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_628/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp6lstm_628_lstm_cell_601_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_628/lstm_cell_601/BiasAddBiasAddlstm_628/lstm_cell_601/add:z:05lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_628/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_628/lstm_cell_601/splitSplit/lstm_628/lstm_cell_601/split/split_dim:output:0'lstm_628/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_628/lstm_cell_601/SigmoidSigmoid%lstm_628/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_628/lstm_cell_601/Sigmoid_1Sigmoid%lstm_628/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_628/lstm_cell_601/mulMul$lstm_628/lstm_cell_601/Sigmoid_1:y:0lstm_628/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_628/lstm_cell_601/ReluRelu%lstm_628/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_628/lstm_cell_601/mul_1Mul"lstm_628/lstm_cell_601/Sigmoid:y:0)lstm_628/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_628/lstm_cell_601/add_1AddV2lstm_628/lstm_cell_601/mul:z:0 lstm_628/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_628/lstm_cell_601/Sigmoid_2Sigmoid%lstm_628/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_628/lstm_cell_601/Relu_1Relu lstm_628/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_628/lstm_cell_601/mul_2Mul$lstm_628/lstm_cell_601/Sigmoid_2:y:0+lstm_628/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_628/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_628/TensorArrayV2_1TensorListReserve/lstm_628/TensorArrayV2_1/element_shape:output:0!lstm_628/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_628/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_628/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_628/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_628/whileWhile$lstm_628/while/loop_counter:output:0*lstm_628/while/maximum_iterations:output:0lstm_628/time:output:0!lstm_628/TensorArrayV2_1:handle:0lstm_628/zeros:output:0lstm_628/zeros_1:output:0!lstm_628/strided_slice_1:output:0@lstm_628/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_628_lstm_cell_601_matmul_readvariableop_resource7lstm_628_lstm_cell_601_matmul_1_readvariableop_resource6lstm_628_lstm_cell_601_biasadd_readvariableop_resource*
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
lstm_628_while_body_3644896*'
condR
lstm_628_while_cond_3644895*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_628/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_628/TensorArrayV2Stack/TensorListStackTensorListStacklstm_628/while:output:3Blstm_628/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_628/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_628/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_628/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_628/strided_slice_3StridedSlice4lstm_628/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_628/strided_slice_3/stack:output:0)lstm_628/strided_slice_3/stack_1:output:0)lstm_628/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_628/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_628/transpose_1	Transpose4lstm_628/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_628/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_628/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_629/ShapeShapelstm_628/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_629/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_629/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_629/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_629/strided_sliceStridedSlicelstm_629/Shape:output:0%lstm_629/strided_slice/stack:output:0'lstm_629/strided_slice/stack_1:output:0'lstm_629/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_629/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_629/zeros/packedPacklstm_629/strided_slice:output:0 lstm_629/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_629/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_629/zerosFilllstm_629/zeros/packed:output:0lstm_629/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_629/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_629/zeros_1/packedPacklstm_629/strided_slice:output:0"lstm_629/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_629/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_629/zeros_1Fill lstm_629/zeros_1/packed:output:0lstm_629/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_629/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_629/transpose	Transposelstm_628/transpose_1:y:0 lstm_629/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_629/Shape_1Shapelstm_629/transpose:y:0*
T0*
_output_shapes
:h
lstm_629/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_629/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_629/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_629/strided_slice_1StridedSlicelstm_629/Shape_1:output:0'lstm_629/strided_slice_1/stack:output:0)lstm_629/strided_slice_1/stack_1:output:0)lstm_629/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_629/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_629/TensorArrayV2TensorListReserve-lstm_629/TensorArrayV2/element_shape:output:0!lstm_629/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_629/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_629/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_629/transpose:y:0Glstm_629/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_629/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_629/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_629/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_629/strided_slice_2StridedSlicelstm_629/transpose:y:0'lstm_629/strided_slice_2/stack:output:0)lstm_629/strided_slice_2/stack_1:output:0)lstm_629/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_629/lstm_cell_602/MatMul/ReadVariableOpReadVariableOp5lstm_629_lstm_cell_602_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_629/lstm_cell_602/MatMulMatMul!lstm_629/strided_slice_2:output:04lstm_629/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_629/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp7lstm_629_lstm_cell_602_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_629/lstm_cell_602/MatMul_1MatMullstm_629/zeros:output:06lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_629/lstm_cell_602/addAddV2'lstm_629/lstm_cell_602/MatMul:product:0)lstm_629/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_629/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp6lstm_629_lstm_cell_602_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_629/lstm_cell_602/BiasAddBiasAddlstm_629/lstm_cell_602/add:z:05lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_629/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_629/lstm_cell_602/splitSplit/lstm_629/lstm_cell_602/split/split_dim:output:0'lstm_629/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_629/lstm_cell_602/SigmoidSigmoid%lstm_629/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_629/lstm_cell_602/Sigmoid_1Sigmoid%lstm_629/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_629/lstm_cell_602/mulMul$lstm_629/lstm_cell_602/Sigmoid_1:y:0lstm_629/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_629/lstm_cell_602/ReluRelu%lstm_629/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_629/lstm_cell_602/mul_1Mul"lstm_629/lstm_cell_602/Sigmoid:y:0)lstm_629/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_629/lstm_cell_602/add_1AddV2lstm_629/lstm_cell_602/mul:z:0 lstm_629/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_629/lstm_cell_602/Sigmoid_2Sigmoid%lstm_629/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_629/lstm_cell_602/Relu_1Relu lstm_629/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_629/lstm_cell_602/mul_2Mul$lstm_629/lstm_cell_602/Sigmoid_2:y:0+lstm_629/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_629/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_629/TensorArrayV2_1TensorListReserve/lstm_629/TensorArrayV2_1/element_shape:output:0!lstm_629/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_629/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_629/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_629/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_629/whileWhile$lstm_629/while/loop_counter:output:0*lstm_629/while/maximum_iterations:output:0lstm_629/time:output:0!lstm_629/TensorArrayV2_1:handle:0lstm_629/zeros:output:0lstm_629/zeros_1:output:0!lstm_629/strided_slice_1:output:0@lstm_629/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_629_lstm_cell_602_matmul_readvariableop_resource7lstm_629_lstm_cell_602_matmul_1_readvariableop_resource6lstm_629_lstm_cell_602_biasadd_readvariableop_resource*
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
lstm_629_while_body_3645035*'
condR
lstm_629_while_cond_3645034*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_629/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_629/TensorArrayV2Stack/TensorListStackTensorListStacklstm_629/while:output:3Blstm_629/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_629/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_629/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_629/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_629/strided_slice_3StridedSlice4lstm_629/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_629/strided_slice_3/stack:output:0)lstm_629/strided_slice_3/stack_1:output:0)lstm_629/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_629/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_629/transpose_1	Transpose4lstm_629/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_629/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_629/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_209/MatMul/ReadVariableOpReadVariableOp(dense_209_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_209/MatMulMatMul!lstm_629/strided_slice_3:output:0'dense_209/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_209/BiasAdd/ReadVariableOpReadVariableOp)dense_209_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_209/BiasAddBiasAdddense_209/MatMul:product:0(dense_209/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_209/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_209/BiasAdd/ReadVariableOp ^dense_209/MatMul/ReadVariableOp.^lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp-^lstm_627/lstm_cell_600/MatMul/ReadVariableOp/^lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp^lstm_627/while.^lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp-^lstm_628/lstm_cell_601/MatMul/ReadVariableOp/^lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp^lstm_628/while.^lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp-^lstm_629/lstm_cell_602/MatMul/ReadVariableOp/^lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp^lstm_629/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_209/BiasAdd/ReadVariableOp dense_209/BiasAdd/ReadVariableOp2B
dense_209/MatMul/ReadVariableOpdense_209/MatMul/ReadVariableOp2^
-lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp-lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp2\
,lstm_627/lstm_cell_600/MatMul/ReadVariableOp,lstm_627/lstm_cell_600/MatMul/ReadVariableOp2`
.lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp.lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp2 
lstm_627/whilelstm_627/while2^
-lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp-lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp2\
,lstm_628/lstm_cell_601/MatMul/ReadVariableOp,lstm_628/lstm_cell_601/MatMul/ReadVariableOp2`
.lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp.lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp2 
lstm_628/whilelstm_628/while2^
-lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp-lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp2\
,lstm_629/lstm_cell_602/MatMul/ReadVariableOp,lstm_629/lstm_cell_602/MatMul/ReadVariableOp2`
.lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp.lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp2 
lstm_629/whilelstm_629/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_209_lstm_629_while_body_3642294L
Hsequential_209_lstm_629_while_sequential_209_lstm_629_while_loop_counterR
Nsequential_209_lstm_629_while_sequential_209_lstm_629_while_maximum_iterations-
)sequential_209_lstm_629_while_placeholder/
+sequential_209_lstm_629_while_placeholder_1/
+sequential_209_lstm_629_while_placeholder_2/
+sequential_209_lstm_629_while_placeholder_3K
Gsequential_209_lstm_629_while_sequential_209_lstm_629_strided_slice_1_0?
?sequential_209_lstm_629_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_629_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_209_lstm_629_while_lstm_cell_602_matmul_readvariableop_resource_0:2(`
Nsequential_209_lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource_0:
([
Msequential_209_lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource_0:(*
&sequential_209_lstm_629_while_identity,
(sequential_209_lstm_629_while_identity_1,
(sequential_209_lstm_629_while_identity_2,
(sequential_209_lstm_629_while_identity_3,
(sequential_209_lstm_629_while_identity_4,
(sequential_209_lstm_629_while_identity_5I
Esequential_209_lstm_629_while_sequential_209_lstm_629_strided_slice_1?
?sequential_209_lstm_629_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_629_tensorarrayunstack_tensorlistfromtensor\
Jsequential_209_lstm_629_while_lstm_cell_602_matmul_readvariableop_resource:2(^
Lsequential_209_lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource:
(Y
Ksequential_209_lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource:(??Bsequential_209/lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp?Asequential_209/lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp?Csequential_209/lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp?
Osequential_209/lstm_629/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_209/lstm_629/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_209_lstm_629_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_629_tensorarrayunstack_tensorlistfromtensor_0)sequential_209_lstm_629_while_placeholderXsequential_209/lstm_629/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_209/lstm_629/while/lstm_cell_602/MatMul/ReadVariableOpReadVariableOpLsequential_209_lstm_629_while_lstm_cell_602_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_209/lstm_629/while/lstm_cell_602/MatMulMatMulHsequential_209/lstm_629/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_209/lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_209/lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOpNsequential_209_lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_209/lstm_629/while/lstm_cell_602/MatMul_1MatMul+sequential_209_lstm_629_while_placeholder_2Ksequential_209/lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_209/lstm_629/while/lstm_cell_602/addAddV2<sequential_209/lstm_629/while/lstm_cell_602/MatMul:product:0>sequential_209/lstm_629/while/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_209/lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOpMsequential_209_lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_209/lstm_629/while/lstm_cell_602/BiasAddBiasAdd3sequential_209/lstm_629/while/lstm_cell_602/add:z:0Jsequential_209/lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_209/lstm_629/while/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_209/lstm_629/while/lstm_cell_602/splitSplitDsequential_209/lstm_629/while/lstm_cell_602/split/split_dim:output:0<sequential_209/lstm_629/while/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_209/lstm_629/while/lstm_cell_602/SigmoidSigmoid:sequential_209/lstm_629/while/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_209/lstm_629/while/lstm_cell_602/Sigmoid_1Sigmoid:sequential_209/lstm_629/while/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_209/lstm_629/while/lstm_cell_602/mulMul9sequential_209/lstm_629/while/lstm_cell_602/Sigmoid_1:y:0+sequential_209_lstm_629_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_209/lstm_629/while/lstm_cell_602/ReluRelu:sequential_209/lstm_629/while/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_209/lstm_629/while/lstm_cell_602/mul_1Mul7sequential_209/lstm_629/while/lstm_cell_602/Sigmoid:y:0>sequential_209/lstm_629/while/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_209/lstm_629/while/lstm_cell_602/add_1AddV23sequential_209/lstm_629/while/lstm_cell_602/mul:z:05sequential_209/lstm_629/while/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_209/lstm_629/while/lstm_cell_602/Sigmoid_2Sigmoid:sequential_209/lstm_629/while/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_209/lstm_629/while/lstm_cell_602/Relu_1Relu5sequential_209/lstm_629/while/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_209/lstm_629/while/lstm_cell_602/mul_2Mul9sequential_209/lstm_629/while/lstm_cell_602/Sigmoid_2:y:0@sequential_209/lstm_629/while/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_209/lstm_629/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_209_lstm_629_while_placeholder_1)sequential_209_lstm_629_while_placeholder5sequential_209/lstm_629/while/lstm_cell_602/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_209/lstm_629/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_209/lstm_629/while/addAddV2)sequential_209_lstm_629_while_placeholder,sequential_209/lstm_629/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_209/lstm_629/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_209/lstm_629/while/add_1AddV2Hsequential_209_lstm_629_while_sequential_209_lstm_629_while_loop_counter.sequential_209/lstm_629/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_209/lstm_629/while/IdentityIdentity'sequential_209/lstm_629/while/add_1:z:0#^sequential_209/lstm_629/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_629/while/Identity_1IdentityNsequential_209_lstm_629_while_sequential_209_lstm_629_while_maximum_iterations#^sequential_209/lstm_629/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_629/while/Identity_2Identity%sequential_209/lstm_629/while/add:z:0#^sequential_209/lstm_629/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_629/while/Identity_3IdentityRsequential_209/lstm_629/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_209/lstm_629/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_629/while/Identity_4Identity5sequential_209/lstm_629/while/lstm_cell_602/mul_2:z:0#^sequential_209/lstm_629/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_209/lstm_629/while/Identity_5Identity5sequential_209/lstm_629/while/lstm_cell_602/add_1:z:0#^sequential_209/lstm_629/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_209/lstm_629/while/NoOpNoOpC^sequential_209/lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOpB^sequential_209/lstm_629/while/lstm_cell_602/MatMul/ReadVariableOpD^sequential_209/lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_209_lstm_629_while_identity/sequential_209/lstm_629/while/Identity:output:0"]
(sequential_209_lstm_629_while_identity_11sequential_209/lstm_629/while/Identity_1:output:0"]
(sequential_209_lstm_629_while_identity_21sequential_209/lstm_629/while/Identity_2:output:0"]
(sequential_209_lstm_629_while_identity_31sequential_209/lstm_629/while/Identity_3:output:0"]
(sequential_209_lstm_629_while_identity_41sequential_209/lstm_629/while/Identity_4:output:0"]
(sequential_209_lstm_629_while_identity_51sequential_209/lstm_629/while/Identity_5:output:0"?
Ksequential_209_lstm_629_while_lstm_cell_602_biasadd_readvariableop_resourceMsequential_209_lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource_0"?
Lsequential_209_lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resourceNsequential_209_lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource_0"?
Jsequential_209_lstm_629_while_lstm_cell_602_matmul_readvariableop_resourceLsequential_209_lstm_629_while_lstm_cell_602_matmul_readvariableop_resource_0"?
Esequential_209_lstm_629_while_sequential_209_lstm_629_strided_slice_1Gsequential_209_lstm_629_while_sequential_209_lstm_629_strided_slice_1_0"?
?sequential_209_lstm_629_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_629_tensorarrayunstack_tensorlistfromtensor?sequential_209_lstm_629_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_629_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_209/lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOpBsequential_209/lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp2?
Asequential_209/lstm_629/while/lstm_cell_602/MatMul/ReadVariableOpAsequential_209/lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp2?
Csequential_209/lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOpCsequential_209/lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3642534

inputs(
lstm_cell_600_3642452:	?(
lstm_cell_600_3642454:	d?$
lstm_cell_600_3642456:	?
identity??%lstm_cell_600/StatefulPartitionedCall?while;
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
%lstm_cell_600/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_600_3642452lstm_cell_600_3642454lstm_cell_600_3642456*
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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3642451n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_600_3642452lstm_cell_600_3642454lstm_cell_600_3642456*
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
while_body_3642465*
condR
while_cond_3642464*K
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
NoOpNoOp&^lstm_cell_600/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_600/StatefulPartitionedCall%lstm_cell_600/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_629_layer_call_and_return_conditional_losses_3643425

inputs'
lstm_cell_602_3643343:2('
lstm_cell_602_3643345:
(#
lstm_cell_602_3643347:(
identity??%lstm_cell_602/StatefulPartitionedCall?while;
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
%lstm_cell_602/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_602_3643343lstm_cell_602_3643345lstm_cell_602_3643347*
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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3643297n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_602_3643343lstm_cell_602_3643345lstm_cell_602_3643347*
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
while_body_3643356*
condR
while_cond_3643355*K
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
NoOpNoOp&^lstm_cell_602/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_602/StatefulPartitionedCall%lstm_cell_602/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3646084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_600_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_600_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_600_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_600_matmul_readvariableop_resource:	?G
4while_lstm_cell_600_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_600_biasadd_readvariableop_resource:	???*while/lstm_cell_600/BiasAdd/ReadVariableOp?)while/lstm_cell_600/MatMul/ReadVariableOp?+while/lstm_cell_600/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_600/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_600_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_600/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_600_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_600/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_600/addAddV2$while/lstm_cell_600/MatMul:product:0&while/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_600_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_600/BiasAddBiasAddwhile/lstm_cell_600/add:z:02while/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_600/splitSplit,while/lstm_cell_600/split/split_dim:output:0$while/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_600/SigmoidSigmoid"while/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_1Sigmoid"while/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mulMul!while/lstm_cell_600/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_600/ReluRelu"while/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_1Mulwhile/lstm_cell_600/Sigmoid:y:0&while/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/add_1AddV2while/lstm_cell_600/mul:z:0while/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_2Sigmoid"while/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_600/Relu_1Reluwhile/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_2Mul!while/lstm_cell_600/Sigmoid_2:y:0(while/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_600/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_600/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_600/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_600/BiasAdd/ReadVariableOp*^while/lstm_cell_600/MatMul/ReadVariableOp,^while/lstm_cell_600/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_600_biasadd_readvariableop_resource5while_lstm_cell_600_biasadd_readvariableop_resource_0"n
4while_lstm_cell_600_matmul_1_readvariableop_resource6while_lstm_cell_600_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_600_matmul_readvariableop_resource4while_lstm_cell_600_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_600/BiasAdd/ReadVariableOp*while/lstm_cell_600/BiasAdd/ReadVariableOp2V
)while/lstm_cell_600/MatMul/ReadVariableOp)while/lstm_cell_600/MatMul/ReadVariableOp2Z
+while/lstm_cell_600/MatMul_1/ReadVariableOp+while/lstm_cell_600/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_628_layer_call_fn_3646190
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3643075|
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
while_body_3643499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_600_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_600_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_600_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_600_matmul_readvariableop_resource:	?G
4while_lstm_cell_600_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_600_biasadd_readvariableop_resource:	???*while/lstm_cell_600/BiasAdd/ReadVariableOp?)while/lstm_cell_600/MatMul/ReadVariableOp?+while/lstm_cell_600/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_600/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_600_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_600/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_600_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_600/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_600/addAddV2$while/lstm_cell_600/MatMul:product:0&while/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_600_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_600/BiasAddBiasAddwhile/lstm_cell_600/add:z:02while/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_600/splitSplit,while/lstm_cell_600/split/split_dim:output:0$while/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_600/SigmoidSigmoid"while/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_1Sigmoid"while/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mulMul!while/lstm_cell_600/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_600/ReluRelu"while/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_1Mulwhile/lstm_cell_600/Sigmoid:y:0&while/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/add_1AddV2while/lstm_cell_600/mul:z:0while/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_2Sigmoid"while/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_600/Relu_1Reluwhile/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_2Mul!while/lstm_cell_600/Sigmoid_2:y:0(while/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_600/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_600/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_600/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_600/BiasAdd/ReadVariableOp*^while/lstm_cell_600/MatMul/ReadVariableOp,^while/lstm_cell_600/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_600_biasadd_readvariableop_resource5while_lstm_cell_600_biasadd_readvariableop_resource_0"n
4while_lstm_cell_600_matmul_1_readvariableop_resource6while_lstm_cell_600_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_600_matmul_readvariableop_resource4while_lstm_cell_600_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_600/BiasAdd/ReadVariableOp*while/lstm_cell_600/BiasAdd/ReadVariableOp2V
)while/lstm_cell_600/MatMul/ReadVariableOp)while/lstm_cell_600/MatMul/ReadVariableOp2Z
+while/lstm_cell_600/MatMul_1/ReadVariableOp+while/lstm_cell_600/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3643798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3643798___redundant_placeholder05
1while_while_cond_3643798___redundant_placeholder15
1while_while_cond_3643798___redundant_placeholder25
1while_while_cond_3643798___redundant_placeholder3
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
0__inference_sequential_209_layer_call_fn_3643933
lstm_627_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_627_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3643908o
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
_user_specified_namelstm_627_input
?8
?
while_body_3646700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_601_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_601_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_601_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_601_matmul_readvariableop_resource:	d?G
4while_lstm_cell_601_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_601_biasadd_readvariableop_resource:	???*while/lstm_cell_601/BiasAdd/ReadVariableOp?)while/lstm_cell_601/MatMul/ReadVariableOp?+while/lstm_cell_601/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_601/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_601_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_601/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_601_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_601/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_601/addAddV2$while/lstm_cell_601/MatMul:product:0&while/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_601_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_601/BiasAddBiasAddwhile/lstm_cell_601/add:z:02while/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_601/splitSplit,while/lstm_cell_601/split/split_dim:output:0$while/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_601/SigmoidSigmoid"while/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_1Sigmoid"while/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mulMul!while/lstm_cell_601/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_601/ReluRelu"while/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_1Mulwhile/lstm_cell_601/Sigmoid:y:0&while/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/add_1AddV2while/lstm_cell_601/mul:z:0while/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_2Sigmoid"while/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_601/Relu_1Reluwhile/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_2Mul!while/lstm_cell_601/Sigmoid_2:y:0(while/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_601/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_601/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_601/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_601/BiasAdd/ReadVariableOp*^while/lstm_cell_601/MatMul/ReadVariableOp,^while/lstm_cell_601/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_601_biasadd_readvariableop_resource5while_lstm_cell_601_biasadd_readvariableop_resource_0"n
4while_lstm_cell_601_matmul_1_readvariableop_resource6while_lstm_cell_601_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_601_matmul_readvariableop_resource4while_lstm_cell_601_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_601/BiasAdd/ReadVariableOp*while/lstm_cell_601/BiasAdd/ReadVariableOp2V
)while/lstm_cell_601/MatMul/ReadVariableOp)while/lstm_cell_601/MatMul/ReadVariableOp2Z
+while/lstm_cell_601/MatMul_1/ReadVariableOp+while/lstm_cell_601/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3646699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3646699___redundant_placeholder05
1while_while_cond_3646699___redundant_placeholder15
1while_while_cond_3646699___redundant_placeholder25
1while_while_cond_3646699___redundant_placeholder3
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
while_body_3643799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_602_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_602_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_602_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_602_matmul_readvariableop_resource:2(F
4while_lstm_cell_602_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_602_biasadd_readvariableop_resource:(??*while/lstm_cell_602/BiasAdd/ReadVariableOp?)while/lstm_cell_602/MatMul/ReadVariableOp?+while/lstm_cell_602/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_602/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_602_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_602/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_602_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_602/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_602/addAddV2$while/lstm_cell_602/MatMul:product:0&while/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_602_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_602/BiasAddBiasAddwhile/lstm_cell_602/add:z:02while/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_602/splitSplit,while/lstm_cell_602/split/split_dim:output:0$while/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_602/SigmoidSigmoid"while/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_1Sigmoid"while/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mulMul!while/lstm_cell_602/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_602/ReluRelu"while/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_1Mulwhile/lstm_cell_602/Sigmoid:y:0&while/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/add_1AddV2while/lstm_cell_602/mul:z:0while/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_2Sigmoid"while/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_602/Relu_1Reluwhile/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_2Mul!while/lstm_cell_602/Sigmoid_2:y:0(while/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_602/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_602/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_602/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_602/BiasAdd/ReadVariableOp*^while/lstm_cell_602/MatMul/ReadVariableOp,^while/lstm_cell_602/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_602_biasadd_readvariableop_resource5while_lstm_cell_602_biasadd_readvariableop_resource_0"n
4while_lstm_cell_602_matmul_1_readvariableop_resource6while_lstm_cell_602_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_602_matmul_readvariableop_resource4while_lstm_cell_602_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_602/BiasAdd/ReadVariableOp*while/lstm_cell_602/BiasAdd/ReadVariableOp2V
)while/lstm_cell_602/MatMul/ReadVariableOp)while/lstm_cell_602/MatMul/ReadVariableOp2Z
+while/lstm_cell_602/MatMul_1/ReadVariableOp+while/lstm_cell_602/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3647030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_602_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_602_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_602_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_602_matmul_readvariableop_resource:2(F
4while_lstm_cell_602_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_602_biasadd_readvariableop_resource:(??*while/lstm_cell_602/BiasAdd/ReadVariableOp?)while/lstm_cell_602/MatMul/ReadVariableOp?+while/lstm_cell_602/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_602/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_602_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_602/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_602_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_602/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_602/addAddV2$while/lstm_cell_602/MatMul:product:0&while/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_602_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_602/BiasAddBiasAddwhile/lstm_cell_602/add:z:02while/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_602/splitSplit,while/lstm_cell_602/split/split_dim:output:0$while/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_602/SigmoidSigmoid"while/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_1Sigmoid"while/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mulMul!while/lstm_cell_602/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_602/ReluRelu"while/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_1Mulwhile/lstm_cell_602/Sigmoid:y:0&while/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/add_1AddV2while/lstm_cell_602/mul:z:0while/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_2Sigmoid"while/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_602/Relu_1Reluwhile/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_2Mul!while/lstm_cell_602/Sigmoid_2:y:0(while/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_602/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_602/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_602/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_602/BiasAdd/ReadVariableOp*^while/lstm_cell_602/MatMul/ReadVariableOp,^while/lstm_cell_602/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_602_biasadd_readvariableop_resource5while_lstm_cell_602_biasadd_readvariableop_resource_0"n
4while_lstm_cell_602_matmul_1_readvariableop_resource6while_lstm_cell_602_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_602_matmul_readvariableop_resource4while_lstm_cell_602_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_602/BiasAdd/ReadVariableOp*while/lstm_cell_602/BiasAdd/ReadVariableOp2V
)while/lstm_cell_602/MatMul/ReadVariableOp)while/lstm_cell_602/MatMul/ReadVariableOp2Z
+while/lstm_cell_602/MatMul_1/ReadVariableOp+while/lstm_cell_602/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_600_layer_call_fn_3647453

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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3642597o
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

lstm_628_while_body_3645323.
*lstm_628_while_lstm_628_while_loop_counter4
0lstm_628_while_lstm_628_while_maximum_iterations
lstm_628_while_placeholder 
lstm_628_while_placeholder_1 
lstm_628_while_placeholder_2 
lstm_628_while_placeholder_3-
)lstm_628_while_lstm_628_strided_slice_1_0i
elstm_628_while_tensorarrayv2read_tensorlistgetitem_lstm_628_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_628_while_lstm_cell_601_matmul_readvariableop_resource_0:	d?R
?lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource_0:	2?M
>lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource_0:	?
lstm_628_while_identity
lstm_628_while_identity_1
lstm_628_while_identity_2
lstm_628_while_identity_3
lstm_628_while_identity_4
lstm_628_while_identity_5+
'lstm_628_while_lstm_628_strided_slice_1g
clstm_628_while_tensorarrayv2read_tensorlistgetitem_lstm_628_tensorarrayunstack_tensorlistfromtensorN
;lstm_628_while_lstm_cell_601_matmul_readvariableop_resource:	d?P
=lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource:	2?K
<lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource:	???3lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp?2lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp?4lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp?
@lstm_628/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_628/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_628_while_tensorarrayv2read_tensorlistgetitem_lstm_628_tensorarrayunstack_tensorlistfromtensor_0lstm_628_while_placeholderIlstm_628/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_628/while/lstm_cell_601/MatMul/ReadVariableOpReadVariableOp=lstm_628_while_lstm_cell_601_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_628/while/lstm_cell_601/MatMulMatMul9lstm_628/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp?lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_628/while/lstm_cell_601/MatMul_1MatMullstm_628_while_placeholder_2<lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_628/while/lstm_cell_601/addAddV2-lstm_628/while/lstm_cell_601/MatMul:product:0/lstm_628/while/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp>lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_628/while/lstm_cell_601/BiasAddBiasAdd$lstm_628/while/lstm_cell_601/add:z:0;lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_628/while/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_628/while/lstm_cell_601/splitSplit5lstm_628/while/lstm_cell_601/split/split_dim:output:0-lstm_628/while/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_628/while/lstm_cell_601/SigmoidSigmoid+lstm_628/while/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_628/while/lstm_cell_601/Sigmoid_1Sigmoid+lstm_628/while/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_628/while/lstm_cell_601/mulMul*lstm_628/while/lstm_cell_601/Sigmoid_1:y:0lstm_628_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_628/while/lstm_cell_601/ReluRelu+lstm_628/while/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_628/while/lstm_cell_601/mul_1Mul(lstm_628/while/lstm_cell_601/Sigmoid:y:0/lstm_628/while/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_628/while/lstm_cell_601/add_1AddV2$lstm_628/while/lstm_cell_601/mul:z:0&lstm_628/while/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_628/while/lstm_cell_601/Sigmoid_2Sigmoid+lstm_628/while/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_628/while/lstm_cell_601/Relu_1Relu&lstm_628/while/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_628/while/lstm_cell_601/mul_2Mul*lstm_628/while/lstm_cell_601/Sigmoid_2:y:01lstm_628/while/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_628/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_628_while_placeholder_1lstm_628_while_placeholder&lstm_628/while/lstm_cell_601/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_628/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_628/while/addAddV2lstm_628_while_placeholderlstm_628/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_628/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_628/while/add_1AddV2*lstm_628_while_lstm_628_while_loop_counterlstm_628/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_628/while/IdentityIdentitylstm_628/while/add_1:z:0^lstm_628/while/NoOp*
T0*
_output_shapes
: ?
lstm_628/while/Identity_1Identity0lstm_628_while_lstm_628_while_maximum_iterations^lstm_628/while/NoOp*
T0*
_output_shapes
: t
lstm_628/while/Identity_2Identitylstm_628/while/add:z:0^lstm_628/while/NoOp*
T0*
_output_shapes
: ?
lstm_628/while/Identity_3IdentityClstm_628/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_628/while/NoOp*
T0*
_output_shapes
: ?
lstm_628/while/Identity_4Identity&lstm_628/while/lstm_cell_601/mul_2:z:0^lstm_628/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_628/while/Identity_5Identity&lstm_628/while/lstm_cell_601/add_1:z:0^lstm_628/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_628/while/NoOpNoOp4^lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp3^lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp5^lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_628_while_identity lstm_628/while/Identity:output:0"?
lstm_628_while_identity_1"lstm_628/while/Identity_1:output:0"?
lstm_628_while_identity_2"lstm_628/while/Identity_2:output:0"?
lstm_628_while_identity_3"lstm_628/while/Identity_3:output:0"?
lstm_628_while_identity_4"lstm_628/while/Identity_4:output:0"?
lstm_628_while_identity_5"lstm_628/while/Identity_5:output:0"T
'lstm_628_while_lstm_628_strided_slice_1)lstm_628_while_lstm_628_strided_slice_1_0"~
<lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource>lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource_0"?
=lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource?lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource_0"|
;lstm_628_while_lstm_cell_601_matmul_readvariableop_resource=lstm_628_while_lstm_cell_601_matmul_readvariableop_resource_0"?
clstm_628_while_tensorarrayv2read_tensorlistgetitem_lstm_628_tensorarrayunstack_tensorlistfromtensorelstm_628_while_tensorarrayv2read_tensorlistgetitem_lstm_628_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp3lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp2h
2lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp2lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp2l
4lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp4lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_627_while_body_3644757.
*lstm_627_while_lstm_627_while_loop_counter4
0lstm_627_while_lstm_627_while_maximum_iterations
lstm_627_while_placeholder 
lstm_627_while_placeholder_1 
lstm_627_while_placeholder_2 
lstm_627_while_placeholder_3-
)lstm_627_while_lstm_627_strided_slice_1_0i
elstm_627_while_tensorarrayv2read_tensorlistgetitem_lstm_627_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_627_while_lstm_cell_600_matmul_readvariableop_resource_0:	?R
?lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource_0:	d?M
>lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource_0:	?
lstm_627_while_identity
lstm_627_while_identity_1
lstm_627_while_identity_2
lstm_627_while_identity_3
lstm_627_while_identity_4
lstm_627_while_identity_5+
'lstm_627_while_lstm_627_strided_slice_1g
clstm_627_while_tensorarrayv2read_tensorlistgetitem_lstm_627_tensorarrayunstack_tensorlistfromtensorN
;lstm_627_while_lstm_cell_600_matmul_readvariableop_resource:	?P
=lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource:	d?K
<lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource:	???3lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp?2lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp?4lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp?
@lstm_627/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_627/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_627_while_tensorarrayv2read_tensorlistgetitem_lstm_627_tensorarrayunstack_tensorlistfromtensor_0lstm_627_while_placeholderIlstm_627/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_627/while/lstm_cell_600/MatMul/ReadVariableOpReadVariableOp=lstm_627_while_lstm_cell_600_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_627/while/lstm_cell_600/MatMulMatMul9lstm_627/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp?lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_627/while/lstm_cell_600/MatMul_1MatMullstm_627_while_placeholder_2<lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_627/while/lstm_cell_600/addAddV2-lstm_627/while/lstm_cell_600/MatMul:product:0/lstm_627/while/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp>lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_627/while/lstm_cell_600/BiasAddBiasAdd$lstm_627/while/lstm_cell_600/add:z:0;lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_627/while/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_627/while/lstm_cell_600/splitSplit5lstm_627/while/lstm_cell_600/split/split_dim:output:0-lstm_627/while/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_627/while/lstm_cell_600/SigmoidSigmoid+lstm_627/while/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_627/while/lstm_cell_600/Sigmoid_1Sigmoid+lstm_627/while/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_627/while/lstm_cell_600/mulMul*lstm_627/while/lstm_cell_600/Sigmoid_1:y:0lstm_627_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_627/while/lstm_cell_600/ReluRelu+lstm_627/while/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_627/while/lstm_cell_600/mul_1Mul(lstm_627/while/lstm_cell_600/Sigmoid:y:0/lstm_627/while/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_627/while/lstm_cell_600/add_1AddV2$lstm_627/while/lstm_cell_600/mul:z:0&lstm_627/while/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_627/while/lstm_cell_600/Sigmoid_2Sigmoid+lstm_627/while/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_627/while/lstm_cell_600/Relu_1Relu&lstm_627/while/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_627/while/lstm_cell_600/mul_2Mul*lstm_627/while/lstm_cell_600/Sigmoid_2:y:01lstm_627/while/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_627/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_627_while_placeholder_1lstm_627_while_placeholder&lstm_627/while/lstm_cell_600/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_627/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_627/while/addAddV2lstm_627_while_placeholderlstm_627/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_627/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_627/while/add_1AddV2*lstm_627_while_lstm_627_while_loop_counterlstm_627/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_627/while/IdentityIdentitylstm_627/while/add_1:z:0^lstm_627/while/NoOp*
T0*
_output_shapes
: ?
lstm_627/while/Identity_1Identity0lstm_627_while_lstm_627_while_maximum_iterations^lstm_627/while/NoOp*
T0*
_output_shapes
: t
lstm_627/while/Identity_2Identitylstm_627/while/add:z:0^lstm_627/while/NoOp*
T0*
_output_shapes
: ?
lstm_627/while/Identity_3IdentityClstm_627/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_627/while/NoOp*
T0*
_output_shapes
: ?
lstm_627/while/Identity_4Identity&lstm_627/while/lstm_cell_600/mul_2:z:0^lstm_627/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_627/while/Identity_5Identity&lstm_627/while/lstm_cell_600/add_1:z:0^lstm_627/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_627/while/NoOpNoOp4^lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp3^lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp5^lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_627_while_identity lstm_627/while/Identity:output:0"?
lstm_627_while_identity_1"lstm_627/while/Identity_1:output:0"?
lstm_627_while_identity_2"lstm_627/while/Identity_2:output:0"?
lstm_627_while_identity_3"lstm_627/while/Identity_3:output:0"?
lstm_627_while_identity_4"lstm_627/while/Identity_4:output:0"?
lstm_627_while_identity_5"lstm_627/while/Identity_5:output:0"T
'lstm_627_while_lstm_627_strided_slice_1)lstm_627_while_lstm_627_strided_slice_1_0"~
<lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource>lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource_0"?
=lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource?lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource_0"|
;lstm_627_while_lstm_cell_600_matmul_readvariableop_resource=lstm_627_while_lstm_cell_600_matmul_readvariableop_resource_0"?
clstm_627_while_tensorarrayv2read_tensorlistgetitem_lstm_627_tensorarrayunstack_tensorlistfromtensorelstm_627_while_tensorarrayv2read_tensorlistgetitem_lstm_627_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp3lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp2h
2lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp2lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp2l
4lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp4lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_629_while_cond_3645034.
*lstm_629_while_lstm_629_while_loop_counter4
0lstm_629_while_lstm_629_while_maximum_iterations
lstm_629_while_placeholder 
lstm_629_while_placeholder_1 
lstm_629_while_placeholder_2 
lstm_629_while_placeholder_30
,lstm_629_while_less_lstm_629_strided_slice_1G
Clstm_629_while_lstm_629_while_cond_3645034___redundant_placeholder0G
Clstm_629_while_lstm_629_while_cond_3645034___redundant_placeholder1G
Clstm_629_while_lstm_629_while_cond_3645034___redundant_placeholder2G
Clstm_629_while_lstm_629_while_cond_3645034___redundant_placeholder3
lstm_629_while_identity
?
lstm_629/while/LessLesslstm_629_while_placeholder,lstm_629_while_less_lstm_629_strided_slice_1*
T0*
_output_shapes
: ]
lstm_629/while/IdentityIdentitylstm_629/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_629_while_identity lstm_629/while/Identity:output:0*(
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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3644579
lstm_627_input#
lstm_627_3644552:	?#
lstm_627_3644554:	d?
lstm_627_3644556:	?#
lstm_628_3644559:	d?#
lstm_628_3644561:	2?
lstm_628_3644563:	?"
lstm_629_3644566:2("
lstm_629_3644568:
(
lstm_629_3644570:(#
dense_209_3644573:

dense_209_3644575:
identity??!dense_209/StatefulPartitionedCall? lstm_627/StatefulPartitionedCall? lstm_628/StatefulPartitionedCall? lstm_629/StatefulPartitionedCall?
 lstm_627/StatefulPartitionedCallStatefulPartitionedCalllstm_627_inputlstm_627_3644552lstm_627_3644554lstm_627_3644556*
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3643583?
 lstm_628/StatefulPartitionedCallStatefulPartitionedCall)lstm_627/StatefulPartitionedCall:output:0lstm_628_3644559lstm_628_3644561lstm_628_3644563*
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3643733?
 lstm_629/StatefulPartitionedCallStatefulPartitionedCall)lstm_628/StatefulPartitionedCall:output:0lstm_629_3644566lstm_629_3644568lstm_629_3644570*
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3643883?
!dense_209/StatefulPartitionedCallStatefulPartitionedCall)lstm_629/StatefulPartitionedCall:output:0dense_209_3644573dense_209_3644575*
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
F__inference_dense_209_layer_call_and_return_conditional_losses_3643901y
IdentityIdentity*dense_209/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_209/StatefulPartitionedCall!^lstm_627/StatefulPartitionedCall!^lstm_628/StatefulPartitionedCall!^lstm_629/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_209/StatefulPartitionedCall!dense_209/StatefulPartitionedCall2D
 lstm_627/StatefulPartitionedCall lstm_627/StatefulPartitionedCall2D
 lstm_628/StatefulPartitionedCall lstm_628/StatefulPartitionedCall2D
 lstm_629/StatefulPartitionedCall lstm_629/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_627_input
?
?
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3642947

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
while_cond_3642464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3642464___redundant_placeholder05
1while_while_cond_3642464___redundant_placeholder15
1while_while_cond_3642464___redundant_placeholder25
1while_while_cond_3642464___redundant_placeholder3
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646641

inputs?
,lstm_cell_601_matmul_readvariableop_resource:	d?A
.lstm_cell_601_matmul_1_readvariableop_resource:	2?<
-lstm_cell_601_biasadd_readvariableop_resource:	?
identity??$lstm_cell_601/BiasAdd/ReadVariableOp?#lstm_cell_601/MatMul/ReadVariableOp?%lstm_cell_601/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_601/MatMul/ReadVariableOpReadVariableOp,lstm_cell_601_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_601/MatMulMatMulstrided_slice_2:output:0+lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_601_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_601/MatMul_1MatMulzeros:output:0-lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_601/addAddV2lstm_cell_601/MatMul:product:0 lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_601_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_601/BiasAddBiasAddlstm_cell_601/add:z:0,lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_601/splitSplit&lstm_cell_601/split/split_dim:output:0lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_601/SigmoidSigmoidlstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_1Sigmoidlstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_601/mulMullstm_cell_601/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_601/ReluRelulstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_1Mullstm_cell_601/Sigmoid:y:0 lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_601/add_1AddV2lstm_cell_601/mul:z:0lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_2Sigmoidlstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_601/Relu_1Relulstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_2Mullstm_cell_601/Sigmoid_2:y:0"lstm_cell_601/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_601_matmul_readvariableop_resource.lstm_cell_601_matmul_1_readvariableop_resource-lstm_cell_601_biasadd_readvariableop_resource*
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
while_body_3646557*
condR
while_cond_3646556*K
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
NoOpNoOp%^lstm_cell_601/BiasAdd/ReadVariableOp$^lstm_cell_601/MatMul/ReadVariableOp&^lstm_cell_601/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_601/BiasAdd/ReadVariableOp$lstm_cell_601/BiasAdd/ReadVariableOp2J
#lstm_cell_601/MatMul/ReadVariableOp#lstm_cell_601/MatMul/ReadVariableOp2N
%lstm_cell_601/MatMul_1/ReadVariableOp%lstm_cell_601/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3643355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3643355___redundant_placeholder05
1while_while_cond_3643355___redundant_placeholder15
1while_while_cond_3643355___redundant_placeholder25
1while_while_cond_3643355___redundant_placeholder3
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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3643297

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
while_cond_3643005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3643005___redundant_placeholder05
1while_while_cond_3643005___redundant_placeholder15
1while_while_cond_3643005___redundant_placeholder25
1while_while_cond_3643005___redundant_placeholder3
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
*__inference_lstm_629_layer_call_fn_3646806
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3643425o
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
while_body_3644015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_602_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_602_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_602_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_602_matmul_readvariableop_resource:2(F
4while_lstm_cell_602_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_602_biasadd_readvariableop_resource:(??*while/lstm_cell_602/BiasAdd/ReadVariableOp?)while/lstm_cell_602/MatMul/ReadVariableOp?+while/lstm_cell_602/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_602/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_602_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_602/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_602_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_602/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_602/addAddV2$while/lstm_cell_602/MatMul:product:0&while/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_602_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_602/BiasAddBiasAddwhile/lstm_cell_602/add:z:02while/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_602/splitSplit,while/lstm_cell_602/split/split_dim:output:0$while/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_602/SigmoidSigmoid"while/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_1Sigmoid"while/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mulMul!while/lstm_cell_602/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_602/ReluRelu"while/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_1Mulwhile/lstm_cell_602/Sigmoid:y:0&while/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/add_1AddV2while/lstm_cell_602/mul:z:0while/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_2Sigmoid"while/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_602/Relu_1Reluwhile/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_2Mul!while/lstm_cell_602/Sigmoid_2:y:0(while/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_602/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_602/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_602/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_602/BiasAdd/ReadVariableOp*^while/lstm_cell_602/MatMul/ReadVariableOp,^while/lstm_cell_602/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_602_biasadd_readvariableop_resource5while_lstm_cell_602_biasadd_readvariableop_resource_0"n
4while_lstm_cell_602_matmul_1_readvariableop_resource6while_lstm_cell_602_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_602_matmul_readvariableop_resource4while_lstm_cell_602_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_602/BiasAdd/ReadVariableOp*while/lstm_cell_602/BiasAdd/ReadVariableOp2V
)while/lstm_cell_602/MatMul/ReadVariableOp)while/lstm_cell_602/MatMul/ReadVariableOp2Z
+while/lstm_cell_602/MatMul_1/ReadVariableOp+while/lstm_cell_602/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3647615

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
?
F__inference_dense_209_layer_call_and_return_conditional_losses_3643901

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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3647257

inputs>
,lstm_cell_602_matmul_readvariableop_resource:2(@
.lstm_cell_602_matmul_1_readvariableop_resource:
(;
-lstm_cell_602_biasadd_readvariableop_resource:(
identity??$lstm_cell_602/BiasAdd/ReadVariableOp?#lstm_cell_602/MatMul/ReadVariableOp?%lstm_cell_602/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_602/MatMul/ReadVariableOpReadVariableOp,lstm_cell_602_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_602/MatMulMatMulstrided_slice_2:output:0+lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_602_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_602/MatMul_1MatMulzeros:output:0-lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_602/addAddV2lstm_cell_602/MatMul:product:0 lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_602_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_602/BiasAddBiasAddlstm_cell_602/add:z:0,lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_602/splitSplit&lstm_cell_602/split/split_dim:output:0lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_602/SigmoidSigmoidlstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_1Sigmoidlstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_602/mulMullstm_cell_602/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_602/ReluRelulstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_1Mullstm_cell_602/Sigmoid:y:0 lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_602/add_1AddV2lstm_cell_602/mul:z:0lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_2Sigmoidlstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_602/Relu_1Relulstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_2Mullstm_cell_602/Sigmoid_2:y:0"lstm_cell_602/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_602_matmul_readvariableop_resource.lstm_cell_602_matmul_1_readvariableop_resource-lstm_cell_602_biasadd_readvariableop_resource*
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
while_body_3647173*
condR
while_cond_3647172*K
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
NoOpNoOp%^lstm_cell_602/BiasAdd/ReadVariableOp$^lstm_cell_602/MatMul/ReadVariableOp&^lstm_cell_602/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_602/BiasAdd/ReadVariableOp$lstm_cell_602/BiasAdd/ReadVariableOp2J
#lstm_cell_602/MatMul/ReadVariableOp#lstm_cell_602/MatMul/ReadVariableOp2N
%lstm_cell_602/MatMul_1/ReadVariableOp%lstm_cell_602/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_627_while_cond_3644756.
*lstm_627_while_lstm_627_while_loop_counter4
0lstm_627_while_lstm_627_while_maximum_iterations
lstm_627_while_placeholder 
lstm_627_while_placeholder_1 
lstm_627_while_placeholder_2 
lstm_627_while_placeholder_30
,lstm_627_while_less_lstm_627_strided_slice_1G
Clstm_627_while_lstm_627_while_cond_3644756___redundant_placeholder0G
Clstm_627_while_lstm_627_while_cond_3644756___redundant_placeholder1G
Clstm_627_while_lstm_627_while_cond_3644756___redundant_placeholder2G
Clstm_627_while_lstm_627_while_cond_3644756___redundant_placeholder3
lstm_627_while_identity
?
lstm_627/while/LessLesslstm_627_while_placeholder,lstm_627_while_less_lstm_627_strided_slice_1*
T0*
_output_shapes
: ]
lstm_627/while/IdentityIdentitylstm_627/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_627_while_identity lstm_627/while/Identity:output:0*(
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3642884

inputs(
lstm_cell_601_3642802:	d?(
lstm_cell_601_3642804:	2?$
lstm_cell_601_3642806:	?
identity??%lstm_cell_601/StatefulPartitionedCall?while;
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
%lstm_cell_601/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_601_3642802lstm_cell_601_3642804lstm_cell_601_3642806*
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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3642801n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_601_3642802lstm_cell_601_3642804lstm_cell_601_3642806*
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
while_body_3642815*
condR
while_cond_3642814*K
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
NoOpNoOp&^lstm_cell_601/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_601/StatefulPartitionedCall%lstm_cell_601/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*sequential_209_lstm_628_while_cond_3642154L
Hsequential_209_lstm_628_while_sequential_209_lstm_628_while_loop_counterR
Nsequential_209_lstm_628_while_sequential_209_lstm_628_while_maximum_iterations-
)sequential_209_lstm_628_while_placeholder/
+sequential_209_lstm_628_while_placeholder_1/
+sequential_209_lstm_628_while_placeholder_2/
+sequential_209_lstm_628_while_placeholder_3N
Jsequential_209_lstm_628_while_less_sequential_209_lstm_628_strided_slice_1e
asequential_209_lstm_628_while_sequential_209_lstm_628_while_cond_3642154___redundant_placeholder0e
asequential_209_lstm_628_while_sequential_209_lstm_628_while_cond_3642154___redundant_placeholder1e
asequential_209_lstm_628_while_sequential_209_lstm_628_while_cond_3642154___redundant_placeholder2e
asequential_209_lstm_628_while_sequential_209_lstm_628_while_cond_3642154___redundant_placeholder3*
&sequential_209_lstm_628_while_identity
?
"sequential_209/lstm_628/while/LessLess)sequential_209_lstm_628_while_placeholderJsequential_209_lstm_628_while_less_sequential_209_lstm_628_strided_slice_1*
T0*
_output_shapes
: {
&sequential_209/lstm_628/while/IdentityIdentity&sequential_209/lstm_628/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_209_lstm_628_while_identity/sequential_209/lstm_628/while/Identity:output:0*(
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646498
inputs_0?
,lstm_cell_601_matmul_readvariableop_resource:	d?A
.lstm_cell_601_matmul_1_readvariableop_resource:	2?<
-lstm_cell_601_biasadd_readvariableop_resource:	?
identity??$lstm_cell_601/BiasAdd/ReadVariableOp?#lstm_cell_601/MatMul/ReadVariableOp?%lstm_cell_601/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_601/MatMul/ReadVariableOpReadVariableOp,lstm_cell_601_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_601/MatMulMatMulstrided_slice_2:output:0+lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_601_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_601/MatMul_1MatMulzeros:output:0-lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_601/addAddV2lstm_cell_601/MatMul:product:0 lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_601_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_601/BiasAddBiasAddlstm_cell_601/add:z:0,lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_601/splitSplit&lstm_cell_601/split/split_dim:output:0lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_601/SigmoidSigmoidlstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_1Sigmoidlstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_601/mulMullstm_cell_601/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_601/ReluRelulstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_1Mullstm_cell_601/Sigmoid:y:0 lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_601/add_1AddV2lstm_cell_601/mul:z:0lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_2Sigmoidlstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_601/Relu_1Relulstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_2Mullstm_cell_601/Sigmoid_2:y:0"lstm_cell_601/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_601_matmul_readvariableop_resource.lstm_cell_601_matmul_1_readvariableop_resource-lstm_cell_601_biasadd_readvariableop_resource*
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
while_body_3646414*
condR
while_cond_3646413*K
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
NoOpNoOp%^lstm_cell_601/BiasAdd/ReadVariableOp$^lstm_cell_601/MatMul/ReadVariableOp&^lstm_cell_601/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_601/BiasAdd/ReadVariableOp$lstm_cell_601/BiasAdd/ReadVariableOp2J
#lstm_cell_601/MatMul/ReadVariableOp#lstm_cell_601/MatMul/ReadVariableOp2N
%lstm_cell_601/MatMul_1/ReadVariableOp%lstm_cell_601/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_629_layer_call_and_return_conditional_losses_3643883

inputs>
,lstm_cell_602_matmul_readvariableop_resource:2(@
.lstm_cell_602_matmul_1_readvariableop_resource:
(;
-lstm_cell_602_biasadd_readvariableop_resource:(
identity??$lstm_cell_602/BiasAdd/ReadVariableOp?#lstm_cell_602/MatMul/ReadVariableOp?%lstm_cell_602/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_602/MatMul/ReadVariableOpReadVariableOp,lstm_cell_602_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_602/MatMulMatMulstrided_slice_2:output:0+lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_602_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_602/MatMul_1MatMulzeros:output:0-lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_602/addAddV2lstm_cell_602/MatMul:product:0 lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_602_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_602/BiasAddBiasAddlstm_cell_602/add:z:0,lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_602/splitSplit&lstm_cell_602/split/split_dim:output:0lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_602/SigmoidSigmoidlstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_1Sigmoidlstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_602/mulMullstm_cell_602/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_602/ReluRelulstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_1Mullstm_cell_602/Sigmoid:y:0 lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_602/add_1AddV2lstm_cell_602/mul:z:0lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_2Sigmoidlstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_602/Relu_1Relulstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_2Mullstm_cell_602/Sigmoid_2:y:0"lstm_cell_602/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_602_matmul_readvariableop_resource.lstm_cell_602_matmul_1_readvariableop_resource-lstm_cell_602_biasadd_readvariableop_resource*
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
while_body_3643799*
condR
while_cond_3643798*K
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
NoOpNoOp%^lstm_cell_602/BiasAdd/ReadVariableOp$^lstm_cell_602/MatMul/ReadVariableOp&^lstm_cell_602/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_602/BiasAdd/ReadVariableOp$lstm_cell_602/BiasAdd/ReadVariableOp2J
#lstm_cell_602/MatMul/ReadVariableOp#lstm_cell_602/MatMul/ReadVariableOp2N
%lstm_cell_602/MatMul_1/ReadVariableOp%lstm_cell_602/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_629_while_cond_3645461.
*lstm_629_while_lstm_629_while_loop_counter4
0lstm_629_while_lstm_629_while_maximum_iterations
lstm_629_while_placeholder 
lstm_629_while_placeholder_1 
lstm_629_while_placeholder_2 
lstm_629_while_placeholder_30
,lstm_629_while_less_lstm_629_strided_slice_1G
Clstm_629_while_lstm_629_while_cond_3645461___redundant_placeholder0G
Clstm_629_while_lstm_629_while_cond_3645461___redundant_placeholder1G
Clstm_629_while_lstm_629_while_cond_3645461___redundant_placeholder2G
Clstm_629_while_lstm_629_while_cond_3645461___redundant_placeholder3
lstm_629_while_identity
?
lstm_629/while/LessLesslstm_629_while_placeholder,lstm_629_while_less_lstm_629_strided_slice_1*
T0*
_output_shapes
: ]
lstm_629/while/IdentityIdentitylstm_629/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_629_while_identity lstm_629/while/Identity:output:0*(
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
while_cond_3643164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3643164___redundant_placeholder05
1while_while_cond_3643164___redundant_placeholder15
1while_while_cond_3643164___redundant_placeholder25
1while_while_cond_3643164___redundant_placeholder3
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
lstm_628_while_cond_3644895.
*lstm_628_while_lstm_628_while_loop_counter4
0lstm_628_while_lstm_628_while_maximum_iterations
lstm_628_while_placeholder 
lstm_628_while_placeholder_1 
lstm_628_while_placeholder_2 
lstm_628_while_placeholder_30
,lstm_628_while_less_lstm_628_strided_slice_1G
Clstm_628_while_lstm_628_while_cond_3644895___redundant_placeholder0G
Clstm_628_while_lstm_628_while_cond_3644895___redundant_placeholder1G
Clstm_628_while_lstm_628_while_cond_3644895___redundant_placeholder2G
Clstm_628_while_lstm_628_while_cond_3644895___redundant_placeholder3
lstm_628_while_identity
?
lstm_628/while/LessLesslstm_628_while_placeholder,lstm_628_while_less_lstm_628_strided_slice_1*
T0*
_output_shapes
: ]
lstm_628/while/IdentityIdentitylstm_628/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_628_while_identity lstm_628/while/Identity:output:0*(
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
*__inference_lstm_629_layer_call_fn_3646817

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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3643883o
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
/__inference_lstm_cell_601_layer_call_fn_3647551

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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3642947o
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
while_body_3647316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_602_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_602_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_602_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_602_matmul_readvariableop_resource:2(F
4while_lstm_cell_602_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_602_biasadd_readvariableop_resource:(??*while/lstm_cell_602/BiasAdd/ReadVariableOp?)while/lstm_cell_602/MatMul/ReadVariableOp?+while/lstm_cell_602/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_602/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_602_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_602/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_602_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_602/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_602/addAddV2$while/lstm_cell_602/MatMul:product:0&while/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_602_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_602/BiasAddBiasAddwhile/lstm_cell_602/add:z:02while/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_602/splitSplit,while/lstm_cell_602/split/split_dim:output:0$while/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_602/SigmoidSigmoid"while/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_1Sigmoid"while/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mulMul!while/lstm_cell_602/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_602/ReluRelu"while/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_1Mulwhile/lstm_cell_602/Sigmoid:y:0&while/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/add_1AddV2while/lstm_cell_602/mul:z:0while/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_2Sigmoid"while/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_602/Relu_1Reluwhile/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_2Mul!while/lstm_cell_602/Sigmoid_2:y:0(while/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_602/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_602/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_602/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_602/BiasAdd/ReadVariableOp*^while/lstm_cell_602/MatMul/ReadVariableOp,^while/lstm_cell_602/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_602_biasadd_readvariableop_resource5while_lstm_cell_602_biasadd_readvariableop_resource_0"n
4while_lstm_cell_602_matmul_1_readvariableop_resource6while_lstm_cell_602_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_602_matmul_readvariableop_resource4while_lstm_cell_602_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_602/BiasAdd/ReadVariableOp*while/lstm_cell_602/BiasAdd/ReadVariableOp2V
)while/lstm_cell_602/MatMul/ReadVariableOp)while/lstm_cell_602/MatMul/ReadVariableOp2Z
+while/lstm_cell_602/MatMul_1/ReadVariableOp+while/lstm_cell_602/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_209_lstm_627_while_body_3642016L
Hsequential_209_lstm_627_while_sequential_209_lstm_627_while_loop_counterR
Nsequential_209_lstm_627_while_sequential_209_lstm_627_while_maximum_iterations-
)sequential_209_lstm_627_while_placeholder/
+sequential_209_lstm_627_while_placeholder_1/
+sequential_209_lstm_627_while_placeholder_2/
+sequential_209_lstm_627_while_placeholder_3K
Gsequential_209_lstm_627_while_sequential_209_lstm_627_strided_slice_1_0?
?sequential_209_lstm_627_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_627_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_209_lstm_627_while_lstm_cell_600_matmul_readvariableop_resource_0:	?a
Nsequential_209_lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource_0:	d?\
Msequential_209_lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource_0:	?*
&sequential_209_lstm_627_while_identity,
(sequential_209_lstm_627_while_identity_1,
(sequential_209_lstm_627_while_identity_2,
(sequential_209_lstm_627_while_identity_3,
(sequential_209_lstm_627_while_identity_4,
(sequential_209_lstm_627_while_identity_5I
Esequential_209_lstm_627_while_sequential_209_lstm_627_strided_slice_1?
?sequential_209_lstm_627_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_627_tensorarrayunstack_tensorlistfromtensor]
Jsequential_209_lstm_627_while_lstm_cell_600_matmul_readvariableop_resource:	?_
Lsequential_209_lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource:	d?Z
Ksequential_209_lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource:	???Bsequential_209/lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp?Asequential_209/lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp?Csequential_209/lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp?
Osequential_209/lstm_627/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_209/lstm_627/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_209_lstm_627_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_627_tensorarrayunstack_tensorlistfromtensor_0)sequential_209_lstm_627_while_placeholderXsequential_209/lstm_627/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_209/lstm_627/while/lstm_cell_600/MatMul/ReadVariableOpReadVariableOpLsequential_209_lstm_627_while_lstm_cell_600_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_209/lstm_627/while/lstm_cell_600/MatMulMatMulHsequential_209/lstm_627/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_209/lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_209/lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOpNsequential_209_lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_209/lstm_627/while/lstm_cell_600/MatMul_1MatMul+sequential_209_lstm_627_while_placeholder_2Ksequential_209/lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_209/lstm_627/while/lstm_cell_600/addAddV2<sequential_209/lstm_627/while/lstm_cell_600/MatMul:product:0>sequential_209/lstm_627/while/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_209/lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOpMsequential_209_lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_209/lstm_627/while/lstm_cell_600/BiasAddBiasAdd3sequential_209/lstm_627/while/lstm_cell_600/add:z:0Jsequential_209/lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_209/lstm_627/while/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_209/lstm_627/while/lstm_cell_600/splitSplitDsequential_209/lstm_627/while/lstm_cell_600/split/split_dim:output:0<sequential_209/lstm_627/while/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_209/lstm_627/while/lstm_cell_600/SigmoidSigmoid:sequential_209/lstm_627/while/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_209/lstm_627/while/lstm_cell_600/Sigmoid_1Sigmoid:sequential_209/lstm_627/while/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_209/lstm_627/while/lstm_cell_600/mulMul9sequential_209/lstm_627/while/lstm_cell_600/Sigmoid_1:y:0+sequential_209_lstm_627_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_209/lstm_627/while/lstm_cell_600/ReluRelu:sequential_209/lstm_627/while/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_209/lstm_627/while/lstm_cell_600/mul_1Mul7sequential_209/lstm_627/while/lstm_cell_600/Sigmoid:y:0>sequential_209/lstm_627/while/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_209/lstm_627/while/lstm_cell_600/add_1AddV23sequential_209/lstm_627/while/lstm_cell_600/mul:z:05sequential_209/lstm_627/while/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_209/lstm_627/while/lstm_cell_600/Sigmoid_2Sigmoid:sequential_209/lstm_627/while/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_209/lstm_627/while/lstm_cell_600/Relu_1Relu5sequential_209/lstm_627/while/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_209/lstm_627/while/lstm_cell_600/mul_2Mul9sequential_209/lstm_627/while/lstm_cell_600/Sigmoid_2:y:0@sequential_209/lstm_627/while/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_209/lstm_627/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_209_lstm_627_while_placeholder_1)sequential_209_lstm_627_while_placeholder5sequential_209/lstm_627/while/lstm_cell_600/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_209/lstm_627/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_209/lstm_627/while/addAddV2)sequential_209_lstm_627_while_placeholder,sequential_209/lstm_627/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_209/lstm_627/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_209/lstm_627/while/add_1AddV2Hsequential_209_lstm_627_while_sequential_209_lstm_627_while_loop_counter.sequential_209/lstm_627/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_209/lstm_627/while/IdentityIdentity'sequential_209/lstm_627/while/add_1:z:0#^sequential_209/lstm_627/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_627/while/Identity_1IdentityNsequential_209_lstm_627_while_sequential_209_lstm_627_while_maximum_iterations#^sequential_209/lstm_627/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_627/while/Identity_2Identity%sequential_209/lstm_627/while/add:z:0#^sequential_209/lstm_627/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_627/while/Identity_3IdentityRsequential_209/lstm_627/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_209/lstm_627/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_627/while/Identity_4Identity5sequential_209/lstm_627/while/lstm_cell_600/mul_2:z:0#^sequential_209/lstm_627/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_209/lstm_627/while/Identity_5Identity5sequential_209/lstm_627/while/lstm_cell_600/add_1:z:0#^sequential_209/lstm_627/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_209/lstm_627/while/NoOpNoOpC^sequential_209/lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOpB^sequential_209/lstm_627/while/lstm_cell_600/MatMul/ReadVariableOpD^sequential_209/lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_209_lstm_627_while_identity/sequential_209/lstm_627/while/Identity:output:0"]
(sequential_209_lstm_627_while_identity_11sequential_209/lstm_627/while/Identity_1:output:0"]
(sequential_209_lstm_627_while_identity_21sequential_209/lstm_627/while/Identity_2:output:0"]
(sequential_209_lstm_627_while_identity_31sequential_209/lstm_627/while/Identity_3:output:0"]
(sequential_209_lstm_627_while_identity_41sequential_209/lstm_627/while/Identity_4:output:0"]
(sequential_209_lstm_627_while_identity_51sequential_209/lstm_627/while/Identity_5:output:0"?
Ksequential_209_lstm_627_while_lstm_cell_600_biasadd_readvariableop_resourceMsequential_209_lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource_0"?
Lsequential_209_lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resourceNsequential_209_lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource_0"?
Jsequential_209_lstm_627_while_lstm_cell_600_matmul_readvariableop_resourceLsequential_209_lstm_627_while_lstm_cell_600_matmul_readvariableop_resource_0"?
Esequential_209_lstm_627_while_sequential_209_lstm_627_strided_slice_1Gsequential_209_lstm_627_while_sequential_209_lstm_627_strided_slice_1_0"?
?sequential_209_lstm_627_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_627_tensorarrayunstack_tensorlistfromtensor?sequential_209_lstm_627_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_627_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_209/lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOpBsequential_209/lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp2?
Asequential_209/lstm_627/while/lstm_cell_600/MatMul/ReadVariableOpAsequential_209/lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp2?
Csequential_209/lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOpCsequential_209/lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_209_layer_call_fn_3644549
lstm_627_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_627_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3644497o
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
_user_specified_namelstm_627_input
?8
?
while_body_3647173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_602_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_602_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_602_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_602_matmul_readvariableop_resource:2(F
4while_lstm_cell_602_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_602_biasadd_readvariableop_resource:(??*while/lstm_cell_602/BiasAdd/ReadVariableOp?)while/lstm_cell_602/MatMul/ReadVariableOp?+while/lstm_cell_602/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_602/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_602_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_602/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_602_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_602/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_602/addAddV2$while/lstm_cell_602/MatMul:product:0&while/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_602_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_602/BiasAddBiasAddwhile/lstm_cell_602/add:z:02while/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_602/splitSplit,while/lstm_cell_602/split/split_dim:output:0$while/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_602/SigmoidSigmoid"while/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_1Sigmoid"while/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mulMul!while/lstm_cell_602/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_602/ReluRelu"while/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_1Mulwhile/lstm_cell_602/Sigmoid:y:0&while/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/add_1AddV2while/lstm_cell_602/mul:z:0while/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_2Sigmoid"while/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_602/Relu_1Reluwhile/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_2Mul!while/lstm_cell_602/Sigmoid_2:y:0(while/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_602/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_602/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_602/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_602/BiasAdd/ReadVariableOp*^while/lstm_cell_602/MatMul/ReadVariableOp,^while/lstm_cell_602/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_602_biasadd_readvariableop_resource5while_lstm_cell_602_biasadd_readvariableop_resource_0"n
4while_lstm_cell_602_matmul_1_readvariableop_resource6while_lstm_cell_602_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_602_matmul_readvariableop_resource4while_lstm_cell_602_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_602/BiasAdd/ReadVariableOp*while/lstm_cell_602/BiasAdd/ReadVariableOp2V
)while/lstm_cell_602/MatMul/ReadVariableOp)while/lstm_cell_602/MatMul/ReadVariableOp2Z
+while/lstm_cell_602/MatMul_1/ReadVariableOp+while/lstm_cell_602/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3643165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_602_3643189_0:2(/
while_lstm_cell_602_3643191_0:
(+
while_lstm_cell_602_3643193_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_602_3643189:2(-
while_lstm_cell_602_3643191:
()
while_lstm_cell_602_3643193:(??+while/lstm_cell_602/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_602/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_602_3643189_0while_lstm_cell_602_3643191_0while_lstm_cell_602_3643193_0*
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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3643151?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_602/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_602/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_602/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_602/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_602_3643189while_lstm_cell_602_3643189_0"<
while_lstm_cell_602_3643191while_lstm_cell_602_3643191_0"<
while_lstm_cell_602_3643193while_lstm_cell_602_3643193_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_602/StatefulPartitionedCall+while/lstm_cell_602/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3646887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_602_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_602_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_602_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_602_matmul_readvariableop_resource:2(F
4while_lstm_cell_602_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_602_biasadd_readvariableop_resource:(??*while/lstm_cell_602/BiasAdd/ReadVariableOp?)while/lstm_cell_602/MatMul/ReadVariableOp?+while/lstm_cell_602/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_602/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_602_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_602/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_602_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_602/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_602/addAddV2$while/lstm_cell_602/MatMul:product:0&while/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_602_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_602/BiasAddBiasAddwhile/lstm_cell_602/add:z:02while/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_602/splitSplit,while/lstm_cell_602/split/split_dim:output:0$while/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_602/SigmoidSigmoid"while/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_1Sigmoid"while/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mulMul!while/lstm_cell_602/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_602/ReluRelu"while/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_1Mulwhile/lstm_cell_602/Sigmoid:y:0&while/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/add_1AddV2while/lstm_cell_602/mul:z:0while/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_602/Sigmoid_2Sigmoid"while/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_602/Relu_1Reluwhile/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_602/mul_2Mul!while/lstm_cell_602/Sigmoid_2:y:0(while/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_602/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_602/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_602/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_602/BiasAdd/ReadVariableOp*^while/lstm_cell_602/MatMul/ReadVariableOp,^while/lstm_cell_602/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_602_biasadd_readvariableop_resource5while_lstm_cell_602_biasadd_readvariableop_resource_0"n
4while_lstm_cell_602_matmul_1_readvariableop_resource6while_lstm_cell_602_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_602_matmul_readvariableop_resource4while_lstm_cell_602_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_602/BiasAdd/ReadVariableOp*while/lstm_cell_602/BiasAdd/ReadVariableOp2V
)while/lstm_cell_602/MatMul/ReadVariableOp)while/lstm_cell_602/MatMul/ReadVariableOp2Z
+while/lstm_cell_602/MatMul_1/ReadVariableOp+while/lstm_cell_602/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3643075

inputs(
lstm_cell_601_3642993:	d?(
lstm_cell_601_3642995:	2?$
lstm_cell_601_3642997:	?
identity??%lstm_cell_601/StatefulPartitionedCall?while;
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
%lstm_cell_601/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_601_3642993lstm_cell_601_3642995lstm_cell_601_3642997*
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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3642947n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_601_3642993lstm_cell_601_3642995lstm_cell_601_3642997*
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
while_body_3643006*
condR
while_cond_3643005*K
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
NoOpNoOp&^lstm_cell_601/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_601/StatefulPartitionedCall%lstm_cell_601/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_627_layer_call_and_return_conditional_losses_3646168

inputs?
,lstm_cell_600_matmul_readvariableop_resource:	?A
.lstm_cell_600_matmul_1_readvariableop_resource:	d?<
-lstm_cell_600_biasadd_readvariableop_resource:	?
identity??$lstm_cell_600/BiasAdd/ReadVariableOp?#lstm_cell_600/MatMul/ReadVariableOp?%lstm_cell_600/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_600/MatMul/ReadVariableOpReadVariableOp,lstm_cell_600_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_600/MatMulMatMulstrided_slice_2:output:0+lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_600_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_600/MatMul_1MatMulzeros:output:0-lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_600/addAddV2lstm_cell_600/MatMul:product:0 lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_600_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_600/BiasAddBiasAddlstm_cell_600/add:z:0,lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_600/splitSplit&lstm_cell_600/split/split_dim:output:0lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_600/SigmoidSigmoidlstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_1Sigmoidlstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_600/mulMullstm_cell_600/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_600/ReluRelulstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_1Mullstm_cell_600/Sigmoid:y:0 lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_600/add_1AddV2lstm_cell_600/mul:z:0lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_2Sigmoidlstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_600/Relu_1Relulstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_2Mullstm_cell_600/Sigmoid_2:y:0"lstm_cell_600/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_600_matmul_readvariableop_resource.lstm_cell_600_matmul_1_readvariableop_resource-lstm_cell_600_biasadd_readvariableop_resource*
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
while_body_3646084*
condR
while_cond_3646083*K
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
NoOpNoOp%^lstm_cell_600/BiasAdd/ReadVariableOp$^lstm_cell_600/MatMul/ReadVariableOp&^lstm_cell_600/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_600/BiasAdd/ReadVariableOp$lstm_cell_600/BiasAdd/ReadVariableOp2J
#lstm_cell_600/MatMul/ReadVariableOp#lstm_cell_600/MatMul/ReadVariableOp2N
%lstm_cell_600/MatMul_1/ReadVariableOp%lstm_cell_600/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_3642384
lstm_627_inputW
Dsequential_209_lstm_627_lstm_cell_600_matmul_readvariableop_resource:	?Y
Fsequential_209_lstm_627_lstm_cell_600_matmul_1_readvariableop_resource:	d?T
Esequential_209_lstm_627_lstm_cell_600_biasadd_readvariableop_resource:	?W
Dsequential_209_lstm_628_lstm_cell_601_matmul_readvariableop_resource:	d?Y
Fsequential_209_lstm_628_lstm_cell_601_matmul_1_readvariableop_resource:	2?T
Esequential_209_lstm_628_lstm_cell_601_biasadd_readvariableop_resource:	?V
Dsequential_209_lstm_629_lstm_cell_602_matmul_readvariableop_resource:2(X
Fsequential_209_lstm_629_lstm_cell_602_matmul_1_readvariableop_resource:
(S
Esequential_209_lstm_629_lstm_cell_602_biasadd_readvariableop_resource:(I
7sequential_209_dense_209_matmul_readvariableop_resource:
F
8sequential_209_dense_209_biasadd_readvariableop_resource:
identity??/sequential_209/dense_209/BiasAdd/ReadVariableOp?.sequential_209/dense_209/MatMul/ReadVariableOp?<sequential_209/lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp?;sequential_209/lstm_627/lstm_cell_600/MatMul/ReadVariableOp?=sequential_209/lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp?sequential_209/lstm_627/while?<sequential_209/lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp?;sequential_209/lstm_628/lstm_cell_601/MatMul/ReadVariableOp?=sequential_209/lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp?sequential_209/lstm_628/while?<sequential_209/lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp?;sequential_209/lstm_629/lstm_cell_602/MatMul/ReadVariableOp?=sequential_209/lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp?sequential_209/lstm_629/while[
sequential_209/lstm_627/ShapeShapelstm_627_input*
T0*
_output_shapes
:u
+sequential_209/lstm_627/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_209/lstm_627/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_209/lstm_627/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_209/lstm_627/strided_sliceStridedSlice&sequential_209/lstm_627/Shape:output:04sequential_209/lstm_627/strided_slice/stack:output:06sequential_209/lstm_627/strided_slice/stack_1:output:06sequential_209/lstm_627/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_209/lstm_627/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_209/lstm_627/zeros/packedPack.sequential_209/lstm_627/strided_slice:output:0/sequential_209/lstm_627/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_209/lstm_627/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_209/lstm_627/zerosFill-sequential_209/lstm_627/zeros/packed:output:0,sequential_209/lstm_627/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_209/lstm_627/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_209/lstm_627/zeros_1/packedPack.sequential_209/lstm_627/strided_slice:output:01sequential_209/lstm_627/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_209/lstm_627/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_209/lstm_627/zeros_1Fill/sequential_209/lstm_627/zeros_1/packed:output:0.sequential_209/lstm_627/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_209/lstm_627/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_209/lstm_627/transpose	Transposelstm_627_input/sequential_209/lstm_627/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_209/lstm_627/Shape_1Shape%sequential_209/lstm_627/transpose:y:0*
T0*
_output_shapes
:w
-sequential_209/lstm_627/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_209/lstm_627/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_209/lstm_627/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_209/lstm_627/strided_slice_1StridedSlice(sequential_209/lstm_627/Shape_1:output:06sequential_209/lstm_627/strided_slice_1/stack:output:08sequential_209/lstm_627/strided_slice_1/stack_1:output:08sequential_209/lstm_627/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_209/lstm_627/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_209/lstm_627/TensorArrayV2TensorListReserve<sequential_209/lstm_627/TensorArrayV2/element_shape:output:00sequential_209/lstm_627/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_209/lstm_627/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_209/lstm_627/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_209/lstm_627/transpose:y:0Vsequential_209/lstm_627/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_209/lstm_627/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_209/lstm_627/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_209/lstm_627/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_209/lstm_627/strided_slice_2StridedSlice%sequential_209/lstm_627/transpose:y:06sequential_209/lstm_627/strided_slice_2/stack:output:08sequential_209/lstm_627/strided_slice_2/stack_1:output:08sequential_209/lstm_627/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_209/lstm_627/lstm_cell_600/MatMul/ReadVariableOpReadVariableOpDsequential_209_lstm_627_lstm_cell_600_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_209/lstm_627/lstm_cell_600/MatMulMatMul0sequential_209/lstm_627/strided_slice_2:output:0Csequential_209/lstm_627/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_209/lstm_627/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOpFsequential_209_lstm_627_lstm_cell_600_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_209/lstm_627/lstm_cell_600/MatMul_1MatMul&sequential_209/lstm_627/zeros:output:0Esequential_209/lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_209/lstm_627/lstm_cell_600/addAddV26sequential_209/lstm_627/lstm_cell_600/MatMul:product:08sequential_209/lstm_627/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_209/lstm_627/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOpEsequential_209_lstm_627_lstm_cell_600_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_209/lstm_627/lstm_cell_600/BiasAddBiasAdd-sequential_209/lstm_627/lstm_cell_600/add:z:0Dsequential_209/lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_209/lstm_627/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_209/lstm_627/lstm_cell_600/splitSplit>sequential_209/lstm_627/lstm_cell_600/split/split_dim:output:06sequential_209/lstm_627/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_209/lstm_627/lstm_cell_600/SigmoidSigmoid4sequential_209/lstm_627/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_209/lstm_627/lstm_cell_600/Sigmoid_1Sigmoid4sequential_209/lstm_627/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_209/lstm_627/lstm_cell_600/mulMul3sequential_209/lstm_627/lstm_cell_600/Sigmoid_1:y:0(sequential_209/lstm_627/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_209/lstm_627/lstm_cell_600/ReluRelu4sequential_209/lstm_627/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_209/lstm_627/lstm_cell_600/mul_1Mul1sequential_209/lstm_627/lstm_cell_600/Sigmoid:y:08sequential_209/lstm_627/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_209/lstm_627/lstm_cell_600/add_1AddV2-sequential_209/lstm_627/lstm_cell_600/mul:z:0/sequential_209/lstm_627/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_209/lstm_627/lstm_cell_600/Sigmoid_2Sigmoid4sequential_209/lstm_627/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_209/lstm_627/lstm_cell_600/Relu_1Relu/sequential_209/lstm_627/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_209/lstm_627/lstm_cell_600/mul_2Mul3sequential_209/lstm_627/lstm_cell_600/Sigmoid_2:y:0:sequential_209/lstm_627/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_209/lstm_627/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_209/lstm_627/TensorArrayV2_1TensorListReserve>sequential_209/lstm_627/TensorArrayV2_1/element_shape:output:00sequential_209/lstm_627/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_209/lstm_627/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_209/lstm_627/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_209/lstm_627/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_209/lstm_627/whileWhile3sequential_209/lstm_627/while/loop_counter:output:09sequential_209/lstm_627/while/maximum_iterations:output:0%sequential_209/lstm_627/time:output:00sequential_209/lstm_627/TensorArrayV2_1:handle:0&sequential_209/lstm_627/zeros:output:0(sequential_209/lstm_627/zeros_1:output:00sequential_209/lstm_627/strided_slice_1:output:0Osequential_209/lstm_627/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_209_lstm_627_lstm_cell_600_matmul_readvariableop_resourceFsequential_209_lstm_627_lstm_cell_600_matmul_1_readvariableop_resourceEsequential_209_lstm_627_lstm_cell_600_biasadd_readvariableop_resource*
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
*sequential_209_lstm_627_while_body_3642016*6
cond.R,
*sequential_209_lstm_627_while_cond_3642015*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_209/lstm_627/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_209/lstm_627/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_209/lstm_627/while:output:3Qsequential_209/lstm_627/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_209/lstm_627/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_209/lstm_627/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_209/lstm_627/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_209/lstm_627/strided_slice_3StridedSliceCsequential_209/lstm_627/TensorArrayV2Stack/TensorListStack:tensor:06sequential_209/lstm_627/strided_slice_3/stack:output:08sequential_209/lstm_627/strided_slice_3/stack_1:output:08sequential_209/lstm_627/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_209/lstm_627/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_209/lstm_627/transpose_1	TransposeCsequential_209/lstm_627/TensorArrayV2Stack/TensorListStack:tensor:01sequential_209/lstm_627/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_209/lstm_627/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_209/lstm_628/ShapeShape'sequential_209/lstm_627/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_209/lstm_628/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_209/lstm_628/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_209/lstm_628/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_209/lstm_628/strided_sliceStridedSlice&sequential_209/lstm_628/Shape:output:04sequential_209/lstm_628/strided_slice/stack:output:06sequential_209/lstm_628/strided_slice/stack_1:output:06sequential_209/lstm_628/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_209/lstm_628/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_209/lstm_628/zeros/packedPack.sequential_209/lstm_628/strided_slice:output:0/sequential_209/lstm_628/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_209/lstm_628/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_209/lstm_628/zerosFill-sequential_209/lstm_628/zeros/packed:output:0,sequential_209/lstm_628/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_209/lstm_628/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_209/lstm_628/zeros_1/packedPack.sequential_209/lstm_628/strided_slice:output:01sequential_209/lstm_628/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_209/lstm_628/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_209/lstm_628/zeros_1Fill/sequential_209/lstm_628/zeros_1/packed:output:0.sequential_209/lstm_628/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_209/lstm_628/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_209/lstm_628/transpose	Transpose'sequential_209/lstm_627/transpose_1:y:0/sequential_209/lstm_628/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_209/lstm_628/Shape_1Shape%sequential_209/lstm_628/transpose:y:0*
T0*
_output_shapes
:w
-sequential_209/lstm_628/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_209/lstm_628/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_209/lstm_628/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_209/lstm_628/strided_slice_1StridedSlice(sequential_209/lstm_628/Shape_1:output:06sequential_209/lstm_628/strided_slice_1/stack:output:08sequential_209/lstm_628/strided_slice_1/stack_1:output:08sequential_209/lstm_628/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_209/lstm_628/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_209/lstm_628/TensorArrayV2TensorListReserve<sequential_209/lstm_628/TensorArrayV2/element_shape:output:00sequential_209/lstm_628/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_209/lstm_628/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_209/lstm_628/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_209/lstm_628/transpose:y:0Vsequential_209/lstm_628/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_209/lstm_628/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_209/lstm_628/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_209/lstm_628/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_209/lstm_628/strided_slice_2StridedSlice%sequential_209/lstm_628/transpose:y:06sequential_209/lstm_628/strided_slice_2/stack:output:08sequential_209/lstm_628/strided_slice_2/stack_1:output:08sequential_209/lstm_628/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_209/lstm_628/lstm_cell_601/MatMul/ReadVariableOpReadVariableOpDsequential_209_lstm_628_lstm_cell_601_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_209/lstm_628/lstm_cell_601/MatMulMatMul0sequential_209/lstm_628/strided_slice_2:output:0Csequential_209/lstm_628/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_209/lstm_628/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOpFsequential_209_lstm_628_lstm_cell_601_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_209/lstm_628/lstm_cell_601/MatMul_1MatMul&sequential_209/lstm_628/zeros:output:0Esequential_209/lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_209/lstm_628/lstm_cell_601/addAddV26sequential_209/lstm_628/lstm_cell_601/MatMul:product:08sequential_209/lstm_628/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_209/lstm_628/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOpEsequential_209_lstm_628_lstm_cell_601_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_209/lstm_628/lstm_cell_601/BiasAddBiasAdd-sequential_209/lstm_628/lstm_cell_601/add:z:0Dsequential_209/lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_209/lstm_628/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_209/lstm_628/lstm_cell_601/splitSplit>sequential_209/lstm_628/lstm_cell_601/split/split_dim:output:06sequential_209/lstm_628/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_209/lstm_628/lstm_cell_601/SigmoidSigmoid4sequential_209/lstm_628/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_209/lstm_628/lstm_cell_601/Sigmoid_1Sigmoid4sequential_209/lstm_628/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_209/lstm_628/lstm_cell_601/mulMul3sequential_209/lstm_628/lstm_cell_601/Sigmoid_1:y:0(sequential_209/lstm_628/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_209/lstm_628/lstm_cell_601/ReluRelu4sequential_209/lstm_628/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_209/lstm_628/lstm_cell_601/mul_1Mul1sequential_209/lstm_628/lstm_cell_601/Sigmoid:y:08sequential_209/lstm_628/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_209/lstm_628/lstm_cell_601/add_1AddV2-sequential_209/lstm_628/lstm_cell_601/mul:z:0/sequential_209/lstm_628/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_209/lstm_628/lstm_cell_601/Sigmoid_2Sigmoid4sequential_209/lstm_628/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_209/lstm_628/lstm_cell_601/Relu_1Relu/sequential_209/lstm_628/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_209/lstm_628/lstm_cell_601/mul_2Mul3sequential_209/lstm_628/lstm_cell_601/Sigmoid_2:y:0:sequential_209/lstm_628/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_209/lstm_628/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_209/lstm_628/TensorArrayV2_1TensorListReserve>sequential_209/lstm_628/TensorArrayV2_1/element_shape:output:00sequential_209/lstm_628/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_209/lstm_628/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_209/lstm_628/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_209/lstm_628/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_209/lstm_628/whileWhile3sequential_209/lstm_628/while/loop_counter:output:09sequential_209/lstm_628/while/maximum_iterations:output:0%sequential_209/lstm_628/time:output:00sequential_209/lstm_628/TensorArrayV2_1:handle:0&sequential_209/lstm_628/zeros:output:0(sequential_209/lstm_628/zeros_1:output:00sequential_209/lstm_628/strided_slice_1:output:0Osequential_209/lstm_628/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_209_lstm_628_lstm_cell_601_matmul_readvariableop_resourceFsequential_209_lstm_628_lstm_cell_601_matmul_1_readvariableop_resourceEsequential_209_lstm_628_lstm_cell_601_biasadd_readvariableop_resource*
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
*sequential_209_lstm_628_while_body_3642155*6
cond.R,
*sequential_209_lstm_628_while_cond_3642154*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_209/lstm_628/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_209/lstm_628/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_209/lstm_628/while:output:3Qsequential_209/lstm_628/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_209/lstm_628/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_209/lstm_628/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_209/lstm_628/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_209/lstm_628/strided_slice_3StridedSliceCsequential_209/lstm_628/TensorArrayV2Stack/TensorListStack:tensor:06sequential_209/lstm_628/strided_slice_3/stack:output:08sequential_209/lstm_628/strided_slice_3/stack_1:output:08sequential_209/lstm_628/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_209/lstm_628/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_209/lstm_628/transpose_1	TransposeCsequential_209/lstm_628/TensorArrayV2Stack/TensorListStack:tensor:01sequential_209/lstm_628/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_209/lstm_628/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_209/lstm_629/ShapeShape'sequential_209/lstm_628/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_209/lstm_629/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_209/lstm_629/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_209/lstm_629/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_209/lstm_629/strided_sliceStridedSlice&sequential_209/lstm_629/Shape:output:04sequential_209/lstm_629/strided_slice/stack:output:06sequential_209/lstm_629/strided_slice/stack_1:output:06sequential_209/lstm_629/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_209/lstm_629/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_209/lstm_629/zeros/packedPack.sequential_209/lstm_629/strided_slice:output:0/sequential_209/lstm_629/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_209/lstm_629/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_209/lstm_629/zerosFill-sequential_209/lstm_629/zeros/packed:output:0,sequential_209/lstm_629/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_209/lstm_629/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_209/lstm_629/zeros_1/packedPack.sequential_209/lstm_629/strided_slice:output:01sequential_209/lstm_629/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_209/lstm_629/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_209/lstm_629/zeros_1Fill/sequential_209/lstm_629/zeros_1/packed:output:0.sequential_209/lstm_629/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_209/lstm_629/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_209/lstm_629/transpose	Transpose'sequential_209/lstm_628/transpose_1:y:0/sequential_209/lstm_629/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_209/lstm_629/Shape_1Shape%sequential_209/lstm_629/transpose:y:0*
T0*
_output_shapes
:w
-sequential_209/lstm_629/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_209/lstm_629/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_209/lstm_629/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_209/lstm_629/strided_slice_1StridedSlice(sequential_209/lstm_629/Shape_1:output:06sequential_209/lstm_629/strided_slice_1/stack:output:08sequential_209/lstm_629/strided_slice_1/stack_1:output:08sequential_209/lstm_629/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_209/lstm_629/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_209/lstm_629/TensorArrayV2TensorListReserve<sequential_209/lstm_629/TensorArrayV2/element_shape:output:00sequential_209/lstm_629/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_209/lstm_629/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_209/lstm_629/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_209/lstm_629/transpose:y:0Vsequential_209/lstm_629/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_209/lstm_629/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_209/lstm_629/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_209/lstm_629/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_209/lstm_629/strided_slice_2StridedSlice%sequential_209/lstm_629/transpose:y:06sequential_209/lstm_629/strided_slice_2/stack:output:08sequential_209/lstm_629/strided_slice_2/stack_1:output:08sequential_209/lstm_629/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_209/lstm_629/lstm_cell_602/MatMul/ReadVariableOpReadVariableOpDsequential_209_lstm_629_lstm_cell_602_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_209/lstm_629/lstm_cell_602/MatMulMatMul0sequential_209/lstm_629/strided_slice_2:output:0Csequential_209/lstm_629/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_209/lstm_629/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOpFsequential_209_lstm_629_lstm_cell_602_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_209/lstm_629/lstm_cell_602/MatMul_1MatMul&sequential_209/lstm_629/zeros:output:0Esequential_209/lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_209/lstm_629/lstm_cell_602/addAddV26sequential_209/lstm_629/lstm_cell_602/MatMul:product:08sequential_209/lstm_629/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_209/lstm_629/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOpEsequential_209_lstm_629_lstm_cell_602_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_209/lstm_629/lstm_cell_602/BiasAddBiasAdd-sequential_209/lstm_629/lstm_cell_602/add:z:0Dsequential_209/lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_209/lstm_629/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_209/lstm_629/lstm_cell_602/splitSplit>sequential_209/lstm_629/lstm_cell_602/split/split_dim:output:06sequential_209/lstm_629/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_209/lstm_629/lstm_cell_602/SigmoidSigmoid4sequential_209/lstm_629/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_209/lstm_629/lstm_cell_602/Sigmoid_1Sigmoid4sequential_209/lstm_629/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_209/lstm_629/lstm_cell_602/mulMul3sequential_209/lstm_629/lstm_cell_602/Sigmoid_1:y:0(sequential_209/lstm_629/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_209/lstm_629/lstm_cell_602/ReluRelu4sequential_209/lstm_629/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_209/lstm_629/lstm_cell_602/mul_1Mul1sequential_209/lstm_629/lstm_cell_602/Sigmoid:y:08sequential_209/lstm_629/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_209/lstm_629/lstm_cell_602/add_1AddV2-sequential_209/lstm_629/lstm_cell_602/mul:z:0/sequential_209/lstm_629/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_209/lstm_629/lstm_cell_602/Sigmoid_2Sigmoid4sequential_209/lstm_629/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_209/lstm_629/lstm_cell_602/Relu_1Relu/sequential_209/lstm_629/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_209/lstm_629/lstm_cell_602/mul_2Mul3sequential_209/lstm_629/lstm_cell_602/Sigmoid_2:y:0:sequential_209/lstm_629/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_209/lstm_629/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_209/lstm_629/TensorArrayV2_1TensorListReserve>sequential_209/lstm_629/TensorArrayV2_1/element_shape:output:00sequential_209/lstm_629/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_209/lstm_629/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_209/lstm_629/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_209/lstm_629/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_209/lstm_629/whileWhile3sequential_209/lstm_629/while/loop_counter:output:09sequential_209/lstm_629/while/maximum_iterations:output:0%sequential_209/lstm_629/time:output:00sequential_209/lstm_629/TensorArrayV2_1:handle:0&sequential_209/lstm_629/zeros:output:0(sequential_209/lstm_629/zeros_1:output:00sequential_209/lstm_629/strided_slice_1:output:0Osequential_209/lstm_629/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_209_lstm_629_lstm_cell_602_matmul_readvariableop_resourceFsequential_209_lstm_629_lstm_cell_602_matmul_1_readvariableop_resourceEsequential_209_lstm_629_lstm_cell_602_biasadd_readvariableop_resource*
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
*sequential_209_lstm_629_while_body_3642294*6
cond.R,
*sequential_209_lstm_629_while_cond_3642293*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_209/lstm_629/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_209/lstm_629/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_209/lstm_629/while:output:3Qsequential_209/lstm_629/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_209/lstm_629/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_209/lstm_629/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_209/lstm_629/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_209/lstm_629/strided_slice_3StridedSliceCsequential_209/lstm_629/TensorArrayV2Stack/TensorListStack:tensor:06sequential_209/lstm_629/strided_slice_3/stack:output:08sequential_209/lstm_629/strided_slice_3/stack_1:output:08sequential_209/lstm_629/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_209/lstm_629/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_209/lstm_629/transpose_1	TransposeCsequential_209/lstm_629/TensorArrayV2Stack/TensorListStack:tensor:01sequential_209/lstm_629/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_209/lstm_629/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_209/dense_209/MatMul/ReadVariableOpReadVariableOp7sequential_209_dense_209_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_209/dense_209/MatMulMatMul0sequential_209/lstm_629/strided_slice_3:output:06sequential_209/dense_209/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_209/dense_209/BiasAdd/ReadVariableOpReadVariableOp8sequential_209_dense_209_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_209/dense_209/BiasAddBiasAdd)sequential_209/dense_209/MatMul:product:07sequential_209/dense_209/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_209/dense_209/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_209/dense_209/BiasAdd/ReadVariableOp/^sequential_209/dense_209/MatMul/ReadVariableOp=^sequential_209/lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp<^sequential_209/lstm_627/lstm_cell_600/MatMul/ReadVariableOp>^sequential_209/lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp^sequential_209/lstm_627/while=^sequential_209/lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp<^sequential_209/lstm_628/lstm_cell_601/MatMul/ReadVariableOp>^sequential_209/lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp^sequential_209/lstm_628/while=^sequential_209/lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp<^sequential_209/lstm_629/lstm_cell_602/MatMul/ReadVariableOp>^sequential_209/lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp^sequential_209/lstm_629/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_209/dense_209/BiasAdd/ReadVariableOp/sequential_209/dense_209/BiasAdd/ReadVariableOp2`
.sequential_209/dense_209/MatMul/ReadVariableOp.sequential_209/dense_209/MatMul/ReadVariableOp2|
<sequential_209/lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp<sequential_209/lstm_627/lstm_cell_600/BiasAdd/ReadVariableOp2z
;sequential_209/lstm_627/lstm_cell_600/MatMul/ReadVariableOp;sequential_209/lstm_627/lstm_cell_600/MatMul/ReadVariableOp2~
=sequential_209/lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp=sequential_209/lstm_627/lstm_cell_600/MatMul_1/ReadVariableOp2>
sequential_209/lstm_627/whilesequential_209/lstm_627/while2|
<sequential_209/lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp<sequential_209/lstm_628/lstm_cell_601/BiasAdd/ReadVariableOp2z
;sequential_209/lstm_628/lstm_cell_601/MatMul/ReadVariableOp;sequential_209/lstm_628/lstm_cell_601/MatMul/ReadVariableOp2~
=sequential_209/lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp=sequential_209/lstm_628/lstm_cell_601/MatMul_1/ReadVariableOp2>
sequential_209/lstm_628/whilesequential_209/lstm_628/while2|
<sequential_209/lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp<sequential_209/lstm_629/lstm_cell_602/BiasAdd/ReadVariableOp2z
;sequential_209/lstm_629/lstm_cell_602/MatMul/ReadVariableOp;sequential_209/lstm_629/lstm_cell_602/MatMul/ReadVariableOp2~
=sequential_209/lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp=sequential_209/lstm_629/lstm_cell_602/MatMul_1/ReadVariableOp2>
sequential_209/lstm_629/whilesequential_209/lstm_629/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_627_input
?
?
while_cond_3642814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3642814___redundant_placeholder05
1while_while_cond_3642814___redundant_placeholder15
1while_while_cond_3642814___redundant_placeholder25
1while_while_cond_3642814___redundant_placeholder3
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3646971
inputs_0>
,lstm_cell_602_matmul_readvariableop_resource:2(@
.lstm_cell_602_matmul_1_readvariableop_resource:
(;
-lstm_cell_602_biasadd_readvariableop_resource:(
identity??$lstm_cell_602/BiasAdd/ReadVariableOp?#lstm_cell_602/MatMul/ReadVariableOp?%lstm_cell_602/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_602/MatMul/ReadVariableOpReadVariableOp,lstm_cell_602_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_602/MatMulMatMulstrided_slice_2:output:0+lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_602_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_602/MatMul_1MatMulzeros:output:0-lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_602/addAddV2lstm_cell_602/MatMul:product:0 lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_602_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_602/BiasAddBiasAddlstm_cell_602/add:z:0,lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_602/splitSplit&lstm_cell_602/split/split_dim:output:0lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_602/SigmoidSigmoidlstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_1Sigmoidlstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_602/mulMullstm_cell_602/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_602/ReluRelulstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_1Mullstm_cell_602/Sigmoid:y:0 lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_602/add_1AddV2lstm_cell_602/mul:z:0lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_2Sigmoidlstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_602/Relu_1Relulstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_2Mullstm_cell_602/Sigmoid_2:y:0"lstm_cell_602/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_602_matmul_readvariableop_resource.lstm_cell_602_matmul_1_readvariableop_resource-lstm_cell_602_biasadd_readvariableop_resource*
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
while_body_3646887*
condR
while_cond_3646886*K
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
NoOpNoOp%^lstm_cell_602/BiasAdd/ReadVariableOp$^lstm_cell_602/MatMul/ReadVariableOp&^lstm_cell_602/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_602/BiasAdd/ReadVariableOp$lstm_cell_602/BiasAdd/ReadVariableOp2J
#lstm_cell_602/MatMul/ReadVariableOp#lstm_cell_602/MatMul/ReadVariableOp2N
%lstm_cell_602/MatMul_1/ReadVariableOp%lstm_cell_602/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_629_while_body_3645462.
*lstm_629_while_lstm_629_while_loop_counter4
0lstm_629_while_lstm_629_while_maximum_iterations
lstm_629_while_placeholder 
lstm_629_while_placeholder_1 
lstm_629_while_placeholder_2 
lstm_629_while_placeholder_3-
)lstm_629_while_lstm_629_strided_slice_1_0i
elstm_629_while_tensorarrayv2read_tensorlistgetitem_lstm_629_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_629_while_lstm_cell_602_matmul_readvariableop_resource_0:2(Q
?lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource_0:
(L
>lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource_0:(
lstm_629_while_identity
lstm_629_while_identity_1
lstm_629_while_identity_2
lstm_629_while_identity_3
lstm_629_while_identity_4
lstm_629_while_identity_5+
'lstm_629_while_lstm_629_strided_slice_1g
clstm_629_while_tensorarrayv2read_tensorlistgetitem_lstm_629_tensorarrayunstack_tensorlistfromtensorM
;lstm_629_while_lstm_cell_602_matmul_readvariableop_resource:2(O
=lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource:
(J
<lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource:(??3lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp?2lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp?4lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp?
@lstm_629/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_629/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_629_while_tensorarrayv2read_tensorlistgetitem_lstm_629_tensorarrayunstack_tensorlistfromtensor_0lstm_629_while_placeholderIlstm_629/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_629/while/lstm_cell_602/MatMul/ReadVariableOpReadVariableOp=lstm_629_while_lstm_cell_602_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_629/while/lstm_cell_602/MatMulMatMul9lstm_629/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp?lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_629/while/lstm_cell_602/MatMul_1MatMullstm_629_while_placeholder_2<lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_629/while/lstm_cell_602/addAddV2-lstm_629/while/lstm_cell_602/MatMul:product:0/lstm_629/while/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp>lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_629/while/lstm_cell_602/BiasAddBiasAdd$lstm_629/while/lstm_cell_602/add:z:0;lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_629/while/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_629/while/lstm_cell_602/splitSplit5lstm_629/while/lstm_cell_602/split/split_dim:output:0-lstm_629/while/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_629/while/lstm_cell_602/SigmoidSigmoid+lstm_629/while/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_629/while/lstm_cell_602/Sigmoid_1Sigmoid+lstm_629/while/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_629/while/lstm_cell_602/mulMul*lstm_629/while/lstm_cell_602/Sigmoid_1:y:0lstm_629_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_629/while/lstm_cell_602/ReluRelu+lstm_629/while/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_629/while/lstm_cell_602/mul_1Mul(lstm_629/while/lstm_cell_602/Sigmoid:y:0/lstm_629/while/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_629/while/lstm_cell_602/add_1AddV2$lstm_629/while/lstm_cell_602/mul:z:0&lstm_629/while/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_629/while/lstm_cell_602/Sigmoid_2Sigmoid+lstm_629/while/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_629/while/lstm_cell_602/Relu_1Relu&lstm_629/while/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_629/while/lstm_cell_602/mul_2Mul*lstm_629/while/lstm_cell_602/Sigmoid_2:y:01lstm_629/while/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_629/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_629_while_placeholder_1lstm_629_while_placeholder&lstm_629/while/lstm_cell_602/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_629/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_629/while/addAddV2lstm_629_while_placeholderlstm_629/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_629/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_629/while/add_1AddV2*lstm_629_while_lstm_629_while_loop_counterlstm_629/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_629/while/IdentityIdentitylstm_629/while/add_1:z:0^lstm_629/while/NoOp*
T0*
_output_shapes
: ?
lstm_629/while/Identity_1Identity0lstm_629_while_lstm_629_while_maximum_iterations^lstm_629/while/NoOp*
T0*
_output_shapes
: t
lstm_629/while/Identity_2Identitylstm_629/while/add:z:0^lstm_629/while/NoOp*
T0*
_output_shapes
: ?
lstm_629/while/Identity_3IdentityClstm_629/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_629/while/NoOp*
T0*
_output_shapes
: ?
lstm_629/while/Identity_4Identity&lstm_629/while/lstm_cell_602/mul_2:z:0^lstm_629/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_629/while/Identity_5Identity&lstm_629/while/lstm_cell_602/add_1:z:0^lstm_629/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_629/while/NoOpNoOp4^lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp3^lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp5^lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_629_while_identity lstm_629/while/Identity:output:0"?
lstm_629_while_identity_1"lstm_629/while/Identity_1:output:0"?
lstm_629_while_identity_2"lstm_629/while/Identity_2:output:0"?
lstm_629_while_identity_3"lstm_629/while/Identity_3:output:0"?
lstm_629_while_identity_4"lstm_629/while/Identity_4:output:0"?
lstm_629_while_identity_5"lstm_629/while/Identity_5:output:0"T
'lstm_629_while_lstm_629_strided_slice_1)lstm_629_while_lstm_629_strided_slice_1_0"~
<lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource>lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource_0"?
=lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource?lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource_0"|
;lstm_629_while_lstm_cell_602_matmul_readvariableop_resource=lstm_629_while_lstm_cell_602_matmul_readvariableop_resource_0"?
clstm_629_while_tensorarrayv2read_tensorlistgetitem_lstm_629_tensorarrayunstack_tensorlistfromtensorelstm_629_while_tensorarrayv2read_tensorlistgetitem_lstm_629_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp3lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp2h
2lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp2lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp2l
4lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp4lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3645655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_600_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_600_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_600_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_600_matmul_readvariableop_resource:	?G
4while_lstm_cell_600_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_600_biasadd_readvariableop_resource:	???*while/lstm_cell_600/BiasAdd/ReadVariableOp?)while/lstm_cell_600/MatMul/ReadVariableOp?+while/lstm_cell_600/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_600/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_600_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_600/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_600_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_600/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_600/addAddV2$while/lstm_cell_600/MatMul:product:0&while/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_600_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_600/BiasAddBiasAddwhile/lstm_cell_600/add:z:02while/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_600/splitSplit,while/lstm_cell_600/split/split_dim:output:0$while/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_600/SigmoidSigmoid"while/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_1Sigmoid"while/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mulMul!while/lstm_cell_600/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_600/ReluRelu"while/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_1Mulwhile/lstm_cell_600/Sigmoid:y:0&while/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/add_1AddV2while/lstm_cell_600/mul:z:0while/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_2Sigmoid"while/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_600/Relu_1Reluwhile/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_2Mul!while/lstm_cell_600/Sigmoid_2:y:0(while/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_600/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_600/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_600/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_600/BiasAdd/ReadVariableOp*^while/lstm_cell_600/MatMul/ReadVariableOp,^while/lstm_cell_600/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_600_biasadd_readvariableop_resource5while_lstm_cell_600_biasadd_readvariableop_resource_0"n
4while_lstm_cell_600_matmul_1_readvariableop_resource6while_lstm_cell_600_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_600_matmul_readvariableop_resource4while_lstm_cell_600_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_600/BiasAdd/ReadVariableOp*while/lstm_cell_600/BiasAdd/ReadVariableOp2V
)while/lstm_cell_600/MatMul/ReadVariableOp)while/lstm_cell_600/MatMul/ReadVariableOp2Z
+while/lstm_cell_600/MatMul_1/ReadVariableOp+while/lstm_cell_600/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_627_layer_call_fn_3645574
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3642725|
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
while_body_3643649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_601_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_601_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_601_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_601_matmul_readvariableop_resource:	d?G
4while_lstm_cell_601_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_601_biasadd_readvariableop_resource:	???*while/lstm_cell_601/BiasAdd/ReadVariableOp?)while/lstm_cell_601/MatMul/ReadVariableOp?+while/lstm_cell_601/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_601/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_601_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_601/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_601_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_601/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_601/addAddV2$while/lstm_cell_601/MatMul:product:0&while/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_601_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_601/BiasAddBiasAddwhile/lstm_cell_601/add:z:02while/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_601/splitSplit,while/lstm_cell_601/split/split_dim:output:0$while/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_601/SigmoidSigmoid"while/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_1Sigmoid"while/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mulMul!while/lstm_cell_601/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_601/ReluRelu"while/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_1Mulwhile/lstm_cell_601/Sigmoid:y:0&while/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/add_1AddV2while/lstm_cell_601/mul:z:0while/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_2Sigmoid"while/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_601/Relu_1Reluwhile/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_2Mul!while/lstm_cell_601/Sigmoid_2:y:0(while/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_601/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_601/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_601/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_601/BiasAdd/ReadVariableOp*^while/lstm_cell_601/MatMul/ReadVariableOp,^while/lstm_cell_601/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_601_biasadd_readvariableop_resource5while_lstm_cell_601_biasadd_readvariableop_resource_0"n
4while_lstm_cell_601_matmul_1_readvariableop_resource6while_lstm_cell_601_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_601_matmul_readvariableop_resource4while_lstm_cell_601_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_601/BiasAdd/ReadVariableOp*while/lstm_cell_601/BiasAdd/ReadVariableOp2V
)while/lstm_cell_601/MatMul/ReadVariableOp)while/lstm_cell_601/MatMul/ReadVariableOp2Z
+while/lstm_cell_601/MatMul_1/ReadVariableOp+while/lstm_cell_601/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_3644644
lstm_627_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_627_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3642384o
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
_user_specified_namelstm_627_input
?8
?
while_body_3644345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_600_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_600_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_600_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_600_matmul_readvariableop_resource:	?G
4while_lstm_cell_600_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_600_biasadd_readvariableop_resource:	???*while/lstm_cell_600/BiasAdd/ReadVariableOp?)while/lstm_cell_600/MatMul/ReadVariableOp?+while/lstm_cell_600/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_600/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_600_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_600/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_600_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_600/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_600/addAddV2$while/lstm_cell_600/MatMul:product:0&while/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_600_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_600/BiasAddBiasAddwhile/lstm_cell_600/add:z:02while/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_600/splitSplit,while/lstm_cell_600/split/split_dim:output:0$while/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_600/SigmoidSigmoid"while/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_1Sigmoid"while/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mulMul!while/lstm_cell_600/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_600/ReluRelu"while/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_1Mulwhile/lstm_cell_600/Sigmoid:y:0&while/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/add_1AddV2while/lstm_cell_600/mul:z:0while/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_2Sigmoid"while/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_600/Relu_1Reluwhile/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_2Mul!while/lstm_cell_600/Sigmoid_2:y:0(while/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_600/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_600/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_600/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_600/BiasAdd/ReadVariableOp*^while/lstm_cell_600/MatMul/ReadVariableOp,^while/lstm_cell_600/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_600_biasadd_readvariableop_resource5while_lstm_cell_600_biasadd_readvariableop_resource_0"n
4while_lstm_cell_600_matmul_1_readvariableop_resource6while_lstm_cell_600_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_600_matmul_readvariableop_resource4while_lstm_cell_600_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_600/BiasAdd/ReadVariableOp*while/lstm_cell_600/BiasAdd/ReadVariableOp2V
)while/lstm_cell_600/MatMul/ReadVariableOp)while/lstm_cell_600/MatMul/ReadVariableOp2Z
+while/lstm_cell_600/MatMul_1/ReadVariableOp+while/lstm_cell_600/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_209_layer_call_fn_3644698

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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3644497o
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

?
0__inference_sequential_209_layer_call_fn_3644671

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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3643908o
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
?J
?
E__inference_lstm_628_layer_call_and_return_conditional_losses_3643733

inputs?
,lstm_cell_601_matmul_readvariableop_resource:	d?A
.lstm_cell_601_matmul_1_readvariableop_resource:	2?<
-lstm_cell_601_biasadd_readvariableop_resource:	?
identity??$lstm_cell_601/BiasAdd/ReadVariableOp?#lstm_cell_601/MatMul/ReadVariableOp?%lstm_cell_601/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_601/MatMul/ReadVariableOpReadVariableOp,lstm_cell_601_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_601/MatMulMatMulstrided_slice_2:output:0+lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_601_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_601/MatMul_1MatMulzeros:output:0-lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_601/addAddV2lstm_cell_601/MatMul:product:0 lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_601_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_601/BiasAddBiasAddlstm_cell_601/add:z:0,lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_601/splitSplit&lstm_cell_601/split/split_dim:output:0lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_601/SigmoidSigmoidlstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_1Sigmoidlstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_601/mulMullstm_cell_601/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_601/ReluRelulstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_1Mullstm_cell_601/Sigmoid:y:0 lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_601/add_1AddV2lstm_cell_601/mul:z:0lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_2Sigmoidlstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_601/Relu_1Relulstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_2Mullstm_cell_601/Sigmoid_2:y:0"lstm_cell_601/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_601_matmul_readvariableop_resource.lstm_cell_601_matmul_1_readvariableop_resource-lstm_cell_601_biasadd_readvariableop_resource*
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
while_body_3643649*
condR
while_cond_3643648*K
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
NoOpNoOp%^lstm_cell_601/BiasAdd/ReadVariableOp$^lstm_cell_601/MatMul/ReadVariableOp&^lstm_cell_601/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_601/BiasAdd/ReadVariableOp$lstm_cell_601/BiasAdd/ReadVariableOp2J
#lstm_cell_601/MatMul/ReadVariableOp#lstm_cell_601/MatMul/ReadVariableOp2N
%lstm_cell_601/MatMul_1/ReadVariableOp%lstm_cell_601/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_628_layer_call_fn_3646201

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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3643733s
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

lstm_627_while_body_3645184.
*lstm_627_while_lstm_627_while_loop_counter4
0lstm_627_while_lstm_627_while_maximum_iterations
lstm_627_while_placeholder 
lstm_627_while_placeholder_1 
lstm_627_while_placeholder_2 
lstm_627_while_placeholder_3-
)lstm_627_while_lstm_627_strided_slice_1_0i
elstm_627_while_tensorarrayv2read_tensorlistgetitem_lstm_627_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_627_while_lstm_cell_600_matmul_readvariableop_resource_0:	?R
?lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource_0:	d?M
>lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource_0:	?
lstm_627_while_identity
lstm_627_while_identity_1
lstm_627_while_identity_2
lstm_627_while_identity_3
lstm_627_while_identity_4
lstm_627_while_identity_5+
'lstm_627_while_lstm_627_strided_slice_1g
clstm_627_while_tensorarrayv2read_tensorlistgetitem_lstm_627_tensorarrayunstack_tensorlistfromtensorN
;lstm_627_while_lstm_cell_600_matmul_readvariableop_resource:	?P
=lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource:	d?K
<lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource:	???3lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp?2lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp?4lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp?
@lstm_627/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_627/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_627_while_tensorarrayv2read_tensorlistgetitem_lstm_627_tensorarrayunstack_tensorlistfromtensor_0lstm_627_while_placeholderIlstm_627/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_627/while/lstm_cell_600/MatMul/ReadVariableOpReadVariableOp=lstm_627_while_lstm_cell_600_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_627/while/lstm_cell_600/MatMulMatMul9lstm_627/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp?lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_627/while/lstm_cell_600/MatMul_1MatMullstm_627_while_placeholder_2<lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_627/while/lstm_cell_600/addAddV2-lstm_627/while/lstm_cell_600/MatMul:product:0/lstm_627/while/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp>lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_627/while/lstm_cell_600/BiasAddBiasAdd$lstm_627/while/lstm_cell_600/add:z:0;lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_627/while/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_627/while/lstm_cell_600/splitSplit5lstm_627/while/lstm_cell_600/split/split_dim:output:0-lstm_627/while/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_627/while/lstm_cell_600/SigmoidSigmoid+lstm_627/while/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_627/while/lstm_cell_600/Sigmoid_1Sigmoid+lstm_627/while/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_627/while/lstm_cell_600/mulMul*lstm_627/while/lstm_cell_600/Sigmoid_1:y:0lstm_627_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_627/while/lstm_cell_600/ReluRelu+lstm_627/while/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_627/while/lstm_cell_600/mul_1Mul(lstm_627/while/lstm_cell_600/Sigmoid:y:0/lstm_627/while/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_627/while/lstm_cell_600/add_1AddV2$lstm_627/while/lstm_cell_600/mul:z:0&lstm_627/while/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_627/while/lstm_cell_600/Sigmoid_2Sigmoid+lstm_627/while/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_627/while/lstm_cell_600/Relu_1Relu&lstm_627/while/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_627/while/lstm_cell_600/mul_2Mul*lstm_627/while/lstm_cell_600/Sigmoid_2:y:01lstm_627/while/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_627/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_627_while_placeholder_1lstm_627_while_placeholder&lstm_627/while/lstm_cell_600/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_627/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_627/while/addAddV2lstm_627_while_placeholderlstm_627/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_627/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_627/while/add_1AddV2*lstm_627_while_lstm_627_while_loop_counterlstm_627/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_627/while/IdentityIdentitylstm_627/while/add_1:z:0^lstm_627/while/NoOp*
T0*
_output_shapes
: ?
lstm_627/while/Identity_1Identity0lstm_627_while_lstm_627_while_maximum_iterations^lstm_627/while/NoOp*
T0*
_output_shapes
: t
lstm_627/while/Identity_2Identitylstm_627/while/add:z:0^lstm_627/while/NoOp*
T0*
_output_shapes
: ?
lstm_627/while/Identity_3IdentityClstm_627/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_627/while/NoOp*
T0*
_output_shapes
: ?
lstm_627/while/Identity_4Identity&lstm_627/while/lstm_cell_600/mul_2:z:0^lstm_627/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_627/while/Identity_5Identity&lstm_627/while/lstm_cell_600/add_1:z:0^lstm_627/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_627/while/NoOpNoOp4^lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp3^lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp5^lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_627_while_identity lstm_627/while/Identity:output:0"?
lstm_627_while_identity_1"lstm_627/while/Identity_1:output:0"?
lstm_627_while_identity_2"lstm_627/while/Identity_2:output:0"?
lstm_627_while_identity_3"lstm_627/while/Identity_3:output:0"?
lstm_627_while_identity_4"lstm_627/while/Identity_4:output:0"?
lstm_627_while_identity_5"lstm_627/while/Identity_5:output:0"T
'lstm_627_while_lstm_627_strided_slice_1)lstm_627_while_lstm_627_strided_slice_1_0"~
<lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource>lstm_627_while_lstm_cell_600_biasadd_readvariableop_resource_0"?
=lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource?lstm_627_while_lstm_cell_600_matmul_1_readvariableop_resource_0"|
;lstm_627_while_lstm_cell_600_matmul_readvariableop_resource=lstm_627_while_lstm_cell_600_matmul_readvariableop_resource_0"?
clstm_627_while_tensorarrayv2read_tensorlistgetitem_lstm_627_tensorarrayunstack_tensorlistfromtensorelstm_627_while_tensorarrayv2read_tensorlistgetitem_lstm_627_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp3lstm_627/while/lstm_cell_600/BiasAdd/ReadVariableOp2h
2lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp2lstm_627/while/lstm_cell_600/MatMul/ReadVariableOp2l
4lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp4lstm_627/while/lstm_cell_600/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3645940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3645940___redundant_placeholder05
1while_while_cond_3645940___redundant_placeholder15
1while_while_cond_3645940___redundant_placeholder25
1while_while_cond_3645940___redundant_placeholder3
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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3644609
lstm_627_input#
lstm_627_3644582:	?#
lstm_627_3644584:	d?
lstm_627_3644586:	?#
lstm_628_3644589:	d?#
lstm_628_3644591:	2?
lstm_628_3644593:	?"
lstm_629_3644596:2("
lstm_629_3644598:
(
lstm_629_3644600:(#
dense_209_3644603:

dense_209_3644605:
identity??!dense_209/StatefulPartitionedCall? lstm_627/StatefulPartitionedCall? lstm_628/StatefulPartitionedCall? lstm_629/StatefulPartitionedCall?
 lstm_627/StatefulPartitionedCallStatefulPartitionedCalllstm_627_inputlstm_627_3644582lstm_627_3644584lstm_627_3644586*
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3644429?
 lstm_628/StatefulPartitionedCallStatefulPartitionedCall)lstm_627/StatefulPartitionedCall:output:0lstm_628_3644589lstm_628_3644591lstm_628_3644593*
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3644264?
 lstm_629/StatefulPartitionedCallStatefulPartitionedCall)lstm_628/StatefulPartitionedCall:output:0lstm_629_3644596lstm_629_3644598lstm_629_3644600*
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3644099?
!dense_209/StatefulPartitionedCallStatefulPartitionedCall)lstm_629/StatefulPartitionedCall:output:0dense_209_3644603dense_209_3644605*
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
F__inference_dense_209_layer_call_and_return_conditional_losses_3643901y
IdentityIdentity*dense_209/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_209/StatefulPartitionedCall!^lstm_627/StatefulPartitionedCall!^lstm_628/StatefulPartitionedCall!^lstm_629/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_209/StatefulPartitionedCall!dense_209/StatefulPartitionedCall2D
 lstm_627/StatefulPartitionedCall lstm_627/StatefulPartitionedCall2D
 lstm_628/StatefulPartitionedCall lstm_628/StatefulPartitionedCall2D
 lstm_629/StatefulPartitionedCall lstm_629/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_627_input
?
?
*__inference_lstm_627_layer_call_fn_3645596

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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3644429s
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
while_cond_3646270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3646270___redundant_placeholder05
1while_while_cond_3646270___redundant_placeholder15
1while_while_cond_3646270___redundant_placeholder25
1while_while_cond_3646270___redundant_placeholder3
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646784

inputs?
,lstm_cell_601_matmul_readvariableop_resource:	d?A
.lstm_cell_601_matmul_1_readvariableop_resource:	2?<
-lstm_cell_601_biasadd_readvariableop_resource:	?
identity??$lstm_cell_601/BiasAdd/ReadVariableOp?#lstm_cell_601/MatMul/ReadVariableOp?%lstm_cell_601/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_601/MatMul/ReadVariableOpReadVariableOp,lstm_cell_601_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_601/MatMulMatMulstrided_slice_2:output:0+lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_601_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_601/MatMul_1MatMulzeros:output:0-lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_601/addAddV2lstm_cell_601/MatMul:product:0 lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_601_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_601/BiasAddBiasAddlstm_cell_601/add:z:0,lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_601/splitSplit&lstm_cell_601/split/split_dim:output:0lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_601/SigmoidSigmoidlstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_1Sigmoidlstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_601/mulMullstm_cell_601/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_601/ReluRelulstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_1Mullstm_cell_601/Sigmoid:y:0 lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_601/add_1AddV2lstm_cell_601/mul:z:0lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_2Sigmoidlstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_601/Relu_1Relulstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_2Mullstm_cell_601/Sigmoid_2:y:0"lstm_cell_601/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_601_matmul_readvariableop_resource.lstm_cell_601_matmul_1_readvariableop_resource-lstm_cell_601_biasadd_readvariableop_resource*
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
while_body_3646700*
condR
while_cond_3646699*K
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
NoOpNoOp%^lstm_cell_601/BiasAdd/ReadVariableOp$^lstm_cell_601/MatMul/ReadVariableOp&^lstm_cell_601/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_601/BiasAdd/ReadVariableOp$lstm_cell_601/BiasAdd/ReadVariableOp2J
#lstm_cell_601/MatMul/ReadVariableOp#lstm_cell_601/MatMul/ReadVariableOp2N
%lstm_cell_601/MatMul_1/ReadVariableOp%lstm_cell_601/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_627_layer_call_and_return_conditional_losses_3645739
inputs_0?
,lstm_cell_600_matmul_readvariableop_resource:	?A
.lstm_cell_600_matmul_1_readvariableop_resource:	d?<
-lstm_cell_600_biasadd_readvariableop_resource:	?
identity??$lstm_cell_600/BiasAdd/ReadVariableOp?#lstm_cell_600/MatMul/ReadVariableOp?%lstm_cell_600/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_600/MatMul/ReadVariableOpReadVariableOp,lstm_cell_600_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_600/MatMulMatMulstrided_slice_2:output:0+lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_600_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_600/MatMul_1MatMulzeros:output:0-lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_600/addAddV2lstm_cell_600/MatMul:product:0 lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_600_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_600/BiasAddBiasAddlstm_cell_600/add:z:0,lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_600/splitSplit&lstm_cell_600/split/split_dim:output:0lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_600/SigmoidSigmoidlstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_1Sigmoidlstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_600/mulMullstm_cell_600/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_600/ReluRelulstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_1Mullstm_cell_600/Sigmoid:y:0 lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_600/add_1AddV2lstm_cell_600/mul:z:0lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_2Sigmoidlstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_600/Relu_1Relulstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_2Mullstm_cell_600/Sigmoid_2:y:0"lstm_cell_600/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_600_matmul_readvariableop_resource.lstm_cell_600_matmul_1_readvariableop_resource-lstm_cell_600_biasadd_readvariableop_resource*
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
while_body_3645655*
condR
while_cond_3645654*K
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
NoOpNoOp%^lstm_cell_600/BiasAdd/ReadVariableOp$^lstm_cell_600/MatMul/ReadVariableOp&^lstm_cell_600/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_600/BiasAdd/ReadVariableOp$lstm_cell_600/BiasAdd/ReadVariableOp2J
#lstm_cell_600/MatMul/ReadVariableOp#lstm_cell_600/MatMul/ReadVariableOp2N
%lstm_cell_600/MatMul_1/ReadVariableOp%lstm_cell_600/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_3646557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_601_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_601_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_601_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_601_matmul_readvariableop_resource:	d?G
4while_lstm_cell_601_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_601_biasadd_readvariableop_resource:	???*while/lstm_cell_601/BiasAdd/ReadVariableOp?)while/lstm_cell_601/MatMul/ReadVariableOp?+while/lstm_cell_601/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_601/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_601_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_601/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_601_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_601/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_601/addAddV2$while/lstm_cell_601/MatMul:product:0&while/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_601_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_601/BiasAddBiasAddwhile/lstm_cell_601/add:z:02while/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_601/splitSplit,while/lstm_cell_601/split/split_dim:output:0$while/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_601/SigmoidSigmoid"while/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_1Sigmoid"while/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mulMul!while/lstm_cell_601/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_601/ReluRelu"while/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_1Mulwhile/lstm_cell_601/Sigmoid:y:0&while/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/add_1AddV2while/lstm_cell_601/mul:z:0while/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_2Sigmoid"while/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_601/Relu_1Reluwhile/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_2Mul!while/lstm_cell_601/Sigmoid_2:y:0(while/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_601/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_601/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_601/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_601/BiasAdd/ReadVariableOp*^while/lstm_cell_601/MatMul/ReadVariableOp,^while/lstm_cell_601/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_601_biasadd_readvariableop_resource5while_lstm_cell_601_biasadd_readvariableop_resource_0"n
4while_lstm_cell_601_matmul_1_readvariableop_resource6while_lstm_cell_601_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_601_matmul_readvariableop_resource4while_lstm_cell_601_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_601/BiasAdd/ReadVariableOp*while/lstm_cell_601/BiasAdd/ReadVariableOp2V
)while/lstm_cell_601/MatMul/ReadVariableOp)while/lstm_cell_601/MatMul/ReadVariableOp2Z
+while/lstm_cell_601/MatMul_1/ReadVariableOp+while/lstm_cell_601/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3646556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3646556___redundant_placeholder05
1while_while_cond_3646556___redundant_placeholder15
1while_while_cond_3646556___redundant_placeholder25
1while_while_cond_3646556___redundant_placeholder3
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
 __inference__traced_save_3647856
file_prefix/
+savev2_dense_209_kernel_read_readvariableop-
)savev2_dense_209_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_627_lstm_cell_627_kernel_read_readvariableopF
Bsavev2_lstm_627_lstm_cell_627_recurrent_kernel_read_readvariableop:
6savev2_lstm_627_lstm_cell_627_bias_read_readvariableop<
8savev2_lstm_628_lstm_cell_628_kernel_read_readvariableopF
Bsavev2_lstm_628_lstm_cell_628_recurrent_kernel_read_readvariableop:
6savev2_lstm_628_lstm_cell_628_bias_read_readvariableop<
8savev2_lstm_629_lstm_cell_629_kernel_read_readvariableopF
Bsavev2_lstm_629_lstm_cell_629_recurrent_kernel_read_readvariableop:
6savev2_lstm_629_lstm_cell_629_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_209_kernel_m_read_readvariableop4
0savev2_adam_dense_209_bias_m_read_readvariableopC
?savev2_adam_lstm_627_lstm_cell_627_kernel_m_read_readvariableopM
Isavev2_adam_lstm_627_lstm_cell_627_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_627_lstm_cell_627_bias_m_read_readvariableopC
?savev2_adam_lstm_628_lstm_cell_628_kernel_m_read_readvariableopM
Isavev2_adam_lstm_628_lstm_cell_628_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_628_lstm_cell_628_bias_m_read_readvariableopC
?savev2_adam_lstm_629_lstm_cell_629_kernel_m_read_readvariableopM
Isavev2_adam_lstm_629_lstm_cell_629_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_629_lstm_cell_629_bias_m_read_readvariableop6
2savev2_adam_dense_209_kernel_v_read_readvariableop4
0savev2_adam_dense_209_bias_v_read_readvariableopC
?savev2_adam_lstm_627_lstm_cell_627_kernel_v_read_readvariableopM
Isavev2_adam_lstm_627_lstm_cell_627_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_627_lstm_cell_627_bias_v_read_readvariableopC
?savev2_adam_lstm_628_lstm_cell_628_kernel_v_read_readvariableopM
Isavev2_adam_lstm_628_lstm_cell_628_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_628_lstm_cell_628_bias_v_read_readvariableopC
?savev2_adam_lstm_629_lstm_cell_629_kernel_v_read_readvariableopM
Isavev2_adam_lstm_629_lstm_cell_629_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_629_lstm_cell_629_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_209_kernel_read_readvariableop)savev2_dense_209_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_627_lstm_cell_627_kernel_read_readvariableopBsavev2_lstm_627_lstm_cell_627_recurrent_kernel_read_readvariableop6savev2_lstm_627_lstm_cell_627_bias_read_readvariableop8savev2_lstm_628_lstm_cell_628_kernel_read_readvariableopBsavev2_lstm_628_lstm_cell_628_recurrent_kernel_read_readvariableop6savev2_lstm_628_lstm_cell_628_bias_read_readvariableop8savev2_lstm_629_lstm_cell_629_kernel_read_readvariableopBsavev2_lstm_629_lstm_cell_629_recurrent_kernel_read_readvariableop6savev2_lstm_629_lstm_cell_629_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_209_kernel_m_read_readvariableop0savev2_adam_dense_209_bias_m_read_readvariableop?savev2_adam_lstm_627_lstm_cell_627_kernel_m_read_readvariableopIsavev2_adam_lstm_627_lstm_cell_627_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_627_lstm_cell_627_bias_m_read_readvariableop?savev2_adam_lstm_628_lstm_cell_628_kernel_m_read_readvariableopIsavev2_adam_lstm_628_lstm_cell_628_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_628_lstm_cell_628_bias_m_read_readvariableop?savev2_adam_lstm_629_lstm_cell_629_kernel_m_read_readvariableopIsavev2_adam_lstm_629_lstm_cell_629_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_629_lstm_cell_629_bias_m_read_readvariableop2savev2_adam_dense_209_kernel_v_read_readvariableop0savev2_adam_dense_209_bias_v_read_readvariableop?savev2_adam_lstm_627_lstm_cell_627_kernel_v_read_readvariableopIsavev2_adam_lstm_627_lstm_cell_627_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_627_lstm_cell_627_bias_v_read_readvariableop?savev2_adam_lstm_628_lstm_cell_628_kernel_v_read_readvariableopIsavev2_adam_lstm_628_lstm_cell_628_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_628_lstm_cell_628_bias_v_read_readvariableop?savev2_adam_lstm_629_lstm_cell_629_kernel_v_read_readvariableopIsavev2_adam_lstm_629_lstm_cell_629_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_629_lstm_cell_629_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?J
?
E__inference_lstm_628_layer_call_and_return_conditional_losses_3644264

inputs?
,lstm_cell_601_matmul_readvariableop_resource:	d?A
.lstm_cell_601_matmul_1_readvariableop_resource:	2?<
-lstm_cell_601_biasadd_readvariableop_resource:	?
identity??$lstm_cell_601/BiasAdd/ReadVariableOp?#lstm_cell_601/MatMul/ReadVariableOp?%lstm_cell_601/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_601/MatMul/ReadVariableOpReadVariableOp,lstm_cell_601_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_601/MatMulMatMulstrided_slice_2:output:0+lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_601_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_601/MatMul_1MatMulzeros:output:0-lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_601/addAddV2lstm_cell_601/MatMul:product:0 lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_601_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_601/BiasAddBiasAddlstm_cell_601/add:z:0,lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_601/splitSplit&lstm_cell_601/split/split_dim:output:0lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_601/SigmoidSigmoidlstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_1Sigmoidlstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_601/mulMullstm_cell_601/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_601/ReluRelulstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_1Mullstm_cell_601/Sigmoid:y:0 lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_601/add_1AddV2lstm_cell_601/mul:z:0lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_2Sigmoidlstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_601/Relu_1Relulstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_2Mullstm_cell_601/Sigmoid_2:y:0"lstm_cell_601/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_601_matmul_readvariableop_resource.lstm_cell_601_matmul_1_readvariableop_resource-lstm_cell_601_biasadd_readvariableop_resource*
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
while_body_3644180*
condR
while_cond_3644179*K
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
NoOpNoOp%^lstm_cell_601/BiasAdd/ReadVariableOp$^lstm_cell_601/MatMul/ReadVariableOp&^lstm_cell_601/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_601/BiasAdd/ReadVariableOp$lstm_cell_601/BiasAdd/ReadVariableOp2J
#lstm_cell_601/MatMul/ReadVariableOp#lstm_cell_601/MatMul/ReadVariableOp2N
%lstm_cell_601/MatMul_1/ReadVariableOp%lstm_cell_601/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3647172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3647172___redundant_placeholder05
1while_while_cond_3647172___redundant_placeholder15
1while_while_cond_3647172___redundant_placeholder25
1while_while_cond_3647172___redundant_placeholder3
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3642725

inputs(
lstm_cell_600_3642643:	?(
lstm_cell_600_3642645:	d?$
lstm_cell_600_3642647:	?
identity??%lstm_cell_600/StatefulPartitionedCall?while;
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
%lstm_cell_600/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_600_3642643lstm_cell_600_3642645lstm_cell_600_3642647*
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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3642597n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_600_3642643lstm_cell_600_3642645lstm_cell_600_3642647*
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
while_body_3642656*
condR
while_cond_3642655*K
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
NoOpNoOp&^lstm_cell_600/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_600/StatefulPartitionedCall%lstm_cell_600/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_628_layer_call_fn_3646179
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3642884|
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
while_body_3642656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_600_3642680_0:	?0
while_lstm_cell_600_3642682_0:	d?,
while_lstm_cell_600_3642684_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_600_3642680:	?.
while_lstm_cell_600_3642682:	d?*
while_lstm_cell_600_3642684:	???+while/lstm_cell_600/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_600/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_600_3642680_0while_lstm_cell_600_3642682_0while_lstm_cell_600_3642684_0*
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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3642597?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_600/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_600/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_600/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_600/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_600_3642680while_lstm_cell_600_3642680_0"<
while_lstm_cell_600_3642682while_lstm_cell_600_3642682_0"<
while_lstm_cell_600_3642684while_lstm_cell_600_3642684_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_600/StatefulPartitionedCall+while/lstm_cell_600/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_209_layer_call_and_return_conditional_losses_3647419

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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3642451

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
?
/__inference_lstm_cell_600_layer_call_fn_3647436

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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3642451o
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
while_cond_3644014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3644014___redundant_placeholder05
1while_while_cond_3644014___redundant_placeholder15
1while_while_cond_3644014___redundant_placeholder25
1while_while_cond_3644014___redundant_placeholder3
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
while_body_3643356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_602_3643380_0:2(/
while_lstm_cell_602_3643382_0:
(+
while_lstm_cell_602_3643384_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_602_3643380:2(-
while_lstm_cell_602_3643382:
()
while_lstm_cell_602_3643384:(??+while/lstm_cell_602/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_602/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_602_3643380_0while_lstm_cell_602_3643382_0while_lstm_cell_602_3643384_0*
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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3643297?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_602/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_602/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_602/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_602/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_602_3643380while_lstm_cell_602_3643380_0"<
while_lstm_cell_602_3643382while_lstm_cell_602_3643382_0"<
while_lstm_cell_602_3643384while_lstm_cell_602_3643384_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_602/StatefulPartitionedCall+while/lstm_cell_602/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3646886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3646886___redundant_placeholder05
1while_while_cond_3646886___redundant_placeholder15
1while_while_cond_3646886___redundant_placeholder25
1while_while_cond_3646886___redundant_placeholder3
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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3643908

inputs#
lstm_627_3643584:	?#
lstm_627_3643586:	d?
lstm_627_3643588:	?#
lstm_628_3643734:	d?#
lstm_628_3643736:	2?
lstm_628_3643738:	?"
lstm_629_3643884:2("
lstm_629_3643886:
(
lstm_629_3643888:(#
dense_209_3643902:

dense_209_3643904:
identity??!dense_209/StatefulPartitionedCall? lstm_627/StatefulPartitionedCall? lstm_628/StatefulPartitionedCall? lstm_629/StatefulPartitionedCall?
 lstm_627/StatefulPartitionedCallStatefulPartitionedCallinputslstm_627_3643584lstm_627_3643586lstm_627_3643588*
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3643583?
 lstm_628/StatefulPartitionedCallStatefulPartitionedCall)lstm_627/StatefulPartitionedCall:output:0lstm_628_3643734lstm_628_3643736lstm_628_3643738*
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3643733?
 lstm_629/StatefulPartitionedCallStatefulPartitionedCall)lstm_628/StatefulPartitionedCall:output:0lstm_629_3643884lstm_629_3643886lstm_629_3643888*
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3643883?
!dense_209/StatefulPartitionedCallStatefulPartitionedCall)lstm_629/StatefulPartitionedCall:output:0dense_209_3643902dense_209_3643904*
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
F__inference_dense_209_layer_call_and_return_conditional_losses_3643901y
IdentityIdentity*dense_209/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_209/StatefulPartitionedCall!^lstm_627/StatefulPartitionedCall!^lstm_628/StatefulPartitionedCall!^lstm_629/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_209/StatefulPartitionedCall!dense_209/StatefulPartitionedCall2D
 lstm_627/StatefulPartitionedCall lstm_627/StatefulPartitionedCall2D
 lstm_628/StatefulPartitionedCall lstm_628/StatefulPartitionedCall2D
 lstm_629/StatefulPartitionedCall lstm_629/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3646414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_601_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_601_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_601_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_601_matmul_readvariableop_resource:	d?G
4while_lstm_cell_601_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_601_biasadd_readvariableop_resource:	???*while/lstm_cell_601/BiasAdd/ReadVariableOp?)while/lstm_cell_601/MatMul/ReadVariableOp?+while/lstm_cell_601/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_601/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_601_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_601/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_601_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_601/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_601/addAddV2$while/lstm_cell_601/MatMul:product:0&while/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_601_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_601/BiasAddBiasAddwhile/lstm_cell_601/add:z:02while/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_601/splitSplit,while/lstm_cell_601/split/split_dim:output:0$while/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_601/SigmoidSigmoid"while/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_1Sigmoid"while/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mulMul!while/lstm_cell_601/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_601/ReluRelu"while/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_1Mulwhile/lstm_cell_601/Sigmoid:y:0&while/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/add_1AddV2while/lstm_cell_601/mul:z:0while/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_2Sigmoid"while/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_601/Relu_1Reluwhile/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_2Mul!while/lstm_cell_601/Sigmoid_2:y:0(while/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_601/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_601/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_601/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_601/BiasAdd/ReadVariableOp*^while/lstm_cell_601/MatMul/ReadVariableOp,^while/lstm_cell_601/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_601_biasadd_readvariableop_resource5while_lstm_cell_601_biasadd_readvariableop_resource_0"n
4while_lstm_cell_601_matmul_1_readvariableop_resource6while_lstm_cell_601_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_601_matmul_readvariableop_resource4while_lstm_cell_601_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_601/BiasAdd/ReadVariableOp*while/lstm_cell_601/BiasAdd/ReadVariableOp2V
)while/lstm_cell_601/MatMul/ReadVariableOp)while/lstm_cell_601/MatMul/ReadVariableOp2Z
+while/lstm_cell_601/MatMul_1/ReadVariableOp+while/lstm_cell_601/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3644344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3644344___redundant_placeholder05
1while_while_cond_3644344___redundant_placeholder15
1while_while_cond_3644344___redundant_placeholder25
1while_while_cond_3644344___redundant_placeholder3
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
while_cond_3645654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3645654___redundant_placeholder05
1while_while_cond_3645654___redundant_placeholder15
1while_while_cond_3645654___redundant_placeholder25
1while_while_cond_3645654___redundant_placeholder3
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
while_cond_3643498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3643498___redundant_placeholder05
1while_while_cond_3643498___redundant_placeholder15
1while_while_cond_3643498___redundant_placeholder25
1while_while_cond_3643498___redundant_placeholder3
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
*sequential_209_lstm_629_while_cond_3642293L
Hsequential_209_lstm_629_while_sequential_209_lstm_629_while_loop_counterR
Nsequential_209_lstm_629_while_sequential_209_lstm_629_while_maximum_iterations-
)sequential_209_lstm_629_while_placeholder/
+sequential_209_lstm_629_while_placeholder_1/
+sequential_209_lstm_629_while_placeholder_2/
+sequential_209_lstm_629_while_placeholder_3N
Jsequential_209_lstm_629_while_less_sequential_209_lstm_629_strided_slice_1e
asequential_209_lstm_629_while_sequential_209_lstm_629_while_cond_3642293___redundant_placeholder0e
asequential_209_lstm_629_while_sequential_209_lstm_629_while_cond_3642293___redundant_placeholder1e
asequential_209_lstm_629_while_sequential_209_lstm_629_while_cond_3642293___redundant_placeholder2e
asequential_209_lstm_629_while_sequential_209_lstm_629_while_cond_3642293___redundant_placeholder3*
&sequential_209_lstm_629_while_identity
?
"sequential_209/lstm_629/while/LessLess)sequential_209_lstm_629_while_placeholderJsequential_209_lstm_629_while_less_sequential_209_lstm_629_strided_slice_1*
T0*
_output_shapes
: {
&sequential_209/lstm_629/while/IdentityIdentity&sequential_209/lstm_629/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_209_lstm_629_while_identity/sequential_209/lstm_629/while/Identity:output:0*(
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
while_body_3642465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_600_3642489_0:	?0
while_lstm_cell_600_3642491_0:	d?,
while_lstm_cell_600_3642493_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_600_3642489:	?.
while_lstm_cell_600_3642491:	d?*
while_lstm_cell_600_3642493:	???+while/lstm_cell_600/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_600/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_600_3642489_0while_lstm_cell_600_3642491_0while_lstm_cell_600_3642493_0*
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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3642451?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_600/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_600/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_600/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_600/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_600_3642489while_lstm_cell_600_3642489_0"<
while_lstm_cell_600_3642491while_lstm_cell_600_3642491_0"<
while_lstm_cell_600_3642493while_lstm_cell_600_3642493_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_600/StatefulPartitionedCall+while/lstm_cell_600/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3646271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_601_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_601_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_601_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_601_matmul_readvariableop_resource:	d?G
4while_lstm_cell_601_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_601_biasadd_readvariableop_resource:	???*while/lstm_cell_601/BiasAdd/ReadVariableOp?)while/lstm_cell_601/MatMul/ReadVariableOp?+while/lstm_cell_601/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_601/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_601_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_601/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_601_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_601/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_601/addAddV2$while/lstm_cell_601/MatMul:product:0&while/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_601_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_601/BiasAddBiasAddwhile/lstm_cell_601/add:z:02while/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_601/splitSplit,while/lstm_cell_601/split/split_dim:output:0$while/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_601/SigmoidSigmoid"while/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_1Sigmoid"while/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mulMul!while/lstm_cell_601/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_601/ReluRelu"while/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_1Mulwhile/lstm_cell_601/Sigmoid:y:0&while/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/add_1AddV2while/lstm_cell_601/mul:z:0while/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_2Sigmoid"while/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_601/Relu_1Reluwhile/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_2Mul!while/lstm_cell_601/Sigmoid_2:y:0(while/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_601/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_601/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_601/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_601/BiasAdd/ReadVariableOp*^while/lstm_cell_601/MatMul/ReadVariableOp,^while/lstm_cell_601/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_601_biasadd_readvariableop_resource5while_lstm_cell_601_biasadd_readvariableop_resource_0"n
4while_lstm_cell_601_matmul_1_readvariableop_resource6while_lstm_cell_601_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_601_matmul_readvariableop_resource4while_lstm_cell_601_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_601/BiasAdd/ReadVariableOp*while/lstm_cell_601/BiasAdd/ReadVariableOp2V
)while/lstm_cell_601/MatMul/ReadVariableOp)while/lstm_cell_601/MatMul/ReadVariableOp2Z
+while/lstm_cell_601/MatMul_1/ReadVariableOp+while/lstm_cell_601/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_602_layer_call_fn_3647632

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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3643151o
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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3647583

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
while_body_3644180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_601_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_601_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_601_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_601_matmul_readvariableop_resource:	d?G
4while_lstm_cell_601_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_601_biasadd_readvariableop_resource:	???*while/lstm_cell_601/BiasAdd/ReadVariableOp?)while/lstm_cell_601/MatMul/ReadVariableOp?+while/lstm_cell_601/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_601/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_601_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_601/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_601_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_601/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_601/addAddV2$while/lstm_cell_601/MatMul:product:0&while/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_601_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_601/BiasAddBiasAddwhile/lstm_cell_601/add:z:02while/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_601/splitSplit,while/lstm_cell_601/split/split_dim:output:0$while/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_601/SigmoidSigmoid"while/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_1Sigmoid"while/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mulMul!while/lstm_cell_601/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_601/ReluRelu"while/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_1Mulwhile/lstm_cell_601/Sigmoid:y:0&while/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/add_1AddV2while/lstm_cell_601/mul:z:0while/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_601/Sigmoid_2Sigmoid"while/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_601/Relu_1Reluwhile/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_601/mul_2Mul!while/lstm_cell_601/Sigmoid_2:y:0(while/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_601/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_601/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_601/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_601/BiasAdd/ReadVariableOp*^while/lstm_cell_601/MatMul/ReadVariableOp,^while/lstm_cell_601/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_601_biasadd_readvariableop_resource5while_lstm_cell_601_biasadd_readvariableop_resource_0"n
4while_lstm_cell_601_matmul_1_readvariableop_resource6while_lstm_cell_601_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_601_matmul_readvariableop_resource4while_lstm_cell_601_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_601/BiasAdd/ReadVariableOp*while/lstm_cell_601/BiasAdd/ReadVariableOp2V
)while/lstm_cell_601/MatMul/ReadVariableOp)while/lstm_cell_601/MatMul/ReadVariableOp2Z
+while/lstm_cell_601/MatMul_1/ReadVariableOp+while/lstm_cell_601/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_3647986
file_prefix3
!assignvariableop_dense_209_kernel:
/
!assignvariableop_1_dense_209_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_627_lstm_cell_627_kernel:	?M
:assignvariableop_8_lstm_627_lstm_cell_627_recurrent_kernel:	d?=
.assignvariableop_9_lstm_627_lstm_cell_627_bias:	?D
1assignvariableop_10_lstm_628_lstm_cell_628_kernel:	d?N
;assignvariableop_11_lstm_628_lstm_cell_628_recurrent_kernel:	2?>
/assignvariableop_12_lstm_628_lstm_cell_628_bias:	?C
1assignvariableop_13_lstm_629_lstm_cell_629_kernel:2(M
;assignvariableop_14_lstm_629_lstm_cell_629_recurrent_kernel:
(=
/assignvariableop_15_lstm_629_lstm_cell_629_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_209_kernel_m:
7
)assignvariableop_19_adam_dense_209_bias_m:K
8assignvariableop_20_adam_lstm_627_lstm_cell_627_kernel_m:	?U
Bassignvariableop_21_adam_lstm_627_lstm_cell_627_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_627_lstm_cell_627_bias_m:	?K
8assignvariableop_23_adam_lstm_628_lstm_cell_628_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_628_lstm_cell_628_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_628_lstm_cell_628_bias_m:	?J
8assignvariableop_26_adam_lstm_629_lstm_cell_629_kernel_m:2(T
Bassignvariableop_27_adam_lstm_629_lstm_cell_629_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_629_lstm_cell_629_bias_m:(=
+assignvariableop_29_adam_dense_209_kernel_v:
7
)assignvariableop_30_adam_dense_209_bias_v:K
8assignvariableop_31_adam_lstm_627_lstm_cell_627_kernel_v:	?U
Bassignvariableop_32_adam_lstm_627_lstm_cell_627_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_627_lstm_cell_627_bias_v:	?K
8assignvariableop_34_adam_lstm_628_lstm_cell_628_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_628_lstm_cell_628_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_628_lstm_cell_628_bias_v:	?J
8assignvariableop_37_adam_lstm_629_lstm_cell_629_kernel_v:2(T
Bassignvariableop_38_adam_lstm_629_lstm_cell_629_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_629_lstm_cell_629_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_209_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_209_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_627_lstm_cell_627_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_627_lstm_cell_627_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_627_lstm_cell_627_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_628_lstm_cell_628_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_628_lstm_cell_628_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_628_lstm_cell_628_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_629_lstm_cell_629_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_629_lstm_cell_629_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_629_lstm_cell_629_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_209_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_209_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_627_lstm_cell_627_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_627_lstm_cell_627_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_627_lstm_cell_627_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_628_lstm_cell_628_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_628_lstm_cell_628_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_628_lstm_cell_628_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_629_lstm_cell_629_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_629_lstm_cell_629_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_629_lstm_cell_629_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_209_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_209_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_627_lstm_cell_627_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_627_lstm_cell_627_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_627_lstm_cell_627_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_628_lstm_cell_628_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_628_lstm_cell_628_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_628_lstm_cell_628_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_629_lstm_cell_629_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_629_lstm_cell_629_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_629_lstm_cell_629_bias_vIdentity_39:output:0"/device:CPU:0*
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

?
lstm_627_while_cond_3645183.
*lstm_627_while_lstm_627_while_loop_counter4
0lstm_627_while_lstm_627_while_maximum_iterations
lstm_627_while_placeholder 
lstm_627_while_placeholder_1 
lstm_627_while_placeholder_2 
lstm_627_while_placeholder_30
,lstm_627_while_less_lstm_627_strided_slice_1G
Clstm_627_while_lstm_627_while_cond_3645183___redundant_placeholder0G
Clstm_627_while_lstm_627_while_cond_3645183___redundant_placeholder1G
Clstm_627_while_lstm_627_while_cond_3645183___redundant_placeholder2G
Clstm_627_while_lstm_627_while_cond_3645183___redundant_placeholder3
lstm_627_while_identity
?
lstm_627/while/LessLesslstm_627_while_placeholder,lstm_627_while_less_lstm_627_strided_slice_1*
T0*
_output_shapes
: ]
lstm_627/while/IdentityIdentitylstm_627/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_627_while_identity lstm_627/while/Identity:output:0*(
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
*sequential_209_lstm_628_while_body_3642155L
Hsequential_209_lstm_628_while_sequential_209_lstm_628_while_loop_counterR
Nsequential_209_lstm_628_while_sequential_209_lstm_628_while_maximum_iterations-
)sequential_209_lstm_628_while_placeholder/
+sequential_209_lstm_628_while_placeholder_1/
+sequential_209_lstm_628_while_placeholder_2/
+sequential_209_lstm_628_while_placeholder_3K
Gsequential_209_lstm_628_while_sequential_209_lstm_628_strided_slice_1_0?
?sequential_209_lstm_628_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_628_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_209_lstm_628_while_lstm_cell_601_matmul_readvariableop_resource_0:	d?a
Nsequential_209_lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource_0:	2?\
Msequential_209_lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource_0:	?*
&sequential_209_lstm_628_while_identity,
(sequential_209_lstm_628_while_identity_1,
(sequential_209_lstm_628_while_identity_2,
(sequential_209_lstm_628_while_identity_3,
(sequential_209_lstm_628_while_identity_4,
(sequential_209_lstm_628_while_identity_5I
Esequential_209_lstm_628_while_sequential_209_lstm_628_strided_slice_1?
?sequential_209_lstm_628_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_628_tensorarrayunstack_tensorlistfromtensor]
Jsequential_209_lstm_628_while_lstm_cell_601_matmul_readvariableop_resource:	d?_
Lsequential_209_lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource:	2?Z
Ksequential_209_lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource:	???Bsequential_209/lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp?Asequential_209/lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp?Csequential_209/lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp?
Osequential_209/lstm_628/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_209/lstm_628/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_209_lstm_628_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_628_tensorarrayunstack_tensorlistfromtensor_0)sequential_209_lstm_628_while_placeholderXsequential_209/lstm_628/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_209/lstm_628/while/lstm_cell_601/MatMul/ReadVariableOpReadVariableOpLsequential_209_lstm_628_while_lstm_cell_601_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_209/lstm_628/while/lstm_cell_601/MatMulMatMulHsequential_209/lstm_628/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_209/lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_209/lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOpNsequential_209_lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_209/lstm_628/while/lstm_cell_601/MatMul_1MatMul+sequential_209_lstm_628_while_placeholder_2Ksequential_209/lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_209/lstm_628/while/lstm_cell_601/addAddV2<sequential_209/lstm_628/while/lstm_cell_601/MatMul:product:0>sequential_209/lstm_628/while/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_209/lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOpMsequential_209_lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_209/lstm_628/while/lstm_cell_601/BiasAddBiasAdd3sequential_209/lstm_628/while/lstm_cell_601/add:z:0Jsequential_209/lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_209/lstm_628/while/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_209/lstm_628/while/lstm_cell_601/splitSplitDsequential_209/lstm_628/while/lstm_cell_601/split/split_dim:output:0<sequential_209/lstm_628/while/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_209/lstm_628/while/lstm_cell_601/SigmoidSigmoid:sequential_209/lstm_628/while/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_209/lstm_628/while/lstm_cell_601/Sigmoid_1Sigmoid:sequential_209/lstm_628/while/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_209/lstm_628/while/lstm_cell_601/mulMul9sequential_209/lstm_628/while/lstm_cell_601/Sigmoid_1:y:0+sequential_209_lstm_628_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_209/lstm_628/while/lstm_cell_601/ReluRelu:sequential_209/lstm_628/while/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_209/lstm_628/while/lstm_cell_601/mul_1Mul7sequential_209/lstm_628/while/lstm_cell_601/Sigmoid:y:0>sequential_209/lstm_628/while/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_209/lstm_628/while/lstm_cell_601/add_1AddV23sequential_209/lstm_628/while/lstm_cell_601/mul:z:05sequential_209/lstm_628/while/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_209/lstm_628/while/lstm_cell_601/Sigmoid_2Sigmoid:sequential_209/lstm_628/while/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_209/lstm_628/while/lstm_cell_601/Relu_1Relu5sequential_209/lstm_628/while/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_209/lstm_628/while/lstm_cell_601/mul_2Mul9sequential_209/lstm_628/while/lstm_cell_601/Sigmoid_2:y:0@sequential_209/lstm_628/while/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_209/lstm_628/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_209_lstm_628_while_placeholder_1)sequential_209_lstm_628_while_placeholder5sequential_209/lstm_628/while/lstm_cell_601/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_209/lstm_628/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_209/lstm_628/while/addAddV2)sequential_209_lstm_628_while_placeholder,sequential_209/lstm_628/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_209/lstm_628/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_209/lstm_628/while/add_1AddV2Hsequential_209_lstm_628_while_sequential_209_lstm_628_while_loop_counter.sequential_209/lstm_628/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_209/lstm_628/while/IdentityIdentity'sequential_209/lstm_628/while/add_1:z:0#^sequential_209/lstm_628/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_628/while/Identity_1IdentityNsequential_209_lstm_628_while_sequential_209_lstm_628_while_maximum_iterations#^sequential_209/lstm_628/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_628/while/Identity_2Identity%sequential_209/lstm_628/while/add:z:0#^sequential_209/lstm_628/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_628/while/Identity_3IdentityRsequential_209/lstm_628/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_209/lstm_628/while/NoOp*
T0*
_output_shapes
: ?
(sequential_209/lstm_628/while/Identity_4Identity5sequential_209/lstm_628/while/lstm_cell_601/mul_2:z:0#^sequential_209/lstm_628/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_209/lstm_628/while/Identity_5Identity5sequential_209/lstm_628/while/lstm_cell_601/add_1:z:0#^sequential_209/lstm_628/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_209/lstm_628/while/NoOpNoOpC^sequential_209/lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOpB^sequential_209/lstm_628/while/lstm_cell_601/MatMul/ReadVariableOpD^sequential_209/lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_209_lstm_628_while_identity/sequential_209/lstm_628/while/Identity:output:0"]
(sequential_209_lstm_628_while_identity_11sequential_209/lstm_628/while/Identity_1:output:0"]
(sequential_209_lstm_628_while_identity_21sequential_209/lstm_628/while/Identity_2:output:0"]
(sequential_209_lstm_628_while_identity_31sequential_209/lstm_628/while/Identity_3:output:0"]
(sequential_209_lstm_628_while_identity_41sequential_209/lstm_628/while/Identity_4:output:0"]
(sequential_209_lstm_628_while_identity_51sequential_209/lstm_628/while/Identity_5:output:0"?
Ksequential_209_lstm_628_while_lstm_cell_601_biasadd_readvariableop_resourceMsequential_209_lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource_0"?
Lsequential_209_lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resourceNsequential_209_lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource_0"?
Jsequential_209_lstm_628_while_lstm_cell_601_matmul_readvariableop_resourceLsequential_209_lstm_628_while_lstm_cell_601_matmul_readvariableop_resource_0"?
Esequential_209_lstm_628_while_sequential_209_lstm_628_strided_slice_1Gsequential_209_lstm_628_while_sequential_209_lstm_628_strided_slice_1_0"?
?sequential_209_lstm_628_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_628_tensorarrayunstack_tensorlistfromtensor?sequential_209_lstm_628_while_tensorarrayv2read_tensorlistgetitem_sequential_209_lstm_628_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_209/lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOpBsequential_209/lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp2?
Asequential_209/lstm_628/while/lstm_cell_601/MatMul/ReadVariableOpAsequential_209/lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp2?
Csequential_209/lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOpCsequential_209/lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3646083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3646083___redundant_placeholder05
1while_while_cond_3646083___redundant_placeholder15
1while_while_cond_3646083___redundant_placeholder25
1while_while_cond_3646083___redundant_placeholder3
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
while_cond_3643648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3643648___redundant_placeholder05
1while_while_cond_3643648___redundant_placeholder15
1while_while_cond_3643648___redundant_placeholder25
1while_while_cond_3643648___redundant_placeholder3
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3644099

inputs>
,lstm_cell_602_matmul_readvariableop_resource:2(@
.lstm_cell_602_matmul_1_readvariableop_resource:
(;
-lstm_cell_602_biasadd_readvariableop_resource:(
identity??$lstm_cell_602/BiasAdd/ReadVariableOp?#lstm_cell_602/MatMul/ReadVariableOp?%lstm_cell_602/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_602/MatMul/ReadVariableOpReadVariableOp,lstm_cell_602_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_602/MatMulMatMulstrided_slice_2:output:0+lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_602_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_602/MatMul_1MatMulzeros:output:0-lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_602/addAddV2lstm_cell_602/MatMul:product:0 lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_602_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_602/BiasAddBiasAddlstm_cell_602/add:z:0,lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_602/splitSplit&lstm_cell_602/split/split_dim:output:0lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_602/SigmoidSigmoidlstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_1Sigmoidlstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_602/mulMullstm_cell_602/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_602/ReluRelulstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_1Mullstm_cell_602/Sigmoid:y:0 lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_602/add_1AddV2lstm_cell_602/mul:z:0lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_2Sigmoidlstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_602/Relu_1Relulstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_2Mullstm_cell_602/Sigmoid_2:y:0"lstm_cell_602/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_602_matmul_readvariableop_resource.lstm_cell_602_matmul_1_readvariableop_resource-lstm_cell_602_biasadd_readvariableop_resource*
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
while_body_3644015*
condR
while_cond_3644014*K
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
NoOpNoOp%^lstm_cell_602/BiasAdd/ReadVariableOp$^lstm_cell_602/MatMul/ReadVariableOp&^lstm_cell_602/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_602/BiasAdd/ReadVariableOp$lstm_cell_602/BiasAdd/ReadVariableOp2J
#lstm_cell_602/MatMul/ReadVariableOp#lstm_cell_602/MatMul/ReadVariableOp2N
%lstm_cell_602/MatMul_1/ReadVariableOp%lstm_cell_602/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_629_while_body_3645035.
*lstm_629_while_lstm_629_while_loop_counter4
0lstm_629_while_lstm_629_while_maximum_iterations
lstm_629_while_placeholder 
lstm_629_while_placeholder_1 
lstm_629_while_placeholder_2 
lstm_629_while_placeholder_3-
)lstm_629_while_lstm_629_strided_slice_1_0i
elstm_629_while_tensorarrayv2read_tensorlistgetitem_lstm_629_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_629_while_lstm_cell_602_matmul_readvariableop_resource_0:2(Q
?lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource_0:
(L
>lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource_0:(
lstm_629_while_identity
lstm_629_while_identity_1
lstm_629_while_identity_2
lstm_629_while_identity_3
lstm_629_while_identity_4
lstm_629_while_identity_5+
'lstm_629_while_lstm_629_strided_slice_1g
clstm_629_while_tensorarrayv2read_tensorlistgetitem_lstm_629_tensorarrayunstack_tensorlistfromtensorM
;lstm_629_while_lstm_cell_602_matmul_readvariableop_resource:2(O
=lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource:
(J
<lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource:(??3lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp?2lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp?4lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp?
@lstm_629/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_629/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_629_while_tensorarrayv2read_tensorlistgetitem_lstm_629_tensorarrayunstack_tensorlistfromtensor_0lstm_629_while_placeholderIlstm_629/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_629/while/lstm_cell_602/MatMul/ReadVariableOpReadVariableOp=lstm_629_while_lstm_cell_602_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_629/while/lstm_cell_602/MatMulMatMul9lstm_629/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp?lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_629/while/lstm_cell_602/MatMul_1MatMullstm_629_while_placeholder_2<lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_629/while/lstm_cell_602/addAddV2-lstm_629/while/lstm_cell_602/MatMul:product:0/lstm_629/while/lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp>lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_629/while/lstm_cell_602/BiasAddBiasAdd$lstm_629/while/lstm_cell_602/add:z:0;lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_629/while/lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_629/while/lstm_cell_602/splitSplit5lstm_629/while/lstm_cell_602/split/split_dim:output:0-lstm_629/while/lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_629/while/lstm_cell_602/SigmoidSigmoid+lstm_629/while/lstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_629/while/lstm_cell_602/Sigmoid_1Sigmoid+lstm_629/while/lstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_629/while/lstm_cell_602/mulMul*lstm_629/while/lstm_cell_602/Sigmoid_1:y:0lstm_629_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_629/while/lstm_cell_602/ReluRelu+lstm_629/while/lstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_629/while/lstm_cell_602/mul_1Mul(lstm_629/while/lstm_cell_602/Sigmoid:y:0/lstm_629/while/lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_629/while/lstm_cell_602/add_1AddV2$lstm_629/while/lstm_cell_602/mul:z:0&lstm_629/while/lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_629/while/lstm_cell_602/Sigmoid_2Sigmoid+lstm_629/while/lstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_629/while/lstm_cell_602/Relu_1Relu&lstm_629/while/lstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_629/while/lstm_cell_602/mul_2Mul*lstm_629/while/lstm_cell_602/Sigmoid_2:y:01lstm_629/while/lstm_cell_602/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_629/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_629_while_placeholder_1lstm_629_while_placeholder&lstm_629/while/lstm_cell_602/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_629/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_629/while/addAddV2lstm_629_while_placeholderlstm_629/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_629/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_629/while/add_1AddV2*lstm_629_while_lstm_629_while_loop_counterlstm_629/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_629/while/IdentityIdentitylstm_629/while/add_1:z:0^lstm_629/while/NoOp*
T0*
_output_shapes
: ?
lstm_629/while/Identity_1Identity0lstm_629_while_lstm_629_while_maximum_iterations^lstm_629/while/NoOp*
T0*
_output_shapes
: t
lstm_629/while/Identity_2Identitylstm_629/while/add:z:0^lstm_629/while/NoOp*
T0*
_output_shapes
: ?
lstm_629/while/Identity_3IdentityClstm_629/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_629/while/NoOp*
T0*
_output_shapes
: ?
lstm_629/while/Identity_4Identity&lstm_629/while/lstm_cell_602/mul_2:z:0^lstm_629/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_629/while/Identity_5Identity&lstm_629/while/lstm_cell_602/add_1:z:0^lstm_629/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_629/while/NoOpNoOp4^lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp3^lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp5^lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_629_while_identity lstm_629/while/Identity:output:0"?
lstm_629_while_identity_1"lstm_629/while/Identity_1:output:0"?
lstm_629_while_identity_2"lstm_629/while/Identity_2:output:0"?
lstm_629_while_identity_3"lstm_629/while/Identity_3:output:0"?
lstm_629_while_identity_4"lstm_629/while/Identity_4:output:0"?
lstm_629_while_identity_5"lstm_629/while/Identity_5:output:0"T
'lstm_629_while_lstm_629_strided_slice_1)lstm_629_while_lstm_629_strided_slice_1_0"~
<lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource>lstm_629_while_lstm_cell_602_biasadd_readvariableop_resource_0"?
=lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource?lstm_629_while_lstm_cell_602_matmul_1_readvariableop_resource_0"|
;lstm_629_while_lstm_cell_602_matmul_readvariableop_resource=lstm_629_while_lstm_cell_602_matmul_readvariableop_resource_0"?
clstm_629_while_tensorarrayv2read_tensorlistgetitem_lstm_629_tensorarrayunstack_tensorlistfromtensorelstm_629_while_tensorarrayv2read_tensorlistgetitem_lstm_629_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp3lstm_629/while/lstm_cell_602/BiasAdd/ReadVariableOp2h
2lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp2lstm_629/while/lstm_cell_602/MatMul/ReadVariableOp2l
4lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp4lstm_629/while/lstm_cell_602/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_629_layer_call_fn_3646828

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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3644099o
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
?K
?
E__inference_lstm_627_layer_call_and_return_conditional_losses_3645882
inputs_0?
,lstm_cell_600_matmul_readvariableop_resource:	?A
.lstm_cell_600_matmul_1_readvariableop_resource:	d?<
-lstm_cell_600_biasadd_readvariableop_resource:	?
identity??$lstm_cell_600/BiasAdd/ReadVariableOp?#lstm_cell_600/MatMul/ReadVariableOp?%lstm_cell_600/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_600/MatMul/ReadVariableOpReadVariableOp,lstm_cell_600_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_600/MatMulMatMulstrided_slice_2:output:0+lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_600_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_600/MatMul_1MatMulzeros:output:0-lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_600/addAddV2lstm_cell_600/MatMul:product:0 lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_600_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_600/BiasAddBiasAddlstm_cell_600/add:z:0,lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_600/splitSplit&lstm_cell_600/split/split_dim:output:0lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_600/SigmoidSigmoidlstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_1Sigmoidlstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_600/mulMullstm_cell_600/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_600/ReluRelulstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_1Mullstm_cell_600/Sigmoid:y:0 lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_600/add_1AddV2lstm_cell_600/mul:z:0lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_2Sigmoidlstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_600/Relu_1Relulstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_2Mullstm_cell_600/Sigmoid_2:y:0"lstm_cell_600/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_600_matmul_readvariableop_resource.lstm_cell_600_matmul_1_readvariableop_resource-lstm_cell_600_biasadd_readvariableop_resource*
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
while_body_3645798*
condR
while_cond_3645797*K
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
NoOpNoOp%^lstm_cell_600/BiasAdd/ReadVariableOp$^lstm_cell_600/MatMul/ReadVariableOp&^lstm_cell_600/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_600/BiasAdd/ReadVariableOp$lstm_cell_600/BiasAdd/ReadVariableOp2J
#lstm_cell_600/MatMul/ReadVariableOp#lstm_cell_600/MatMul/ReadVariableOp2N
%lstm_cell_600/MatMul_1/ReadVariableOp%lstm_cell_600/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_629_layer_call_and_return_conditional_losses_3647114
inputs_0>
,lstm_cell_602_matmul_readvariableop_resource:2(@
.lstm_cell_602_matmul_1_readvariableop_resource:
(;
-lstm_cell_602_biasadd_readvariableop_resource:(
identity??$lstm_cell_602/BiasAdd/ReadVariableOp?#lstm_cell_602/MatMul/ReadVariableOp?%lstm_cell_602/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_602/MatMul/ReadVariableOpReadVariableOp,lstm_cell_602_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_602/MatMulMatMulstrided_slice_2:output:0+lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_602_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_602/MatMul_1MatMulzeros:output:0-lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_602/addAddV2lstm_cell_602/MatMul:product:0 lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_602_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_602/BiasAddBiasAddlstm_cell_602/add:z:0,lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_602/splitSplit&lstm_cell_602/split/split_dim:output:0lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_602/SigmoidSigmoidlstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_1Sigmoidlstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_602/mulMullstm_cell_602/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_602/ReluRelulstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_1Mullstm_cell_602/Sigmoid:y:0 lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_602/add_1AddV2lstm_cell_602/mul:z:0lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_2Sigmoidlstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_602/Relu_1Relulstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_2Mullstm_cell_602/Sigmoid_2:y:0"lstm_cell_602/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_602_matmul_readvariableop_resource.lstm_cell_602_matmul_1_readvariableop_resource-lstm_cell_602_biasadd_readvariableop_resource*
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
while_body_3647030*
condR
while_cond_3647029*K
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
NoOpNoOp%^lstm_cell_602/BiasAdd/ReadVariableOp$^lstm_cell_602/MatMul/ReadVariableOp&^lstm_cell_602/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_602/BiasAdd/ReadVariableOp$lstm_cell_602/BiasAdd/ReadVariableOp2J
#lstm_cell_602/MatMul/ReadVariableOp#lstm_cell_602/MatMul/ReadVariableOp2N
%lstm_cell_602/MatMul_1/ReadVariableOp%lstm_cell_602/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3647713

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
?J
?
E__inference_lstm_629_layer_call_and_return_conditional_losses_3647400

inputs>
,lstm_cell_602_matmul_readvariableop_resource:2(@
.lstm_cell_602_matmul_1_readvariableop_resource:
(;
-lstm_cell_602_biasadd_readvariableop_resource:(
identity??$lstm_cell_602/BiasAdd/ReadVariableOp?#lstm_cell_602/MatMul/ReadVariableOp?%lstm_cell_602/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_602/MatMul/ReadVariableOpReadVariableOp,lstm_cell_602_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_602/MatMulMatMulstrided_slice_2:output:0+lstm_cell_602/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_602/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_602_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_602/MatMul_1MatMulzeros:output:0-lstm_cell_602/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_602/addAddV2lstm_cell_602/MatMul:product:0 lstm_cell_602/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_602/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_602_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_602/BiasAddBiasAddlstm_cell_602/add:z:0,lstm_cell_602/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_602/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_602/splitSplit&lstm_cell_602/split/split_dim:output:0lstm_cell_602/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_602/SigmoidSigmoidlstm_cell_602/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_1Sigmoidlstm_cell_602/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_602/mulMullstm_cell_602/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_602/ReluRelulstm_cell_602/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_1Mullstm_cell_602/Sigmoid:y:0 lstm_cell_602/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_602/add_1AddV2lstm_cell_602/mul:z:0lstm_cell_602/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_602/Sigmoid_2Sigmoidlstm_cell_602/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_602/Relu_1Relulstm_cell_602/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_602/mul_2Mullstm_cell_602/Sigmoid_2:y:0"lstm_cell_602/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_602_matmul_readvariableop_resource.lstm_cell_602_matmul_1_readvariableop_resource-lstm_cell_602_biasadd_readvariableop_resource*
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
while_body_3647316*
condR
while_cond_3647315*K
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
NoOpNoOp%^lstm_cell_602/BiasAdd/ReadVariableOp$^lstm_cell_602/MatMul/ReadVariableOp&^lstm_cell_602/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_602/BiasAdd/ReadVariableOp$lstm_cell_602/BiasAdd/ReadVariableOp2J
#lstm_cell_602/MatMul/ReadVariableOp#lstm_cell_602/MatMul/ReadVariableOp2N
%lstm_cell_602/MatMul_1/ReadVariableOp%lstm_cell_602/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_627_layer_call_and_return_conditional_losses_3646025

inputs?
,lstm_cell_600_matmul_readvariableop_resource:	?A
.lstm_cell_600_matmul_1_readvariableop_resource:	d?<
-lstm_cell_600_biasadd_readvariableop_resource:	?
identity??$lstm_cell_600/BiasAdd/ReadVariableOp?#lstm_cell_600/MatMul/ReadVariableOp?%lstm_cell_600/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_600/MatMul/ReadVariableOpReadVariableOp,lstm_cell_600_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_600/MatMulMatMulstrided_slice_2:output:0+lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_600_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_600/MatMul_1MatMulzeros:output:0-lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_600/addAddV2lstm_cell_600/MatMul:product:0 lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_600_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_600/BiasAddBiasAddlstm_cell_600/add:z:0,lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_600/splitSplit&lstm_cell_600/split/split_dim:output:0lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_600/SigmoidSigmoidlstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_1Sigmoidlstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_600/mulMullstm_cell_600/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_600/ReluRelulstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_1Mullstm_cell_600/Sigmoid:y:0 lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_600/add_1AddV2lstm_cell_600/mul:z:0lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_2Sigmoidlstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_600/Relu_1Relulstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_2Mullstm_cell_600/Sigmoid_2:y:0"lstm_cell_600/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_600_matmul_readvariableop_resource.lstm_cell_600_matmul_1_readvariableop_resource-lstm_cell_600_biasadd_readvariableop_resource*
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
while_body_3645941*
condR
while_cond_3645940*K
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
NoOpNoOp%^lstm_cell_600/BiasAdd/ReadVariableOp$^lstm_cell_600/MatMul/ReadVariableOp&^lstm_cell_600/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_600/BiasAdd/ReadVariableOp$lstm_cell_600/BiasAdd/ReadVariableOp2J
#lstm_cell_600/MatMul/ReadVariableOp#lstm_cell_600/MatMul/ReadVariableOp2N
%lstm_cell_600/MatMul_1/ReadVariableOp%lstm_cell_600/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3645941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_600_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_600_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_600_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_600_matmul_readvariableop_resource:	?G
4while_lstm_cell_600_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_600_biasadd_readvariableop_resource:	???*while/lstm_cell_600/BiasAdd/ReadVariableOp?)while/lstm_cell_600/MatMul/ReadVariableOp?+while/lstm_cell_600/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_600/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_600_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_600/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_600_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_600/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_600/addAddV2$while/lstm_cell_600/MatMul:product:0&while/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_600_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_600/BiasAddBiasAddwhile/lstm_cell_600/add:z:02while/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_600/splitSplit,while/lstm_cell_600/split/split_dim:output:0$while/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_600/SigmoidSigmoid"while/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_1Sigmoid"while/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mulMul!while/lstm_cell_600/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_600/ReluRelu"while/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_1Mulwhile/lstm_cell_600/Sigmoid:y:0&while/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/add_1AddV2while/lstm_cell_600/mul:z:0while/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_2Sigmoid"while/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_600/Relu_1Reluwhile/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_2Mul!while/lstm_cell_600/Sigmoid_2:y:0(while/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_600/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_600/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_600/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_600/BiasAdd/ReadVariableOp*^while/lstm_cell_600/MatMul/ReadVariableOp,^while/lstm_cell_600/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_600_biasadd_readvariableop_resource5while_lstm_cell_600_biasadd_readvariableop_resource_0"n
4while_lstm_cell_600_matmul_1_readvariableop_resource6while_lstm_cell_600_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_600_matmul_readvariableop_resource4while_lstm_cell_600_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_600/BiasAdd/ReadVariableOp*while/lstm_cell_600/BiasAdd/ReadVariableOp2V
)while/lstm_cell_600/MatMul/ReadVariableOp)while/lstm_cell_600/MatMul/ReadVariableOp2Z
+while/lstm_cell_600/MatMul_1/ReadVariableOp+while/lstm_cell_600/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3643234

inputs'
lstm_cell_602_3643152:2('
lstm_cell_602_3643154:
(#
lstm_cell_602_3643156:(
identity??%lstm_cell_602/StatefulPartitionedCall?while;
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
%lstm_cell_602/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_602_3643152lstm_cell_602_3643154lstm_cell_602_3643156*
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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3643151n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_602_3643152lstm_cell_602_3643154lstm_cell_602_3643156*
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
while_body_3643165*
condR
while_cond_3643164*K
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
NoOpNoOp&^lstm_cell_602/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_602/StatefulPartitionedCall%lstm_cell_602/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3647517

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
while_body_3642815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_601_3642839_0:	d?0
while_lstm_cell_601_3642841_0:	2?,
while_lstm_cell_601_3642843_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_601_3642839:	d?.
while_lstm_cell_601_3642841:	2?*
while_lstm_cell_601_3642843:	???+while/lstm_cell_601/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_601/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_601_3642839_0while_lstm_cell_601_3642841_0while_lstm_cell_601_3642843_0*
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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3642801?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_601/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_601/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_601/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_601/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_601_3642839while_lstm_cell_601_3642839_0"<
while_lstm_cell_601_3642841while_lstm_cell_601_3642841_0"<
while_lstm_cell_601_3642843while_lstm_cell_601_3642843_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_601/StatefulPartitionedCall+while/lstm_cell_601/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3643583

inputs?
,lstm_cell_600_matmul_readvariableop_resource:	?A
.lstm_cell_600_matmul_1_readvariableop_resource:	d?<
-lstm_cell_600_biasadd_readvariableop_resource:	?
identity??$lstm_cell_600/BiasAdd/ReadVariableOp?#lstm_cell_600/MatMul/ReadVariableOp?%lstm_cell_600/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_600/MatMul/ReadVariableOpReadVariableOp,lstm_cell_600_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_600/MatMulMatMulstrided_slice_2:output:0+lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_600_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_600/MatMul_1MatMulzeros:output:0-lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_600/addAddV2lstm_cell_600/MatMul:product:0 lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_600_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_600/BiasAddBiasAddlstm_cell_600/add:z:0,lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_600/splitSplit&lstm_cell_600/split/split_dim:output:0lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_600/SigmoidSigmoidlstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_1Sigmoidlstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_600/mulMullstm_cell_600/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_600/ReluRelulstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_1Mullstm_cell_600/Sigmoid:y:0 lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_600/add_1AddV2lstm_cell_600/mul:z:0lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_2Sigmoidlstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_600/Relu_1Relulstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_2Mullstm_cell_600/Sigmoid_2:y:0"lstm_cell_600/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_600_matmul_readvariableop_resource.lstm_cell_600_matmul_1_readvariableop_resource-lstm_cell_600_biasadd_readvariableop_resource*
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
while_body_3643499*
condR
while_cond_3643498*K
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
NoOpNoOp%^lstm_cell_600/BiasAdd/ReadVariableOp$^lstm_cell_600/MatMul/ReadVariableOp&^lstm_cell_600/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_600/BiasAdd/ReadVariableOp$lstm_cell_600/BiasAdd/ReadVariableOp2J
#lstm_cell_600/MatMul/ReadVariableOp#lstm_cell_600/MatMul/ReadVariableOp2N
%lstm_cell_600/MatMul_1/ReadVariableOp%lstm_cell_600/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_209_lstm_627_while_cond_3642015L
Hsequential_209_lstm_627_while_sequential_209_lstm_627_while_loop_counterR
Nsequential_209_lstm_627_while_sequential_209_lstm_627_while_maximum_iterations-
)sequential_209_lstm_627_while_placeholder/
+sequential_209_lstm_627_while_placeholder_1/
+sequential_209_lstm_627_while_placeholder_2/
+sequential_209_lstm_627_while_placeholder_3N
Jsequential_209_lstm_627_while_less_sequential_209_lstm_627_strided_slice_1e
asequential_209_lstm_627_while_sequential_209_lstm_627_while_cond_3642015___redundant_placeholder0e
asequential_209_lstm_627_while_sequential_209_lstm_627_while_cond_3642015___redundant_placeholder1e
asequential_209_lstm_627_while_sequential_209_lstm_627_while_cond_3642015___redundant_placeholder2e
asequential_209_lstm_627_while_sequential_209_lstm_627_while_cond_3642015___redundant_placeholder3*
&sequential_209_lstm_627_while_identity
?
"sequential_209/lstm_627/while/LessLess)sequential_209_lstm_627_while_placeholderJsequential_209_lstm_627_while_less_sequential_209_lstm_627_strided_slice_1*
T0*
_output_shapes
: {
&sequential_209/lstm_627/while/IdentityIdentity&sequential_209/lstm_627/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_209_lstm_627_while_identity/sequential_209/lstm_627/while/Identity:output:0*(
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
while_body_3643006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_601_3643030_0:	d?0
while_lstm_cell_601_3643032_0:	2?,
while_lstm_cell_601_3643034_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_601_3643030:	d?.
while_lstm_cell_601_3643032:	2?*
while_lstm_cell_601_3643034:	???+while/lstm_cell_601/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_601/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_601_3643030_0while_lstm_cell_601_3643032_0while_lstm_cell_601_3643034_0*
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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3642947?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_601/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_601/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_601/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_601/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_601_3643030while_lstm_cell_601_3643030_0"<
while_lstm_cell_601_3643032while_lstm_cell_601_3643032_0"<
while_lstm_cell_601_3643034while_lstm_cell_601_3643034_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_601/StatefulPartitionedCall+while/lstm_cell_601/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_628_while_cond_3645322.
*lstm_628_while_lstm_628_while_loop_counter4
0lstm_628_while_lstm_628_while_maximum_iterations
lstm_628_while_placeholder 
lstm_628_while_placeholder_1 
lstm_628_while_placeholder_2 
lstm_628_while_placeholder_30
,lstm_628_while_less_lstm_628_strided_slice_1G
Clstm_628_while_lstm_628_while_cond_3645322___redundant_placeholder0G
Clstm_628_while_lstm_628_while_cond_3645322___redundant_placeholder1G
Clstm_628_while_lstm_628_while_cond_3645322___redundant_placeholder2G
Clstm_628_while_lstm_628_while_cond_3645322___redundant_placeholder3
lstm_628_while_identity
?
lstm_628/while/LessLesslstm_628_while_placeholder,lstm_628_while_less_lstm_628_strided_slice_1*
T0*
_output_shapes
: ]
lstm_628/while/IdentityIdentitylstm_628/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_628_while_identity lstm_628/while/Identity:output:0*(
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
/__inference_lstm_cell_601_layer_call_fn_3647534

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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3642801o
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
while_cond_3642655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3642655___redundant_placeholder05
1while_while_cond_3642655___redundant_placeholder15
1while_while_cond_3642655___redundant_placeholder25
1while_while_cond_3642655___redundant_placeholder3
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
while_cond_3647315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3647315___redundant_placeholder05
1while_while_cond_3647315___redundant_placeholder15
1while_while_cond_3647315___redundant_placeholder25
1while_while_cond_3647315___redundant_placeholder3
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646355
inputs_0?
,lstm_cell_601_matmul_readvariableop_resource:	d?A
.lstm_cell_601_matmul_1_readvariableop_resource:	2?<
-lstm_cell_601_biasadd_readvariableop_resource:	?
identity??$lstm_cell_601/BiasAdd/ReadVariableOp?#lstm_cell_601/MatMul/ReadVariableOp?%lstm_cell_601/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_601/MatMul/ReadVariableOpReadVariableOp,lstm_cell_601_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_601/MatMulMatMulstrided_slice_2:output:0+lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_601_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_601/MatMul_1MatMulzeros:output:0-lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_601/addAddV2lstm_cell_601/MatMul:product:0 lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_601_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_601/BiasAddBiasAddlstm_cell_601/add:z:0,lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_601/splitSplit&lstm_cell_601/split/split_dim:output:0lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_601/SigmoidSigmoidlstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_1Sigmoidlstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_601/mulMullstm_cell_601/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_601/ReluRelulstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_1Mullstm_cell_601/Sigmoid:y:0 lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_601/add_1AddV2lstm_cell_601/mul:z:0lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_601/Sigmoid_2Sigmoidlstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_601/Relu_1Relulstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_601/mul_2Mullstm_cell_601/Sigmoid_2:y:0"lstm_cell_601/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_601_matmul_readvariableop_resource.lstm_cell_601_matmul_1_readvariableop_resource-lstm_cell_601_biasadd_readvariableop_resource*
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
while_body_3646271*
condR
while_cond_3646270*K
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
NoOpNoOp%^lstm_cell_601/BiasAdd/ReadVariableOp$^lstm_cell_601/MatMul/ReadVariableOp&^lstm_cell_601/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_601/BiasAdd/ReadVariableOp$lstm_cell_601/BiasAdd/ReadVariableOp2J
#lstm_cell_601/MatMul/ReadVariableOp#lstm_cell_601/MatMul/ReadVariableOp2N
%lstm_cell_601/MatMul_1/ReadVariableOp%lstm_cell_601/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_3644179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3644179___redundant_placeholder05
1while_while_cond_3644179___redundant_placeholder15
1while_while_cond_3644179___redundant_placeholder25
1while_while_cond_3644179___redundant_placeholder3
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
*__inference_lstm_627_layer_call_fn_3645585

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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3643583s
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
*__inference_lstm_629_layer_call_fn_3646795
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3643234o
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
while_body_3645798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_600_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_600_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_600_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_600_matmul_readvariableop_resource:	?G
4while_lstm_cell_600_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_600_biasadd_readvariableop_resource:	???*while/lstm_cell_600/BiasAdd/ReadVariableOp?)while/lstm_cell_600/MatMul/ReadVariableOp?+while/lstm_cell_600/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_600/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_600_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_600/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_600_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_600/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_600/addAddV2$while/lstm_cell_600/MatMul:product:0&while/lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_600_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_600/BiasAddBiasAddwhile/lstm_cell_600/add:z:02while/lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_600/splitSplit,while/lstm_cell_600/split/split_dim:output:0$while/lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_600/SigmoidSigmoid"while/lstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_1Sigmoid"while/lstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mulMul!while/lstm_cell_600/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_600/ReluRelu"while/lstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_1Mulwhile/lstm_cell_600/Sigmoid:y:0&while/lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/add_1AddV2while/lstm_cell_600/mul:z:0while/lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_600/Sigmoid_2Sigmoid"while/lstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_600/Relu_1Reluwhile/lstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_600/mul_2Mul!while/lstm_cell_600/Sigmoid_2:y:0(while/lstm_cell_600/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_600/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_600/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_600/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_600/BiasAdd/ReadVariableOp*^while/lstm_cell_600/MatMul/ReadVariableOp,^while/lstm_cell_600/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_600_biasadd_readvariableop_resource5while_lstm_cell_600_biasadd_readvariableop_resource_0"n
4while_lstm_cell_600_matmul_1_readvariableop_resource6while_lstm_cell_600_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_600_matmul_readvariableop_resource4while_lstm_cell_600_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_600/BiasAdd/ReadVariableOp*while/lstm_cell_600/BiasAdd/ReadVariableOp2V
)while/lstm_cell_600/MatMul/ReadVariableOp)while/lstm_cell_600/MatMul/ReadVariableOp2Z
+while/lstm_cell_600/MatMul_1/ReadVariableOp+while/lstm_cell_600/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3643151

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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3644429

inputs?
,lstm_cell_600_matmul_readvariableop_resource:	?A
.lstm_cell_600_matmul_1_readvariableop_resource:	d?<
-lstm_cell_600_biasadd_readvariableop_resource:	?
identity??$lstm_cell_600/BiasAdd/ReadVariableOp?#lstm_cell_600/MatMul/ReadVariableOp?%lstm_cell_600/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_600/MatMul/ReadVariableOpReadVariableOp,lstm_cell_600_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_600/MatMulMatMulstrided_slice_2:output:0+lstm_cell_600/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_600/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_600_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_600/MatMul_1MatMulzeros:output:0-lstm_cell_600/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_600/addAddV2lstm_cell_600/MatMul:product:0 lstm_cell_600/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_600/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_600_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_600/BiasAddBiasAddlstm_cell_600/add:z:0,lstm_cell_600/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_600/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_600/splitSplit&lstm_cell_600/split/split_dim:output:0lstm_cell_600/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_600/SigmoidSigmoidlstm_cell_600/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_1Sigmoidlstm_cell_600/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_600/mulMullstm_cell_600/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_600/ReluRelulstm_cell_600/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_1Mullstm_cell_600/Sigmoid:y:0 lstm_cell_600/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_600/add_1AddV2lstm_cell_600/mul:z:0lstm_cell_600/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_600/Sigmoid_2Sigmoidlstm_cell_600/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_600/Relu_1Relulstm_cell_600/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_600/mul_2Mullstm_cell_600/Sigmoid_2:y:0"lstm_cell_600/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_600_matmul_readvariableop_resource.lstm_cell_600_matmul_1_readvariableop_resource-lstm_cell_600_biasadd_readvariableop_resource*
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
while_body_3644345*
condR
while_cond_3644344*K
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
NoOpNoOp%^lstm_cell_600/BiasAdd/ReadVariableOp$^lstm_cell_600/MatMul/ReadVariableOp&^lstm_cell_600/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_600/BiasAdd/ReadVariableOp$lstm_cell_600/BiasAdd/ReadVariableOp2J
#lstm_cell_600/MatMul/ReadVariableOp#lstm_cell_600/MatMul/ReadVariableOp2N
%lstm_cell_600/MatMul_1/ReadVariableOp%lstm_cell_600/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_627_layer_call_fn_3645563
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3642534|
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
while_cond_3647029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3647029___redundant_placeholder05
1while_while_cond_3647029___redundant_placeholder15
1while_while_cond_3647029___redundant_placeholder25
1while_while_cond_3647029___redundant_placeholder3
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

lstm_628_while_body_3644896.
*lstm_628_while_lstm_628_while_loop_counter4
0lstm_628_while_lstm_628_while_maximum_iterations
lstm_628_while_placeholder 
lstm_628_while_placeholder_1 
lstm_628_while_placeholder_2 
lstm_628_while_placeholder_3-
)lstm_628_while_lstm_628_strided_slice_1_0i
elstm_628_while_tensorarrayv2read_tensorlistgetitem_lstm_628_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_628_while_lstm_cell_601_matmul_readvariableop_resource_0:	d?R
?lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource_0:	2?M
>lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource_0:	?
lstm_628_while_identity
lstm_628_while_identity_1
lstm_628_while_identity_2
lstm_628_while_identity_3
lstm_628_while_identity_4
lstm_628_while_identity_5+
'lstm_628_while_lstm_628_strided_slice_1g
clstm_628_while_tensorarrayv2read_tensorlistgetitem_lstm_628_tensorarrayunstack_tensorlistfromtensorN
;lstm_628_while_lstm_cell_601_matmul_readvariableop_resource:	d?P
=lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource:	2?K
<lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource:	???3lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp?2lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp?4lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp?
@lstm_628/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_628/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_628_while_tensorarrayv2read_tensorlistgetitem_lstm_628_tensorarrayunstack_tensorlistfromtensor_0lstm_628_while_placeholderIlstm_628/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_628/while/lstm_cell_601/MatMul/ReadVariableOpReadVariableOp=lstm_628_while_lstm_cell_601_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_628/while/lstm_cell_601/MatMulMatMul9lstm_628/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOpReadVariableOp?lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_628/while/lstm_cell_601/MatMul_1MatMullstm_628_while_placeholder_2<lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_628/while/lstm_cell_601/addAddV2-lstm_628/while/lstm_cell_601/MatMul:product:0/lstm_628/while/lstm_cell_601/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOpReadVariableOp>lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_628/while/lstm_cell_601/BiasAddBiasAdd$lstm_628/while/lstm_cell_601/add:z:0;lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_628/while/lstm_cell_601/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_628/while/lstm_cell_601/splitSplit5lstm_628/while/lstm_cell_601/split/split_dim:output:0-lstm_628/while/lstm_cell_601/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_628/while/lstm_cell_601/SigmoidSigmoid+lstm_628/while/lstm_cell_601/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_628/while/lstm_cell_601/Sigmoid_1Sigmoid+lstm_628/while/lstm_cell_601/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_628/while/lstm_cell_601/mulMul*lstm_628/while/lstm_cell_601/Sigmoid_1:y:0lstm_628_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_628/while/lstm_cell_601/ReluRelu+lstm_628/while/lstm_cell_601/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_628/while/lstm_cell_601/mul_1Mul(lstm_628/while/lstm_cell_601/Sigmoid:y:0/lstm_628/while/lstm_cell_601/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_628/while/lstm_cell_601/add_1AddV2$lstm_628/while/lstm_cell_601/mul:z:0&lstm_628/while/lstm_cell_601/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_628/while/lstm_cell_601/Sigmoid_2Sigmoid+lstm_628/while/lstm_cell_601/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_628/while/lstm_cell_601/Relu_1Relu&lstm_628/while/lstm_cell_601/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_628/while/lstm_cell_601/mul_2Mul*lstm_628/while/lstm_cell_601/Sigmoid_2:y:01lstm_628/while/lstm_cell_601/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_628/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_628_while_placeholder_1lstm_628_while_placeholder&lstm_628/while/lstm_cell_601/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_628/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_628/while/addAddV2lstm_628_while_placeholderlstm_628/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_628/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_628/while/add_1AddV2*lstm_628_while_lstm_628_while_loop_counterlstm_628/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_628/while/IdentityIdentitylstm_628/while/add_1:z:0^lstm_628/while/NoOp*
T0*
_output_shapes
: ?
lstm_628/while/Identity_1Identity0lstm_628_while_lstm_628_while_maximum_iterations^lstm_628/while/NoOp*
T0*
_output_shapes
: t
lstm_628/while/Identity_2Identitylstm_628/while/add:z:0^lstm_628/while/NoOp*
T0*
_output_shapes
: ?
lstm_628/while/Identity_3IdentityClstm_628/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_628/while/NoOp*
T0*
_output_shapes
: ?
lstm_628/while/Identity_4Identity&lstm_628/while/lstm_cell_601/mul_2:z:0^lstm_628/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_628/while/Identity_5Identity&lstm_628/while/lstm_cell_601/add_1:z:0^lstm_628/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_628/while/NoOpNoOp4^lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp3^lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp5^lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_628_while_identity lstm_628/while/Identity:output:0"?
lstm_628_while_identity_1"lstm_628/while/Identity_1:output:0"?
lstm_628_while_identity_2"lstm_628/while/Identity_2:output:0"?
lstm_628_while_identity_3"lstm_628/while/Identity_3:output:0"?
lstm_628_while_identity_4"lstm_628/while/Identity_4:output:0"?
lstm_628_while_identity_5"lstm_628/while/Identity_5:output:0"T
'lstm_628_while_lstm_628_strided_slice_1)lstm_628_while_lstm_628_strided_slice_1_0"~
<lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource>lstm_628_while_lstm_cell_601_biasadd_readvariableop_resource_0"?
=lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource?lstm_628_while_lstm_cell_601_matmul_1_readvariableop_resource_0"|
;lstm_628_while_lstm_cell_601_matmul_readvariableop_resource=lstm_628_while_lstm_cell_601_matmul_readvariableop_resource_0"?
clstm_628_while_tensorarrayv2read_tensorlistgetitem_lstm_628_tensorarrayunstack_tensorlistfromtensorelstm_628_while_tensorarrayv2read_tensorlistgetitem_lstm_628_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp3lstm_628/while/lstm_cell_601/BiasAdd/ReadVariableOp2h
2lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp2lstm_628/while/lstm_cell_601/MatMul/ReadVariableOp2l
4lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp4lstm_628/while/lstm_cell_601/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_628_layer_call_fn_3646212

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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3644264s
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
/__inference_lstm_cell_602_layer_call_fn_3647649

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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3643297o
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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3642597

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
 
_user_specified_namestates"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_627_input;
 serving_default_lstm_627_input:0?????????=
	dense_2090
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
2dense_209/kernel
:2dense_209/bias
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
0:.	?2lstm_627/lstm_cell_627/kernel
::8	d?2'lstm_627/lstm_cell_627/recurrent_kernel
*:(?2lstm_627/lstm_cell_627/bias
0:.	d?2lstm_628/lstm_cell_628/kernel
::8	2?2'lstm_628/lstm_cell_628/recurrent_kernel
*:(?2lstm_628/lstm_cell_628/bias
/:-2(2lstm_629/lstm_cell_629/kernel
9:7
(2'lstm_629/lstm_cell_629/recurrent_kernel
):'(2lstm_629/lstm_cell_629/bias
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
2Adam/dense_209/kernel/m
!:2Adam/dense_209/bias/m
5:3	?2$Adam/lstm_627/lstm_cell_627/kernel/m
?:=	d?2.Adam/lstm_627/lstm_cell_627/recurrent_kernel/m
/:-?2"Adam/lstm_627/lstm_cell_627/bias/m
5:3	d?2$Adam/lstm_628/lstm_cell_628/kernel/m
?:=	2?2.Adam/lstm_628/lstm_cell_628/recurrent_kernel/m
/:-?2"Adam/lstm_628/lstm_cell_628/bias/m
4:22(2$Adam/lstm_629/lstm_cell_629/kernel/m
>:<
(2.Adam/lstm_629/lstm_cell_629/recurrent_kernel/m
.:,(2"Adam/lstm_629/lstm_cell_629/bias/m
':%
2Adam/dense_209/kernel/v
!:2Adam/dense_209/bias/v
5:3	?2$Adam/lstm_627/lstm_cell_627/kernel/v
?:=	d?2.Adam/lstm_627/lstm_cell_627/recurrent_kernel/v
/:-?2"Adam/lstm_627/lstm_cell_627/bias/v
5:3	d?2$Adam/lstm_628/lstm_cell_628/kernel/v
?:=	2?2.Adam/lstm_628/lstm_cell_628/recurrent_kernel/v
/:-?2"Adam/lstm_628/lstm_cell_628/bias/v
4:22(2$Adam/lstm_629/lstm_cell_629/kernel/v
>:<
(2.Adam/lstm_629/lstm_cell_629/recurrent_kernel/v
.:,(2"Adam/lstm_629/lstm_cell_629/bias/v
?2?
0__inference_sequential_209_layer_call_fn_3643933
0__inference_sequential_209_layer_call_fn_3644671
0__inference_sequential_209_layer_call_fn_3644698
0__inference_sequential_209_layer_call_fn_3644549?
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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3645125
K__inference_sequential_209_layer_call_and_return_conditional_losses_3645552
K__inference_sequential_209_layer_call_and_return_conditional_losses_3644579
K__inference_sequential_209_layer_call_and_return_conditional_losses_3644609?
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
"__inference__wrapped_model_3642384lstm_627_input"?
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
*__inference_lstm_627_layer_call_fn_3645563
*__inference_lstm_627_layer_call_fn_3645574
*__inference_lstm_627_layer_call_fn_3645585
*__inference_lstm_627_layer_call_fn_3645596?
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3645739
E__inference_lstm_627_layer_call_and_return_conditional_losses_3645882
E__inference_lstm_627_layer_call_and_return_conditional_losses_3646025
E__inference_lstm_627_layer_call_and_return_conditional_losses_3646168?
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
*__inference_lstm_628_layer_call_fn_3646179
*__inference_lstm_628_layer_call_fn_3646190
*__inference_lstm_628_layer_call_fn_3646201
*__inference_lstm_628_layer_call_fn_3646212?
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646355
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646498
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646641
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646784?
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
*__inference_lstm_629_layer_call_fn_3646795
*__inference_lstm_629_layer_call_fn_3646806
*__inference_lstm_629_layer_call_fn_3646817
*__inference_lstm_629_layer_call_fn_3646828?
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3646971
E__inference_lstm_629_layer_call_and_return_conditional_losses_3647114
E__inference_lstm_629_layer_call_and_return_conditional_losses_3647257
E__inference_lstm_629_layer_call_and_return_conditional_losses_3647400?
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
+__inference_dense_209_layer_call_fn_3647409?
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
F__inference_dense_209_layer_call_and_return_conditional_losses_3647419?
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
%__inference_signature_wrapper_3644644lstm_627_input"?
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
/__inference_lstm_cell_600_layer_call_fn_3647436
/__inference_lstm_cell_600_layer_call_fn_3647453?
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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3647485
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3647517?
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
/__inference_lstm_cell_601_layer_call_fn_3647534
/__inference_lstm_cell_601_layer_call_fn_3647551?
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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3647583
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3647615?
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
/__inference_lstm_cell_602_layer_call_fn_3647632
/__inference_lstm_cell_602_layer_call_fn_3647649?
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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3647681
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3647713?
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
"__inference__wrapped_model_3642384?-./012345!";?8
1?.
,?)
lstm_627_input?????????
? "5?2
0
	dense_209#? 
	dense_209??????????
F__inference_dense_209_layer_call_and_return_conditional_losses_3647419\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_209_layer_call_fn_3647409O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_627_layer_call_and_return_conditional_losses_3645739?-./O?L
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3645882?-./O?L
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3646025q-./??<
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
E__inference_lstm_627_layer_call_and_return_conditional_losses_3646168q-./??<
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
*__inference_lstm_627_layer_call_fn_3645563}-./O?L
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
*__inference_lstm_627_layer_call_fn_3645574}-./O?L
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
*__inference_lstm_627_layer_call_fn_3645585d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_627_layer_call_fn_3645596d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646355?012O?L
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646498?012O?L
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646641q012??<
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
E__inference_lstm_628_layer_call_and_return_conditional_losses_3646784q012??<
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
*__inference_lstm_628_layer_call_fn_3646179}012O?L
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
*__inference_lstm_628_layer_call_fn_3646190}012O?L
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
*__inference_lstm_628_layer_call_fn_3646201d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_628_layer_call_fn_3646212d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_629_layer_call_and_return_conditional_losses_3646971}345O?L
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3647114}345O?L
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3647257m345??<
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
E__inference_lstm_629_layer_call_and_return_conditional_losses_3647400m345??<
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
*__inference_lstm_629_layer_call_fn_3646795p345O?L
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
*__inference_lstm_629_layer_call_fn_3646806p345O?L
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
*__inference_lstm_629_layer_call_fn_3646817`345??<
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
*__inference_lstm_629_layer_call_fn_3646828`345??<
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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3647485?-./??}
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
J__inference_lstm_cell_600_layer_call_and_return_conditional_losses_3647517?-./??}
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
/__inference_lstm_cell_600_layer_call_fn_3647436?-./??}
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
/__inference_lstm_cell_600_layer_call_fn_3647453?-./??}
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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3647583?012??}
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
J__inference_lstm_cell_601_layer_call_and_return_conditional_losses_3647615?012??}
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
/__inference_lstm_cell_601_layer_call_fn_3647534?012??}
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
/__inference_lstm_cell_601_layer_call_fn_3647551?012??}
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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3647681?345??}
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
J__inference_lstm_cell_602_layer_call_and_return_conditional_losses_3647713?345??}
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
/__inference_lstm_cell_602_layer_call_fn_3647632?345??}
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
/__inference_lstm_cell_602_layer_call_fn_3647649?345??}
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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3644579y-./012345!"C?@
9?6
,?)
lstm_627_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_209_layer_call_and_return_conditional_losses_3644609y-./012345!"C?@
9?6
,?)
lstm_627_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_209_layer_call_and_return_conditional_losses_3645125q-./012345!";?8
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
K__inference_sequential_209_layer_call_and_return_conditional_losses_3645552q-./012345!";?8
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
0__inference_sequential_209_layer_call_fn_3643933l-./012345!"C?@
9?6
,?)
lstm_627_input?????????
p 

 
? "???????????
0__inference_sequential_209_layer_call_fn_3644549l-./012345!"C?@
9?6
,?)
lstm_627_input?????????
p

 
? "???????????
0__inference_sequential_209_layer_call_fn_3644671d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_209_layer_call_fn_3644698d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3644644?-./012345!"M?J
? 
C?@
>
lstm_627_input,?)
lstm_627_input?????????"5?2
0
	dense_209#? 
	dense_209?????????