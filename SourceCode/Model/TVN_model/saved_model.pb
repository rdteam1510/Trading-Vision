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
dense_280/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_280/kernel
u
$dense_280/kernel/Read/ReadVariableOpReadVariableOpdense_280/kernel*
_output_shapes

:
*
dtype0
t
dense_280/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_280/bias
m
"dense_280/bias/Read/ReadVariableOpReadVariableOpdense_280/bias*
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
lstm_840/lstm_cell_840/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_840/lstm_cell_840/kernel
?
1lstm_840/lstm_cell_840/kernel/Read/ReadVariableOpReadVariableOplstm_840/lstm_cell_840/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_840/lstm_cell_840/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_840/lstm_cell_840/recurrent_kernel
?
;lstm_840/lstm_cell_840/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_840/lstm_cell_840/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_840/lstm_cell_840/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_840/lstm_cell_840/bias
?
/lstm_840/lstm_cell_840/bias/Read/ReadVariableOpReadVariableOplstm_840/lstm_cell_840/bias*
_output_shapes	
:?*
dtype0
?
lstm_841/lstm_cell_841/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_841/lstm_cell_841/kernel
?
1lstm_841/lstm_cell_841/kernel/Read/ReadVariableOpReadVariableOplstm_841/lstm_cell_841/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_841/lstm_cell_841/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_841/lstm_cell_841/recurrent_kernel
?
;lstm_841/lstm_cell_841/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_841/lstm_cell_841/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_841/lstm_cell_841/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_841/lstm_cell_841/bias
?
/lstm_841/lstm_cell_841/bias/Read/ReadVariableOpReadVariableOplstm_841/lstm_cell_841/bias*
_output_shapes	
:?*
dtype0
?
lstm_842/lstm_cell_842/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_842/lstm_cell_842/kernel
?
1lstm_842/lstm_cell_842/kernel/Read/ReadVariableOpReadVariableOplstm_842/lstm_cell_842/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_842/lstm_cell_842/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_842/lstm_cell_842/recurrent_kernel
?
;lstm_842/lstm_cell_842/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_842/lstm_cell_842/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_842/lstm_cell_842/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_842/lstm_cell_842/bias
?
/lstm_842/lstm_cell_842/bias/Read/ReadVariableOpReadVariableOplstm_842/lstm_cell_842/bias*
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
Adam/dense_280/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_280/kernel/m
?
+Adam/dense_280/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_280/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_280/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_280/bias/m
{
)Adam/dense_280/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_280/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_840/lstm_cell_840/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_840/lstm_cell_840/kernel/m
?
8Adam/lstm_840/lstm_cell_840/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_840/lstm_cell_840/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_840/lstm_cell_840/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_840/lstm_cell_840/recurrent_kernel/m
?
BAdam/lstm_840/lstm_cell_840/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_840/lstm_cell_840/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_840/lstm_cell_840/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_840/lstm_cell_840/bias/m
?
6Adam/lstm_840/lstm_cell_840/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_840/lstm_cell_840/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_841/lstm_cell_841/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_841/lstm_cell_841/kernel/m
?
8Adam/lstm_841/lstm_cell_841/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_841/lstm_cell_841/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_841/lstm_cell_841/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_841/lstm_cell_841/recurrent_kernel/m
?
BAdam/lstm_841/lstm_cell_841/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_841/lstm_cell_841/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_841/lstm_cell_841/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_841/lstm_cell_841/bias/m
?
6Adam/lstm_841/lstm_cell_841/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_841/lstm_cell_841/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_842/lstm_cell_842/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_842/lstm_cell_842/kernel/m
?
8Adam/lstm_842/lstm_cell_842/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_842/lstm_cell_842/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_842/lstm_cell_842/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_842/lstm_cell_842/recurrent_kernel/m
?
BAdam/lstm_842/lstm_cell_842/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_842/lstm_cell_842/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_842/lstm_cell_842/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_842/lstm_cell_842/bias/m
?
6Adam/lstm_842/lstm_cell_842/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_842/lstm_cell_842/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_280/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_280/kernel/v
?
+Adam/dense_280/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_280/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_280/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_280/bias/v
{
)Adam/dense_280/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_280/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_840/lstm_cell_840/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_840/lstm_cell_840/kernel/v
?
8Adam/lstm_840/lstm_cell_840/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_840/lstm_cell_840/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_840/lstm_cell_840/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_840/lstm_cell_840/recurrent_kernel/v
?
BAdam/lstm_840/lstm_cell_840/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_840/lstm_cell_840/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_840/lstm_cell_840/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_840/lstm_cell_840/bias/v
?
6Adam/lstm_840/lstm_cell_840/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_840/lstm_cell_840/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_841/lstm_cell_841/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_841/lstm_cell_841/kernel/v
?
8Adam/lstm_841/lstm_cell_841/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_841/lstm_cell_841/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_841/lstm_cell_841/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_841/lstm_cell_841/recurrent_kernel/v
?
BAdam/lstm_841/lstm_cell_841/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_841/lstm_cell_841/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_841/lstm_cell_841/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_841/lstm_cell_841/bias/v
?
6Adam/lstm_841/lstm_cell_841/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_841/lstm_cell_841/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_842/lstm_cell_842/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_842/lstm_cell_842/kernel/v
?
8Adam/lstm_842/lstm_cell_842/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_842/lstm_cell_842/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_842/lstm_cell_842/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_842/lstm_cell_842/recurrent_kernel/v
?
BAdam/lstm_842/lstm_cell_842/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_842/lstm_cell_842/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_842/lstm_cell_842/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_842/lstm_cell_842/bias/v
?
6Adam/lstm_842/lstm_cell_842/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_842/lstm_cell_842/bias/v*
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
VARIABLE_VALUEdense_280/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_280/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_840/lstm_cell_840/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_840/lstm_cell_840/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_840/lstm_cell_840/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_841/lstm_cell_841/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_841/lstm_cell_841/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_841/lstm_cell_841/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_842/lstm_cell_842/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_842/lstm_cell_842/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_842/lstm_cell_842/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_280/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_280/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_840/lstm_cell_840/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_840/lstm_cell_840/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_840/lstm_cell_840/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_841/lstm_cell_841/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_841/lstm_cell_841/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_841/lstm_cell_841/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_842/lstm_cell_842/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_842/lstm_cell_842/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_842/lstm_cell_842/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_280/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_280/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_840/lstm_cell_840/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_840/lstm_cell_840/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_840/lstm_cell_840/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_841/lstm_cell_841/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_841/lstm_cell_841/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_841/lstm_cell_841/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_842/lstm_cell_842/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_842/lstm_cell_842/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_842/lstm_cell_842/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_840_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_840_inputlstm_840/lstm_cell_840/kernel'lstm_840/lstm_cell_840/recurrent_kernellstm_840/lstm_cell_840/biaslstm_841/lstm_cell_841/kernel'lstm_841/lstm_cell_841/recurrent_kernellstm_841/lstm_cell_841/biaslstm_842/lstm_cell_842/kernel'lstm_842/lstm_cell_842/recurrent_kernellstm_842/lstm_cell_842/biasdense_280/kerneldense_280/bias*
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
%__inference_signature_wrapper_4134832
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_280/kernel/Read/ReadVariableOp"dense_280/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_840/lstm_cell_840/kernel/Read/ReadVariableOp;lstm_840/lstm_cell_840/recurrent_kernel/Read/ReadVariableOp/lstm_840/lstm_cell_840/bias/Read/ReadVariableOp1lstm_841/lstm_cell_841/kernel/Read/ReadVariableOp;lstm_841/lstm_cell_841/recurrent_kernel/Read/ReadVariableOp/lstm_841/lstm_cell_841/bias/Read/ReadVariableOp1lstm_842/lstm_cell_842/kernel/Read/ReadVariableOp;lstm_842/lstm_cell_842/recurrent_kernel/Read/ReadVariableOp/lstm_842/lstm_cell_842/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_280/kernel/m/Read/ReadVariableOp)Adam/dense_280/bias/m/Read/ReadVariableOp8Adam/lstm_840/lstm_cell_840/kernel/m/Read/ReadVariableOpBAdam/lstm_840/lstm_cell_840/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_840/lstm_cell_840/bias/m/Read/ReadVariableOp8Adam/lstm_841/lstm_cell_841/kernel/m/Read/ReadVariableOpBAdam/lstm_841/lstm_cell_841/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_841/lstm_cell_841/bias/m/Read/ReadVariableOp8Adam/lstm_842/lstm_cell_842/kernel/m/Read/ReadVariableOpBAdam/lstm_842/lstm_cell_842/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_842/lstm_cell_842/bias/m/Read/ReadVariableOp+Adam/dense_280/kernel/v/Read/ReadVariableOp)Adam/dense_280/bias/v/Read/ReadVariableOp8Adam/lstm_840/lstm_cell_840/kernel/v/Read/ReadVariableOpBAdam/lstm_840/lstm_cell_840/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_840/lstm_cell_840/bias/v/Read/ReadVariableOp8Adam/lstm_841/lstm_cell_841/kernel/v/Read/ReadVariableOpBAdam/lstm_841/lstm_cell_841/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_841/lstm_cell_841/bias/v/Read/ReadVariableOp8Adam/lstm_842/lstm_cell_842/kernel/v/Read/ReadVariableOpBAdam/lstm_842/lstm_cell_842/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_842/lstm_cell_842/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4138044
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_280/kerneldense_280/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_840/lstm_cell_840/kernel'lstm_840/lstm_cell_840/recurrent_kernellstm_840/lstm_cell_840/biaslstm_841/lstm_cell_841/kernel'lstm_841/lstm_cell_841/recurrent_kernellstm_841/lstm_cell_841/biaslstm_842/lstm_cell_842/kernel'lstm_842/lstm_cell_842/recurrent_kernellstm_842/lstm_cell_842/biastotalcountAdam/dense_280/kernel/mAdam/dense_280/bias/m$Adam/lstm_840/lstm_cell_840/kernel/m.Adam/lstm_840/lstm_cell_840/recurrent_kernel/m"Adam/lstm_840/lstm_cell_840/bias/m$Adam/lstm_841/lstm_cell_841/kernel/m.Adam/lstm_841/lstm_cell_841/recurrent_kernel/m"Adam/lstm_841/lstm_cell_841/bias/m$Adam/lstm_842/lstm_cell_842/kernel/m.Adam/lstm_842/lstm_cell_842/recurrent_kernel/m"Adam/lstm_842/lstm_cell_842/bias/mAdam/dense_280/kernel/vAdam/dense_280/bias/v$Adam/lstm_840/lstm_cell_840/kernel/v.Adam/lstm_840/lstm_cell_840/recurrent_kernel/v"Adam/lstm_840/lstm_cell_840/bias/v$Adam/lstm_841/lstm_cell_841/kernel/v.Adam/lstm_841/lstm_cell_841/recurrent_kernel/v"Adam/lstm_841/lstm_cell_841/bias/v$Adam/lstm_842/lstm_cell_842/kernel/v.Adam/lstm_842/lstm_cell_842/recurrent_kernel/v"Adam/lstm_842/lstm_cell_842/bias/v*4
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
#__inference__traced_restore_4138174??+
?

?
lstm_842_while_cond_4135649.
*lstm_842_while_lstm_842_while_loop_counter4
0lstm_842_while_lstm_842_while_maximum_iterations
lstm_842_while_placeholder 
lstm_842_while_placeholder_1 
lstm_842_while_placeholder_2 
lstm_842_while_placeholder_30
,lstm_842_while_less_lstm_842_strided_slice_1G
Clstm_842_while_lstm_842_while_cond_4135649___redundant_placeholder0G
Clstm_842_while_lstm_842_while_cond_4135649___redundant_placeholder1G
Clstm_842_while_lstm_842_while_cond_4135649___redundant_placeholder2G
Clstm_842_while_lstm_842_while_cond_4135649___redundant_placeholder3
lstm_842_while_identity
?
lstm_842/while/LessLesslstm_842_while_placeholder,lstm_842_while_less_lstm_842_strided_slice_1*
T0*
_output_shapes
: ]
lstm_842/while/IdentityIdentitylstm_842/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_842_while_identity lstm_842/while/Identity:output:0*(
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
while_cond_4133002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4133002___redundant_placeholder05
1while_while_cond_4133002___redundant_placeholder15
1while_while_cond_4133002___redundant_placeholder25
1while_while_cond_4133002___redundant_placeholder3
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136972

inputs?
,lstm_cell_682_matmul_readvariableop_resource:	d?A
.lstm_cell_682_matmul_1_readvariableop_resource:	2?<
-lstm_cell_682_biasadd_readvariableop_resource:	?
identity??$lstm_cell_682/BiasAdd/ReadVariableOp?#lstm_cell_682/MatMul/ReadVariableOp?%lstm_cell_682/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_682/MatMul/ReadVariableOpReadVariableOp,lstm_cell_682_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_682/MatMulMatMulstrided_slice_2:output:0+lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_682_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_682/MatMul_1MatMulzeros:output:0-lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_682/addAddV2lstm_cell_682/MatMul:product:0 lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_682_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_682/BiasAddBiasAddlstm_cell_682/add:z:0,lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_682/splitSplit&lstm_cell_682/split/split_dim:output:0lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_682/SigmoidSigmoidlstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_1Sigmoidlstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_682/mulMullstm_cell_682/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_682/ReluRelulstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_1Mullstm_cell_682/Sigmoid:y:0 lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_682/add_1AddV2lstm_cell_682/mul:z:0lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_2Sigmoidlstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_682/Relu_1Relulstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_2Mullstm_cell_682/Sigmoid_2:y:0"lstm_cell_682/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_682_matmul_readvariableop_resource.lstm_cell_682_matmul_1_readvariableop_resource-lstm_cell_682_biasadd_readvariableop_resource*
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
while_body_4136888*
condR
while_cond_4136887*K
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
NoOpNoOp%^lstm_cell_682/BiasAdd/ReadVariableOp$^lstm_cell_682/MatMul/ReadVariableOp&^lstm_cell_682/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_682/BiasAdd/ReadVariableOp$lstm_cell_682/BiasAdd/ReadVariableOp2J
#lstm_cell_682/MatMul/ReadVariableOp#lstm_cell_682/MatMul/ReadVariableOp2N
%lstm_cell_682/MatMul_1/ReadVariableOp%lstm_cell_682/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4132652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4132652___redundant_placeholder05
1while_while_cond_4132652___redundant_placeholder15
1while_while_cond_4132652___redundant_placeholder25
1while_while_cond_4132652___redundant_placeholder3
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4136356

inputs?
,lstm_cell_681_matmul_readvariableop_resource:	?A
.lstm_cell_681_matmul_1_readvariableop_resource:	d?<
-lstm_cell_681_biasadd_readvariableop_resource:	?
identity??$lstm_cell_681/BiasAdd/ReadVariableOp?#lstm_cell_681/MatMul/ReadVariableOp?%lstm_cell_681/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_681/MatMul/ReadVariableOpReadVariableOp,lstm_cell_681_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_681/MatMulMatMulstrided_slice_2:output:0+lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_681_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_681/MatMul_1MatMulzeros:output:0-lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_681/addAddV2lstm_cell_681/MatMul:product:0 lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_681_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_681/BiasAddBiasAddlstm_cell_681/add:z:0,lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_681/splitSplit&lstm_cell_681/split/split_dim:output:0lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_681/SigmoidSigmoidlstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_1Sigmoidlstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_681/mulMullstm_cell_681/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_681/ReluRelulstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_1Mullstm_cell_681/Sigmoid:y:0 lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_681/add_1AddV2lstm_cell_681/mul:z:0lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_2Sigmoidlstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_681/Relu_1Relulstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_2Mullstm_cell_681/Sigmoid_2:y:0"lstm_cell_681/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_681_matmul_readvariableop_resource.lstm_cell_681_matmul_1_readvariableop_resource-lstm_cell_681_biasadd_readvariableop_resource*
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
while_body_4136272*
condR
while_cond_4136271*K
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
NoOpNoOp%^lstm_cell_681/BiasAdd/ReadVariableOp$^lstm_cell_681/MatMul/ReadVariableOp&^lstm_cell_681/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_681/BiasAdd/ReadVariableOp$lstm_cell_681/BiasAdd/ReadVariableOp2J
#lstm_cell_681/MatMul/ReadVariableOp#lstm_cell_681/MatMul/ReadVariableOp2N
%lstm_cell_681/MatMul_1/ReadVariableOp%lstm_cell_681/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136686
inputs_0?
,lstm_cell_682_matmul_readvariableop_resource:	d?A
.lstm_cell_682_matmul_1_readvariableop_resource:	2?<
-lstm_cell_682_biasadd_readvariableop_resource:	?
identity??$lstm_cell_682/BiasAdd/ReadVariableOp?#lstm_cell_682/MatMul/ReadVariableOp?%lstm_cell_682/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_682/MatMul/ReadVariableOpReadVariableOp,lstm_cell_682_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_682/MatMulMatMulstrided_slice_2:output:0+lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_682_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_682/MatMul_1MatMulzeros:output:0-lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_682/addAddV2lstm_cell_682/MatMul:product:0 lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_682_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_682/BiasAddBiasAddlstm_cell_682/add:z:0,lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_682/splitSplit&lstm_cell_682/split/split_dim:output:0lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_682/SigmoidSigmoidlstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_1Sigmoidlstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_682/mulMullstm_cell_682/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_682/ReluRelulstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_1Mullstm_cell_682/Sigmoid:y:0 lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_682/add_1AddV2lstm_cell_682/mul:z:0lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_2Sigmoidlstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_682/Relu_1Relulstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_2Mullstm_cell_682/Sigmoid_2:y:0"lstm_cell_682/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_682_matmul_readvariableop_resource.lstm_cell_682_matmul_1_readvariableop_resource-lstm_cell_682_biasadd_readvariableop_resource*
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
while_body_4136602*
condR
while_cond_4136601*K
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
NoOpNoOp%^lstm_cell_682/BiasAdd/ReadVariableOp$^lstm_cell_682/MatMul/ReadVariableOp&^lstm_cell_682/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_682/BiasAdd/ReadVariableOp$lstm_cell_682/BiasAdd/ReadVariableOp2J
#lstm_cell_682/MatMul/ReadVariableOp#lstm_cell_682/MatMul/ReadVariableOp2N
%lstm_cell_682/MatMul_1/ReadVariableOp%lstm_cell_682/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_842_layer_call_and_return_conditional_losses_4134071

inputs>
,lstm_cell_683_matmul_readvariableop_resource:2(@
.lstm_cell_683_matmul_1_readvariableop_resource:
(;
-lstm_cell_683_biasadd_readvariableop_resource:(
identity??$lstm_cell_683/BiasAdd/ReadVariableOp?#lstm_cell_683/MatMul/ReadVariableOp?%lstm_cell_683/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
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
while_body_4133987*
condR
while_cond_4133986*K
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
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_683_layer_call_fn_4137820

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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4133339o
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
while_cond_4134367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4134367___redundant_placeholder05
1while_while_cond_4134367___redundant_placeholder15
1while_while_cond_4134367___redundant_placeholder25
1while_while_cond_4134367___redundant_placeholder3
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
??
?
K__inference_sequential_280_layer_call_and_return_conditional_losses_4135313

inputsH
5lstm_840_lstm_cell_681_matmul_readvariableop_resource:	?J
7lstm_840_lstm_cell_681_matmul_1_readvariableop_resource:	d?E
6lstm_840_lstm_cell_681_biasadd_readvariableop_resource:	?H
5lstm_841_lstm_cell_682_matmul_readvariableop_resource:	d?J
7lstm_841_lstm_cell_682_matmul_1_readvariableop_resource:	2?E
6lstm_841_lstm_cell_682_biasadd_readvariableop_resource:	?G
5lstm_842_lstm_cell_683_matmul_readvariableop_resource:2(I
7lstm_842_lstm_cell_683_matmul_1_readvariableop_resource:
(D
6lstm_842_lstm_cell_683_biasadd_readvariableop_resource:(:
(dense_280_matmul_readvariableop_resource:
7
)dense_280_biasadd_readvariableop_resource:
identity?? dense_280/BiasAdd/ReadVariableOp?dense_280/MatMul/ReadVariableOp?-lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp?,lstm_840/lstm_cell_681/MatMul/ReadVariableOp?.lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp?lstm_840/while?-lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp?,lstm_841/lstm_cell_682/MatMul/ReadVariableOp?.lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp?lstm_841/while?-lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp?,lstm_842/lstm_cell_683/MatMul/ReadVariableOp?.lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp?lstm_842/whileD
lstm_840/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_840/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_840/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_840/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_840/strided_sliceStridedSlicelstm_840/Shape:output:0%lstm_840/strided_slice/stack:output:0'lstm_840/strided_slice/stack_1:output:0'lstm_840/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_840/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_840/zeros/packedPacklstm_840/strided_slice:output:0 lstm_840/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_840/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_840/zerosFilllstm_840/zeros/packed:output:0lstm_840/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_840/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_840/zeros_1/packedPacklstm_840/strided_slice:output:0"lstm_840/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_840/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_840/zeros_1Fill lstm_840/zeros_1/packed:output:0lstm_840/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_840/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_840/transpose	Transposeinputs lstm_840/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_840/Shape_1Shapelstm_840/transpose:y:0*
T0*
_output_shapes
:h
lstm_840/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_840/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_840/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_840/strided_slice_1StridedSlicelstm_840/Shape_1:output:0'lstm_840/strided_slice_1/stack:output:0)lstm_840/strided_slice_1/stack_1:output:0)lstm_840/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_840/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_840/TensorArrayV2TensorListReserve-lstm_840/TensorArrayV2/element_shape:output:0!lstm_840/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_840/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_840/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_840/transpose:y:0Glstm_840/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_840/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_840/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_840/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_840/strided_slice_2StridedSlicelstm_840/transpose:y:0'lstm_840/strided_slice_2/stack:output:0)lstm_840/strided_slice_2/stack_1:output:0)lstm_840/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_840/lstm_cell_681/MatMul/ReadVariableOpReadVariableOp5lstm_840_lstm_cell_681_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_840/lstm_cell_681/MatMulMatMul!lstm_840/strided_slice_2:output:04lstm_840/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_840/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp7lstm_840_lstm_cell_681_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_840/lstm_cell_681/MatMul_1MatMullstm_840/zeros:output:06lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_840/lstm_cell_681/addAddV2'lstm_840/lstm_cell_681/MatMul:product:0)lstm_840/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_840/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp6lstm_840_lstm_cell_681_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_840/lstm_cell_681/BiasAddBiasAddlstm_840/lstm_cell_681/add:z:05lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_840/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_840/lstm_cell_681/splitSplit/lstm_840/lstm_cell_681/split/split_dim:output:0'lstm_840/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_840/lstm_cell_681/SigmoidSigmoid%lstm_840/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_840/lstm_cell_681/Sigmoid_1Sigmoid%lstm_840/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_840/lstm_cell_681/mulMul$lstm_840/lstm_cell_681/Sigmoid_1:y:0lstm_840/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_840/lstm_cell_681/ReluRelu%lstm_840/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_840/lstm_cell_681/mul_1Mul"lstm_840/lstm_cell_681/Sigmoid:y:0)lstm_840/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_840/lstm_cell_681/add_1AddV2lstm_840/lstm_cell_681/mul:z:0 lstm_840/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_840/lstm_cell_681/Sigmoid_2Sigmoid%lstm_840/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_840/lstm_cell_681/Relu_1Relu lstm_840/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_840/lstm_cell_681/mul_2Mul$lstm_840/lstm_cell_681/Sigmoid_2:y:0+lstm_840/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_840/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_840/TensorArrayV2_1TensorListReserve/lstm_840/TensorArrayV2_1/element_shape:output:0!lstm_840/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_840/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_840/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_840/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_840/whileWhile$lstm_840/while/loop_counter:output:0*lstm_840/while/maximum_iterations:output:0lstm_840/time:output:0!lstm_840/TensorArrayV2_1:handle:0lstm_840/zeros:output:0lstm_840/zeros_1:output:0!lstm_840/strided_slice_1:output:0@lstm_840/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_840_lstm_cell_681_matmul_readvariableop_resource7lstm_840_lstm_cell_681_matmul_1_readvariableop_resource6lstm_840_lstm_cell_681_biasadd_readvariableop_resource*
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
lstm_840_while_body_4134945*'
condR
lstm_840_while_cond_4134944*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_840/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_840/TensorArrayV2Stack/TensorListStackTensorListStacklstm_840/while:output:3Blstm_840/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_840/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_840/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_840/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_840/strided_slice_3StridedSlice4lstm_840/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_840/strided_slice_3/stack:output:0)lstm_840/strided_slice_3/stack_1:output:0)lstm_840/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_840/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_840/transpose_1	Transpose4lstm_840/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_840/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_840/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_841/ShapeShapelstm_840/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_841/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_841/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_841/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_841/strided_sliceStridedSlicelstm_841/Shape:output:0%lstm_841/strided_slice/stack:output:0'lstm_841/strided_slice/stack_1:output:0'lstm_841/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_841/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_841/zeros/packedPacklstm_841/strided_slice:output:0 lstm_841/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_841/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_841/zerosFilllstm_841/zeros/packed:output:0lstm_841/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_841/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_841/zeros_1/packedPacklstm_841/strided_slice:output:0"lstm_841/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_841/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_841/zeros_1Fill lstm_841/zeros_1/packed:output:0lstm_841/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_841/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_841/transpose	Transposelstm_840/transpose_1:y:0 lstm_841/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_841/Shape_1Shapelstm_841/transpose:y:0*
T0*
_output_shapes
:h
lstm_841/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_841/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_841/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_841/strided_slice_1StridedSlicelstm_841/Shape_1:output:0'lstm_841/strided_slice_1/stack:output:0)lstm_841/strided_slice_1/stack_1:output:0)lstm_841/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_841/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_841/TensorArrayV2TensorListReserve-lstm_841/TensorArrayV2/element_shape:output:0!lstm_841/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_841/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_841/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_841/transpose:y:0Glstm_841/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_841/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_841/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_841/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_841/strided_slice_2StridedSlicelstm_841/transpose:y:0'lstm_841/strided_slice_2/stack:output:0)lstm_841/strided_slice_2/stack_1:output:0)lstm_841/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_841/lstm_cell_682/MatMul/ReadVariableOpReadVariableOp5lstm_841_lstm_cell_682_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_841/lstm_cell_682/MatMulMatMul!lstm_841/strided_slice_2:output:04lstm_841/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_841/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp7lstm_841_lstm_cell_682_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_841/lstm_cell_682/MatMul_1MatMullstm_841/zeros:output:06lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_841/lstm_cell_682/addAddV2'lstm_841/lstm_cell_682/MatMul:product:0)lstm_841/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_841/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp6lstm_841_lstm_cell_682_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_841/lstm_cell_682/BiasAddBiasAddlstm_841/lstm_cell_682/add:z:05lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_841/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_841/lstm_cell_682/splitSplit/lstm_841/lstm_cell_682/split/split_dim:output:0'lstm_841/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_841/lstm_cell_682/SigmoidSigmoid%lstm_841/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_841/lstm_cell_682/Sigmoid_1Sigmoid%lstm_841/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_841/lstm_cell_682/mulMul$lstm_841/lstm_cell_682/Sigmoid_1:y:0lstm_841/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_841/lstm_cell_682/ReluRelu%lstm_841/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_841/lstm_cell_682/mul_1Mul"lstm_841/lstm_cell_682/Sigmoid:y:0)lstm_841/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_841/lstm_cell_682/add_1AddV2lstm_841/lstm_cell_682/mul:z:0 lstm_841/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_841/lstm_cell_682/Sigmoid_2Sigmoid%lstm_841/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_841/lstm_cell_682/Relu_1Relu lstm_841/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_841/lstm_cell_682/mul_2Mul$lstm_841/lstm_cell_682/Sigmoid_2:y:0+lstm_841/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_841/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_841/TensorArrayV2_1TensorListReserve/lstm_841/TensorArrayV2_1/element_shape:output:0!lstm_841/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_841/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_841/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_841/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_841/whileWhile$lstm_841/while/loop_counter:output:0*lstm_841/while/maximum_iterations:output:0lstm_841/time:output:0!lstm_841/TensorArrayV2_1:handle:0lstm_841/zeros:output:0lstm_841/zeros_1:output:0!lstm_841/strided_slice_1:output:0@lstm_841/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_841_lstm_cell_682_matmul_readvariableop_resource7lstm_841_lstm_cell_682_matmul_1_readvariableop_resource6lstm_841_lstm_cell_682_biasadd_readvariableop_resource*
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
lstm_841_while_body_4135084*'
condR
lstm_841_while_cond_4135083*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_841/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_841/TensorArrayV2Stack/TensorListStackTensorListStacklstm_841/while:output:3Blstm_841/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_841/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_841/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_841/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_841/strided_slice_3StridedSlice4lstm_841/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_841/strided_slice_3/stack:output:0)lstm_841/strided_slice_3/stack_1:output:0)lstm_841/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_841/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_841/transpose_1	Transpose4lstm_841/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_841/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_841/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_842/ShapeShapelstm_841/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_842/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_842/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_842/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_842/strided_sliceStridedSlicelstm_842/Shape:output:0%lstm_842/strided_slice/stack:output:0'lstm_842/strided_slice/stack_1:output:0'lstm_842/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_842/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_842/zeros/packedPacklstm_842/strided_slice:output:0 lstm_842/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_842/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_842/zerosFilllstm_842/zeros/packed:output:0lstm_842/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_842/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_842/zeros_1/packedPacklstm_842/strided_slice:output:0"lstm_842/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_842/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_842/zeros_1Fill lstm_842/zeros_1/packed:output:0lstm_842/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_842/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_842/transpose	Transposelstm_841/transpose_1:y:0 lstm_842/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_842/Shape_1Shapelstm_842/transpose:y:0*
T0*
_output_shapes
:h
lstm_842/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_842/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_842/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_842/strided_slice_1StridedSlicelstm_842/Shape_1:output:0'lstm_842/strided_slice_1/stack:output:0)lstm_842/strided_slice_1/stack_1:output:0)lstm_842/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_842/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_842/TensorArrayV2TensorListReserve-lstm_842/TensorArrayV2/element_shape:output:0!lstm_842/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_842/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_842/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_842/transpose:y:0Glstm_842/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_842/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_842/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_842/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_842/strided_slice_2StridedSlicelstm_842/transpose:y:0'lstm_842/strided_slice_2/stack:output:0)lstm_842/strided_slice_2/stack_1:output:0)lstm_842/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_842/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp5lstm_842_lstm_cell_683_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_842/lstm_cell_683/MatMulMatMul!lstm_842/strided_slice_2:output:04lstm_842/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_842/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp7lstm_842_lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_842/lstm_cell_683/MatMul_1MatMullstm_842/zeros:output:06lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_842/lstm_cell_683/addAddV2'lstm_842/lstm_cell_683/MatMul:product:0)lstm_842/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_842/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp6lstm_842_lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_842/lstm_cell_683/BiasAddBiasAddlstm_842/lstm_cell_683/add:z:05lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_842/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_842/lstm_cell_683/splitSplit/lstm_842/lstm_cell_683/split/split_dim:output:0'lstm_842/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_842/lstm_cell_683/SigmoidSigmoid%lstm_842/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_842/lstm_cell_683/Sigmoid_1Sigmoid%lstm_842/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_842/lstm_cell_683/mulMul$lstm_842/lstm_cell_683/Sigmoid_1:y:0lstm_842/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_842/lstm_cell_683/ReluRelu%lstm_842/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_842/lstm_cell_683/mul_1Mul"lstm_842/lstm_cell_683/Sigmoid:y:0)lstm_842/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_842/lstm_cell_683/add_1AddV2lstm_842/lstm_cell_683/mul:z:0 lstm_842/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_842/lstm_cell_683/Sigmoid_2Sigmoid%lstm_842/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_842/lstm_cell_683/Relu_1Relu lstm_842/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_842/lstm_cell_683/mul_2Mul$lstm_842/lstm_cell_683/Sigmoid_2:y:0+lstm_842/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_842/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_842/TensorArrayV2_1TensorListReserve/lstm_842/TensorArrayV2_1/element_shape:output:0!lstm_842/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_842/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_842/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_842/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_842/whileWhile$lstm_842/while/loop_counter:output:0*lstm_842/while/maximum_iterations:output:0lstm_842/time:output:0!lstm_842/TensorArrayV2_1:handle:0lstm_842/zeros:output:0lstm_842/zeros_1:output:0!lstm_842/strided_slice_1:output:0@lstm_842/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_842_lstm_cell_683_matmul_readvariableop_resource7lstm_842_lstm_cell_683_matmul_1_readvariableop_resource6lstm_842_lstm_cell_683_biasadd_readvariableop_resource*
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
lstm_842_while_body_4135223*'
condR
lstm_842_while_cond_4135222*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_842/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_842/TensorArrayV2Stack/TensorListStackTensorListStacklstm_842/while:output:3Blstm_842/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_842/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_842/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_842/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_842/strided_slice_3StridedSlice4lstm_842/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_842/strided_slice_3/stack:output:0)lstm_842/strided_slice_3/stack_1:output:0)lstm_842/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_842/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_842/transpose_1	Transpose4lstm_842/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_842/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_842/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_280/MatMul/ReadVariableOpReadVariableOp(dense_280_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_280/MatMulMatMul!lstm_842/strided_slice_3:output:0'dense_280/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_280/BiasAdd/ReadVariableOpReadVariableOp)dense_280_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_280/BiasAddBiasAdddense_280/MatMul:product:0(dense_280/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_280/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_280/BiasAdd/ReadVariableOp ^dense_280/MatMul/ReadVariableOp.^lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp-^lstm_840/lstm_cell_681/MatMul/ReadVariableOp/^lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp^lstm_840/while.^lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp-^lstm_841/lstm_cell_682/MatMul/ReadVariableOp/^lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp^lstm_841/while.^lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp-^lstm_842/lstm_cell_683/MatMul/ReadVariableOp/^lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp^lstm_842/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_280/BiasAdd/ReadVariableOp dense_280/BiasAdd/ReadVariableOp2B
dense_280/MatMul/ReadVariableOpdense_280/MatMul/ReadVariableOp2^
-lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp-lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp2\
,lstm_840/lstm_cell_681/MatMul/ReadVariableOp,lstm_840/lstm_cell_681/MatMul/ReadVariableOp2`
.lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp.lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp2 
lstm_840/whilelstm_840/while2^
-lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp-lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp2\
,lstm_841/lstm_cell_682/MatMul/ReadVariableOp,lstm_841/lstm_cell_682/MatMul/ReadVariableOp2`
.lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp.lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp2 
lstm_841/whilelstm_841/while2^
-lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp-lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp2\
,lstm_842/lstm_cell_683/MatMul/ReadVariableOp,lstm_842/lstm_cell_683/MatMul/ReadVariableOp2`
.lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp.lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp2 
lstm_842/whilelstm_842/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_840_layer_call_and_return_conditional_losses_4133771

inputs?
,lstm_cell_681_matmul_readvariableop_resource:	?A
.lstm_cell_681_matmul_1_readvariableop_resource:	d?<
-lstm_cell_681_biasadd_readvariableop_resource:	?
identity??$lstm_cell_681/BiasAdd/ReadVariableOp?#lstm_cell_681/MatMul/ReadVariableOp?%lstm_cell_681/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_681/MatMul/ReadVariableOpReadVariableOp,lstm_cell_681_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_681/MatMulMatMulstrided_slice_2:output:0+lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_681_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_681/MatMul_1MatMulzeros:output:0-lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_681/addAddV2lstm_cell_681/MatMul:product:0 lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_681_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_681/BiasAddBiasAddlstm_cell_681/add:z:0,lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_681/splitSplit&lstm_cell_681/split/split_dim:output:0lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_681/SigmoidSigmoidlstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_1Sigmoidlstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_681/mulMullstm_cell_681/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_681/ReluRelulstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_1Mullstm_cell_681/Sigmoid:y:0 lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_681/add_1AddV2lstm_cell_681/mul:z:0lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_2Sigmoidlstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_681/Relu_1Relulstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_2Mullstm_cell_681/Sigmoid_2:y:0"lstm_cell_681/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_681_matmul_readvariableop_resource.lstm_cell_681_matmul_1_readvariableop_resource-lstm_cell_681_biasadd_readvariableop_resource*
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
while_body_4133687*
condR
while_cond_4133686*K
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
NoOpNoOp%^lstm_cell_681/BiasAdd/ReadVariableOp$^lstm_cell_681/MatMul/ReadVariableOp&^lstm_cell_681/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_681/BiasAdd/ReadVariableOp$lstm_cell_681/BiasAdd/ReadVariableOp2J
#lstm_cell_681/MatMul/ReadVariableOp#lstm_cell_681/MatMul/ReadVariableOp2N
%lstm_cell_681/MatMul_1/ReadVariableOp%lstm_cell_681/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_280_lstm_842_while_body_4132482L
Hsequential_280_lstm_842_while_sequential_280_lstm_842_while_loop_counterR
Nsequential_280_lstm_842_while_sequential_280_lstm_842_while_maximum_iterations-
)sequential_280_lstm_842_while_placeholder/
+sequential_280_lstm_842_while_placeholder_1/
+sequential_280_lstm_842_while_placeholder_2/
+sequential_280_lstm_842_while_placeholder_3K
Gsequential_280_lstm_842_while_sequential_280_lstm_842_strided_slice_1_0?
?sequential_280_lstm_842_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_842_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_280_lstm_842_while_lstm_cell_683_matmul_readvariableop_resource_0:2(`
Nsequential_280_lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource_0:
([
Msequential_280_lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource_0:(*
&sequential_280_lstm_842_while_identity,
(sequential_280_lstm_842_while_identity_1,
(sequential_280_lstm_842_while_identity_2,
(sequential_280_lstm_842_while_identity_3,
(sequential_280_lstm_842_while_identity_4,
(sequential_280_lstm_842_while_identity_5I
Esequential_280_lstm_842_while_sequential_280_lstm_842_strided_slice_1?
?sequential_280_lstm_842_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_842_tensorarrayunstack_tensorlistfromtensor\
Jsequential_280_lstm_842_while_lstm_cell_683_matmul_readvariableop_resource:2(^
Lsequential_280_lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource:
(Y
Ksequential_280_lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource:(??Bsequential_280/lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp?Asequential_280/lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp?Csequential_280/lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp?
Osequential_280/lstm_842/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_280/lstm_842/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_280_lstm_842_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_842_tensorarrayunstack_tensorlistfromtensor_0)sequential_280_lstm_842_while_placeholderXsequential_280/lstm_842/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_280/lstm_842/while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOpLsequential_280_lstm_842_while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_280/lstm_842/while/lstm_cell_683/MatMulMatMulHsequential_280/lstm_842/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_280/lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_280/lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOpNsequential_280_lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_280/lstm_842/while/lstm_cell_683/MatMul_1MatMul+sequential_280_lstm_842_while_placeholder_2Ksequential_280/lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_280/lstm_842/while/lstm_cell_683/addAddV2<sequential_280/lstm_842/while/lstm_cell_683/MatMul:product:0>sequential_280/lstm_842/while/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_280/lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOpMsequential_280_lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_280/lstm_842/while/lstm_cell_683/BiasAddBiasAdd3sequential_280/lstm_842/while/lstm_cell_683/add:z:0Jsequential_280/lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_280/lstm_842/while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_280/lstm_842/while/lstm_cell_683/splitSplitDsequential_280/lstm_842/while/lstm_cell_683/split/split_dim:output:0<sequential_280/lstm_842/while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_280/lstm_842/while/lstm_cell_683/SigmoidSigmoid:sequential_280/lstm_842/while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_280/lstm_842/while/lstm_cell_683/Sigmoid_1Sigmoid:sequential_280/lstm_842/while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_280/lstm_842/while/lstm_cell_683/mulMul9sequential_280/lstm_842/while/lstm_cell_683/Sigmoid_1:y:0+sequential_280_lstm_842_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_280/lstm_842/while/lstm_cell_683/ReluRelu:sequential_280/lstm_842/while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_280/lstm_842/while/lstm_cell_683/mul_1Mul7sequential_280/lstm_842/while/lstm_cell_683/Sigmoid:y:0>sequential_280/lstm_842/while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_280/lstm_842/while/lstm_cell_683/add_1AddV23sequential_280/lstm_842/while/lstm_cell_683/mul:z:05sequential_280/lstm_842/while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_280/lstm_842/while/lstm_cell_683/Sigmoid_2Sigmoid:sequential_280/lstm_842/while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_280/lstm_842/while/lstm_cell_683/Relu_1Relu5sequential_280/lstm_842/while/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_280/lstm_842/while/lstm_cell_683/mul_2Mul9sequential_280/lstm_842/while/lstm_cell_683/Sigmoid_2:y:0@sequential_280/lstm_842/while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_280/lstm_842/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_280_lstm_842_while_placeholder_1)sequential_280_lstm_842_while_placeholder5sequential_280/lstm_842/while/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_280/lstm_842/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_280/lstm_842/while/addAddV2)sequential_280_lstm_842_while_placeholder,sequential_280/lstm_842/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_280/lstm_842/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_280/lstm_842/while/add_1AddV2Hsequential_280_lstm_842_while_sequential_280_lstm_842_while_loop_counter.sequential_280/lstm_842/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_280/lstm_842/while/IdentityIdentity'sequential_280/lstm_842/while/add_1:z:0#^sequential_280/lstm_842/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_842/while/Identity_1IdentityNsequential_280_lstm_842_while_sequential_280_lstm_842_while_maximum_iterations#^sequential_280/lstm_842/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_842/while/Identity_2Identity%sequential_280/lstm_842/while/add:z:0#^sequential_280/lstm_842/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_842/while/Identity_3IdentityRsequential_280/lstm_842/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_280/lstm_842/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_842/while/Identity_4Identity5sequential_280/lstm_842/while/lstm_cell_683/mul_2:z:0#^sequential_280/lstm_842/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_280/lstm_842/while/Identity_5Identity5sequential_280/lstm_842/while/lstm_cell_683/add_1:z:0#^sequential_280/lstm_842/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_280/lstm_842/while/NoOpNoOpC^sequential_280/lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOpB^sequential_280/lstm_842/while/lstm_cell_683/MatMul/ReadVariableOpD^sequential_280/lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_280_lstm_842_while_identity/sequential_280/lstm_842/while/Identity:output:0"]
(sequential_280_lstm_842_while_identity_11sequential_280/lstm_842/while/Identity_1:output:0"]
(sequential_280_lstm_842_while_identity_21sequential_280/lstm_842/while/Identity_2:output:0"]
(sequential_280_lstm_842_while_identity_31sequential_280/lstm_842/while/Identity_3:output:0"]
(sequential_280_lstm_842_while_identity_41sequential_280/lstm_842/while/Identity_4:output:0"]
(sequential_280_lstm_842_while_identity_51sequential_280/lstm_842/while/Identity_5:output:0"?
Ksequential_280_lstm_842_while_lstm_cell_683_biasadd_readvariableop_resourceMsequential_280_lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource_0"?
Lsequential_280_lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resourceNsequential_280_lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource_0"?
Jsequential_280_lstm_842_while_lstm_cell_683_matmul_readvariableop_resourceLsequential_280_lstm_842_while_lstm_cell_683_matmul_readvariableop_resource_0"?
Esequential_280_lstm_842_while_sequential_280_lstm_842_strided_slice_1Gsequential_280_lstm_842_while_sequential_280_lstm_842_strided_slice_1_0"?
?sequential_280_lstm_842_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_842_tensorarrayunstack_tensorlistfromtensor?sequential_280_lstm_842_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_842_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_280/lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOpBsequential_280/lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp2?
Asequential_280/lstm_842/while/lstm_cell_683/MatMul/ReadVariableOpAsequential_280/lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp2?
Csequential_280/lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOpCsequential_280/lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4134617

inputs?
,lstm_cell_681_matmul_readvariableop_resource:	?A
.lstm_cell_681_matmul_1_readvariableop_resource:	d?<
-lstm_cell_681_biasadd_readvariableop_resource:	?
identity??$lstm_cell_681/BiasAdd/ReadVariableOp?#lstm_cell_681/MatMul/ReadVariableOp?%lstm_cell_681/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_681/MatMul/ReadVariableOpReadVariableOp,lstm_cell_681_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_681/MatMulMatMulstrided_slice_2:output:0+lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_681_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_681/MatMul_1MatMulzeros:output:0-lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_681/addAddV2lstm_cell_681/MatMul:product:0 lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_681_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_681/BiasAddBiasAddlstm_cell_681/add:z:0,lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_681/splitSplit&lstm_cell_681/split/split_dim:output:0lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_681/SigmoidSigmoidlstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_1Sigmoidlstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_681/mulMullstm_cell_681/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_681/ReluRelulstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_1Mullstm_cell_681/Sigmoid:y:0 lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_681/add_1AddV2lstm_cell_681/mul:z:0lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_2Sigmoidlstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_681/Relu_1Relulstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_2Mullstm_cell_681/Sigmoid_2:y:0"lstm_cell_681/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_681_matmul_readvariableop_resource.lstm_cell_681_matmul_1_readvariableop_resource-lstm_cell_681_biasadd_readvariableop_resource*
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
while_body_4134533*
condR
while_cond_4134532*K
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
NoOpNoOp%^lstm_cell_681/BiasAdd/ReadVariableOp$^lstm_cell_681/MatMul/ReadVariableOp&^lstm_cell_681/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_681/BiasAdd/ReadVariableOp$lstm_cell_681/BiasAdd/ReadVariableOp2J
#lstm_cell_681/MatMul/ReadVariableOp#lstm_cell_681/MatMul/ReadVariableOp2N
%lstm_cell_681/MatMul_1/ReadVariableOp%lstm_cell_681/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4135986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_681_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_681_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_681_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_681_matmul_readvariableop_resource:	?G
4while_lstm_cell_681_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_681_biasadd_readvariableop_resource:	???*while/lstm_cell_681/BiasAdd/ReadVariableOp?)while/lstm_cell_681/MatMul/ReadVariableOp?+while/lstm_cell_681/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_681/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_681_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_681/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_681_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_681/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_681/addAddV2$while/lstm_cell_681/MatMul:product:0&while/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_681_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_681/BiasAddBiasAddwhile/lstm_cell_681/add:z:02while/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_681/splitSplit,while/lstm_cell_681/split/split_dim:output:0$while/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_681/SigmoidSigmoid"while/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_1Sigmoid"while/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mulMul!while/lstm_cell_681/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_681/ReluRelu"while/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_1Mulwhile/lstm_cell_681/Sigmoid:y:0&while/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/add_1AddV2while/lstm_cell_681/mul:z:0while/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_2Sigmoid"while/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_681/Relu_1Reluwhile/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_2Mul!while/lstm_cell_681/Sigmoid_2:y:0(while/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_681/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_681/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_681/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_681/BiasAdd/ReadVariableOp*^while/lstm_cell_681/MatMul/ReadVariableOp,^while/lstm_cell_681/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_681_biasadd_readvariableop_resource5while_lstm_cell_681_biasadd_readvariableop_resource_0"n
4while_lstm_cell_681_matmul_1_readvariableop_resource6while_lstm_cell_681_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_681_matmul_readvariableop_resource4while_lstm_cell_681_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_681/BiasAdd/ReadVariableOp*while/lstm_cell_681/BiasAdd/ReadVariableOp2V
)while/lstm_cell_681/MatMul/ReadVariableOp)while/lstm_cell_681/MatMul/ReadVariableOp2Z
+while/lstm_cell_681/MatMul_1/ReadVariableOp+while/lstm_cell_681/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4133135

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
?
*__inference_lstm_841_layer_call_fn_4136400

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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4134452s
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4133422

inputs'
lstm_cell_683_4133340:2('
lstm_cell_683_4133342:
(#
lstm_cell_683_4133344:(
identity??%lstm_cell_683/StatefulPartitionedCall?while;
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
%lstm_cell_683/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_683_4133340lstm_cell_683_4133342lstm_cell_683_4133344*
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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4133339n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_683_4133340lstm_cell_683_4133342lstm_cell_683_4133344*
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
while_body_4133353*
condR
while_cond_4133352*K
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
NoOpNoOp&^lstm_cell_683/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_683/StatefulPartitionedCall%lstm_cell_683/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4133485

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
while_cond_4134532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4134532___redundant_placeholder05
1while_while_cond_4134532___redundant_placeholder15
1while_while_cond_4134532___redundant_placeholder25
1while_while_cond_4134532___redundant_placeholder3
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
while_body_4136602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_682_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_682_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_682_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_682_matmul_readvariableop_resource:	d?G
4while_lstm_cell_682_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_682_biasadd_readvariableop_resource:	???*while/lstm_cell_682/BiasAdd/ReadVariableOp?)while/lstm_cell_682/MatMul/ReadVariableOp?+while/lstm_cell_682/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_682/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_682_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_682/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_682_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_682/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_682/addAddV2$while/lstm_cell_682/MatMul:product:0&while/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_682_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_682/BiasAddBiasAddwhile/lstm_cell_682/add:z:02while/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_682/splitSplit,while/lstm_cell_682/split/split_dim:output:0$while/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_682/SigmoidSigmoid"while/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_1Sigmoid"while/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mulMul!while/lstm_cell_682/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_682/ReluRelu"while/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_1Mulwhile/lstm_cell_682/Sigmoid:y:0&while/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/add_1AddV2while/lstm_cell_682/mul:z:0while/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_2Sigmoid"while/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_682/Relu_1Reluwhile/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_2Mul!while/lstm_cell_682/Sigmoid_2:y:0(while/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_682/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_682/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_682/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_682/BiasAdd/ReadVariableOp*^while/lstm_cell_682/MatMul/ReadVariableOp,^while/lstm_cell_682/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_682_biasadd_readvariableop_resource5while_lstm_cell_682_biasadd_readvariableop_resource_0"n
4while_lstm_cell_682_matmul_1_readvariableop_resource6while_lstm_cell_682_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_682_matmul_readvariableop_resource4while_lstm_cell_682_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_682/BiasAdd/ReadVariableOp*while/lstm_cell_682/BiasAdd/ReadVariableOp2V
)while/lstm_cell_682/MatMul/ReadVariableOp)while/lstm_cell_682/MatMul/ReadVariableOp2Z
+while/lstm_cell_682/MatMul_1/ReadVariableOp+while/lstm_cell_682/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_840_while_body_4134945.
*lstm_840_while_lstm_840_while_loop_counter4
0lstm_840_while_lstm_840_while_maximum_iterations
lstm_840_while_placeholder 
lstm_840_while_placeholder_1 
lstm_840_while_placeholder_2 
lstm_840_while_placeholder_3-
)lstm_840_while_lstm_840_strided_slice_1_0i
elstm_840_while_tensorarrayv2read_tensorlistgetitem_lstm_840_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_840_while_lstm_cell_681_matmul_readvariableop_resource_0:	?R
?lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource_0:	d?M
>lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource_0:	?
lstm_840_while_identity
lstm_840_while_identity_1
lstm_840_while_identity_2
lstm_840_while_identity_3
lstm_840_while_identity_4
lstm_840_while_identity_5+
'lstm_840_while_lstm_840_strided_slice_1g
clstm_840_while_tensorarrayv2read_tensorlistgetitem_lstm_840_tensorarrayunstack_tensorlistfromtensorN
;lstm_840_while_lstm_cell_681_matmul_readvariableop_resource:	?P
=lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource:	d?K
<lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource:	???3lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp?2lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp?4lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp?
@lstm_840/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_840/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_840_while_tensorarrayv2read_tensorlistgetitem_lstm_840_tensorarrayunstack_tensorlistfromtensor_0lstm_840_while_placeholderIlstm_840/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_840/while/lstm_cell_681/MatMul/ReadVariableOpReadVariableOp=lstm_840_while_lstm_cell_681_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_840/while/lstm_cell_681/MatMulMatMul9lstm_840/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp?lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_840/while/lstm_cell_681/MatMul_1MatMullstm_840_while_placeholder_2<lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_840/while/lstm_cell_681/addAddV2-lstm_840/while/lstm_cell_681/MatMul:product:0/lstm_840/while/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp>lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_840/while/lstm_cell_681/BiasAddBiasAdd$lstm_840/while/lstm_cell_681/add:z:0;lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_840/while/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_840/while/lstm_cell_681/splitSplit5lstm_840/while/lstm_cell_681/split/split_dim:output:0-lstm_840/while/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_840/while/lstm_cell_681/SigmoidSigmoid+lstm_840/while/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_840/while/lstm_cell_681/Sigmoid_1Sigmoid+lstm_840/while/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_840/while/lstm_cell_681/mulMul*lstm_840/while/lstm_cell_681/Sigmoid_1:y:0lstm_840_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_840/while/lstm_cell_681/ReluRelu+lstm_840/while/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_840/while/lstm_cell_681/mul_1Mul(lstm_840/while/lstm_cell_681/Sigmoid:y:0/lstm_840/while/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_840/while/lstm_cell_681/add_1AddV2$lstm_840/while/lstm_cell_681/mul:z:0&lstm_840/while/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_840/while/lstm_cell_681/Sigmoid_2Sigmoid+lstm_840/while/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_840/while/lstm_cell_681/Relu_1Relu&lstm_840/while/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_840/while/lstm_cell_681/mul_2Mul*lstm_840/while/lstm_cell_681/Sigmoid_2:y:01lstm_840/while/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_840/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_840_while_placeholder_1lstm_840_while_placeholder&lstm_840/while/lstm_cell_681/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_840/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_840/while/addAddV2lstm_840_while_placeholderlstm_840/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_840/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_840/while/add_1AddV2*lstm_840_while_lstm_840_while_loop_counterlstm_840/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_840/while/IdentityIdentitylstm_840/while/add_1:z:0^lstm_840/while/NoOp*
T0*
_output_shapes
: ?
lstm_840/while/Identity_1Identity0lstm_840_while_lstm_840_while_maximum_iterations^lstm_840/while/NoOp*
T0*
_output_shapes
: t
lstm_840/while/Identity_2Identitylstm_840/while/add:z:0^lstm_840/while/NoOp*
T0*
_output_shapes
: ?
lstm_840/while/Identity_3IdentityClstm_840/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_840/while/NoOp*
T0*
_output_shapes
: ?
lstm_840/while/Identity_4Identity&lstm_840/while/lstm_cell_681/mul_2:z:0^lstm_840/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_840/while/Identity_5Identity&lstm_840/while/lstm_cell_681/add_1:z:0^lstm_840/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_840/while/NoOpNoOp4^lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp3^lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp5^lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_840_while_identity lstm_840/while/Identity:output:0"?
lstm_840_while_identity_1"lstm_840/while/Identity_1:output:0"?
lstm_840_while_identity_2"lstm_840/while/Identity_2:output:0"?
lstm_840_while_identity_3"lstm_840/while/Identity_3:output:0"?
lstm_840_while_identity_4"lstm_840/while/Identity_4:output:0"?
lstm_840_while_identity_5"lstm_840/while/Identity_5:output:0"T
'lstm_840_while_lstm_840_strided_slice_1)lstm_840_while_lstm_840_strided_slice_1_0"~
<lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource>lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource_0"?
=lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource?lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource_0"|
;lstm_840_while_lstm_cell_681_matmul_readvariableop_resource=lstm_840_while_lstm_cell_681_matmul_readvariableop_resource_0"?
clstm_840_while_tensorarrayv2read_tensorlistgetitem_lstm_840_tensorarrayunstack_tensorlistfromtensorelstm_840_while_tensorarrayv2read_tensorlistgetitem_lstm_840_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp3lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp2h
2lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp2lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp2l
4lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp4lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_842_layer_call_fn_4137016

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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4134287o
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
while_body_4134203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_683_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_683_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_683_matmul_readvariableop_resource:2(F
4while_lstm_cell_683_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_683_biasadd_readvariableop_resource:(??*while/lstm_cell_683/BiasAdd/ReadVariableOp?)while/lstm_cell_683/MatMul/ReadVariableOp?+while/lstm_cell_683/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4132785

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
?#
?
while_body_4133353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_683_4133377_0:2(/
while_lstm_cell_683_4133379_0:
(+
while_lstm_cell_683_4133381_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_683_4133377:2(-
while_lstm_cell_683_4133379:
()
while_lstm_cell_683_4133381:(??+while/lstm_cell_683/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_683/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_683_4133377_0while_lstm_cell_683_4133379_0while_lstm_cell_683_4133381_0*
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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4133339?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_683/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_683/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_683/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_683/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_683_4133377while_lstm_cell_683_4133377_0"<
while_lstm_cell_683_4133379while_lstm_cell_683_4133379_0"<
while_lstm_cell_683_4133381while_lstm_cell_683_4133381_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_683/StatefulPartitionedCall+while/lstm_cell_683/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_841_while_cond_4135510.
*lstm_841_while_lstm_841_while_loop_counter4
0lstm_841_while_lstm_841_while_maximum_iterations
lstm_841_while_placeholder 
lstm_841_while_placeholder_1 
lstm_841_while_placeholder_2 
lstm_841_while_placeholder_30
,lstm_841_while_less_lstm_841_strided_slice_1G
Clstm_841_while_lstm_841_while_cond_4135510___redundant_placeholder0G
Clstm_841_while_lstm_841_while_cond_4135510___redundant_placeholder1G
Clstm_841_while_lstm_841_while_cond_4135510___redundant_placeholder2G
Clstm_841_while_lstm_841_while_cond_4135510___redundant_placeholder3
lstm_841_while_identity
?
lstm_841/while/LessLesslstm_841_while_placeholder,lstm_841_while_less_lstm_841_strided_slice_1*
T0*
_output_shapes
: ]
lstm_841/while/IdentityIdentitylstm_841/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_841_while_identity lstm_841/while/Identity:output:0*(
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
while_body_4136129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_681_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_681_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_681_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_681_matmul_readvariableop_resource:	?G
4while_lstm_cell_681_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_681_biasadd_readvariableop_resource:	???*while/lstm_cell_681/BiasAdd/ReadVariableOp?)while/lstm_cell_681/MatMul/ReadVariableOp?+while/lstm_cell_681/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_681/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_681_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_681/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_681_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_681/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_681/addAddV2$while/lstm_cell_681/MatMul:product:0&while/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_681_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_681/BiasAddBiasAddwhile/lstm_cell_681/add:z:02while/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_681/splitSplit,while/lstm_cell_681/split/split_dim:output:0$while/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_681/SigmoidSigmoid"while/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_1Sigmoid"while/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mulMul!while/lstm_cell_681/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_681/ReluRelu"while/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_1Mulwhile/lstm_cell_681/Sigmoid:y:0&while/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/add_1AddV2while/lstm_cell_681/mul:z:0while/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_2Sigmoid"while/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_681/Relu_1Reluwhile/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_2Mul!while/lstm_cell_681/Sigmoid_2:y:0(while/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_681/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_681/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_681/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_681/BiasAdd/ReadVariableOp*^while/lstm_cell_681/MatMul/ReadVariableOp,^while/lstm_cell_681/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_681_biasadd_readvariableop_resource5while_lstm_cell_681_biasadd_readvariableop_resource_0"n
4while_lstm_cell_681_matmul_1_readvariableop_resource6while_lstm_cell_681_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_681_matmul_readvariableop_resource4while_lstm_cell_681_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_681/BiasAdd/ReadVariableOp*while/lstm_cell_681/BiasAdd/ReadVariableOp2V
)while/lstm_cell_681/MatMul/ReadVariableOp)while/lstm_cell_681/MatMul/ReadVariableOp2Z
+while/lstm_cell_681/MatMul_1/ReadVariableOp+while/lstm_cell_681/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4134287

inputs>
,lstm_cell_683_matmul_readvariableop_resource:2(@
.lstm_cell_683_matmul_1_readvariableop_resource:
(;
-lstm_cell_683_biasadd_readvariableop_resource:(
identity??$lstm_cell_683/BiasAdd/ReadVariableOp?#lstm_cell_683/MatMul/ReadVariableOp?%lstm_cell_683/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
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
while_body_4134203*
condR
while_cond_4134202*K
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
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_280_layer_call_fn_4134121
lstm_840_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_840_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134096o
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
_user_specified_namelstm_840_input
?8
?
while_body_4136745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_682_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_682_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_682_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_682_matmul_readvariableop_resource:	d?G
4while_lstm_cell_682_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_682_biasadd_readvariableop_resource:	???*while/lstm_cell_682/BiasAdd/ReadVariableOp?)while/lstm_cell_682/MatMul/ReadVariableOp?+while/lstm_cell_682/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_682/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_682_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_682/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_682_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_682/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_682/addAddV2$while/lstm_cell_682/MatMul:product:0&while/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_682_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_682/BiasAddBiasAddwhile/lstm_cell_682/add:z:02while/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_682/splitSplit,while/lstm_cell_682/split/split_dim:output:0$while/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_682/SigmoidSigmoid"while/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_1Sigmoid"while/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mulMul!while/lstm_cell_682/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_682/ReluRelu"while/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_1Mulwhile/lstm_cell_682/Sigmoid:y:0&while/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/add_1AddV2while/lstm_cell_682/mul:z:0while/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_2Sigmoid"while/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_682/Relu_1Reluwhile/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_2Mul!while/lstm_cell_682/Sigmoid_2:y:0(while/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_682/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_682/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_682/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_682/BiasAdd/ReadVariableOp*^while/lstm_cell_682/MatMul/ReadVariableOp,^while/lstm_cell_682/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_682_biasadd_readvariableop_resource5while_lstm_cell_682_biasadd_readvariableop_resource_0"n
4while_lstm_cell_682_matmul_1_readvariableop_resource6while_lstm_cell_682_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_682_matmul_readvariableop_resource4while_lstm_cell_682_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_682/BiasAdd/ReadVariableOp*while/lstm_cell_682/BiasAdd/ReadVariableOp2V
)while/lstm_cell_682/MatMul/ReadVariableOp)while/lstm_cell_682/MatMul/ReadVariableOp2Z
+while/lstm_cell_682/MatMul_1/ReadVariableOp+while/lstm_cell_682/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4133687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_681_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_681_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_681_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_681_matmul_readvariableop_resource:	?G
4while_lstm_cell_681_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_681_biasadd_readvariableop_resource:	???*while/lstm_cell_681/BiasAdd/ReadVariableOp?)while/lstm_cell_681/MatMul/ReadVariableOp?+while/lstm_cell_681/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_681/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_681_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_681/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_681_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_681/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_681/addAddV2$while/lstm_cell_681/MatMul:product:0&while/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_681_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_681/BiasAddBiasAddwhile/lstm_cell_681/add:z:02while/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_681/splitSplit,while/lstm_cell_681/split/split_dim:output:0$while/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_681/SigmoidSigmoid"while/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_1Sigmoid"while/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mulMul!while/lstm_cell_681/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_681/ReluRelu"while/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_1Mulwhile/lstm_cell_681/Sigmoid:y:0&while/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/add_1AddV2while/lstm_cell_681/mul:z:0while/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_2Sigmoid"while/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_681/Relu_1Reluwhile/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_2Mul!while/lstm_cell_681/Sigmoid_2:y:0(while/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_681/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_681/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_681/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_681/BiasAdd/ReadVariableOp*^while/lstm_cell_681/MatMul/ReadVariableOp,^while/lstm_cell_681/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_681_biasadd_readvariableop_resource5while_lstm_cell_681_biasadd_readvariableop_resource_0"n
4while_lstm_cell_681_matmul_1_readvariableop_resource6while_lstm_cell_681_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_681_matmul_readvariableop_resource4while_lstm_cell_681_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_681/BiasAdd/ReadVariableOp*while/lstm_cell_681/BiasAdd/ReadVariableOp2V
)while/lstm_cell_681/MatMul/ReadVariableOp)while/lstm_cell_681/MatMul/ReadVariableOp2Z
+while/lstm_cell_681/MatMul_1/ReadVariableOp+while/lstm_cell_681/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4136213

inputs?
,lstm_cell_681_matmul_readvariableop_resource:	?A
.lstm_cell_681_matmul_1_readvariableop_resource:	d?<
-lstm_cell_681_biasadd_readvariableop_resource:	?
identity??$lstm_cell_681/BiasAdd/ReadVariableOp?#lstm_cell_681/MatMul/ReadVariableOp?%lstm_cell_681/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_681/MatMul/ReadVariableOpReadVariableOp,lstm_cell_681_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_681/MatMulMatMulstrided_slice_2:output:0+lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_681_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_681/MatMul_1MatMulzeros:output:0-lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_681/addAddV2lstm_cell_681/MatMul:product:0 lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_681_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_681/BiasAddBiasAddlstm_cell_681/add:z:0,lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_681/splitSplit&lstm_cell_681/split/split_dim:output:0lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_681/SigmoidSigmoidlstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_1Sigmoidlstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_681/mulMullstm_cell_681/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_681/ReluRelulstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_1Mullstm_cell_681/Sigmoid:y:0 lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_681/add_1AddV2lstm_cell_681/mul:z:0lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_2Sigmoidlstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_681/Relu_1Relulstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_2Mullstm_cell_681/Sigmoid_2:y:0"lstm_cell_681/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_681_matmul_readvariableop_resource.lstm_cell_681_matmul_1_readvariableop_resource-lstm_cell_681_biasadd_readvariableop_resource*
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
while_body_4136129*
condR
while_cond_4136128*K
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
NoOpNoOp%^lstm_cell_681/BiasAdd/ReadVariableOp$^lstm_cell_681/MatMul/ReadVariableOp&^lstm_cell_681/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_681/BiasAdd/ReadVariableOp$lstm_cell_681/BiasAdd/ReadVariableOp2J
#lstm_cell_681/MatMul/ReadVariableOp#lstm_cell_681/MatMul/ReadVariableOp2N
%lstm_cell_681/MatMul_1/ReadVariableOp%lstm_cell_681/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4136128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4136128___redundant_placeholder05
1while_while_cond_4136128___redundant_placeholder15
1while_while_cond_4136128___redundant_placeholder25
1while_while_cond_4136128___redundant_placeholder3
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
*sequential_280_lstm_841_while_cond_4132342L
Hsequential_280_lstm_841_while_sequential_280_lstm_841_while_loop_counterR
Nsequential_280_lstm_841_while_sequential_280_lstm_841_while_maximum_iterations-
)sequential_280_lstm_841_while_placeholder/
+sequential_280_lstm_841_while_placeholder_1/
+sequential_280_lstm_841_while_placeholder_2/
+sequential_280_lstm_841_while_placeholder_3N
Jsequential_280_lstm_841_while_less_sequential_280_lstm_841_strided_slice_1e
asequential_280_lstm_841_while_sequential_280_lstm_841_while_cond_4132342___redundant_placeholder0e
asequential_280_lstm_841_while_sequential_280_lstm_841_while_cond_4132342___redundant_placeholder1e
asequential_280_lstm_841_while_sequential_280_lstm_841_while_cond_4132342___redundant_placeholder2e
asequential_280_lstm_841_while_sequential_280_lstm_841_while_cond_4132342___redundant_placeholder3*
&sequential_280_lstm_841_while_identity
?
"sequential_280/lstm_841/while/LessLess)sequential_280_lstm_841_while_placeholderJsequential_280_lstm_841_while_less_sequential_280_lstm_841_strided_slice_1*
T0*
_output_shapes
: {
&sequential_280/lstm_841/while/IdentityIdentity&sequential_280/lstm_841/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_280_lstm_841_while_identity/sequential_280/lstm_841/while/Identity:output:0*(
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
while_body_4136459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_682_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_682_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_682_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_682_matmul_readvariableop_resource:	d?G
4while_lstm_cell_682_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_682_biasadd_readvariableop_resource:	???*while/lstm_cell_682/BiasAdd/ReadVariableOp?)while/lstm_cell_682/MatMul/ReadVariableOp?+while/lstm_cell_682/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_682/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_682_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_682/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_682_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_682/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_682/addAddV2$while/lstm_cell_682/MatMul:product:0&while/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_682_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_682/BiasAddBiasAddwhile/lstm_cell_682/add:z:02while/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_682/splitSplit,while/lstm_cell_682/split/split_dim:output:0$while/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_682/SigmoidSigmoid"while/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_1Sigmoid"while/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mulMul!while/lstm_cell_682/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_682/ReluRelu"while/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_1Mulwhile/lstm_cell_682/Sigmoid:y:0&while/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/add_1AddV2while/lstm_cell_682/mul:z:0while/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_2Sigmoid"while/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_682/Relu_1Reluwhile/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_2Mul!while/lstm_cell_682/Sigmoid_2:y:0(while/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_682/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_682/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_682/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_682/BiasAdd/ReadVariableOp*^while/lstm_cell_682/MatMul/ReadVariableOp,^while/lstm_cell_682/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_682_biasadd_readvariableop_resource5while_lstm_cell_682_biasadd_readvariableop_resource_0"n
4while_lstm_cell_682_matmul_1_readvariableop_resource6while_lstm_cell_682_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_682_matmul_readvariableop_resource4while_lstm_cell_682_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_682/BiasAdd/ReadVariableOp*while/lstm_cell_682/BiasAdd/ReadVariableOp2V
)while/lstm_cell_682/MatMul/ReadVariableOp)while/lstm_cell_682/MatMul/ReadVariableOp2Z
+while/lstm_cell_682/MatMul_1/ReadVariableOp+while/lstm_cell_682/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4137503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4137503___redundant_placeholder05
1while_while_cond_4137503___redundant_placeholder15
1while_while_cond_4137503___redundant_placeholder25
1while_while_cond_4137503___redundant_placeholder3
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

lstm_842_while_body_4135223.
*lstm_842_while_lstm_842_while_loop_counter4
0lstm_842_while_lstm_842_while_maximum_iterations
lstm_842_while_placeholder 
lstm_842_while_placeholder_1 
lstm_842_while_placeholder_2 
lstm_842_while_placeholder_3-
)lstm_842_while_lstm_842_strided_slice_1_0i
elstm_842_while_tensorarrayv2read_tensorlistgetitem_lstm_842_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_842_while_lstm_cell_683_matmul_readvariableop_resource_0:2(Q
?lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource_0:
(L
>lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource_0:(
lstm_842_while_identity
lstm_842_while_identity_1
lstm_842_while_identity_2
lstm_842_while_identity_3
lstm_842_while_identity_4
lstm_842_while_identity_5+
'lstm_842_while_lstm_842_strided_slice_1g
clstm_842_while_tensorarrayv2read_tensorlistgetitem_lstm_842_tensorarrayunstack_tensorlistfromtensorM
;lstm_842_while_lstm_cell_683_matmul_readvariableop_resource:2(O
=lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource:
(J
<lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource:(??3lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp?2lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp?4lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp?
@lstm_842/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_842/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_842_while_tensorarrayv2read_tensorlistgetitem_lstm_842_tensorarrayunstack_tensorlistfromtensor_0lstm_842_while_placeholderIlstm_842/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_842/while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp=lstm_842_while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_842/while/lstm_cell_683/MatMulMatMul9lstm_842/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp?lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_842/while/lstm_cell_683/MatMul_1MatMullstm_842_while_placeholder_2<lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_842/while/lstm_cell_683/addAddV2-lstm_842/while/lstm_cell_683/MatMul:product:0/lstm_842/while/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp>lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_842/while/lstm_cell_683/BiasAddBiasAdd$lstm_842/while/lstm_cell_683/add:z:0;lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_842/while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_842/while/lstm_cell_683/splitSplit5lstm_842/while/lstm_cell_683/split/split_dim:output:0-lstm_842/while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_842/while/lstm_cell_683/SigmoidSigmoid+lstm_842/while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_842/while/lstm_cell_683/Sigmoid_1Sigmoid+lstm_842/while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_842/while/lstm_cell_683/mulMul*lstm_842/while/lstm_cell_683/Sigmoid_1:y:0lstm_842_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_842/while/lstm_cell_683/ReluRelu+lstm_842/while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_842/while/lstm_cell_683/mul_1Mul(lstm_842/while/lstm_cell_683/Sigmoid:y:0/lstm_842/while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_842/while/lstm_cell_683/add_1AddV2$lstm_842/while/lstm_cell_683/mul:z:0&lstm_842/while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_842/while/lstm_cell_683/Sigmoid_2Sigmoid+lstm_842/while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_842/while/lstm_cell_683/Relu_1Relu&lstm_842/while/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_842/while/lstm_cell_683/mul_2Mul*lstm_842/while/lstm_cell_683/Sigmoid_2:y:01lstm_842/while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_842/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_842_while_placeholder_1lstm_842_while_placeholder&lstm_842/while/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_842/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_842/while/addAddV2lstm_842_while_placeholderlstm_842/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_842/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_842/while/add_1AddV2*lstm_842_while_lstm_842_while_loop_counterlstm_842/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_842/while/IdentityIdentitylstm_842/while/add_1:z:0^lstm_842/while/NoOp*
T0*
_output_shapes
: ?
lstm_842/while/Identity_1Identity0lstm_842_while_lstm_842_while_maximum_iterations^lstm_842/while/NoOp*
T0*
_output_shapes
: t
lstm_842/while/Identity_2Identitylstm_842/while/add:z:0^lstm_842/while/NoOp*
T0*
_output_shapes
: ?
lstm_842/while/Identity_3IdentityClstm_842/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_842/while/NoOp*
T0*
_output_shapes
: ?
lstm_842/while/Identity_4Identity&lstm_842/while/lstm_cell_683/mul_2:z:0^lstm_842/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_842/while/Identity_5Identity&lstm_842/while/lstm_cell_683/add_1:z:0^lstm_842/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_842/while/NoOpNoOp4^lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp3^lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp5^lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_842_while_identity lstm_842/while/Identity:output:0"?
lstm_842_while_identity_1"lstm_842/while/Identity_1:output:0"?
lstm_842_while_identity_2"lstm_842/while/Identity_2:output:0"?
lstm_842_while_identity_3"lstm_842/while/Identity_3:output:0"?
lstm_842_while_identity_4"lstm_842/while/Identity_4:output:0"?
lstm_842_while_identity_5"lstm_842/while/Identity_5:output:0"T
'lstm_842_while_lstm_842_strided_slice_1)lstm_842_while_lstm_842_strided_slice_1_0"~
<lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource>lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource_0"?
=lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource?lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource_0"|
;lstm_842_while_lstm_cell_683_matmul_readvariableop_resource=lstm_842_while_lstm_cell_683_matmul_readvariableop_resource_0"?
clstm_842_while_tensorarrayv2read_tensorlistgetitem_lstm_842_tensorarrayunstack_tensorlistfromtensorelstm_842_while_tensorarrayv2read_tensorlistgetitem_lstm_842_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp3lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp2h
2lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp2lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp2l
4lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp4lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4137901

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
while_cond_4137360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4137360___redundant_placeholder05
1while_while_cond_4137360___redundant_placeholder15
1while_while_cond_4137360___redundant_placeholder25
1while_while_cond_4137360___redundant_placeholder3
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
/__inference_lstm_cell_681_layer_call_fn_4137624

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
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4132639o
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
?
E__inference_lstm_840_layer_call_and_return_conditional_losses_4132722

inputs(
lstm_cell_681_4132640:	?(
lstm_cell_681_4132642:	d?$
lstm_cell_681_4132644:	?
identity??%lstm_cell_681/StatefulPartitionedCall?while;
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
%lstm_cell_681/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_681_4132640lstm_cell_681_4132642lstm_cell_681_4132644*
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
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4132639n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_681_4132640lstm_cell_681_4132642lstm_cell_681_4132644*
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
while_body_4132653*
condR
while_cond_4132652*K
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
NoOpNoOp&^lstm_cell_681/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_681/StatefulPartitionedCall%lstm_cell_681/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*sequential_280_lstm_842_while_cond_4132481L
Hsequential_280_lstm_842_while_sequential_280_lstm_842_while_loop_counterR
Nsequential_280_lstm_842_while_sequential_280_lstm_842_while_maximum_iterations-
)sequential_280_lstm_842_while_placeholder/
+sequential_280_lstm_842_while_placeholder_1/
+sequential_280_lstm_842_while_placeholder_2/
+sequential_280_lstm_842_while_placeholder_3N
Jsequential_280_lstm_842_while_less_sequential_280_lstm_842_strided_slice_1e
asequential_280_lstm_842_while_sequential_280_lstm_842_while_cond_4132481___redundant_placeholder0e
asequential_280_lstm_842_while_sequential_280_lstm_842_while_cond_4132481___redundant_placeholder1e
asequential_280_lstm_842_while_sequential_280_lstm_842_while_cond_4132481___redundant_placeholder2e
asequential_280_lstm_842_while_sequential_280_lstm_842_while_cond_4132481___redundant_placeholder3*
&sequential_280_lstm_842_while_identity
?
"sequential_280/lstm_842/while/LessLess)sequential_280_lstm_842_while_placeholderJsequential_280_lstm_842_while_less_sequential_280_lstm_842_strided_slice_1*
T0*
_output_shapes
: {
&sequential_280/lstm_842/while/IdentityIdentity&sequential_280/lstm_842/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_280_lstm_842_while_identity/sequential_280/lstm_842/while/Identity:output:0*(
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
while_body_4137361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_683_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_683_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_683_matmul_readvariableop_resource:2(F
4while_lstm_cell_683_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_683_biasadd_readvariableop_resource:(??*while/lstm_cell_683/BiasAdd/ReadVariableOp?)while/lstm_cell_683/MatMul/ReadVariableOp?+while/lstm_cell_683/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4132572
lstm_840_inputW
Dsequential_280_lstm_840_lstm_cell_681_matmul_readvariableop_resource:	?Y
Fsequential_280_lstm_840_lstm_cell_681_matmul_1_readvariableop_resource:	d?T
Esequential_280_lstm_840_lstm_cell_681_biasadd_readvariableop_resource:	?W
Dsequential_280_lstm_841_lstm_cell_682_matmul_readvariableop_resource:	d?Y
Fsequential_280_lstm_841_lstm_cell_682_matmul_1_readvariableop_resource:	2?T
Esequential_280_lstm_841_lstm_cell_682_biasadd_readvariableop_resource:	?V
Dsequential_280_lstm_842_lstm_cell_683_matmul_readvariableop_resource:2(X
Fsequential_280_lstm_842_lstm_cell_683_matmul_1_readvariableop_resource:
(S
Esequential_280_lstm_842_lstm_cell_683_biasadd_readvariableop_resource:(I
7sequential_280_dense_280_matmul_readvariableop_resource:
F
8sequential_280_dense_280_biasadd_readvariableop_resource:
identity??/sequential_280/dense_280/BiasAdd/ReadVariableOp?.sequential_280/dense_280/MatMul/ReadVariableOp?<sequential_280/lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp?;sequential_280/lstm_840/lstm_cell_681/MatMul/ReadVariableOp?=sequential_280/lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp?sequential_280/lstm_840/while?<sequential_280/lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp?;sequential_280/lstm_841/lstm_cell_682/MatMul/ReadVariableOp?=sequential_280/lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp?sequential_280/lstm_841/while?<sequential_280/lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp?;sequential_280/lstm_842/lstm_cell_683/MatMul/ReadVariableOp?=sequential_280/lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp?sequential_280/lstm_842/while[
sequential_280/lstm_840/ShapeShapelstm_840_input*
T0*
_output_shapes
:u
+sequential_280/lstm_840/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_280/lstm_840/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_280/lstm_840/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_280/lstm_840/strided_sliceStridedSlice&sequential_280/lstm_840/Shape:output:04sequential_280/lstm_840/strided_slice/stack:output:06sequential_280/lstm_840/strided_slice/stack_1:output:06sequential_280/lstm_840/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_280/lstm_840/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_280/lstm_840/zeros/packedPack.sequential_280/lstm_840/strided_slice:output:0/sequential_280/lstm_840/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_280/lstm_840/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_280/lstm_840/zerosFill-sequential_280/lstm_840/zeros/packed:output:0,sequential_280/lstm_840/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_280/lstm_840/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_280/lstm_840/zeros_1/packedPack.sequential_280/lstm_840/strided_slice:output:01sequential_280/lstm_840/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_280/lstm_840/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_280/lstm_840/zeros_1Fill/sequential_280/lstm_840/zeros_1/packed:output:0.sequential_280/lstm_840/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_280/lstm_840/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_280/lstm_840/transpose	Transposelstm_840_input/sequential_280/lstm_840/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_280/lstm_840/Shape_1Shape%sequential_280/lstm_840/transpose:y:0*
T0*
_output_shapes
:w
-sequential_280/lstm_840/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_280/lstm_840/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_280/lstm_840/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_280/lstm_840/strided_slice_1StridedSlice(sequential_280/lstm_840/Shape_1:output:06sequential_280/lstm_840/strided_slice_1/stack:output:08sequential_280/lstm_840/strided_slice_1/stack_1:output:08sequential_280/lstm_840/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_280/lstm_840/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_280/lstm_840/TensorArrayV2TensorListReserve<sequential_280/lstm_840/TensorArrayV2/element_shape:output:00sequential_280/lstm_840/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_280/lstm_840/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_280/lstm_840/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_280/lstm_840/transpose:y:0Vsequential_280/lstm_840/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_280/lstm_840/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_280/lstm_840/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_280/lstm_840/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_280/lstm_840/strided_slice_2StridedSlice%sequential_280/lstm_840/transpose:y:06sequential_280/lstm_840/strided_slice_2/stack:output:08sequential_280/lstm_840/strided_slice_2/stack_1:output:08sequential_280/lstm_840/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_280/lstm_840/lstm_cell_681/MatMul/ReadVariableOpReadVariableOpDsequential_280_lstm_840_lstm_cell_681_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_280/lstm_840/lstm_cell_681/MatMulMatMul0sequential_280/lstm_840/strided_slice_2:output:0Csequential_280/lstm_840/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_280/lstm_840/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOpFsequential_280_lstm_840_lstm_cell_681_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_280/lstm_840/lstm_cell_681/MatMul_1MatMul&sequential_280/lstm_840/zeros:output:0Esequential_280/lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_280/lstm_840/lstm_cell_681/addAddV26sequential_280/lstm_840/lstm_cell_681/MatMul:product:08sequential_280/lstm_840/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_280/lstm_840/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOpEsequential_280_lstm_840_lstm_cell_681_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_280/lstm_840/lstm_cell_681/BiasAddBiasAdd-sequential_280/lstm_840/lstm_cell_681/add:z:0Dsequential_280/lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_280/lstm_840/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_280/lstm_840/lstm_cell_681/splitSplit>sequential_280/lstm_840/lstm_cell_681/split/split_dim:output:06sequential_280/lstm_840/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_280/lstm_840/lstm_cell_681/SigmoidSigmoid4sequential_280/lstm_840/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_280/lstm_840/lstm_cell_681/Sigmoid_1Sigmoid4sequential_280/lstm_840/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_280/lstm_840/lstm_cell_681/mulMul3sequential_280/lstm_840/lstm_cell_681/Sigmoid_1:y:0(sequential_280/lstm_840/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_280/lstm_840/lstm_cell_681/ReluRelu4sequential_280/lstm_840/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_280/lstm_840/lstm_cell_681/mul_1Mul1sequential_280/lstm_840/lstm_cell_681/Sigmoid:y:08sequential_280/lstm_840/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_280/lstm_840/lstm_cell_681/add_1AddV2-sequential_280/lstm_840/lstm_cell_681/mul:z:0/sequential_280/lstm_840/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_280/lstm_840/lstm_cell_681/Sigmoid_2Sigmoid4sequential_280/lstm_840/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_280/lstm_840/lstm_cell_681/Relu_1Relu/sequential_280/lstm_840/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_280/lstm_840/lstm_cell_681/mul_2Mul3sequential_280/lstm_840/lstm_cell_681/Sigmoid_2:y:0:sequential_280/lstm_840/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_280/lstm_840/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_280/lstm_840/TensorArrayV2_1TensorListReserve>sequential_280/lstm_840/TensorArrayV2_1/element_shape:output:00sequential_280/lstm_840/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_280/lstm_840/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_280/lstm_840/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_280/lstm_840/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_280/lstm_840/whileWhile3sequential_280/lstm_840/while/loop_counter:output:09sequential_280/lstm_840/while/maximum_iterations:output:0%sequential_280/lstm_840/time:output:00sequential_280/lstm_840/TensorArrayV2_1:handle:0&sequential_280/lstm_840/zeros:output:0(sequential_280/lstm_840/zeros_1:output:00sequential_280/lstm_840/strided_slice_1:output:0Osequential_280/lstm_840/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_280_lstm_840_lstm_cell_681_matmul_readvariableop_resourceFsequential_280_lstm_840_lstm_cell_681_matmul_1_readvariableop_resourceEsequential_280_lstm_840_lstm_cell_681_biasadd_readvariableop_resource*
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
*sequential_280_lstm_840_while_body_4132204*6
cond.R,
*sequential_280_lstm_840_while_cond_4132203*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_280/lstm_840/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_280/lstm_840/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_280/lstm_840/while:output:3Qsequential_280/lstm_840/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_280/lstm_840/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_280/lstm_840/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_280/lstm_840/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_280/lstm_840/strided_slice_3StridedSliceCsequential_280/lstm_840/TensorArrayV2Stack/TensorListStack:tensor:06sequential_280/lstm_840/strided_slice_3/stack:output:08sequential_280/lstm_840/strided_slice_3/stack_1:output:08sequential_280/lstm_840/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_280/lstm_840/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_280/lstm_840/transpose_1	TransposeCsequential_280/lstm_840/TensorArrayV2Stack/TensorListStack:tensor:01sequential_280/lstm_840/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_280/lstm_840/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_280/lstm_841/ShapeShape'sequential_280/lstm_840/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_280/lstm_841/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_280/lstm_841/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_280/lstm_841/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_280/lstm_841/strided_sliceStridedSlice&sequential_280/lstm_841/Shape:output:04sequential_280/lstm_841/strided_slice/stack:output:06sequential_280/lstm_841/strided_slice/stack_1:output:06sequential_280/lstm_841/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_280/lstm_841/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_280/lstm_841/zeros/packedPack.sequential_280/lstm_841/strided_slice:output:0/sequential_280/lstm_841/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_280/lstm_841/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_280/lstm_841/zerosFill-sequential_280/lstm_841/zeros/packed:output:0,sequential_280/lstm_841/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_280/lstm_841/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_280/lstm_841/zeros_1/packedPack.sequential_280/lstm_841/strided_slice:output:01sequential_280/lstm_841/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_280/lstm_841/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_280/lstm_841/zeros_1Fill/sequential_280/lstm_841/zeros_1/packed:output:0.sequential_280/lstm_841/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_280/lstm_841/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_280/lstm_841/transpose	Transpose'sequential_280/lstm_840/transpose_1:y:0/sequential_280/lstm_841/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_280/lstm_841/Shape_1Shape%sequential_280/lstm_841/transpose:y:0*
T0*
_output_shapes
:w
-sequential_280/lstm_841/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_280/lstm_841/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_280/lstm_841/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_280/lstm_841/strided_slice_1StridedSlice(sequential_280/lstm_841/Shape_1:output:06sequential_280/lstm_841/strided_slice_1/stack:output:08sequential_280/lstm_841/strided_slice_1/stack_1:output:08sequential_280/lstm_841/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_280/lstm_841/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_280/lstm_841/TensorArrayV2TensorListReserve<sequential_280/lstm_841/TensorArrayV2/element_shape:output:00sequential_280/lstm_841/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_280/lstm_841/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_280/lstm_841/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_280/lstm_841/transpose:y:0Vsequential_280/lstm_841/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_280/lstm_841/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_280/lstm_841/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_280/lstm_841/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_280/lstm_841/strided_slice_2StridedSlice%sequential_280/lstm_841/transpose:y:06sequential_280/lstm_841/strided_slice_2/stack:output:08sequential_280/lstm_841/strided_slice_2/stack_1:output:08sequential_280/lstm_841/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_280/lstm_841/lstm_cell_682/MatMul/ReadVariableOpReadVariableOpDsequential_280_lstm_841_lstm_cell_682_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_280/lstm_841/lstm_cell_682/MatMulMatMul0sequential_280/lstm_841/strided_slice_2:output:0Csequential_280/lstm_841/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_280/lstm_841/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOpFsequential_280_lstm_841_lstm_cell_682_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_280/lstm_841/lstm_cell_682/MatMul_1MatMul&sequential_280/lstm_841/zeros:output:0Esequential_280/lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_280/lstm_841/lstm_cell_682/addAddV26sequential_280/lstm_841/lstm_cell_682/MatMul:product:08sequential_280/lstm_841/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_280/lstm_841/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOpEsequential_280_lstm_841_lstm_cell_682_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_280/lstm_841/lstm_cell_682/BiasAddBiasAdd-sequential_280/lstm_841/lstm_cell_682/add:z:0Dsequential_280/lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_280/lstm_841/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_280/lstm_841/lstm_cell_682/splitSplit>sequential_280/lstm_841/lstm_cell_682/split/split_dim:output:06sequential_280/lstm_841/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_280/lstm_841/lstm_cell_682/SigmoidSigmoid4sequential_280/lstm_841/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_280/lstm_841/lstm_cell_682/Sigmoid_1Sigmoid4sequential_280/lstm_841/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_280/lstm_841/lstm_cell_682/mulMul3sequential_280/lstm_841/lstm_cell_682/Sigmoid_1:y:0(sequential_280/lstm_841/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_280/lstm_841/lstm_cell_682/ReluRelu4sequential_280/lstm_841/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_280/lstm_841/lstm_cell_682/mul_1Mul1sequential_280/lstm_841/lstm_cell_682/Sigmoid:y:08sequential_280/lstm_841/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_280/lstm_841/lstm_cell_682/add_1AddV2-sequential_280/lstm_841/lstm_cell_682/mul:z:0/sequential_280/lstm_841/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_280/lstm_841/lstm_cell_682/Sigmoid_2Sigmoid4sequential_280/lstm_841/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_280/lstm_841/lstm_cell_682/Relu_1Relu/sequential_280/lstm_841/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_280/lstm_841/lstm_cell_682/mul_2Mul3sequential_280/lstm_841/lstm_cell_682/Sigmoid_2:y:0:sequential_280/lstm_841/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_280/lstm_841/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_280/lstm_841/TensorArrayV2_1TensorListReserve>sequential_280/lstm_841/TensorArrayV2_1/element_shape:output:00sequential_280/lstm_841/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_280/lstm_841/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_280/lstm_841/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_280/lstm_841/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_280/lstm_841/whileWhile3sequential_280/lstm_841/while/loop_counter:output:09sequential_280/lstm_841/while/maximum_iterations:output:0%sequential_280/lstm_841/time:output:00sequential_280/lstm_841/TensorArrayV2_1:handle:0&sequential_280/lstm_841/zeros:output:0(sequential_280/lstm_841/zeros_1:output:00sequential_280/lstm_841/strided_slice_1:output:0Osequential_280/lstm_841/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_280_lstm_841_lstm_cell_682_matmul_readvariableop_resourceFsequential_280_lstm_841_lstm_cell_682_matmul_1_readvariableop_resourceEsequential_280_lstm_841_lstm_cell_682_biasadd_readvariableop_resource*
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
*sequential_280_lstm_841_while_body_4132343*6
cond.R,
*sequential_280_lstm_841_while_cond_4132342*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_280/lstm_841/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_280/lstm_841/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_280/lstm_841/while:output:3Qsequential_280/lstm_841/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_280/lstm_841/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_280/lstm_841/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_280/lstm_841/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_280/lstm_841/strided_slice_3StridedSliceCsequential_280/lstm_841/TensorArrayV2Stack/TensorListStack:tensor:06sequential_280/lstm_841/strided_slice_3/stack:output:08sequential_280/lstm_841/strided_slice_3/stack_1:output:08sequential_280/lstm_841/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_280/lstm_841/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_280/lstm_841/transpose_1	TransposeCsequential_280/lstm_841/TensorArrayV2Stack/TensorListStack:tensor:01sequential_280/lstm_841/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_280/lstm_841/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_280/lstm_842/ShapeShape'sequential_280/lstm_841/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_280/lstm_842/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_280/lstm_842/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_280/lstm_842/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_280/lstm_842/strided_sliceStridedSlice&sequential_280/lstm_842/Shape:output:04sequential_280/lstm_842/strided_slice/stack:output:06sequential_280/lstm_842/strided_slice/stack_1:output:06sequential_280/lstm_842/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_280/lstm_842/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_280/lstm_842/zeros/packedPack.sequential_280/lstm_842/strided_slice:output:0/sequential_280/lstm_842/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_280/lstm_842/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_280/lstm_842/zerosFill-sequential_280/lstm_842/zeros/packed:output:0,sequential_280/lstm_842/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_280/lstm_842/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_280/lstm_842/zeros_1/packedPack.sequential_280/lstm_842/strided_slice:output:01sequential_280/lstm_842/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_280/lstm_842/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_280/lstm_842/zeros_1Fill/sequential_280/lstm_842/zeros_1/packed:output:0.sequential_280/lstm_842/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_280/lstm_842/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_280/lstm_842/transpose	Transpose'sequential_280/lstm_841/transpose_1:y:0/sequential_280/lstm_842/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_280/lstm_842/Shape_1Shape%sequential_280/lstm_842/transpose:y:0*
T0*
_output_shapes
:w
-sequential_280/lstm_842/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_280/lstm_842/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_280/lstm_842/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_280/lstm_842/strided_slice_1StridedSlice(sequential_280/lstm_842/Shape_1:output:06sequential_280/lstm_842/strided_slice_1/stack:output:08sequential_280/lstm_842/strided_slice_1/stack_1:output:08sequential_280/lstm_842/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_280/lstm_842/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_280/lstm_842/TensorArrayV2TensorListReserve<sequential_280/lstm_842/TensorArrayV2/element_shape:output:00sequential_280/lstm_842/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_280/lstm_842/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_280/lstm_842/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_280/lstm_842/transpose:y:0Vsequential_280/lstm_842/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_280/lstm_842/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_280/lstm_842/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_280/lstm_842/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_280/lstm_842/strided_slice_2StridedSlice%sequential_280/lstm_842/transpose:y:06sequential_280/lstm_842/strided_slice_2/stack:output:08sequential_280/lstm_842/strided_slice_2/stack_1:output:08sequential_280/lstm_842/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_280/lstm_842/lstm_cell_683/MatMul/ReadVariableOpReadVariableOpDsequential_280_lstm_842_lstm_cell_683_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_280/lstm_842/lstm_cell_683/MatMulMatMul0sequential_280/lstm_842/strided_slice_2:output:0Csequential_280/lstm_842/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_280/lstm_842/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOpFsequential_280_lstm_842_lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_280/lstm_842/lstm_cell_683/MatMul_1MatMul&sequential_280/lstm_842/zeros:output:0Esequential_280/lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_280/lstm_842/lstm_cell_683/addAddV26sequential_280/lstm_842/lstm_cell_683/MatMul:product:08sequential_280/lstm_842/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_280/lstm_842/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOpEsequential_280_lstm_842_lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_280/lstm_842/lstm_cell_683/BiasAddBiasAdd-sequential_280/lstm_842/lstm_cell_683/add:z:0Dsequential_280/lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_280/lstm_842/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_280/lstm_842/lstm_cell_683/splitSplit>sequential_280/lstm_842/lstm_cell_683/split/split_dim:output:06sequential_280/lstm_842/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_280/lstm_842/lstm_cell_683/SigmoidSigmoid4sequential_280/lstm_842/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_280/lstm_842/lstm_cell_683/Sigmoid_1Sigmoid4sequential_280/lstm_842/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_280/lstm_842/lstm_cell_683/mulMul3sequential_280/lstm_842/lstm_cell_683/Sigmoid_1:y:0(sequential_280/lstm_842/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_280/lstm_842/lstm_cell_683/ReluRelu4sequential_280/lstm_842/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_280/lstm_842/lstm_cell_683/mul_1Mul1sequential_280/lstm_842/lstm_cell_683/Sigmoid:y:08sequential_280/lstm_842/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_280/lstm_842/lstm_cell_683/add_1AddV2-sequential_280/lstm_842/lstm_cell_683/mul:z:0/sequential_280/lstm_842/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_280/lstm_842/lstm_cell_683/Sigmoid_2Sigmoid4sequential_280/lstm_842/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_280/lstm_842/lstm_cell_683/Relu_1Relu/sequential_280/lstm_842/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_280/lstm_842/lstm_cell_683/mul_2Mul3sequential_280/lstm_842/lstm_cell_683/Sigmoid_2:y:0:sequential_280/lstm_842/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_280/lstm_842/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_280/lstm_842/TensorArrayV2_1TensorListReserve>sequential_280/lstm_842/TensorArrayV2_1/element_shape:output:00sequential_280/lstm_842/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_280/lstm_842/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_280/lstm_842/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_280/lstm_842/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_280/lstm_842/whileWhile3sequential_280/lstm_842/while/loop_counter:output:09sequential_280/lstm_842/while/maximum_iterations:output:0%sequential_280/lstm_842/time:output:00sequential_280/lstm_842/TensorArrayV2_1:handle:0&sequential_280/lstm_842/zeros:output:0(sequential_280/lstm_842/zeros_1:output:00sequential_280/lstm_842/strided_slice_1:output:0Osequential_280/lstm_842/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_280_lstm_842_lstm_cell_683_matmul_readvariableop_resourceFsequential_280_lstm_842_lstm_cell_683_matmul_1_readvariableop_resourceEsequential_280_lstm_842_lstm_cell_683_biasadd_readvariableop_resource*
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
*sequential_280_lstm_842_while_body_4132482*6
cond.R,
*sequential_280_lstm_842_while_cond_4132481*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_280/lstm_842/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_280/lstm_842/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_280/lstm_842/while:output:3Qsequential_280/lstm_842/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_280/lstm_842/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_280/lstm_842/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_280/lstm_842/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_280/lstm_842/strided_slice_3StridedSliceCsequential_280/lstm_842/TensorArrayV2Stack/TensorListStack:tensor:06sequential_280/lstm_842/strided_slice_3/stack:output:08sequential_280/lstm_842/strided_slice_3/stack_1:output:08sequential_280/lstm_842/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_280/lstm_842/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_280/lstm_842/transpose_1	TransposeCsequential_280/lstm_842/TensorArrayV2Stack/TensorListStack:tensor:01sequential_280/lstm_842/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_280/lstm_842/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_280/dense_280/MatMul/ReadVariableOpReadVariableOp7sequential_280_dense_280_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_280/dense_280/MatMulMatMul0sequential_280/lstm_842/strided_slice_3:output:06sequential_280/dense_280/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_280/dense_280/BiasAdd/ReadVariableOpReadVariableOp8sequential_280_dense_280_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_280/dense_280/BiasAddBiasAdd)sequential_280/dense_280/MatMul:product:07sequential_280/dense_280/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_280/dense_280/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_280/dense_280/BiasAdd/ReadVariableOp/^sequential_280/dense_280/MatMul/ReadVariableOp=^sequential_280/lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp<^sequential_280/lstm_840/lstm_cell_681/MatMul/ReadVariableOp>^sequential_280/lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp^sequential_280/lstm_840/while=^sequential_280/lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp<^sequential_280/lstm_841/lstm_cell_682/MatMul/ReadVariableOp>^sequential_280/lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp^sequential_280/lstm_841/while=^sequential_280/lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp<^sequential_280/lstm_842/lstm_cell_683/MatMul/ReadVariableOp>^sequential_280/lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp^sequential_280/lstm_842/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_280/dense_280/BiasAdd/ReadVariableOp/sequential_280/dense_280/BiasAdd/ReadVariableOp2`
.sequential_280/dense_280/MatMul/ReadVariableOp.sequential_280/dense_280/MatMul/ReadVariableOp2|
<sequential_280/lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp<sequential_280/lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp2z
;sequential_280/lstm_840/lstm_cell_681/MatMul/ReadVariableOp;sequential_280/lstm_840/lstm_cell_681/MatMul/ReadVariableOp2~
=sequential_280/lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp=sequential_280/lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp2>
sequential_280/lstm_840/whilesequential_280/lstm_840/while2|
<sequential_280/lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp<sequential_280/lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp2z
;sequential_280/lstm_841/lstm_cell_682/MatMul/ReadVariableOp;sequential_280/lstm_841/lstm_cell_682/MatMul/ReadVariableOp2~
=sequential_280/lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp=sequential_280/lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp2>
sequential_280/lstm_841/whilesequential_280/lstm_841/while2|
<sequential_280/lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp<sequential_280/lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp2z
;sequential_280/lstm_842/lstm_cell_683/MatMul/ReadVariableOp;sequential_280/lstm_842/lstm_cell_683/MatMul/ReadVariableOp2~
=sequential_280/lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp=sequential_280/lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp2>
sequential_280/lstm_842/whilesequential_280/lstm_842/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_840_input
?8
?
while_body_4134368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_682_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_682_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_682_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_682_matmul_readvariableop_resource:	d?G
4while_lstm_cell_682_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_682_biasadd_readvariableop_resource:	???*while/lstm_cell_682/BiasAdd/ReadVariableOp?)while/lstm_cell_682/MatMul/ReadVariableOp?+while/lstm_cell_682/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_682/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_682_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_682/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_682_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_682/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_682/addAddV2$while/lstm_cell_682/MatMul:product:0&while/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_682_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_682/BiasAddBiasAddwhile/lstm_cell_682/add:z:02while/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_682/splitSplit,while/lstm_cell_682/split/split_dim:output:0$while/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_682/SigmoidSigmoid"while/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_1Sigmoid"while/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mulMul!while/lstm_cell_682/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_682/ReluRelu"while/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_1Mulwhile/lstm_cell_682/Sigmoid:y:0&while/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/add_1AddV2while/lstm_cell_682/mul:z:0while/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_2Sigmoid"while/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_682/Relu_1Reluwhile/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_2Mul!while/lstm_cell_682/Sigmoid_2:y:0(while/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_682/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_682/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_682/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_682/BiasAdd/ReadVariableOp*^while/lstm_cell_682/MatMul/ReadVariableOp,^while/lstm_cell_682/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_682_biasadd_readvariableop_resource5while_lstm_cell_682_biasadd_readvariableop_resource_0"n
4while_lstm_cell_682_matmul_1_readvariableop_resource6while_lstm_cell_682_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_682_matmul_readvariableop_resource4while_lstm_cell_682_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_682/BiasAdd/ReadVariableOp*while/lstm_cell_682/BiasAdd/ReadVariableOp2V
)while/lstm_cell_682/MatMul/ReadVariableOp)while/lstm_cell_682/MatMul/ReadVariableOp2Z
+while/lstm_cell_682/MatMul_1/ReadVariableOp+while/lstm_cell_682/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_841_layer_call_fn_4136389

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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4133921s
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
?#
?
while_body_4133544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_683_4133568_0:2(/
while_lstm_cell_683_4133570_0:
(+
while_lstm_cell_683_4133572_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_683_4133568:2(-
while_lstm_cell_683_4133570:
()
while_lstm_cell_683_4133572:(??+while/lstm_cell_683/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_683/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_683_4133568_0while_lstm_cell_683_4133570_0while_lstm_cell_683_4133572_0*
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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4133485?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_683/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_683/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_683/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_683/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_683_4133568while_lstm_cell_683_4133568_0"<
while_lstm_cell_683_4133570while_lstm_cell_683_4133570_0"<
while_lstm_cell_683_4133572while_lstm_cell_683_4133572_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_683/StatefulPartitionedCall+while/lstm_cell_683/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4136272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_681_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_681_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_681_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_681_matmul_readvariableop_resource:	?G
4while_lstm_cell_681_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_681_biasadd_readvariableop_resource:	???*while/lstm_cell_681/BiasAdd/ReadVariableOp?)while/lstm_cell_681/MatMul/ReadVariableOp?+while/lstm_cell_681/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_681/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_681_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_681/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_681_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_681/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_681/addAddV2$while/lstm_cell_681/MatMul:product:0&while/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_681_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_681/BiasAddBiasAddwhile/lstm_cell_681/add:z:02while/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_681/splitSplit,while/lstm_cell_681/split/split_dim:output:0$while/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_681/SigmoidSigmoid"while/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_1Sigmoid"while/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mulMul!while/lstm_cell_681/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_681/ReluRelu"while/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_1Mulwhile/lstm_cell_681/Sigmoid:y:0&while/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/add_1AddV2while/lstm_cell_681/mul:z:0while/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_2Sigmoid"while/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_681/Relu_1Reluwhile/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_2Mul!while/lstm_cell_681/Sigmoid_2:y:0(while/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_681/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_681/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_681/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_681/BiasAdd/ReadVariableOp*^while/lstm_cell_681/MatMul/ReadVariableOp,^while/lstm_cell_681/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_681_biasadd_readvariableop_resource5while_lstm_cell_681_biasadd_readvariableop_resource_0"n
4while_lstm_cell_681_matmul_1_readvariableop_resource6while_lstm_cell_681_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_681_matmul_readvariableop_resource4while_lstm_cell_681_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_681/BiasAdd/ReadVariableOp*while/lstm_cell_681/BiasAdd/ReadVariableOp2V
)while/lstm_cell_681/MatMul/ReadVariableOp)while/lstm_cell_681/MatMul/ReadVariableOp2Z
+while/lstm_cell_681/MatMul_1/ReadVariableOp+while/lstm_cell_681/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_280_lstm_840_while_cond_4132203L
Hsequential_280_lstm_840_while_sequential_280_lstm_840_while_loop_counterR
Nsequential_280_lstm_840_while_sequential_280_lstm_840_while_maximum_iterations-
)sequential_280_lstm_840_while_placeholder/
+sequential_280_lstm_840_while_placeholder_1/
+sequential_280_lstm_840_while_placeholder_2/
+sequential_280_lstm_840_while_placeholder_3N
Jsequential_280_lstm_840_while_less_sequential_280_lstm_840_strided_slice_1e
asequential_280_lstm_840_while_sequential_280_lstm_840_while_cond_4132203___redundant_placeholder0e
asequential_280_lstm_840_while_sequential_280_lstm_840_while_cond_4132203___redundant_placeholder1e
asequential_280_lstm_840_while_sequential_280_lstm_840_while_cond_4132203___redundant_placeholder2e
asequential_280_lstm_840_while_sequential_280_lstm_840_while_cond_4132203___redundant_placeholder3*
&sequential_280_lstm_840_while_identity
?
"sequential_280/lstm_840/while/LessLess)sequential_280_lstm_840_while_placeholderJsequential_280_lstm_840_while_less_sequential_280_lstm_840_strided_slice_1*
T0*
_output_shapes
: {
&sequential_280/lstm_840/while/IdentityIdentity&sequential_280/lstm_840/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_280_lstm_840_while_identity/sequential_280/lstm_840/while/Identity:output:0*(
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
*__inference_lstm_840_layer_call_fn_4135751
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4132722|
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4135927
inputs_0?
,lstm_cell_681_matmul_readvariableop_resource:	?A
.lstm_cell_681_matmul_1_readvariableop_resource:	d?<
-lstm_cell_681_biasadd_readvariableop_resource:	?
identity??$lstm_cell_681/BiasAdd/ReadVariableOp?#lstm_cell_681/MatMul/ReadVariableOp?%lstm_cell_681/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_681/MatMul/ReadVariableOpReadVariableOp,lstm_cell_681_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_681/MatMulMatMulstrided_slice_2:output:0+lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_681_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_681/MatMul_1MatMulzeros:output:0-lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_681/addAddV2lstm_cell_681/MatMul:product:0 lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_681_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_681/BiasAddBiasAddlstm_cell_681/add:z:0,lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_681/splitSplit&lstm_cell_681/split/split_dim:output:0lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_681/SigmoidSigmoidlstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_1Sigmoidlstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_681/mulMullstm_cell_681/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_681/ReluRelulstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_1Mullstm_cell_681/Sigmoid:y:0 lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_681/add_1AddV2lstm_cell_681/mul:z:0lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_2Sigmoidlstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_681/Relu_1Relulstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_2Mullstm_cell_681/Sigmoid_2:y:0"lstm_cell_681/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_681_matmul_readvariableop_resource.lstm_cell_681_matmul_1_readvariableop_resource-lstm_cell_681_biasadd_readvariableop_resource*
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
while_body_4135843*
condR
while_cond_4135842*K
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
NoOpNoOp%^lstm_cell_681/BiasAdd/ReadVariableOp$^lstm_cell_681/MatMul/ReadVariableOp&^lstm_cell_681/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_681/BiasAdd/ReadVariableOp$lstm_cell_681/BiasAdd/ReadVariableOp2J
#lstm_cell_681/MatMul/ReadVariableOp#lstm_cell_681/MatMul/ReadVariableOp2N
%lstm_cell_681/MatMul_1/ReadVariableOp%lstm_cell_681/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4132639

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
?#
?
while_body_4132653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_681_4132677_0:	?0
while_lstm_cell_681_4132679_0:	d?,
while_lstm_cell_681_4132681_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_681_4132677:	?.
while_lstm_cell_681_4132679:	d?*
while_lstm_cell_681_4132681:	???+while/lstm_cell_681/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_681/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_681_4132677_0while_lstm_cell_681_4132679_0while_lstm_cell_681_4132681_0*
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
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4132639?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_681/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_681/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_681/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_681/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_681_4132677while_lstm_cell_681_4132677_0"<
while_lstm_cell_681_4132679while_lstm_cell_681_4132679_0"<
while_lstm_cell_681_4132681while_lstm_cell_681_4132681_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_681/StatefulPartitionedCall+while/lstm_cell_681/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4135842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4135842___redundant_placeholder05
1while_while_cond_4135842___redundant_placeholder15
1while_while_cond_4135842___redundant_placeholder25
1while_while_cond_4135842___redundant_placeholder3
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136829

inputs?
,lstm_cell_682_matmul_readvariableop_resource:	d?A
.lstm_cell_682_matmul_1_readvariableop_resource:	2?<
-lstm_cell_682_biasadd_readvariableop_resource:	?
identity??$lstm_cell_682/BiasAdd/ReadVariableOp?#lstm_cell_682/MatMul/ReadVariableOp?%lstm_cell_682/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_682/MatMul/ReadVariableOpReadVariableOp,lstm_cell_682_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_682/MatMulMatMulstrided_slice_2:output:0+lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_682_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_682/MatMul_1MatMulzeros:output:0-lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_682/addAddV2lstm_cell_682/MatMul:product:0 lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_682_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_682/BiasAddBiasAddlstm_cell_682/add:z:0,lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_682/splitSplit&lstm_cell_682/split/split_dim:output:0lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_682/SigmoidSigmoidlstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_1Sigmoidlstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_682/mulMullstm_cell_682/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_682/ReluRelulstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_1Mullstm_cell_682/Sigmoid:y:0 lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_682/add_1AddV2lstm_cell_682/mul:z:0lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_2Sigmoidlstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_682/Relu_1Relulstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_2Mullstm_cell_682/Sigmoid_2:y:0"lstm_cell_682/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_682_matmul_readvariableop_resource.lstm_cell_682_matmul_1_readvariableop_resource-lstm_cell_682_biasadd_readvariableop_resource*
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
while_body_4136745*
condR
while_cond_4136744*K
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
NoOpNoOp%^lstm_cell_682/BiasAdd/ReadVariableOp$^lstm_cell_682/MatMul/ReadVariableOp&^lstm_cell_682/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_682/BiasAdd/ReadVariableOp$lstm_cell_682/BiasAdd/ReadVariableOp2J
#lstm_cell_682/MatMul/ReadVariableOp#lstm_cell_682/MatMul/ReadVariableOp2N
%lstm_cell_682/MatMul_1/ReadVariableOp%lstm_cell_682/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4138044
file_prefix/
+savev2_dense_280_kernel_read_readvariableop-
)savev2_dense_280_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_840_lstm_cell_840_kernel_read_readvariableopF
Bsavev2_lstm_840_lstm_cell_840_recurrent_kernel_read_readvariableop:
6savev2_lstm_840_lstm_cell_840_bias_read_readvariableop<
8savev2_lstm_841_lstm_cell_841_kernel_read_readvariableopF
Bsavev2_lstm_841_lstm_cell_841_recurrent_kernel_read_readvariableop:
6savev2_lstm_841_lstm_cell_841_bias_read_readvariableop<
8savev2_lstm_842_lstm_cell_842_kernel_read_readvariableopF
Bsavev2_lstm_842_lstm_cell_842_recurrent_kernel_read_readvariableop:
6savev2_lstm_842_lstm_cell_842_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_280_kernel_m_read_readvariableop4
0savev2_adam_dense_280_bias_m_read_readvariableopC
?savev2_adam_lstm_840_lstm_cell_840_kernel_m_read_readvariableopM
Isavev2_adam_lstm_840_lstm_cell_840_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_840_lstm_cell_840_bias_m_read_readvariableopC
?savev2_adam_lstm_841_lstm_cell_841_kernel_m_read_readvariableopM
Isavev2_adam_lstm_841_lstm_cell_841_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_841_lstm_cell_841_bias_m_read_readvariableopC
?savev2_adam_lstm_842_lstm_cell_842_kernel_m_read_readvariableopM
Isavev2_adam_lstm_842_lstm_cell_842_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_842_lstm_cell_842_bias_m_read_readvariableop6
2savev2_adam_dense_280_kernel_v_read_readvariableop4
0savev2_adam_dense_280_bias_v_read_readvariableopC
?savev2_adam_lstm_840_lstm_cell_840_kernel_v_read_readvariableopM
Isavev2_adam_lstm_840_lstm_cell_840_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_840_lstm_cell_840_bias_v_read_readvariableopC
?savev2_adam_lstm_841_lstm_cell_841_kernel_v_read_readvariableopM
Isavev2_adam_lstm_841_lstm_cell_841_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_841_lstm_cell_841_bias_v_read_readvariableopC
?savev2_adam_lstm_842_lstm_cell_842_kernel_v_read_readvariableopM
Isavev2_adam_lstm_842_lstm_cell_842_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_842_lstm_cell_842_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_280_kernel_read_readvariableop)savev2_dense_280_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_840_lstm_cell_840_kernel_read_readvariableopBsavev2_lstm_840_lstm_cell_840_recurrent_kernel_read_readvariableop6savev2_lstm_840_lstm_cell_840_bias_read_readvariableop8savev2_lstm_841_lstm_cell_841_kernel_read_readvariableopBsavev2_lstm_841_lstm_cell_841_recurrent_kernel_read_readvariableop6savev2_lstm_841_lstm_cell_841_bias_read_readvariableop8savev2_lstm_842_lstm_cell_842_kernel_read_readvariableopBsavev2_lstm_842_lstm_cell_842_recurrent_kernel_read_readvariableop6savev2_lstm_842_lstm_cell_842_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_280_kernel_m_read_readvariableop0savev2_adam_dense_280_bias_m_read_readvariableop?savev2_adam_lstm_840_lstm_cell_840_kernel_m_read_readvariableopIsavev2_adam_lstm_840_lstm_cell_840_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_840_lstm_cell_840_bias_m_read_readvariableop?savev2_adam_lstm_841_lstm_cell_841_kernel_m_read_readvariableopIsavev2_adam_lstm_841_lstm_cell_841_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_841_lstm_cell_841_bias_m_read_readvariableop?savev2_adam_lstm_842_lstm_cell_842_kernel_m_read_readvariableopIsavev2_adam_lstm_842_lstm_cell_842_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_842_lstm_cell_842_bias_m_read_readvariableop2savev2_adam_dense_280_kernel_v_read_readvariableop0savev2_adam_dense_280_bias_v_read_readvariableop?savev2_adam_lstm_840_lstm_cell_840_kernel_v_read_readvariableopIsavev2_adam_lstm_840_lstm_cell_840_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_840_lstm_cell_840_bias_v_read_readvariableop?savev2_adam_lstm_841_lstm_cell_841_kernel_v_read_readvariableopIsavev2_adam_lstm_841_lstm_cell_841_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_841_lstm_cell_841_bias_v_read_readvariableop?savev2_adam_lstm_842_lstm_cell_842_kernel_v_read_readvariableopIsavev2_adam_lstm_842_lstm_cell_842_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_842_lstm_cell_842_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_4136271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4136271___redundant_placeholder05
1while_while_cond_4136271___redundant_placeholder15
1while_while_cond_4136271___redundant_placeholder25
1while_while_cond_4136271___redundant_placeholder3
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
while_cond_4133352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4133352___redundant_placeholder05
1while_while_cond_4133352___redundant_placeholder15
1while_while_cond_4133352___redundant_placeholder25
1while_while_cond_4133352___redundant_placeholder3
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
*__inference_lstm_840_layer_call_fn_4135762
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4132913|
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
while_cond_4134202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4134202___redundant_placeholder05
1while_while_cond_4134202___redundant_placeholder15
1while_while_cond_4134202___redundant_placeholder25
1while_while_cond_4134202___redundant_placeholder3
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
while_body_4135843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_681_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_681_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_681_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_681_matmul_readvariableop_resource:	?G
4while_lstm_cell_681_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_681_biasadd_readvariableop_resource:	???*while/lstm_cell_681/BiasAdd/ReadVariableOp?)while/lstm_cell_681/MatMul/ReadVariableOp?+while/lstm_cell_681/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_681/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_681_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_681/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_681_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_681/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_681/addAddV2$while/lstm_cell_681/MatMul:product:0&while/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_681_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_681/BiasAddBiasAddwhile/lstm_cell_681/add:z:02while/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_681/splitSplit,while/lstm_cell_681/split/split_dim:output:0$while/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_681/SigmoidSigmoid"while/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_1Sigmoid"while/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mulMul!while/lstm_cell_681/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_681/ReluRelu"while/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_1Mulwhile/lstm_cell_681/Sigmoid:y:0&while/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/add_1AddV2while/lstm_cell_681/mul:z:0while/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_2Sigmoid"while/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_681/Relu_1Reluwhile/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_2Mul!while/lstm_cell_681/Sigmoid_2:y:0(while/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_681/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_681/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_681/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_681/BiasAdd/ReadVariableOp*^while/lstm_cell_681/MatMul/ReadVariableOp,^while/lstm_cell_681/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_681_biasadd_readvariableop_resource5while_lstm_cell_681_biasadd_readvariableop_resource_0"n
4while_lstm_cell_681_matmul_1_readvariableop_resource6while_lstm_cell_681_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_681_matmul_readvariableop_resource4while_lstm_cell_681_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_681/BiasAdd/ReadVariableOp*while/lstm_cell_681/BiasAdd/ReadVariableOp2V
)while/lstm_cell_681/MatMul/ReadVariableOp)while/lstm_cell_681/MatMul/ReadVariableOp2Z
+while/lstm_cell_681/MatMul_1/ReadVariableOp+while/lstm_cell_681/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_842_layer_call_fn_4136994
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4133613o
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
?T
?
*sequential_280_lstm_840_while_body_4132204L
Hsequential_280_lstm_840_while_sequential_280_lstm_840_while_loop_counterR
Nsequential_280_lstm_840_while_sequential_280_lstm_840_while_maximum_iterations-
)sequential_280_lstm_840_while_placeholder/
+sequential_280_lstm_840_while_placeholder_1/
+sequential_280_lstm_840_while_placeholder_2/
+sequential_280_lstm_840_while_placeholder_3K
Gsequential_280_lstm_840_while_sequential_280_lstm_840_strided_slice_1_0?
?sequential_280_lstm_840_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_840_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_280_lstm_840_while_lstm_cell_681_matmul_readvariableop_resource_0:	?a
Nsequential_280_lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource_0:	d?\
Msequential_280_lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource_0:	?*
&sequential_280_lstm_840_while_identity,
(sequential_280_lstm_840_while_identity_1,
(sequential_280_lstm_840_while_identity_2,
(sequential_280_lstm_840_while_identity_3,
(sequential_280_lstm_840_while_identity_4,
(sequential_280_lstm_840_while_identity_5I
Esequential_280_lstm_840_while_sequential_280_lstm_840_strided_slice_1?
?sequential_280_lstm_840_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_840_tensorarrayunstack_tensorlistfromtensor]
Jsequential_280_lstm_840_while_lstm_cell_681_matmul_readvariableop_resource:	?_
Lsequential_280_lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource:	d?Z
Ksequential_280_lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource:	???Bsequential_280/lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp?Asequential_280/lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp?Csequential_280/lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp?
Osequential_280/lstm_840/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_280/lstm_840/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_280_lstm_840_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_840_tensorarrayunstack_tensorlistfromtensor_0)sequential_280_lstm_840_while_placeholderXsequential_280/lstm_840/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_280/lstm_840/while/lstm_cell_681/MatMul/ReadVariableOpReadVariableOpLsequential_280_lstm_840_while_lstm_cell_681_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_280/lstm_840/while/lstm_cell_681/MatMulMatMulHsequential_280/lstm_840/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_280/lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_280/lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOpNsequential_280_lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_280/lstm_840/while/lstm_cell_681/MatMul_1MatMul+sequential_280_lstm_840_while_placeholder_2Ksequential_280/lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_280/lstm_840/while/lstm_cell_681/addAddV2<sequential_280/lstm_840/while/lstm_cell_681/MatMul:product:0>sequential_280/lstm_840/while/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_280/lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOpMsequential_280_lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_280/lstm_840/while/lstm_cell_681/BiasAddBiasAdd3sequential_280/lstm_840/while/lstm_cell_681/add:z:0Jsequential_280/lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_280/lstm_840/while/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_280/lstm_840/while/lstm_cell_681/splitSplitDsequential_280/lstm_840/while/lstm_cell_681/split/split_dim:output:0<sequential_280/lstm_840/while/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_280/lstm_840/while/lstm_cell_681/SigmoidSigmoid:sequential_280/lstm_840/while/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_280/lstm_840/while/lstm_cell_681/Sigmoid_1Sigmoid:sequential_280/lstm_840/while/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_280/lstm_840/while/lstm_cell_681/mulMul9sequential_280/lstm_840/while/lstm_cell_681/Sigmoid_1:y:0+sequential_280_lstm_840_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_280/lstm_840/while/lstm_cell_681/ReluRelu:sequential_280/lstm_840/while/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_280/lstm_840/while/lstm_cell_681/mul_1Mul7sequential_280/lstm_840/while/lstm_cell_681/Sigmoid:y:0>sequential_280/lstm_840/while/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_280/lstm_840/while/lstm_cell_681/add_1AddV23sequential_280/lstm_840/while/lstm_cell_681/mul:z:05sequential_280/lstm_840/while/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_280/lstm_840/while/lstm_cell_681/Sigmoid_2Sigmoid:sequential_280/lstm_840/while/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_280/lstm_840/while/lstm_cell_681/Relu_1Relu5sequential_280/lstm_840/while/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_280/lstm_840/while/lstm_cell_681/mul_2Mul9sequential_280/lstm_840/while/lstm_cell_681/Sigmoid_2:y:0@sequential_280/lstm_840/while/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_280/lstm_840/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_280_lstm_840_while_placeholder_1)sequential_280_lstm_840_while_placeholder5sequential_280/lstm_840/while/lstm_cell_681/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_280/lstm_840/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_280/lstm_840/while/addAddV2)sequential_280_lstm_840_while_placeholder,sequential_280/lstm_840/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_280/lstm_840/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_280/lstm_840/while/add_1AddV2Hsequential_280_lstm_840_while_sequential_280_lstm_840_while_loop_counter.sequential_280/lstm_840/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_280/lstm_840/while/IdentityIdentity'sequential_280/lstm_840/while/add_1:z:0#^sequential_280/lstm_840/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_840/while/Identity_1IdentityNsequential_280_lstm_840_while_sequential_280_lstm_840_while_maximum_iterations#^sequential_280/lstm_840/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_840/while/Identity_2Identity%sequential_280/lstm_840/while/add:z:0#^sequential_280/lstm_840/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_840/while/Identity_3IdentityRsequential_280/lstm_840/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_280/lstm_840/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_840/while/Identity_4Identity5sequential_280/lstm_840/while/lstm_cell_681/mul_2:z:0#^sequential_280/lstm_840/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_280/lstm_840/while/Identity_5Identity5sequential_280/lstm_840/while/lstm_cell_681/add_1:z:0#^sequential_280/lstm_840/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_280/lstm_840/while/NoOpNoOpC^sequential_280/lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOpB^sequential_280/lstm_840/while/lstm_cell_681/MatMul/ReadVariableOpD^sequential_280/lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_280_lstm_840_while_identity/sequential_280/lstm_840/while/Identity:output:0"]
(sequential_280_lstm_840_while_identity_11sequential_280/lstm_840/while/Identity_1:output:0"]
(sequential_280_lstm_840_while_identity_21sequential_280/lstm_840/while/Identity_2:output:0"]
(sequential_280_lstm_840_while_identity_31sequential_280/lstm_840/while/Identity_3:output:0"]
(sequential_280_lstm_840_while_identity_41sequential_280/lstm_840/while/Identity_4:output:0"]
(sequential_280_lstm_840_while_identity_51sequential_280/lstm_840/while/Identity_5:output:0"?
Ksequential_280_lstm_840_while_lstm_cell_681_biasadd_readvariableop_resourceMsequential_280_lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource_0"?
Lsequential_280_lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resourceNsequential_280_lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource_0"?
Jsequential_280_lstm_840_while_lstm_cell_681_matmul_readvariableop_resourceLsequential_280_lstm_840_while_lstm_cell_681_matmul_readvariableop_resource_0"?
Esequential_280_lstm_840_while_sequential_280_lstm_840_strided_slice_1Gsequential_280_lstm_840_while_sequential_280_lstm_840_strided_slice_1_0"?
?sequential_280_lstm_840_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_840_tensorarrayunstack_tensorlistfromtensor?sequential_280_lstm_840_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_840_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_280/lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOpBsequential_280/lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp2?
Asequential_280/lstm_840/while/lstm_cell_681/MatMul/ReadVariableOpAsequential_280/lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp2?
Csequential_280/lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOpCsequential_280/lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4133339

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
while_cond_4133193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4133193___redundant_placeholder05
1while_while_cond_4133193___redundant_placeholder15
1while_while_cond_4133193___redundant_placeholder25
1while_while_cond_4133193___redundant_placeholder3
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137159
inputs_0>
,lstm_cell_683_matmul_readvariableop_resource:2(@
.lstm_cell_683_matmul_1_readvariableop_resource:
(;
-lstm_cell_683_biasadd_readvariableop_resource:(
identity??$lstm_cell_683/BiasAdd/ReadVariableOp?#lstm_cell_683/MatMul/ReadVariableOp?%lstm_cell_683/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
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
while_body_4137075*
condR
while_cond_4137074*K
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
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_841_layer_call_and_return_conditional_losses_4133072

inputs(
lstm_cell_682_4132990:	d?(
lstm_cell_682_4132992:	2?$
lstm_cell_682_4132994:	?
identity??%lstm_cell_682/StatefulPartitionedCall?while;
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
%lstm_cell_682/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_682_4132990lstm_cell_682_4132992lstm_cell_682_4132994*
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
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4132989n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_682_4132990lstm_cell_682_4132992lstm_cell_682_4132994*
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
while_body_4133003*
condR
while_cond_4133002*K
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
NoOpNoOp&^lstm_cell_682/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_682/StatefulPartitionedCall%lstm_cell_682/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_4138174
file_prefix3
!assignvariableop_dense_280_kernel:
/
!assignvariableop_1_dense_280_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_840_lstm_cell_840_kernel:	?M
:assignvariableop_8_lstm_840_lstm_cell_840_recurrent_kernel:	d?=
.assignvariableop_9_lstm_840_lstm_cell_840_bias:	?D
1assignvariableop_10_lstm_841_lstm_cell_841_kernel:	d?N
;assignvariableop_11_lstm_841_lstm_cell_841_recurrent_kernel:	2?>
/assignvariableop_12_lstm_841_lstm_cell_841_bias:	?C
1assignvariableop_13_lstm_842_lstm_cell_842_kernel:2(M
;assignvariableop_14_lstm_842_lstm_cell_842_recurrent_kernel:
(=
/assignvariableop_15_lstm_842_lstm_cell_842_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_280_kernel_m:
7
)assignvariableop_19_adam_dense_280_bias_m:K
8assignvariableop_20_adam_lstm_840_lstm_cell_840_kernel_m:	?U
Bassignvariableop_21_adam_lstm_840_lstm_cell_840_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_840_lstm_cell_840_bias_m:	?K
8assignvariableop_23_adam_lstm_841_lstm_cell_841_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_841_lstm_cell_841_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_841_lstm_cell_841_bias_m:	?J
8assignvariableop_26_adam_lstm_842_lstm_cell_842_kernel_m:2(T
Bassignvariableop_27_adam_lstm_842_lstm_cell_842_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_842_lstm_cell_842_bias_m:(=
+assignvariableop_29_adam_dense_280_kernel_v:
7
)assignvariableop_30_adam_dense_280_bias_v:K
8assignvariableop_31_adam_lstm_840_lstm_cell_840_kernel_v:	?U
Bassignvariableop_32_adam_lstm_840_lstm_cell_840_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_840_lstm_cell_840_bias_v:	?K
8assignvariableop_34_adam_lstm_841_lstm_cell_841_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_841_lstm_cell_841_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_841_lstm_cell_841_bias_v:	?J
8assignvariableop_37_adam_lstm_842_lstm_cell_842_kernel_v:2(T
Bassignvariableop_38_adam_lstm_842_lstm_cell_842_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_842_lstm_cell_842_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_280_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_280_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_840_lstm_cell_840_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_840_lstm_cell_840_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_840_lstm_cell_840_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_841_lstm_cell_841_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_841_lstm_cell_841_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_841_lstm_cell_841_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_842_lstm_cell_842_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_842_lstm_cell_842_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_842_lstm_cell_842_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_280_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_280_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_840_lstm_cell_840_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_840_lstm_cell_840_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_840_lstm_cell_840_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_841_lstm_cell_841_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_841_lstm_cell_841_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_841_lstm_cell_841_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_842_lstm_cell_842_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_842_lstm_cell_842_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_842_lstm_cell_842_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_280_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_280_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_840_lstm_cell_840_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_840_lstm_cell_840_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_840_lstm_cell_840_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_841_lstm_cell_841_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_841_lstm_cell_841_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_841_lstm_cell_841_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_842_lstm_cell_842_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_842_lstm_cell_842_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_842_lstm_cell_842_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_4134533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_681_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_681_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_681_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_681_matmul_readvariableop_resource:	?G
4while_lstm_cell_681_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_681_biasadd_readvariableop_resource:	???*while/lstm_cell_681/BiasAdd/ReadVariableOp?)while/lstm_cell_681/MatMul/ReadVariableOp?+while/lstm_cell_681/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_681/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_681_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_681/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_681_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_681/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_681/addAddV2$while/lstm_cell_681/MatMul:product:0&while/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_681_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_681/BiasAddBiasAddwhile/lstm_cell_681/add:z:02while/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_681/splitSplit,while/lstm_cell_681/split/split_dim:output:0$while/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_681/SigmoidSigmoid"while/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_1Sigmoid"while/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mulMul!while/lstm_cell_681/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_681/ReluRelu"while/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_1Mulwhile/lstm_cell_681/Sigmoid:y:0&while/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/add_1AddV2while/lstm_cell_681/mul:z:0while/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_681/Sigmoid_2Sigmoid"while/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_681/Relu_1Reluwhile/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_681/mul_2Mul!while/lstm_cell_681/Sigmoid_2:y:0(while/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_681/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_681/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_681/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_681/BiasAdd/ReadVariableOp*^while/lstm_cell_681/MatMul/ReadVariableOp,^while/lstm_cell_681/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_681_biasadd_readvariableop_resource5while_lstm_cell_681_biasadd_readvariableop_resource_0"n
4while_lstm_cell_681_matmul_1_readvariableop_resource6while_lstm_cell_681_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_681_matmul_readvariableop_resource4while_lstm_cell_681_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_681/BiasAdd/ReadVariableOp*while/lstm_cell_681/BiasAdd/ReadVariableOp2V
)while/lstm_cell_681/MatMul/ReadVariableOp)while/lstm_cell_681/MatMul/ReadVariableOp2Z
+while/lstm_cell_681/MatMul_1/ReadVariableOp+while/lstm_cell_681/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4136887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4136887___redundant_placeholder05
1while_while_cond_4136887___redundant_placeholder15
1while_while_cond_4136887___redundant_placeholder25
1while_while_cond_4136887___redundant_placeholder3
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
/__inference_lstm_cell_683_layer_call_fn_4137837

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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4133485o
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
?K
?
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137302
inputs_0>
,lstm_cell_683_matmul_readvariableop_resource:2(@
.lstm_cell_683_matmul_1_readvariableop_resource:
(;
-lstm_cell_683_biasadd_readvariableop_resource:(
identity??$lstm_cell_683/BiasAdd/ReadVariableOp?#lstm_cell_683/MatMul/ReadVariableOp?%lstm_cell_683/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
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
while_body_4137218*
condR
while_cond_4137217*K
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
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?T
?
*sequential_280_lstm_841_while_body_4132343L
Hsequential_280_lstm_841_while_sequential_280_lstm_841_while_loop_counterR
Nsequential_280_lstm_841_while_sequential_280_lstm_841_while_maximum_iterations-
)sequential_280_lstm_841_while_placeholder/
+sequential_280_lstm_841_while_placeholder_1/
+sequential_280_lstm_841_while_placeholder_2/
+sequential_280_lstm_841_while_placeholder_3K
Gsequential_280_lstm_841_while_sequential_280_lstm_841_strided_slice_1_0?
?sequential_280_lstm_841_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_841_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_280_lstm_841_while_lstm_cell_682_matmul_readvariableop_resource_0:	d?a
Nsequential_280_lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource_0:	2?\
Msequential_280_lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource_0:	?*
&sequential_280_lstm_841_while_identity,
(sequential_280_lstm_841_while_identity_1,
(sequential_280_lstm_841_while_identity_2,
(sequential_280_lstm_841_while_identity_3,
(sequential_280_lstm_841_while_identity_4,
(sequential_280_lstm_841_while_identity_5I
Esequential_280_lstm_841_while_sequential_280_lstm_841_strided_slice_1?
?sequential_280_lstm_841_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_841_tensorarrayunstack_tensorlistfromtensor]
Jsequential_280_lstm_841_while_lstm_cell_682_matmul_readvariableop_resource:	d?_
Lsequential_280_lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource:	2?Z
Ksequential_280_lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource:	???Bsequential_280/lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp?Asequential_280/lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp?Csequential_280/lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp?
Osequential_280/lstm_841/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_280/lstm_841/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_280_lstm_841_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_841_tensorarrayunstack_tensorlistfromtensor_0)sequential_280_lstm_841_while_placeholderXsequential_280/lstm_841/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_280/lstm_841/while/lstm_cell_682/MatMul/ReadVariableOpReadVariableOpLsequential_280_lstm_841_while_lstm_cell_682_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_280/lstm_841/while/lstm_cell_682/MatMulMatMulHsequential_280/lstm_841/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_280/lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_280/lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOpNsequential_280_lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_280/lstm_841/while/lstm_cell_682/MatMul_1MatMul+sequential_280_lstm_841_while_placeholder_2Ksequential_280/lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_280/lstm_841/while/lstm_cell_682/addAddV2<sequential_280/lstm_841/while/lstm_cell_682/MatMul:product:0>sequential_280/lstm_841/while/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_280/lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOpMsequential_280_lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_280/lstm_841/while/lstm_cell_682/BiasAddBiasAdd3sequential_280/lstm_841/while/lstm_cell_682/add:z:0Jsequential_280/lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_280/lstm_841/while/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_280/lstm_841/while/lstm_cell_682/splitSplitDsequential_280/lstm_841/while/lstm_cell_682/split/split_dim:output:0<sequential_280/lstm_841/while/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_280/lstm_841/while/lstm_cell_682/SigmoidSigmoid:sequential_280/lstm_841/while/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_280/lstm_841/while/lstm_cell_682/Sigmoid_1Sigmoid:sequential_280/lstm_841/while/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_280/lstm_841/while/lstm_cell_682/mulMul9sequential_280/lstm_841/while/lstm_cell_682/Sigmoid_1:y:0+sequential_280_lstm_841_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_280/lstm_841/while/lstm_cell_682/ReluRelu:sequential_280/lstm_841/while/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_280/lstm_841/while/lstm_cell_682/mul_1Mul7sequential_280/lstm_841/while/lstm_cell_682/Sigmoid:y:0>sequential_280/lstm_841/while/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_280/lstm_841/while/lstm_cell_682/add_1AddV23sequential_280/lstm_841/while/lstm_cell_682/mul:z:05sequential_280/lstm_841/while/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_280/lstm_841/while/lstm_cell_682/Sigmoid_2Sigmoid:sequential_280/lstm_841/while/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_280/lstm_841/while/lstm_cell_682/Relu_1Relu5sequential_280/lstm_841/while/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_280/lstm_841/while/lstm_cell_682/mul_2Mul9sequential_280/lstm_841/while/lstm_cell_682/Sigmoid_2:y:0@sequential_280/lstm_841/while/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_280/lstm_841/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_280_lstm_841_while_placeholder_1)sequential_280_lstm_841_while_placeholder5sequential_280/lstm_841/while/lstm_cell_682/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_280/lstm_841/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_280/lstm_841/while/addAddV2)sequential_280_lstm_841_while_placeholder,sequential_280/lstm_841/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_280/lstm_841/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_280/lstm_841/while/add_1AddV2Hsequential_280_lstm_841_while_sequential_280_lstm_841_while_loop_counter.sequential_280/lstm_841/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_280/lstm_841/while/IdentityIdentity'sequential_280/lstm_841/while/add_1:z:0#^sequential_280/lstm_841/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_841/while/Identity_1IdentityNsequential_280_lstm_841_while_sequential_280_lstm_841_while_maximum_iterations#^sequential_280/lstm_841/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_841/while/Identity_2Identity%sequential_280/lstm_841/while/add:z:0#^sequential_280/lstm_841/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_841/while/Identity_3IdentityRsequential_280/lstm_841/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_280/lstm_841/while/NoOp*
T0*
_output_shapes
: ?
(sequential_280/lstm_841/while/Identity_4Identity5sequential_280/lstm_841/while/lstm_cell_682/mul_2:z:0#^sequential_280/lstm_841/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_280/lstm_841/while/Identity_5Identity5sequential_280/lstm_841/while/lstm_cell_682/add_1:z:0#^sequential_280/lstm_841/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_280/lstm_841/while/NoOpNoOpC^sequential_280/lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOpB^sequential_280/lstm_841/while/lstm_cell_682/MatMul/ReadVariableOpD^sequential_280/lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_280_lstm_841_while_identity/sequential_280/lstm_841/while/Identity:output:0"]
(sequential_280_lstm_841_while_identity_11sequential_280/lstm_841/while/Identity_1:output:0"]
(sequential_280_lstm_841_while_identity_21sequential_280/lstm_841/while/Identity_2:output:0"]
(sequential_280_lstm_841_while_identity_31sequential_280/lstm_841/while/Identity_3:output:0"]
(sequential_280_lstm_841_while_identity_41sequential_280/lstm_841/while/Identity_4:output:0"]
(sequential_280_lstm_841_while_identity_51sequential_280/lstm_841/while/Identity_5:output:0"?
Ksequential_280_lstm_841_while_lstm_cell_682_biasadd_readvariableop_resourceMsequential_280_lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource_0"?
Lsequential_280_lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resourceNsequential_280_lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource_0"?
Jsequential_280_lstm_841_while_lstm_cell_682_matmul_readvariableop_resourceLsequential_280_lstm_841_while_lstm_cell_682_matmul_readvariableop_resource_0"?
Esequential_280_lstm_841_while_sequential_280_lstm_841_strided_slice_1Gsequential_280_lstm_841_while_sequential_280_lstm_841_strided_slice_1_0"?
?sequential_280_lstm_841_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_841_tensorarrayunstack_tensorlistfromtensor?sequential_280_lstm_841_while_tensorarrayv2read_tensorlistgetitem_sequential_280_lstm_841_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_280/lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOpBsequential_280/lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp2?
Asequential_280/lstm_841/while/lstm_cell_682/MatMul/ReadVariableOpAsequential_280/lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp2?
Csequential_280/lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOpCsequential_280/lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4135985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4135985___redundant_placeholder05
1while_while_cond_4135985___redundant_placeholder15
1while_while_cond_4135985___redundant_placeholder25
1while_while_cond_4135985___redundant_placeholder3
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
while_cond_4133836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4133836___redundant_placeholder05
1while_while_cond_4133836___redundant_placeholder15
1while_while_cond_4133836___redundant_placeholder25
1while_while_cond_4133836___redundant_placeholder3
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
*__inference_lstm_841_layer_call_fn_4136367
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4133072|
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
/__inference_lstm_cell_682_layer_call_fn_4137739

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
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4133135o
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
while_cond_4132843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4132843___redundant_placeholder05
1while_while_cond_4132843___redundant_placeholder15
1while_while_cond_4132843___redundant_placeholder25
1while_while_cond_4132843___redundant_placeholder3
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

lstm_841_while_body_4135511.
*lstm_841_while_lstm_841_while_loop_counter4
0lstm_841_while_lstm_841_while_maximum_iterations
lstm_841_while_placeholder 
lstm_841_while_placeholder_1 
lstm_841_while_placeholder_2 
lstm_841_while_placeholder_3-
)lstm_841_while_lstm_841_strided_slice_1_0i
elstm_841_while_tensorarrayv2read_tensorlistgetitem_lstm_841_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_841_while_lstm_cell_682_matmul_readvariableop_resource_0:	d?R
?lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource_0:	2?M
>lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource_0:	?
lstm_841_while_identity
lstm_841_while_identity_1
lstm_841_while_identity_2
lstm_841_while_identity_3
lstm_841_while_identity_4
lstm_841_while_identity_5+
'lstm_841_while_lstm_841_strided_slice_1g
clstm_841_while_tensorarrayv2read_tensorlistgetitem_lstm_841_tensorarrayunstack_tensorlistfromtensorN
;lstm_841_while_lstm_cell_682_matmul_readvariableop_resource:	d?P
=lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource:	2?K
<lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource:	???3lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp?2lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp?4lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp?
@lstm_841/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_841/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_841_while_tensorarrayv2read_tensorlistgetitem_lstm_841_tensorarrayunstack_tensorlistfromtensor_0lstm_841_while_placeholderIlstm_841/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_841/while/lstm_cell_682/MatMul/ReadVariableOpReadVariableOp=lstm_841_while_lstm_cell_682_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_841/while/lstm_cell_682/MatMulMatMul9lstm_841/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp?lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_841/while/lstm_cell_682/MatMul_1MatMullstm_841_while_placeholder_2<lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_841/while/lstm_cell_682/addAddV2-lstm_841/while/lstm_cell_682/MatMul:product:0/lstm_841/while/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp>lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_841/while/lstm_cell_682/BiasAddBiasAdd$lstm_841/while/lstm_cell_682/add:z:0;lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_841/while/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_841/while/lstm_cell_682/splitSplit5lstm_841/while/lstm_cell_682/split/split_dim:output:0-lstm_841/while/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_841/while/lstm_cell_682/SigmoidSigmoid+lstm_841/while/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_841/while/lstm_cell_682/Sigmoid_1Sigmoid+lstm_841/while/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_841/while/lstm_cell_682/mulMul*lstm_841/while/lstm_cell_682/Sigmoid_1:y:0lstm_841_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_841/while/lstm_cell_682/ReluRelu+lstm_841/while/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_841/while/lstm_cell_682/mul_1Mul(lstm_841/while/lstm_cell_682/Sigmoid:y:0/lstm_841/while/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_841/while/lstm_cell_682/add_1AddV2$lstm_841/while/lstm_cell_682/mul:z:0&lstm_841/while/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_841/while/lstm_cell_682/Sigmoid_2Sigmoid+lstm_841/while/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_841/while/lstm_cell_682/Relu_1Relu&lstm_841/while/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_841/while/lstm_cell_682/mul_2Mul*lstm_841/while/lstm_cell_682/Sigmoid_2:y:01lstm_841/while/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_841/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_841_while_placeholder_1lstm_841_while_placeholder&lstm_841/while/lstm_cell_682/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_841/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_841/while/addAddV2lstm_841_while_placeholderlstm_841/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_841/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_841/while/add_1AddV2*lstm_841_while_lstm_841_while_loop_counterlstm_841/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_841/while/IdentityIdentitylstm_841/while/add_1:z:0^lstm_841/while/NoOp*
T0*
_output_shapes
: ?
lstm_841/while/Identity_1Identity0lstm_841_while_lstm_841_while_maximum_iterations^lstm_841/while/NoOp*
T0*
_output_shapes
: t
lstm_841/while/Identity_2Identitylstm_841/while/add:z:0^lstm_841/while/NoOp*
T0*
_output_shapes
: ?
lstm_841/while/Identity_3IdentityClstm_841/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_841/while/NoOp*
T0*
_output_shapes
: ?
lstm_841/while/Identity_4Identity&lstm_841/while/lstm_cell_682/mul_2:z:0^lstm_841/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_841/while/Identity_5Identity&lstm_841/while/lstm_cell_682/add_1:z:0^lstm_841/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_841/while/NoOpNoOp4^lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp3^lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp5^lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_841_while_identity lstm_841/while/Identity:output:0"?
lstm_841_while_identity_1"lstm_841/while/Identity_1:output:0"?
lstm_841_while_identity_2"lstm_841/while/Identity_2:output:0"?
lstm_841_while_identity_3"lstm_841/while/Identity_3:output:0"?
lstm_841_while_identity_4"lstm_841/while/Identity_4:output:0"?
lstm_841_while_identity_5"lstm_841/while/Identity_5:output:0"T
'lstm_841_while_lstm_841_strided_slice_1)lstm_841_while_lstm_841_strided_slice_1_0"~
<lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource>lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource_0"?
=lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource?lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource_0"|
;lstm_841_while_lstm_cell_682_matmul_readvariableop_resource=lstm_841_while_lstm_cell_682_matmul_readvariableop_resource_0"?
clstm_841_while_tensorarrayv2read_tensorlistgetitem_lstm_841_tensorarrayunstack_tensorlistfromtensorelstm_841_while_tensorarrayv2read_tensorlistgetitem_lstm_841_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp3lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp2h
2lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp2lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp2l
4lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp4lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4137217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4137217___redundant_placeholder05
1while_while_cond_4137217___redundant_placeholder15
1while_while_cond_4137217___redundant_placeholder25
1while_while_cond_4137217___redundant_placeholder3
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

lstm_840_while_body_4135372.
*lstm_840_while_lstm_840_while_loop_counter4
0lstm_840_while_lstm_840_while_maximum_iterations
lstm_840_while_placeholder 
lstm_840_while_placeholder_1 
lstm_840_while_placeholder_2 
lstm_840_while_placeholder_3-
)lstm_840_while_lstm_840_strided_slice_1_0i
elstm_840_while_tensorarrayv2read_tensorlistgetitem_lstm_840_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_840_while_lstm_cell_681_matmul_readvariableop_resource_0:	?R
?lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource_0:	d?M
>lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource_0:	?
lstm_840_while_identity
lstm_840_while_identity_1
lstm_840_while_identity_2
lstm_840_while_identity_3
lstm_840_while_identity_4
lstm_840_while_identity_5+
'lstm_840_while_lstm_840_strided_slice_1g
clstm_840_while_tensorarrayv2read_tensorlistgetitem_lstm_840_tensorarrayunstack_tensorlistfromtensorN
;lstm_840_while_lstm_cell_681_matmul_readvariableop_resource:	?P
=lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource:	d?K
<lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource:	???3lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp?2lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp?4lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp?
@lstm_840/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_840/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_840_while_tensorarrayv2read_tensorlistgetitem_lstm_840_tensorarrayunstack_tensorlistfromtensor_0lstm_840_while_placeholderIlstm_840/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_840/while/lstm_cell_681/MatMul/ReadVariableOpReadVariableOp=lstm_840_while_lstm_cell_681_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_840/while/lstm_cell_681/MatMulMatMul9lstm_840/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp?lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_840/while/lstm_cell_681/MatMul_1MatMullstm_840_while_placeholder_2<lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_840/while/lstm_cell_681/addAddV2-lstm_840/while/lstm_cell_681/MatMul:product:0/lstm_840/while/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp>lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_840/while/lstm_cell_681/BiasAddBiasAdd$lstm_840/while/lstm_cell_681/add:z:0;lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_840/while/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_840/while/lstm_cell_681/splitSplit5lstm_840/while/lstm_cell_681/split/split_dim:output:0-lstm_840/while/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_840/while/lstm_cell_681/SigmoidSigmoid+lstm_840/while/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_840/while/lstm_cell_681/Sigmoid_1Sigmoid+lstm_840/while/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_840/while/lstm_cell_681/mulMul*lstm_840/while/lstm_cell_681/Sigmoid_1:y:0lstm_840_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_840/while/lstm_cell_681/ReluRelu+lstm_840/while/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_840/while/lstm_cell_681/mul_1Mul(lstm_840/while/lstm_cell_681/Sigmoid:y:0/lstm_840/while/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_840/while/lstm_cell_681/add_1AddV2$lstm_840/while/lstm_cell_681/mul:z:0&lstm_840/while/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_840/while/lstm_cell_681/Sigmoid_2Sigmoid+lstm_840/while/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_840/while/lstm_cell_681/Relu_1Relu&lstm_840/while/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_840/while/lstm_cell_681/mul_2Mul*lstm_840/while/lstm_cell_681/Sigmoid_2:y:01lstm_840/while/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_840/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_840_while_placeholder_1lstm_840_while_placeholder&lstm_840/while/lstm_cell_681/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_840/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_840/while/addAddV2lstm_840_while_placeholderlstm_840/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_840/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_840/while/add_1AddV2*lstm_840_while_lstm_840_while_loop_counterlstm_840/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_840/while/IdentityIdentitylstm_840/while/add_1:z:0^lstm_840/while/NoOp*
T0*
_output_shapes
: ?
lstm_840/while/Identity_1Identity0lstm_840_while_lstm_840_while_maximum_iterations^lstm_840/while/NoOp*
T0*
_output_shapes
: t
lstm_840/while/Identity_2Identitylstm_840/while/add:z:0^lstm_840/while/NoOp*
T0*
_output_shapes
: ?
lstm_840/while/Identity_3IdentityClstm_840/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_840/while/NoOp*
T0*
_output_shapes
: ?
lstm_840/while/Identity_4Identity&lstm_840/while/lstm_cell_681/mul_2:z:0^lstm_840/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_840/while/Identity_5Identity&lstm_840/while/lstm_cell_681/add_1:z:0^lstm_840/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_840/while/NoOpNoOp4^lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp3^lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp5^lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_840_while_identity lstm_840/while/Identity:output:0"?
lstm_840_while_identity_1"lstm_840/while/Identity_1:output:0"?
lstm_840_while_identity_2"lstm_840/while/Identity_2:output:0"?
lstm_840_while_identity_3"lstm_840/while/Identity_3:output:0"?
lstm_840_while_identity_4"lstm_840/while/Identity_4:output:0"?
lstm_840_while_identity_5"lstm_840/while/Identity_5:output:0"T
'lstm_840_while_lstm_840_strided_slice_1)lstm_840_while_lstm_840_strided_slice_1_0"~
<lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource>lstm_840_while_lstm_cell_681_biasadd_readvariableop_resource_0"?
=lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource?lstm_840_while_lstm_cell_681_matmul_1_readvariableop_resource_0"|
;lstm_840_while_lstm_cell_681_matmul_readvariableop_resource=lstm_840_while_lstm_cell_681_matmul_readvariableop_resource_0"?
clstm_840_while_tensorarrayv2read_tensorlistgetitem_lstm_840_tensorarrayunstack_tensorlistfromtensorelstm_840_while_tensorarrayv2read_tensorlistgetitem_lstm_840_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp3lstm_840/while/lstm_cell_681/BiasAdd/ReadVariableOp2h
2lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp2lstm_840/while/lstm_cell_681/MatMul/ReadVariableOp2l
4lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp4lstm_840/while/lstm_cell_681/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4134452

inputs?
,lstm_cell_682_matmul_readvariableop_resource:	d?A
.lstm_cell_682_matmul_1_readvariableop_resource:	2?<
-lstm_cell_682_biasadd_readvariableop_resource:	?
identity??$lstm_cell_682/BiasAdd/ReadVariableOp?#lstm_cell_682/MatMul/ReadVariableOp?%lstm_cell_682/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_682/MatMul/ReadVariableOpReadVariableOp,lstm_cell_682_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_682/MatMulMatMulstrided_slice_2:output:0+lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_682_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_682/MatMul_1MatMulzeros:output:0-lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_682/addAddV2lstm_cell_682/MatMul:product:0 lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_682_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_682/BiasAddBiasAddlstm_cell_682/add:z:0,lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_682/splitSplit&lstm_cell_682/split/split_dim:output:0lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_682/SigmoidSigmoidlstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_1Sigmoidlstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_682/mulMullstm_cell_682/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_682/ReluRelulstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_1Mullstm_cell_682/Sigmoid:y:0 lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_682/add_1AddV2lstm_cell_682/mul:z:0lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_2Sigmoidlstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_682/Relu_1Relulstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_2Mullstm_cell_682/Sigmoid_2:y:0"lstm_cell_682/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_682_matmul_readvariableop_resource.lstm_cell_682_matmul_1_readvariableop_resource-lstm_cell_682_biasadd_readvariableop_resource*
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
while_body_4134368*
condR
while_cond_4134367*K
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
NoOpNoOp%^lstm_cell_682/BiasAdd/ReadVariableOp$^lstm_cell_682/MatMul/ReadVariableOp&^lstm_cell_682/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_682/BiasAdd/ReadVariableOp$lstm_cell_682/BiasAdd/ReadVariableOp2J
#lstm_cell_682/MatMul/ReadVariableOp#lstm_cell_682/MatMul/ReadVariableOp2N
%lstm_cell_682/MatMul_1/ReadVariableOp%lstm_cell_682/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4136888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_682_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_682_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_682_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_682_matmul_readvariableop_resource:	d?G
4while_lstm_cell_682_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_682_biasadd_readvariableop_resource:	???*while/lstm_cell_682/BiasAdd/ReadVariableOp?)while/lstm_cell_682/MatMul/ReadVariableOp?+while/lstm_cell_682/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_682/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_682_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_682/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_682_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_682/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_682/addAddV2$while/lstm_cell_682/MatMul:product:0&while/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_682_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_682/BiasAddBiasAddwhile/lstm_cell_682/add:z:02while/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_682/splitSplit,while/lstm_cell_682/split/split_dim:output:0$while/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_682/SigmoidSigmoid"while/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_1Sigmoid"while/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mulMul!while/lstm_cell_682/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_682/ReluRelu"while/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_1Mulwhile/lstm_cell_682/Sigmoid:y:0&while/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/add_1AddV2while/lstm_cell_682/mul:z:0while/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_2Sigmoid"while/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_682/Relu_1Reluwhile/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_2Mul!while/lstm_cell_682/Sigmoid_2:y:0(while/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_682/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_682/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_682/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_682/BiasAdd/ReadVariableOp*^while/lstm_cell_682/MatMul/ReadVariableOp,^while/lstm_cell_682/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_682_biasadd_readvariableop_resource5while_lstm_cell_682_biasadd_readvariableop_resource_0"n
4while_lstm_cell_682_matmul_1_readvariableop_resource6while_lstm_cell_682_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_682_matmul_readvariableop_resource4while_lstm_cell_682_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_682/BiasAdd/ReadVariableOp*while/lstm_cell_682/BiasAdd/ReadVariableOp2V
)while/lstm_cell_682/MatMul/ReadVariableOp)while/lstm_cell_682/MatMul/ReadVariableOp2Z
+while/lstm_cell_682/MatMul_1/ReadVariableOp+while/lstm_cell_682/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_4134832
lstm_840_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_840_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4132572o
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
_user_specified_namelstm_840_input
?	
?
F__inference_dense_280_layer_call_and_return_conditional_losses_4137607

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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4136070
inputs_0?
,lstm_cell_681_matmul_readvariableop_resource:	?A
.lstm_cell_681_matmul_1_readvariableop_resource:	d?<
-lstm_cell_681_biasadd_readvariableop_resource:	?
identity??$lstm_cell_681/BiasAdd/ReadVariableOp?#lstm_cell_681/MatMul/ReadVariableOp?%lstm_cell_681/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_681/MatMul/ReadVariableOpReadVariableOp,lstm_cell_681_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_681/MatMulMatMulstrided_slice_2:output:0+lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_681_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_681/MatMul_1MatMulzeros:output:0-lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_681/addAddV2lstm_cell_681/MatMul:product:0 lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_681_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_681/BiasAddBiasAddlstm_cell_681/add:z:0,lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_681/splitSplit&lstm_cell_681/split/split_dim:output:0lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_681/SigmoidSigmoidlstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_1Sigmoidlstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_681/mulMullstm_cell_681/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_681/ReluRelulstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_1Mullstm_cell_681/Sigmoid:y:0 lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_681/add_1AddV2lstm_cell_681/mul:z:0lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_681/Sigmoid_2Sigmoidlstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_681/Relu_1Relulstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_681/mul_2Mullstm_cell_681/Sigmoid_2:y:0"lstm_cell_681/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_681_matmul_readvariableop_resource.lstm_cell_681_matmul_1_readvariableop_resource-lstm_cell_681_biasadd_readvariableop_resource*
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
while_body_4135986*
condR
while_cond_4135985*K
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
NoOpNoOp%^lstm_cell_681/BiasAdd/ReadVariableOp$^lstm_cell_681/MatMul/ReadVariableOp&^lstm_cell_681/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_681/BiasAdd/ReadVariableOp$lstm_cell_681/BiasAdd/ReadVariableOp2J
#lstm_cell_681/MatMul/ReadVariableOp#lstm_cell_681/MatMul/ReadVariableOp2N
%lstm_cell_681/MatMul_1/ReadVariableOp%lstm_cell_681/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_280_layer_call_fn_4134859

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
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134096o
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4133921

inputs?
,lstm_cell_682_matmul_readvariableop_resource:	d?A
.lstm_cell_682_matmul_1_readvariableop_resource:	2?<
-lstm_cell_682_biasadd_readvariableop_resource:	?
identity??$lstm_cell_682/BiasAdd/ReadVariableOp?#lstm_cell_682/MatMul/ReadVariableOp?%lstm_cell_682/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_682/MatMul/ReadVariableOpReadVariableOp,lstm_cell_682_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_682/MatMulMatMulstrided_slice_2:output:0+lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_682_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_682/MatMul_1MatMulzeros:output:0-lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_682/addAddV2lstm_cell_682/MatMul:product:0 lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_682_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_682/BiasAddBiasAddlstm_cell_682/add:z:0,lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_682/splitSplit&lstm_cell_682/split/split_dim:output:0lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_682/SigmoidSigmoidlstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_1Sigmoidlstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_682/mulMullstm_cell_682/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_682/ReluRelulstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_1Mullstm_cell_682/Sigmoid:y:0 lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_682/add_1AddV2lstm_cell_682/mul:z:0lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_2Sigmoidlstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_682/Relu_1Relulstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_2Mullstm_cell_682/Sigmoid_2:y:0"lstm_cell_682/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_682_matmul_readvariableop_resource.lstm_cell_682_matmul_1_readvariableop_resource-lstm_cell_682_biasadd_readvariableop_resource*
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
while_body_4133837*
condR
while_cond_4133836*K
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
NoOpNoOp%^lstm_cell_682/BiasAdd/ReadVariableOp$^lstm_cell_682/MatMul/ReadVariableOp&^lstm_cell_682/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_682/BiasAdd/ReadVariableOp$lstm_cell_682/BiasAdd/ReadVariableOp2J
#lstm_cell_682/MatMul/ReadVariableOp#lstm_cell_682/MatMul/ReadVariableOp2N
%lstm_cell_682/MatMul_1/ReadVariableOp%lstm_cell_682/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134685

inputs#
lstm_840_4134658:	?#
lstm_840_4134660:	d?
lstm_840_4134662:	?#
lstm_841_4134665:	d?#
lstm_841_4134667:	2?
lstm_841_4134669:	?"
lstm_842_4134672:2("
lstm_842_4134674:
(
lstm_842_4134676:(#
dense_280_4134679:

dense_280_4134681:
identity??!dense_280/StatefulPartitionedCall? lstm_840/StatefulPartitionedCall? lstm_841/StatefulPartitionedCall? lstm_842/StatefulPartitionedCall?
 lstm_840/StatefulPartitionedCallStatefulPartitionedCallinputslstm_840_4134658lstm_840_4134660lstm_840_4134662*
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4134617?
 lstm_841/StatefulPartitionedCallStatefulPartitionedCall)lstm_840/StatefulPartitionedCall:output:0lstm_841_4134665lstm_841_4134667lstm_841_4134669*
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4134452?
 lstm_842/StatefulPartitionedCallStatefulPartitionedCall)lstm_841/StatefulPartitionedCall:output:0lstm_842_4134672lstm_842_4134674lstm_842_4134676*
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4134287?
!dense_280/StatefulPartitionedCallStatefulPartitionedCall)lstm_842/StatefulPartitionedCall:output:0dense_280_4134679dense_280_4134681*
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
F__inference_dense_280_layer_call_and_return_conditional_losses_4134089y
IdentityIdentity*dense_280/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_280/StatefulPartitionedCall!^lstm_840/StatefulPartitionedCall!^lstm_841/StatefulPartitionedCall!^lstm_842/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_280/StatefulPartitionedCall!dense_280/StatefulPartitionedCall2D
 lstm_840/StatefulPartitionedCall lstm_840/StatefulPartitionedCall2D
 lstm_841/StatefulPartitionedCall lstm_841/StatefulPartitionedCall2D
 lstm_842/StatefulPartitionedCall lstm_842/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137445

inputs>
,lstm_cell_683_matmul_readvariableop_resource:2(@
.lstm_cell_683_matmul_1_readvariableop_resource:
(;
-lstm_cell_683_biasadd_readvariableop_resource:(
identity??$lstm_cell_683/BiasAdd/ReadVariableOp?#lstm_cell_683/MatMul/ReadVariableOp?%lstm_cell_683/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
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
while_body_4137361*
condR
while_cond_4137360*K
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
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_840_while_cond_4134944.
*lstm_840_while_lstm_840_while_loop_counter4
0lstm_840_while_lstm_840_while_maximum_iterations
lstm_840_while_placeholder 
lstm_840_while_placeholder_1 
lstm_840_while_placeholder_2 
lstm_840_while_placeholder_30
,lstm_840_while_less_lstm_840_strided_slice_1G
Clstm_840_while_lstm_840_while_cond_4134944___redundant_placeholder0G
Clstm_840_while_lstm_840_while_cond_4134944___redundant_placeholder1G
Clstm_840_while_lstm_840_while_cond_4134944___redundant_placeholder2G
Clstm_840_while_lstm_840_while_cond_4134944___redundant_placeholder3
lstm_840_while_identity
?
lstm_840/while/LessLesslstm_840_while_placeholder,lstm_840_while_less_lstm_840_strided_slice_1*
T0*
_output_shapes
: ]
lstm_840/while/IdentityIdentitylstm_840/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_840_while_identity lstm_840/while/Identity:output:0*(
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
K__inference_sequential_280_layer_call_and_return_conditional_losses_4135740

inputsH
5lstm_840_lstm_cell_681_matmul_readvariableop_resource:	?J
7lstm_840_lstm_cell_681_matmul_1_readvariableop_resource:	d?E
6lstm_840_lstm_cell_681_biasadd_readvariableop_resource:	?H
5lstm_841_lstm_cell_682_matmul_readvariableop_resource:	d?J
7lstm_841_lstm_cell_682_matmul_1_readvariableop_resource:	2?E
6lstm_841_lstm_cell_682_biasadd_readvariableop_resource:	?G
5lstm_842_lstm_cell_683_matmul_readvariableop_resource:2(I
7lstm_842_lstm_cell_683_matmul_1_readvariableop_resource:
(D
6lstm_842_lstm_cell_683_biasadd_readvariableop_resource:(:
(dense_280_matmul_readvariableop_resource:
7
)dense_280_biasadd_readvariableop_resource:
identity?? dense_280/BiasAdd/ReadVariableOp?dense_280/MatMul/ReadVariableOp?-lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp?,lstm_840/lstm_cell_681/MatMul/ReadVariableOp?.lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp?lstm_840/while?-lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp?,lstm_841/lstm_cell_682/MatMul/ReadVariableOp?.lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp?lstm_841/while?-lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp?,lstm_842/lstm_cell_683/MatMul/ReadVariableOp?.lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp?lstm_842/whileD
lstm_840/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_840/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_840/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_840/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_840/strided_sliceStridedSlicelstm_840/Shape:output:0%lstm_840/strided_slice/stack:output:0'lstm_840/strided_slice/stack_1:output:0'lstm_840/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_840/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_840/zeros/packedPacklstm_840/strided_slice:output:0 lstm_840/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_840/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_840/zerosFilllstm_840/zeros/packed:output:0lstm_840/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_840/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_840/zeros_1/packedPacklstm_840/strided_slice:output:0"lstm_840/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_840/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_840/zeros_1Fill lstm_840/zeros_1/packed:output:0lstm_840/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_840/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_840/transpose	Transposeinputs lstm_840/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_840/Shape_1Shapelstm_840/transpose:y:0*
T0*
_output_shapes
:h
lstm_840/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_840/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_840/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_840/strided_slice_1StridedSlicelstm_840/Shape_1:output:0'lstm_840/strided_slice_1/stack:output:0)lstm_840/strided_slice_1/stack_1:output:0)lstm_840/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_840/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_840/TensorArrayV2TensorListReserve-lstm_840/TensorArrayV2/element_shape:output:0!lstm_840/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_840/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_840/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_840/transpose:y:0Glstm_840/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_840/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_840/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_840/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_840/strided_slice_2StridedSlicelstm_840/transpose:y:0'lstm_840/strided_slice_2/stack:output:0)lstm_840/strided_slice_2/stack_1:output:0)lstm_840/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_840/lstm_cell_681/MatMul/ReadVariableOpReadVariableOp5lstm_840_lstm_cell_681_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_840/lstm_cell_681/MatMulMatMul!lstm_840/strided_slice_2:output:04lstm_840/lstm_cell_681/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_840/lstm_cell_681/MatMul_1/ReadVariableOpReadVariableOp7lstm_840_lstm_cell_681_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_840/lstm_cell_681/MatMul_1MatMullstm_840/zeros:output:06lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_840/lstm_cell_681/addAddV2'lstm_840/lstm_cell_681/MatMul:product:0)lstm_840/lstm_cell_681/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_840/lstm_cell_681/BiasAdd/ReadVariableOpReadVariableOp6lstm_840_lstm_cell_681_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_840/lstm_cell_681/BiasAddBiasAddlstm_840/lstm_cell_681/add:z:05lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_840/lstm_cell_681/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_840/lstm_cell_681/splitSplit/lstm_840/lstm_cell_681/split/split_dim:output:0'lstm_840/lstm_cell_681/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_840/lstm_cell_681/SigmoidSigmoid%lstm_840/lstm_cell_681/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_840/lstm_cell_681/Sigmoid_1Sigmoid%lstm_840/lstm_cell_681/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_840/lstm_cell_681/mulMul$lstm_840/lstm_cell_681/Sigmoid_1:y:0lstm_840/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_840/lstm_cell_681/ReluRelu%lstm_840/lstm_cell_681/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_840/lstm_cell_681/mul_1Mul"lstm_840/lstm_cell_681/Sigmoid:y:0)lstm_840/lstm_cell_681/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_840/lstm_cell_681/add_1AddV2lstm_840/lstm_cell_681/mul:z:0 lstm_840/lstm_cell_681/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_840/lstm_cell_681/Sigmoid_2Sigmoid%lstm_840/lstm_cell_681/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_840/lstm_cell_681/Relu_1Relu lstm_840/lstm_cell_681/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_840/lstm_cell_681/mul_2Mul$lstm_840/lstm_cell_681/Sigmoid_2:y:0+lstm_840/lstm_cell_681/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_840/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_840/TensorArrayV2_1TensorListReserve/lstm_840/TensorArrayV2_1/element_shape:output:0!lstm_840/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_840/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_840/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_840/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_840/whileWhile$lstm_840/while/loop_counter:output:0*lstm_840/while/maximum_iterations:output:0lstm_840/time:output:0!lstm_840/TensorArrayV2_1:handle:0lstm_840/zeros:output:0lstm_840/zeros_1:output:0!lstm_840/strided_slice_1:output:0@lstm_840/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_840_lstm_cell_681_matmul_readvariableop_resource7lstm_840_lstm_cell_681_matmul_1_readvariableop_resource6lstm_840_lstm_cell_681_biasadd_readvariableop_resource*
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
lstm_840_while_body_4135372*'
condR
lstm_840_while_cond_4135371*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_840/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_840/TensorArrayV2Stack/TensorListStackTensorListStacklstm_840/while:output:3Blstm_840/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_840/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_840/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_840/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_840/strided_slice_3StridedSlice4lstm_840/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_840/strided_slice_3/stack:output:0)lstm_840/strided_slice_3/stack_1:output:0)lstm_840/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_840/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_840/transpose_1	Transpose4lstm_840/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_840/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_840/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_841/ShapeShapelstm_840/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_841/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_841/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_841/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_841/strided_sliceStridedSlicelstm_841/Shape:output:0%lstm_841/strided_slice/stack:output:0'lstm_841/strided_slice/stack_1:output:0'lstm_841/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_841/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_841/zeros/packedPacklstm_841/strided_slice:output:0 lstm_841/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_841/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_841/zerosFilllstm_841/zeros/packed:output:0lstm_841/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_841/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_841/zeros_1/packedPacklstm_841/strided_slice:output:0"lstm_841/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_841/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_841/zeros_1Fill lstm_841/zeros_1/packed:output:0lstm_841/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_841/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_841/transpose	Transposelstm_840/transpose_1:y:0 lstm_841/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_841/Shape_1Shapelstm_841/transpose:y:0*
T0*
_output_shapes
:h
lstm_841/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_841/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_841/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_841/strided_slice_1StridedSlicelstm_841/Shape_1:output:0'lstm_841/strided_slice_1/stack:output:0)lstm_841/strided_slice_1/stack_1:output:0)lstm_841/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_841/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_841/TensorArrayV2TensorListReserve-lstm_841/TensorArrayV2/element_shape:output:0!lstm_841/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_841/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_841/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_841/transpose:y:0Glstm_841/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_841/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_841/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_841/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_841/strided_slice_2StridedSlicelstm_841/transpose:y:0'lstm_841/strided_slice_2/stack:output:0)lstm_841/strided_slice_2/stack_1:output:0)lstm_841/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_841/lstm_cell_682/MatMul/ReadVariableOpReadVariableOp5lstm_841_lstm_cell_682_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_841/lstm_cell_682/MatMulMatMul!lstm_841/strided_slice_2:output:04lstm_841/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_841/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp7lstm_841_lstm_cell_682_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_841/lstm_cell_682/MatMul_1MatMullstm_841/zeros:output:06lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_841/lstm_cell_682/addAddV2'lstm_841/lstm_cell_682/MatMul:product:0)lstm_841/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_841/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp6lstm_841_lstm_cell_682_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_841/lstm_cell_682/BiasAddBiasAddlstm_841/lstm_cell_682/add:z:05lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_841/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_841/lstm_cell_682/splitSplit/lstm_841/lstm_cell_682/split/split_dim:output:0'lstm_841/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_841/lstm_cell_682/SigmoidSigmoid%lstm_841/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_841/lstm_cell_682/Sigmoid_1Sigmoid%lstm_841/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_841/lstm_cell_682/mulMul$lstm_841/lstm_cell_682/Sigmoid_1:y:0lstm_841/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_841/lstm_cell_682/ReluRelu%lstm_841/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_841/lstm_cell_682/mul_1Mul"lstm_841/lstm_cell_682/Sigmoid:y:0)lstm_841/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_841/lstm_cell_682/add_1AddV2lstm_841/lstm_cell_682/mul:z:0 lstm_841/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_841/lstm_cell_682/Sigmoid_2Sigmoid%lstm_841/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_841/lstm_cell_682/Relu_1Relu lstm_841/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_841/lstm_cell_682/mul_2Mul$lstm_841/lstm_cell_682/Sigmoid_2:y:0+lstm_841/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_841/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_841/TensorArrayV2_1TensorListReserve/lstm_841/TensorArrayV2_1/element_shape:output:0!lstm_841/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_841/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_841/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_841/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_841/whileWhile$lstm_841/while/loop_counter:output:0*lstm_841/while/maximum_iterations:output:0lstm_841/time:output:0!lstm_841/TensorArrayV2_1:handle:0lstm_841/zeros:output:0lstm_841/zeros_1:output:0!lstm_841/strided_slice_1:output:0@lstm_841/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_841_lstm_cell_682_matmul_readvariableop_resource7lstm_841_lstm_cell_682_matmul_1_readvariableop_resource6lstm_841_lstm_cell_682_biasadd_readvariableop_resource*
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
lstm_841_while_body_4135511*'
condR
lstm_841_while_cond_4135510*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_841/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_841/TensorArrayV2Stack/TensorListStackTensorListStacklstm_841/while:output:3Blstm_841/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_841/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_841/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_841/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_841/strided_slice_3StridedSlice4lstm_841/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_841/strided_slice_3/stack:output:0)lstm_841/strided_slice_3/stack_1:output:0)lstm_841/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_841/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_841/transpose_1	Transpose4lstm_841/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_841/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_841/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_842/ShapeShapelstm_841/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_842/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_842/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_842/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_842/strided_sliceStridedSlicelstm_842/Shape:output:0%lstm_842/strided_slice/stack:output:0'lstm_842/strided_slice/stack_1:output:0'lstm_842/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_842/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_842/zeros/packedPacklstm_842/strided_slice:output:0 lstm_842/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_842/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_842/zerosFilllstm_842/zeros/packed:output:0lstm_842/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_842/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_842/zeros_1/packedPacklstm_842/strided_slice:output:0"lstm_842/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_842/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_842/zeros_1Fill lstm_842/zeros_1/packed:output:0lstm_842/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_842/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_842/transpose	Transposelstm_841/transpose_1:y:0 lstm_842/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_842/Shape_1Shapelstm_842/transpose:y:0*
T0*
_output_shapes
:h
lstm_842/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_842/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_842/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_842/strided_slice_1StridedSlicelstm_842/Shape_1:output:0'lstm_842/strided_slice_1/stack:output:0)lstm_842/strided_slice_1/stack_1:output:0)lstm_842/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_842/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_842/TensorArrayV2TensorListReserve-lstm_842/TensorArrayV2/element_shape:output:0!lstm_842/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_842/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_842/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_842/transpose:y:0Glstm_842/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_842/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_842/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_842/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_842/strided_slice_2StridedSlicelstm_842/transpose:y:0'lstm_842/strided_slice_2/stack:output:0)lstm_842/strided_slice_2/stack_1:output:0)lstm_842/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_842/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp5lstm_842_lstm_cell_683_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_842/lstm_cell_683/MatMulMatMul!lstm_842/strided_slice_2:output:04lstm_842/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_842/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp7lstm_842_lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_842/lstm_cell_683/MatMul_1MatMullstm_842/zeros:output:06lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_842/lstm_cell_683/addAddV2'lstm_842/lstm_cell_683/MatMul:product:0)lstm_842/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_842/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp6lstm_842_lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_842/lstm_cell_683/BiasAddBiasAddlstm_842/lstm_cell_683/add:z:05lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_842/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_842/lstm_cell_683/splitSplit/lstm_842/lstm_cell_683/split/split_dim:output:0'lstm_842/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_842/lstm_cell_683/SigmoidSigmoid%lstm_842/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_842/lstm_cell_683/Sigmoid_1Sigmoid%lstm_842/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_842/lstm_cell_683/mulMul$lstm_842/lstm_cell_683/Sigmoid_1:y:0lstm_842/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_842/lstm_cell_683/ReluRelu%lstm_842/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_842/lstm_cell_683/mul_1Mul"lstm_842/lstm_cell_683/Sigmoid:y:0)lstm_842/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_842/lstm_cell_683/add_1AddV2lstm_842/lstm_cell_683/mul:z:0 lstm_842/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_842/lstm_cell_683/Sigmoid_2Sigmoid%lstm_842/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_842/lstm_cell_683/Relu_1Relu lstm_842/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_842/lstm_cell_683/mul_2Mul$lstm_842/lstm_cell_683/Sigmoid_2:y:0+lstm_842/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_842/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_842/TensorArrayV2_1TensorListReserve/lstm_842/TensorArrayV2_1/element_shape:output:0!lstm_842/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_842/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_842/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_842/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_842/whileWhile$lstm_842/while/loop_counter:output:0*lstm_842/while/maximum_iterations:output:0lstm_842/time:output:0!lstm_842/TensorArrayV2_1:handle:0lstm_842/zeros:output:0lstm_842/zeros_1:output:0!lstm_842/strided_slice_1:output:0@lstm_842/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_842_lstm_cell_683_matmul_readvariableop_resource7lstm_842_lstm_cell_683_matmul_1_readvariableop_resource6lstm_842_lstm_cell_683_biasadd_readvariableop_resource*
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
lstm_842_while_body_4135650*'
condR
lstm_842_while_cond_4135649*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_842/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_842/TensorArrayV2Stack/TensorListStackTensorListStacklstm_842/while:output:3Blstm_842/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_842/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_842/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_842/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_842/strided_slice_3StridedSlice4lstm_842/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_842/strided_slice_3/stack:output:0)lstm_842/strided_slice_3/stack_1:output:0)lstm_842/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_842/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_842/transpose_1	Transpose4lstm_842/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_842/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_842/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_280/MatMul/ReadVariableOpReadVariableOp(dense_280_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_280/MatMulMatMul!lstm_842/strided_slice_3:output:0'dense_280/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_280/BiasAdd/ReadVariableOpReadVariableOp)dense_280_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_280/BiasAddBiasAdddense_280/MatMul:product:0(dense_280/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_280/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_280/BiasAdd/ReadVariableOp ^dense_280/MatMul/ReadVariableOp.^lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp-^lstm_840/lstm_cell_681/MatMul/ReadVariableOp/^lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp^lstm_840/while.^lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp-^lstm_841/lstm_cell_682/MatMul/ReadVariableOp/^lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp^lstm_841/while.^lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp-^lstm_842/lstm_cell_683/MatMul/ReadVariableOp/^lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp^lstm_842/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_280/BiasAdd/ReadVariableOp dense_280/BiasAdd/ReadVariableOp2B
dense_280/MatMul/ReadVariableOpdense_280/MatMul/ReadVariableOp2^
-lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp-lstm_840/lstm_cell_681/BiasAdd/ReadVariableOp2\
,lstm_840/lstm_cell_681/MatMul/ReadVariableOp,lstm_840/lstm_cell_681/MatMul/ReadVariableOp2`
.lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp.lstm_840/lstm_cell_681/MatMul_1/ReadVariableOp2 
lstm_840/whilelstm_840/while2^
-lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp-lstm_841/lstm_cell_682/BiasAdd/ReadVariableOp2\
,lstm_841/lstm_cell_682/MatMul/ReadVariableOp,lstm_841/lstm_cell_682/MatMul/ReadVariableOp2`
.lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp.lstm_841/lstm_cell_682/MatMul_1/ReadVariableOp2 
lstm_841/whilelstm_841/while2^
-lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp-lstm_842/lstm_cell_683/BiasAdd/ReadVariableOp2\
,lstm_842/lstm_cell_683/MatMul/ReadVariableOp,lstm_842/lstm_cell_683/MatMul/ReadVariableOp2`
.lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp.lstm_842/lstm_cell_683/MatMul_1/ReadVariableOp2 
lstm_842/whilelstm_842/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134767
lstm_840_input#
lstm_840_4134740:	?#
lstm_840_4134742:	d?
lstm_840_4134744:	?#
lstm_841_4134747:	d?#
lstm_841_4134749:	2?
lstm_841_4134751:	?"
lstm_842_4134754:2("
lstm_842_4134756:
(
lstm_842_4134758:(#
dense_280_4134761:

dense_280_4134763:
identity??!dense_280/StatefulPartitionedCall? lstm_840/StatefulPartitionedCall? lstm_841/StatefulPartitionedCall? lstm_842/StatefulPartitionedCall?
 lstm_840/StatefulPartitionedCallStatefulPartitionedCalllstm_840_inputlstm_840_4134740lstm_840_4134742lstm_840_4134744*
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4133771?
 lstm_841/StatefulPartitionedCallStatefulPartitionedCall)lstm_840/StatefulPartitionedCall:output:0lstm_841_4134747lstm_841_4134749lstm_841_4134751*
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4133921?
 lstm_842/StatefulPartitionedCallStatefulPartitionedCall)lstm_841/StatefulPartitionedCall:output:0lstm_842_4134754lstm_842_4134756lstm_842_4134758*
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4134071?
!dense_280/StatefulPartitionedCallStatefulPartitionedCall)lstm_842/StatefulPartitionedCall:output:0dense_280_4134761dense_280_4134763*
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
F__inference_dense_280_layer_call_and_return_conditional_losses_4134089y
IdentityIdentity*dense_280/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_280/StatefulPartitionedCall!^lstm_840/StatefulPartitionedCall!^lstm_841/StatefulPartitionedCall!^lstm_842/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_280/StatefulPartitionedCall!dense_280/StatefulPartitionedCall2D
 lstm_840/StatefulPartitionedCall lstm_840/StatefulPartitionedCall2D
 lstm_841/StatefulPartitionedCall lstm_841/StatefulPartitionedCall2D
 lstm_842/StatefulPartitionedCall lstm_842/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_840_input
?
?
while_cond_4136458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4136458___redundant_placeholder05
1while_while_cond_4136458___redundant_placeholder15
1while_while_cond_4136458___redundant_placeholder25
1while_while_cond_4136458___redundant_placeholder3
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
while_body_4137504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_683_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_683_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_683_matmul_readvariableop_resource:2(F
4while_lstm_cell_683_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_683_biasadd_readvariableop_resource:(??*while/lstm_cell_683/BiasAdd/ReadVariableOp?)while/lstm_cell_683/MatMul/ReadVariableOp?+while/lstm_cell_683/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_842_while_body_4135650.
*lstm_842_while_lstm_842_while_loop_counter4
0lstm_842_while_lstm_842_while_maximum_iterations
lstm_842_while_placeholder 
lstm_842_while_placeholder_1 
lstm_842_while_placeholder_2 
lstm_842_while_placeholder_3-
)lstm_842_while_lstm_842_strided_slice_1_0i
elstm_842_while_tensorarrayv2read_tensorlistgetitem_lstm_842_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_842_while_lstm_cell_683_matmul_readvariableop_resource_0:2(Q
?lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource_0:
(L
>lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource_0:(
lstm_842_while_identity
lstm_842_while_identity_1
lstm_842_while_identity_2
lstm_842_while_identity_3
lstm_842_while_identity_4
lstm_842_while_identity_5+
'lstm_842_while_lstm_842_strided_slice_1g
clstm_842_while_tensorarrayv2read_tensorlistgetitem_lstm_842_tensorarrayunstack_tensorlistfromtensorM
;lstm_842_while_lstm_cell_683_matmul_readvariableop_resource:2(O
=lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource:
(J
<lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource:(??3lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp?2lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp?4lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp?
@lstm_842/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_842/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_842_while_tensorarrayv2read_tensorlistgetitem_lstm_842_tensorarrayunstack_tensorlistfromtensor_0lstm_842_while_placeholderIlstm_842/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_842/while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp=lstm_842_while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_842/while/lstm_cell_683/MatMulMatMul9lstm_842/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp?lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_842/while/lstm_cell_683/MatMul_1MatMullstm_842_while_placeholder_2<lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_842/while/lstm_cell_683/addAddV2-lstm_842/while/lstm_cell_683/MatMul:product:0/lstm_842/while/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp>lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_842/while/lstm_cell_683/BiasAddBiasAdd$lstm_842/while/lstm_cell_683/add:z:0;lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_842/while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_842/while/lstm_cell_683/splitSplit5lstm_842/while/lstm_cell_683/split/split_dim:output:0-lstm_842/while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_842/while/lstm_cell_683/SigmoidSigmoid+lstm_842/while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_842/while/lstm_cell_683/Sigmoid_1Sigmoid+lstm_842/while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_842/while/lstm_cell_683/mulMul*lstm_842/while/lstm_cell_683/Sigmoid_1:y:0lstm_842_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_842/while/lstm_cell_683/ReluRelu+lstm_842/while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_842/while/lstm_cell_683/mul_1Mul(lstm_842/while/lstm_cell_683/Sigmoid:y:0/lstm_842/while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_842/while/lstm_cell_683/add_1AddV2$lstm_842/while/lstm_cell_683/mul:z:0&lstm_842/while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_842/while/lstm_cell_683/Sigmoid_2Sigmoid+lstm_842/while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_842/while/lstm_cell_683/Relu_1Relu&lstm_842/while/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_842/while/lstm_cell_683/mul_2Mul*lstm_842/while/lstm_cell_683/Sigmoid_2:y:01lstm_842/while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_842/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_842_while_placeholder_1lstm_842_while_placeholder&lstm_842/while/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_842/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_842/while/addAddV2lstm_842_while_placeholderlstm_842/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_842/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_842/while/add_1AddV2*lstm_842_while_lstm_842_while_loop_counterlstm_842/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_842/while/IdentityIdentitylstm_842/while/add_1:z:0^lstm_842/while/NoOp*
T0*
_output_shapes
: ?
lstm_842/while/Identity_1Identity0lstm_842_while_lstm_842_while_maximum_iterations^lstm_842/while/NoOp*
T0*
_output_shapes
: t
lstm_842/while/Identity_2Identitylstm_842/while/add:z:0^lstm_842/while/NoOp*
T0*
_output_shapes
: ?
lstm_842/while/Identity_3IdentityClstm_842/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_842/while/NoOp*
T0*
_output_shapes
: ?
lstm_842/while/Identity_4Identity&lstm_842/while/lstm_cell_683/mul_2:z:0^lstm_842/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_842/while/Identity_5Identity&lstm_842/while/lstm_cell_683/add_1:z:0^lstm_842/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_842/while/NoOpNoOp4^lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp3^lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp5^lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_842_while_identity lstm_842/while/Identity:output:0"?
lstm_842_while_identity_1"lstm_842/while/Identity_1:output:0"?
lstm_842_while_identity_2"lstm_842/while/Identity_2:output:0"?
lstm_842_while_identity_3"lstm_842/while/Identity_3:output:0"?
lstm_842_while_identity_4"lstm_842/while/Identity_4:output:0"?
lstm_842_while_identity_5"lstm_842/while/Identity_5:output:0"T
'lstm_842_while_lstm_842_strided_slice_1)lstm_842_while_lstm_842_strided_slice_1_0"~
<lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource>lstm_842_while_lstm_cell_683_biasadd_readvariableop_resource_0"?
=lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource?lstm_842_while_lstm_cell_683_matmul_1_readvariableop_resource_0"|
;lstm_842_while_lstm_cell_683_matmul_readvariableop_resource=lstm_842_while_lstm_cell_683_matmul_readvariableop_resource_0"?
clstm_842_while_tensorarrayv2read_tensorlistgetitem_lstm_842_tensorarrayunstack_tensorlistfromtensorelstm_842_while_tensorarrayv2read_tensorlistgetitem_lstm_842_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp3lstm_842/while/lstm_cell_683/BiasAdd/ReadVariableOp2h
2lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp2lstm_842/while/lstm_cell_683/MatMul/ReadVariableOp2l
4lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp4lstm_842/while/lstm_cell_683/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_841_while_cond_4135083.
*lstm_841_while_lstm_841_while_loop_counter4
0lstm_841_while_lstm_841_while_maximum_iterations
lstm_841_while_placeholder 
lstm_841_while_placeholder_1 
lstm_841_while_placeholder_2 
lstm_841_while_placeholder_30
,lstm_841_while_less_lstm_841_strided_slice_1G
Clstm_841_while_lstm_841_while_cond_4135083___redundant_placeholder0G
Clstm_841_while_lstm_841_while_cond_4135083___redundant_placeholder1G
Clstm_841_while_lstm_841_while_cond_4135083___redundant_placeholder2G
Clstm_841_while_lstm_841_while_cond_4135083___redundant_placeholder3
lstm_841_while_identity
?
lstm_841/while/LessLesslstm_841_while_placeholder,lstm_841_while_less_lstm_841_strided_slice_1*
T0*
_output_shapes
: ]
lstm_841/while/IdentityIdentitylstm_841/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_841_while_identity lstm_841/while/Identity:output:0*(
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136543
inputs_0?
,lstm_cell_682_matmul_readvariableop_resource:	d?A
.lstm_cell_682_matmul_1_readvariableop_resource:	2?<
-lstm_cell_682_biasadd_readvariableop_resource:	?
identity??$lstm_cell_682/BiasAdd/ReadVariableOp?#lstm_cell_682/MatMul/ReadVariableOp?%lstm_cell_682/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_682/MatMul/ReadVariableOpReadVariableOp,lstm_cell_682_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_682/MatMulMatMulstrided_slice_2:output:0+lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_682_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_682/MatMul_1MatMulzeros:output:0-lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_682/addAddV2lstm_cell_682/MatMul:product:0 lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_682_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_682/BiasAddBiasAddlstm_cell_682/add:z:0,lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_682/splitSplit&lstm_cell_682/split/split_dim:output:0lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_682/SigmoidSigmoidlstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_1Sigmoidlstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_682/mulMullstm_cell_682/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_682/ReluRelulstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_1Mullstm_cell_682/Sigmoid:y:0 lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_682/add_1AddV2lstm_cell_682/mul:z:0lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_682/Sigmoid_2Sigmoidlstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_682/Relu_1Relulstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_682/mul_2Mullstm_cell_682/Sigmoid_2:y:0"lstm_cell_682/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_682_matmul_readvariableop_resource.lstm_cell_682_matmul_1_readvariableop_resource-lstm_cell_682_biasadd_readvariableop_resource*
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
while_body_4136459*
condR
while_cond_4136458*K
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
NoOpNoOp%^lstm_cell_682/BiasAdd/ReadVariableOp$^lstm_cell_682/MatMul/ReadVariableOp&^lstm_cell_682/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_682/BiasAdd/ReadVariableOp$lstm_cell_682/BiasAdd/ReadVariableOp2J
#lstm_cell_682/MatMul/ReadVariableOp#lstm_cell_682/MatMul/ReadVariableOp2N
%lstm_cell_682/MatMul_1/ReadVariableOp%lstm_cell_682/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4132989

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
while_body_4137075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_683_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_683_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_683_matmul_readvariableop_resource:2(F
4while_lstm_cell_683_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_683_biasadd_readvariableop_resource:(??*while/lstm_cell_683/BiasAdd/ReadVariableOp?)while/lstm_cell_683/MatMul/ReadVariableOp?+while/lstm_cell_683/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_842_while_cond_4135222.
*lstm_842_while_lstm_842_while_loop_counter4
0lstm_842_while_lstm_842_while_maximum_iterations
lstm_842_while_placeholder 
lstm_842_while_placeholder_1 
lstm_842_while_placeholder_2 
lstm_842_while_placeholder_30
,lstm_842_while_less_lstm_842_strided_slice_1G
Clstm_842_while_lstm_842_while_cond_4135222___redundant_placeholder0G
Clstm_842_while_lstm_842_while_cond_4135222___redundant_placeholder1G
Clstm_842_while_lstm_842_while_cond_4135222___redundant_placeholder2G
Clstm_842_while_lstm_842_while_cond_4135222___redundant_placeholder3
lstm_842_while_identity
?
lstm_842/while/LessLesslstm_842_while_placeholder,lstm_842_while_less_lstm_842_strided_slice_1*
T0*
_output_shapes
: ]
lstm_842/while/IdentityIdentitylstm_842/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_842_while_identity lstm_842/while/Identity:output:0*(
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4132913

inputs(
lstm_cell_681_4132831:	?(
lstm_cell_681_4132833:	d?$
lstm_cell_681_4132835:	?
identity??%lstm_cell_681/StatefulPartitionedCall?while;
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
%lstm_cell_681/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_681_4132831lstm_cell_681_4132833lstm_cell_681_4132835*
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
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4132785n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_681_4132831lstm_cell_681_4132833lstm_cell_681_4132835*
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
while_body_4132844*
condR
while_cond_4132843*K
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
NoOpNoOp&^lstm_cell_681/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_681/StatefulPartitionedCall%lstm_cell_681/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4137673

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
/__inference_lstm_cell_682_layer_call_fn_4137722

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
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4132989o
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
while_cond_4136601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4136601___redundant_placeholder05
1while_while_cond_4136601___redundant_placeholder15
1while_while_cond_4136601___redundant_placeholder25
1while_while_cond_4136601___redundant_placeholder3
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
0__inference_sequential_280_layer_call_fn_4134737
lstm_840_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_840_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134685o
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
_user_specified_namelstm_840_input
?
?
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4137705

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
while_cond_4133543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4133543___redundant_placeholder05
1while_while_cond_4133543___redundant_placeholder15
1while_while_cond_4133543___redundant_placeholder25
1while_while_cond_4133543___redundant_placeholder3
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
*__inference_lstm_842_layer_call_fn_4137005

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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4134071o
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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4137869

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
while_cond_4136744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4136744___redundant_placeholder05
1while_while_cond_4136744___redundant_placeholder15
1while_while_cond_4136744___redundant_placeholder25
1while_while_cond_4136744___redundant_placeholder3
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
/__inference_lstm_cell_681_layer_call_fn_4137641

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
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4132785o
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

lstm_841_while_body_4135084.
*lstm_841_while_lstm_841_while_loop_counter4
0lstm_841_while_lstm_841_while_maximum_iterations
lstm_841_while_placeholder 
lstm_841_while_placeholder_1 
lstm_841_while_placeholder_2 
lstm_841_while_placeholder_3-
)lstm_841_while_lstm_841_strided_slice_1_0i
elstm_841_while_tensorarrayv2read_tensorlistgetitem_lstm_841_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_841_while_lstm_cell_682_matmul_readvariableop_resource_0:	d?R
?lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource_0:	2?M
>lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource_0:	?
lstm_841_while_identity
lstm_841_while_identity_1
lstm_841_while_identity_2
lstm_841_while_identity_3
lstm_841_while_identity_4
lstm_841_while_identity_5+
'lstm_841_while_lstm_841_strided_slice_1g
clstm_841_while_tensorarrayv2read_tensorlistgetitem_lstm_841_tensorarrayunstack_tensorlistfromtensorN
;lstm_841_while_lstm_cell_682_matmul_readvariableop_resource:	d?P
=lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource:	2?K
<lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource:	???3lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp?2lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp?4lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp?
@lstm_841/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_841/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_841_while_tensorarrayv2read_tensorlistgetitem_lstm_841_tensorarrayunstack_tensorlistfromtensor_0lstm_841_while_placeholderIlstm_841/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_841/while/lstm_cell_682/MatMul/ReadVariableOpReadVariableOp=lstm_841_while_lstm_cell_682_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_841/while/lstm_cell_682/MatMulMatMul9lstm_841/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp?lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_841/while/lstm_cell_682/MatMul_1MatMullstm_841_while_placeholder_2<lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_841/while/lstm_cell_682/addAddV2-lstm_841/while/lstm_cell_682/MatMul:product:0/lstm_841/while/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp>lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_841/while/lstm_cell_682/BiasAddBiasAdd$lstm_841/while/lstm_cell_682/add:z:0;lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_841/while/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_841/while/lstm_cell_682/splitSplit5lstm_841/while/lstm_cell_682/split/split_dim:output:0-lstm_841/while/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_841/while/lstm_cell_682/SigmoidSigmoid+lstm_841/while/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_841/while/lstm_cell_682/Sigmoid_1Sigmoid+lstm_841/while/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_841/while/lstm_cell_682/mulMul*lstm_841/while/lstm_cell_682/Sigmoid_1:y:0lstm_841_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_841/while/lstm_cell_682/ReluRelu+lstm_841/while/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_841/while/lstm_cell_682/mul_1Mul(lstm_841/while/lstm_cell_682/Sigmoid:y:0/lstm_841/while/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_841/while/lstm_cell_682/add_1AddV2$lstm_841/while/lstm_cell_682/mul:z:0&lstm_841/while/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_841/while/lstm_cell_682/Sigmoid_2Sigmoid+lstm_841/while/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_841/while/lstm_cell_682/Relu_1Relu&lstm_841/while/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_841/while/lstm_cell_682/mul_2Mul*lstm_841/while/lstm_cell_682/Sigmoid_2:y:01lstm_841/while/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_841/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_841_while_placeholder_1lstm_841_while_placeholder&lstm_841/while/lstm_cell_682/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_841/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_841/while/addAddV2lstm_841_while_placeholderlstm_841/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_841/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_841/while/add_1AddV2*lstm_841_while_lstm_841_while_loop_counterlstm_841/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_841/while/IdentityIdentitylstm_841/while/add_1:z:0^lstm_841/while/NoOp*
T0*
_output_shapes
: ?
lstm_841/while/Identity_1Identity0lstm_841_while_lstm_841_while_maximum_iterations^lstm_841/while/NoOp*
T0*
_output_shapes
: t
lstm_841/while/Identity_2Identitylstm_841/while/add:z:0^lstm_841/while/NoOp*
T0*
_output_shapes
: ?
lstm_841/while/Identity_3IdentityClstm_841/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_841/while/NoOp*
T0*
_output_shapes
: ?
lstm_841/while/Identity_4Identity&lstm_841/while/lstm_cell_682/mul_2:z:0^lstm_841/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_841/while/Identity_5Identity&lstm_841/while/lstm_cell_682/add_1:z:0^lstm_841/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_841/while/NoOpNoOp4^lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp3^lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp5^lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_841_while_identity lstm_841/while/Identity:output:0"?
lstm_841_while_identity_1"lstm_841/while/Identity_1:output:0"?
lstm_841_while_identity_2"lstm_841/while/Identity_2:output:0"?
lstm_841_while_identity_3"lstm_841/while/Identity_3:output:0"?
lstm_841_while_identity_4"lstm_841/while/Identity_4:output:0"?
lstm_841_while_identity_5"lstm_841/while/Identity_5:output:0"T
'lstm_841_while_lstm_841_strided_slice_1)lstm_841_while_lstm_841_strided_slice_1_0"~
<lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource>lstm_841_while_lstm_cell_682_biasadd_readvariableop_resource_0"?
=lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource?lstm_841_while_lstm_cell_682_matmul_1_readvariableop_resource_0"|
;lstm_841_while_lstm_cell_682_matmul_readvariableop_resource=lstm_841_while_lstm_cell_682_matmul_readvariableop_resource_0"?
clstm_841_while_tensorarrayv2read_tensorlistgetitem_lstm_841_tensorarrayunstack_tensorlistfromtensorelstm_841_while_tensorarrayv2read_tensorlistgetitem_lstm_841_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp3lstm_841/while/lstm_cell_682/BiasAdd/ReadVariableOp2h
2lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp2lstm_841/while/lstm_cell_682/MatMul/ReadVariableOp2l
4lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp4lstm_841/while/lstm_cell_682/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_840_layer_call_fn_4135784

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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4134617s
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4133613

inputs'
lstm_cell_683_4133531:2('
lstm_cell_683_4133533:
(#
lstm_cell_683_4133535:(
identity??%lstm_cell_683/StatefulPartitionedCall?while;
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
%lstm_cell_683/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_683_4133531lstm_cell_683_4133533lstm_cell_683_4133535*
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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4133485n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_683_4133531lstm_cell_683_4133533lstm_cell_683_4133535*
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
while_body_4133544*
condR
while_cond_4133543*K
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
NoOpNoOp&^lstm_cell_683/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_683/StatefulPartitionedCall%lstm_cell_683/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4137803

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
while_cond_4137074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4137074___redundant_placeholder05
1while_while_cond_4137074___redundant_placeholder15
1while_while_cond_4137074___redundant_placeholder25
1while_while_cond_4137074___redundant_placeholder3
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
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134096

inputs#
lstm_840_4133772:	?#
lstm_840_4133774:	d?
lstm_840_4133776:	?#
lstm_841_4133922:	d?#
lstm_841_4133924:	2?
lstm_841_4133926:	?"
lstm_842_4134072:2("
lstm_842_4134074:
(
lstm_842_4134076:(#
dense_280_4134090:

dense_280_4134092:
identity??!dense_280/StatefulPartitionedCall? lstm_840/StatefulPartitionedCall? lstm_841/StatefulPartitionedCall? lstm_842/StatefulPartitionedCall?
 lstm_840/StatefulPartitionedCallStatefulPartitionedCallinputslstm_840_4133772lstm_840_4133774lstm_840_4133776*
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4133771?
 lstm_841/StatefulPartitionedCallStatefulPartitionedCall)lstm_840/StatefulPartitionedCall:output:0lstm_841_4133922lstm_841_4133924lstm_841_4133926*
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4133921?
 lstm_842/StatefulPartitionedCallStatefulPartitionedCall)lstm_841/StatefulPartitionedCall:output:0lstm_842_4134072lstm_842_4134074lstm_842_4134076*
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4134071?
!dense_280/StatefulPartitionedCallStatefulPartitionedCall)lstm_842/StatefulPartitionedCall:output:0dense_280_4134090dense_280_4134092*
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
F__inference_dense_280_layer_call_and_return_conditional_losses_4134089y
IdentityIdentity*dense_280/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_280/StatefulPartitionedCall!^lstm_840/StatefulPartitionedCall!^lstm_841/StatefulPartitionedCall!^lstm_842/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_280/StatefulPartitionedCall!dense_280/StatefulPartitionedCall2D
 lstm_840/StatefulPartitionedCall lstm_840/StatefulPartitionedCall2D
 lstm_841/StatefulPartitionedCall lstm_841/StatefulPartitionedCall2D
 lstm_842/StatefulPartitionedCall lstm_842/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_280_layer_call_fn_4134886

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
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134685o
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4133263

inputs(
lstm_cell_682_4133181:	d?(
lstm_cell_682_4133183:	2?$
lstm_cell_682_4133185:	?
identity??%lstm_cell_682/StatefulPartitionedCall?while;
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
%lstm_cell_682/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_682_4133181lstm_cell_682_4133183lstm_cell_682_4133185*
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
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4133135n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_682_4133181lstm_cell_682_4133183lstm_cell_682_4133185*
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
while_body_4133194*
condR
while_cond_4133193*K
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
NoOpNoOp&^lstm_cell_682/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_682/StatefulPartitionedCall%lstm_cell_682/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4137771

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
?
?
+__inference_dense_280_layer_call_fn_4137597

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
F__inference_dense_280_layer_call_and_return_conditional_losses_4134089o
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
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134797
lstm_840_input#
lstm_840_4134770:	?#
lstm_840_4134772:	d?
lstm_840_4134774:	?#
lstm_841_4134777:	d?#
lstm_841_4134779:	2?
lstm_841_4134781:	?"
lstm_842_4134784:2("
lstm_842_4134786:
(
lstm_842_4134788:(#
dense_280_4134791:

dense_280_4134793:
identity??!dense_280/StatefulPartitionedCall? lstm_840/StatefulPartitionedCall? lstm_841/StatefulPartitionedCall? lstm_842/StatefulPartitionedCall?
 lstm_840/StatefulPartitionedCallStatefulPartitionedCalllstm_840_inputlstm_840_4134770lstm_840_4134772lstm_840_4134774*
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4134617?
 lstm_841/StatefulPartitionedCallStatefulPartitionedCall)lstm_840/StatefulPartitionedCall:output:0lstm_841_4134777lstm_841_4134779lstm_841_4134781*
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4134452?
 lstm_842/StatefulPartitionedCallStatefulPartitionedCall)lstm_841/StatefulPartitionedCall:output:0lstm_842_4134784lstm_842_4134786lstm_842_4134788*
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4134287?
!dense_280/StatefulPartitionedCallStatefulPartitionedCall)lstm_842/StatefulPartitionedCall:output:0dense_280_4134791dense_280_4134793*
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
F__inference_dense_280_layer_call_and_return_conditional_losses_4134089y
IdentityIdentity*dense_280/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_280/StatefulPartitionedCall!^lstm_840/StatefulPartitionedCall!^lstm_841/StatefulPartitionedCall!^lstm_842/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_280/StatefulPartitionedCall!dense_280/StatefulPartitionedCall2D
 lstm_840/StatefulPartitionedCall lstm_840/StatefulPartitionedCall2D
 lstm_841/StatefulPartitionedCall lstm_841/StatefulPartitionedCall2D
 lstm_842/StatefulPartitionedCall lstm_842/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_840_input
?
?
while_cond_4133986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4133986___redundant_placeholder05
1while_while_cond_4133986___redundant_placeholder15
1while_while_cond_4133986___redundant_placeholder25
1while_while_cond_4133986___redundant_placeholder3
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
while_cond_4133686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4133686___redundant_placeholder05
1while_while_cond_4133686___redundant_placeholder15
1while_while_cond_4133686___redundant_placeholder25
1while_while_cond_4133686___redundant_placeholder3
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
*__inference_lstm_841_layer_call_fn_4136378
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4133263|
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
while_body_4132844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_681_4132868_0:	?0
while_lstm_cell_681_4132870_0:	d?,
while_lstm_cell_681_4132872_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_681_4132868:	?.
while_lstm_cell_681_4132870:	d?*
while_lstm_cell_681_4132872:	???+while/lstm_cell_681/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_681/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_681_4132868_0while_lstm_cell_681_4132870_0while_lstm_cell_681_4132872_0*
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
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4132785?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_681/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_681/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_681/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_681/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_681_4132868while_lstm_cell_681_4132868_0"<
while_lstm_cell_681_4132870while_lstm_cell_681_4132870_0"<
while_lstm_cell_681_4132872while_lstm_cell_681_4132872_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_681/StatefulPartitionedCall+while/lstm_cell_681/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4133837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_682_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_682_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_682_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_682_matmul_readvariableop_resource:	d?G
4while_lstm_cell_682_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_682_biasadd_readvariableop_resource:	???*while/lstm_cell_682/BiasAdd/ReadVariableOp?)while/lstm_cell_682/MatMul/ReadVariableOp?+while/lstm_cell_682/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_682/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_682_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_682/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_682/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_682/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_682_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_682/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_682/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_682/addAddV2$while/lstm_cell_682/MatMul:product:0&while/lstm_cell_682/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_682/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_682_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_682/BiasAddBiasAddwhile/lstm_cell_682/add:z:02while/lstm_cell_682/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_682/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_682/splitSplit,while/lstm_cell_682/split/split_dim:output:0$while/lstm_cell_682/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_682/SigmoidSigmoid"while/lstm_cell_682/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_1Sigmoid"while/lstm_cell_682/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mulMul!while/lstm_cell_682/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_682/ReluRelu"while/lstm_cell_682/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_1Mulwhile/lstm_cell_682/Sigmoid:y:0&while/lstm_cell_682/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/add_1AddV2while/lstm_cell_682/mul:z:0while/lstm_cell_682/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_682/Sigmoid_2Sigmoid"while/lstm_cell_682/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_682/Relu_1Reluwhile/lstm_cell_682/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_682/mul_2Mul!while/lstm_cell_682/Sigmoid_2:y:0(while/lstm_cell_682/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_682/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_682/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_682/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_682/BiasAdd/ReadVariableOp*^while/lstm_cell_682/MatMul/ReadVariableOp,^while/lstm_cell_682/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_682_biasadd_readvariableop_resource5while_lstm_cell_682_biasadd_readvariableop_resource_0"n
4while_lstm_cell_682_matmul_1_readvariableop_resource6while_lstm_cell_682_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_682_matmul_readvariableop_resource4while_lstm_cell_682_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_682/BiasAdd/ReadVariableOp*while/lstm_cell_682/BiasAdd/ReadVariableOp2V
)while/lstm_cell_682/MatMul/ReadVariableOp)while/lstm_cell_682/MatMul/ReadVariableOp2Z
+while/lstm_cell_682/MatMul_1/ReadVariableOp+while/lstm_cell_682/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4137218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_683_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_683_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_683_matmul_readvariableop_resource:2(F
4while_lstm_cell_683_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_683_biasadd_readvariableop_resource:(??*while/lstm_cell_683/BiasAdd/ReadVariableOp?)while/lstm_cell_683/MatMul/ReadVariableOp?+while/lstm_cell_683/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137588

inputs>
,lstm_cell_683_matmul_readvariableop_resource:2(@
.lstm_cell_683_matmul_1_readvariableop_resource:
(;
-lstm_cell_683_biasadd_readvariableop_resource:(
identity??$lstm_cell_683/BiasAdd/ReadVariableOp?#lstm_cell_683/MatMul/ReadVariableOp?%lstm_cell_683/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
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
while_body_4137504*
condR
while_cond_4137503*K
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
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
F__inference_dense_280_layer_call_and_return_conditional_losses_4134089

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
while_body_4133003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_682_4133027_0:	d?0
while_lstm_cell_682_4133029_0:	2?,
while_lstm_cell_682_4133031_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_682_4133027:	d?.
while_lstm_cell_682_4133029:	2?*
while_lstm_cell_682_4133031:	???+while/lstm_cell_682/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_682/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_682_4133027_0while_lstm_cell_682_4133029_0while_lstm_cell_682_4133031_0*
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
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4132989?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_682/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_682/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_682/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_682/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_682_4133027while_lstm_cell_682_4133027_0"<
while_lstm_cell_682_4133029while_lstm_cell_682_4133029_0"<
while_lstm_cell_682_4133031while_lstm_cell_682_4133031_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_682/StatefulPartitionedCall+while/lstm_cell_682/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4133194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_682_4133218_0:	d?0
while_lstm_cell_682_4133220_0:	2?,
while_lstm_cell_682_4133222_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_682_4133218:	d?.
while_lstm_cell_682_4133220:	2?*
while_lstm_cell_682_4133222:	???+while/lstm_cell_682/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_682/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_682_4133218_0while_lstm_cell_682_4133220_0while_lstm_cell_682_4133222_0*
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
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4133135?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_682/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_682/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_682/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_682/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_682_4133218while_lstm_cell_682_4133218_0"<
while_lstm_cell_682_4133220while_lstm_cell_682_4133220_0"<
while_lstm_cell_682_4133222while_lstm_cell_682_4133222_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_682/StatefulPartitionedCall+while/lstm_cell_682/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4133987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_683_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_683_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_683_matmul_readvariableop_resource:2(F
4while_lstm_cell_683_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_683_biasadd_readvariableop_resource:(??*while/lstm_cell_683/BiasAdd/ReadVariableOp?)while/lstm_cell_683/MatMul/ReadVariableOp?+while/lstm_cell_683/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_842_layer_call_fn_4136983
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4133422o
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
*__inference_lstm_840_layer_call_fn_4135773

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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4133771s
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

?
lstm_840_while_cond_4135371.
*lstm_840_while_lstm_840_while_loop_counter4
0lstm_840_while_lstm_840_while_maximum_iterations
lstm_840_while_placeholder 
lstm_840_while_placeholder_1 
lstm_840_while_placeholder_2 
lstm_840_while_placeholder_30
,lstm_840_while_less_lstm_840_strided_slice_1G
Clstm_840_while_lstm_840_while_cond_4135371___redundant_placeholder0G
Clstm_840_while_lstm_840_while_cond_4135371___redundant_placeholder1G
Clstm_840_while_lstm_840_while_cond_4135371___redundant_placeholder2G
Clstm_840_while_lstm_840_while_cond_4135371___redundant_placeholder3
lstm_840_while_identity
?
lstm_840/while/LessLesslstm_840_while_placeholder,lstm_840_while_less_lstm_840_strided_slice_1*
T0*
_output_shapes
: ]
lstm_840/while/IdentityIdentitylstm_840/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_840_while_identity lstm_840/while/Identity:output:0*(
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
lstm_840_input;
 serving_default_lstm_840_input:0?????????=
	dense_2800
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
2dense_280/kernel
:2dense_280/bias
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
0:.	?2lstm_840/lstm_cell_840/kernel
::8	d?2'lstm_840/lstm_cell_840/recurrent_kernel
*:(?2lstm_840/lstm_cell_840/bias
0:.	d?2lstm_841/lstm_cell_841/kernel
::8	2?2'lstm_841/lstm_cell_841/recurrent_kernel
*:(?2lstm_841/lstm_cell_841/bias
/:-2(2lstm_842/lstm_cell_842/kernel
9:7
(2'lstm_842/lstm_cell_842/recurrent_kernel
):'(2lstm_842/lstm_cell_842/bias
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
2Adam/dense_280/kernel/m
!:2Adam/dense_280/bias/m
5:3	?2$Adam/lstm_840/lstm_cell_840/kernel/m
?:=	d?2.Adam/lstm_840/lstm_cell_840/recurrent_kernel/m
/:-?2"Adam/lstm_840/lstm_cell_840/bias/m
5:3	d?2$Adam/lstm_841/lstm_cell_841/kernel/m
?:=	2?2.Adam/lstm_841/lstm_cell_841/recurrent_kernel/m
/:-?2"Adam/lstm_841/lstm_cell_841/bias/m
4:22(2$Adam/lstm_842/lstm_cell_842/kernel/m
>:<
(2.Adam/lstm_842/lstm_cell_842/recurrent_kernel/m
.:,(2"Adam/lstm_842/lstm_cell_842/bias/m
':%
2Adam/dense_280/kernel/v
!:2Adam/dense_280/bias/v
5:3	?2$Adam/lstm_840/lstm_cell_840/kernel/v
?:=	d?2.Adam/lstm_840/lstm_cell_840/recurrent_kernel/v
/:-?2"Adam/lstm_840/lstm_cell_840/bias/v
5:3	d?2$Adam/lstm_841/lstm_cell_841/kernel/v
?:=	2?2.Adam/lstm_841/lstm_cell_841/recurrent_kernel/v
/:-?2"Adam/lstm_841/lstm_cell_841/bias/v
4:22(2$Adam/lstm_842/lstm_cell_842/kernel/v
>:<
(2.Adam/lstm_842/lstm_cell_842/recurrent_kernel/v
.:,(2"Adam/lstm_842/lstm_cell_842/bias/v
?2?
0__inference_sequential_280_layer_call_fn_4134121
0__inference_sequential_280_layer_call_fn_4134859
0__inference_sequential_280_layer_call_fn_4134886
0__inference_sequential_280_layer_call_fn_4134737?
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
K__inference_sequential_280_layer_call_and_return_conditional_losses_4135313
K__inference_sequential_280_layer_call_and_return_conditional_losses_4135740
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134767
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134797?
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
"__inference__wrapped_model_4132572lstm_840_input"?
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
*__inference_lstm_840_layer_call_fn_4135751
*__inference_lstm_840_layer_call_fn_4135762
*__inference_lstm_840_layer_call_fn_4135773
*__inference_lstm_840_layer_call_fn_4135784?
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4135927
E__inference_lstm_840_layer_call_and_return_conditional_losses_4136070
E__inference_lstm_840_layer_call_and_return_conditional_losses_4136213
E__inference_lstm_840_layer_call_and_return_conditional_losses_4136356?
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
*__inference_lstm_841_layer_call_fn_4136367
*__inference_lstm_841_layer_call_fn_4136378
*__inference_lstm_841_layer_call_fn_4136389
*__inference_lstm_841_layer_call_fn_4136400?
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136543
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136686
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136829
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136972?
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
*__inference_lstm_842_layer_call_fn_4136983
*__inference_lstm_842_layer_call_fn_4136994
*__inference_lstm_842_layer_call_fn_4137005
*__inference_lstm_842_layer_call_fn_4137016?
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137159
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137302
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137445
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137588?
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
+__inference_dense_280_layer_call_fn_4137597?
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
F__inference_dense_280_layer_call_and_return_conditional_losses_4137607?
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
%__inference_signature_wrapper_4134832lstm_840_input"?
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
/__inference_lstm_cell_681_layer_call_fn_4137624
/__inference_lstm_cell_681_layer_call_fn_4137641?
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
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4137673
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4137705?
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
/__inference_lstm_cell_682_layer_call_fn_4137722
/__inference_lstm_cell_682_layer_call_fn_4137739?
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
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4137771
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4137803?
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
/__inference_lstm_cell_683_layer_call_fn_4137820
/__inference_lstm_cell_683_layer_call_fn_4137837?
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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4137869
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4137901?
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
"__inference__wrapped_model_4132572?-./012345!";?8
1?.
,?)
lstm_840_input?????????
? "5?2
0
	dense_280#? 
	dense_280??????????
F__inference_dense_280_layer_call_and_return_conditional_losses_4137607\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_280_layer_call_fn_4137597O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_840_layer_call_and_return_conditional_losses_4135927?-./O?L
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4136070?-./O?L
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4136213q-./??<
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
E__inference_lstm_840_layer_call_and_return_conditional_losses_4136356q-./??<
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
*__inference_lstm_840_layer_call_fn_4135751}-./O?L
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
*__inference_lstm_840_layer_call_fn_4135762}-./O?L
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
*__inference_lstm_840_layer_call_fn_4135773d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_840_layer_call_fn_4135784d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136543?012O?L
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136686?012O?L
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136829q012??<
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
E__inference_lstm_841_layer_call_and_return_conditional_losses_4136972q012??<
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
*__inference_lstm_841_layer_call_fn_4136367}012O?L
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
*__inference_lstm_841_layer_call_fn_4136378}012O?L
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
*__inference_lstm_841_layer_call_fn_4136389d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_841_layer_call_fn_4136400d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137159}345O?L
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137302}345O?L
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137445m345??<
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
E__inference_lstm_842_layer_call_and_return_conditional_losses_4137588m345??<
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
*__inference_lstm_842_layer_call_fn_4136983p345O?L
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
*__inference_lstm_842_layer_call_fn_4136994p345O?L
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
*__inference_lstm_842_layer_call_fn_4137005`345??<
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
*__inference_lstm_842_layer_call_fn_4137016`345??<
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
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4137673?-./??}
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
J__inference_lstm_cell_681_layer_call_and_return_conditional_losses_4137705?-./??}
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
/__inference_lstm_cell_681_layer_call_fn_4137624?-./??}
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
/__inference_lstm_cell_681_layer_call_fn_4137641?-./??}
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
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4137771?012??}
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
J__inference_lstm_cell_682_layer_call_and_return_conditional_losses_4137803?012??}
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
/__inference_lstm_cell_682_layer_call_fn_4137722?012??}
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
/__inference_lstm_cell_682_layer_call_fn_4137739?012??}
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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4137869?345??}
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
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_4137901?345??}
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
/__inference_lstm_cell_683_layer_call_fn_4137820?345??}
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
/__inference_lstm_cell_683_layer_call_fn_4137837?345??}
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
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134767y-./012345!"C?@
9?6
,?)
lstm_840_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_280_layer_call_and_return_conditional_losses_4134797y-./012345!"C?@
9?6
,?)
lstm_840_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_280_layer_call_and_return_conditional_losses_4135313q-./012345!";?8
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
K__inference_sequential_280_layer_call_and_return_conditional_losses_4135740q-./012345!";?8
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
0__inference_sequential_280_layer_call_fn_4134121l-./012345!"C?@
9?6
,?)
lstm_840_input?????????
p 

 
? "???????????
0__inference_sequential_280_layer_call_fn_4134737l-./012345!"C?@
9?6
,?)
lstm_840_input?????????
p

 
? "???????????
0__inference_sequential_280_layer_call_fn_4134859d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_280_layer_call_fn_4134886d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4134832?-./012345!"M?J
? 
C?@
>
lstm_840_input,?)
lstm_840_input?????????"5?2
0
	dense_280#? 
	dense_280?????????