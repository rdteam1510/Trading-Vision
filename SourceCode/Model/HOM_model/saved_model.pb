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
dense_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_128/kernel
u
$dense_128/kernel/Read/ReadVariableOpReadVariableOpdense_128/kernel*
_output_shapes

:
*
dtype0
t
dense_128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_128/bias
m
"dense_128/bias/Read/ReadVariableOpReadVariableOpdense_128/bias*
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
lstm_384/lstm_cell_384/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_384/lstm_cell_384/kernel
?
1lstm_384/lstm_cell_384/kernel/Read/ReadVariableOpReadVariableOplstm_384/lstm_cell_384/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_384/lstm_cell_384/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_384/lstm_cell_384/recurrent_kernel
?
;lstm_384/lstm_cell_384/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_384/lstm_cell_384/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_384/lstm_cell_384/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_384/lstm_cell_384/bias
?
/lstm_384/lstm_cell_384/bias/Read/ReadVariableOpReadVariableOplstm_384/lstm_cell_384/bias*
_output_shapes	
:?*
dtype0
?
lstm_385/lstm_cell_385/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_385/lstm_cell_385/kernel
?
1lstm_385/lstm_cell_385/kernel/Read/ReadVariableOpReadVariableOplstm_385/lstm_cell_385/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_385/lstm_cell_385/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_385/lstm_cell_385/recurrent_kernel
?
;lstm_385/lstm_cell_385/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_385/lstm_cell_385/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_385/lstm_cell_385/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_385/lstm_cell_385/bias
?
/lstm_385/lstm_cell_385/bias/Read/ReadVariableOpReadVariableOplstm_385/lstm_cell_385/bias*
_output_shapes	
:?*
dtype0
?
lstm_386/lstm_cell_386/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_386/lstm_cell_386/kernel
?
1lstm_386/lstm_cell_386/kernel/Read/ReadVariableOpReadVariableOplstm_386/lstm_cell_386/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_386/lstm_cell_386/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_386/lstm_cell_386/recurrent_kernel
?
;lstm_386/lstm_cell_386/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_386/lstm_cell_386/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_386/lstm_cell_386/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_386/lstm_cell_386/bias
?
/lstm_386/lstm_cell_386/bias/Read/ReadVariableOpReadVariableOplstm_386/lstm_cell_386/bias*
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
Adam/dense_128/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_128/kernel/m
?
+Adam/dense_128/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_128/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_128/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_128/bias/m
{
)Adam/dense_128/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_128/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_384/lstm_cell_384/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_384/lstm_cell_384/kernel/m
?
8Adam/lstm_384/lstm_cell_384/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_384/lstm_cell_384/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_384/lstm_cell_384/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_384/lstm_cell_384/recurrent_kernel/m
?
BAdam/lstm_384/lstm_cell_384/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_384/lstm_cell_384/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_384/lstm_cell_384/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_384/lstm_cell_384/bias/m
?
6Adam/lstm_384/lstm_cell_384/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_384/lstm_cell_384/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_385/lstm_cell_385/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_385/lstm_cell_385/kernel/m
?
8Adam/lstm_385/lstm_cell_385/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_385/lstm_cell_385/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_385/lstm_cell_385/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_385/lstm_cell_385/recurrent_kernel/m
?
BAdam/lstm_385/lstm_cell_385/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_385/lstm_cell_385/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_385/lstm_cell_385/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_385/lstm_cell_385/bias/m
?
6Adam/lstm_385/lstm_cell_385/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_385/lstm_cell_385/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_386/lstm_cell_386/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_386/lstm_cell_386/kernel/m
?
8Adam/lstm_386/lstm_cell_386/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_386/lstm_cell_386/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_386/lstm_cell_386/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_386/lstm_cell_386/recurrent_kernel/m
?
BAdam/lstm_386/lstm_cell_386/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_386/lstm_cell_386/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_386/lstm_cell_386/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_386/lstm_cell_386/bias/m
?
6Adam/lstm_386/lstm_cell_386/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_386/lstm_cell_386/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_128/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_128/kernel/v
?
+Adam/dense_128/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_128/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_128/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_128/bias/v
{
)Adam/dense_128/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_128/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_384/lstm_cell_384/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_384/lstm_cell_384/kernel/v
?
8Adam/lstm_384/lstm_cell_384/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_384/lstm_cell_384/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_384/lstm_cell_384/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_384/lstm_cell_384/recurrent_kernel/v
?
BAdam/lstm_384/lstm_cell_384/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_384/lstm_cell_384/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_384/lstm_cell_384/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_384/lstm_cell_384/bias/v
?
6Adam/lstm_384/lstm_cell_384/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_384/lstm_cell_384/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_385/lstm_cell_385/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_385/lstm_cell_385/kernel/v
?
8Adam/lstm_385/lstm_cell_385/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_385/lstm_cell_385/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_385/lstm_cell_385/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_385/lstm_cell_385/recurrent_kernel/v
?
BAdam/lstm_385/lstm_cell_385/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_385/lstm_cell_385/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_385/lstm_cell_385/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_385/lstm_cell_385/bias/v
?
6Adam/lstm_385/lstm_cell_385/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_385/lstm_cell_385/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_386/lstm_cell_386/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_386/lstm_cell_386/kernel/v
?
8Adam/lstm_386/lstm_cell_386/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_386/lstm_cell_386/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_386/lstm_cell_386/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_386/lstm_cell_386/recurrent_kernel/v
?
BAdam/lstm_386/lstm_cell_386/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_386/lstm_cell_386/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_386/lstm_cell_386/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_386/lstm_cell_386/bias/v
?
6Adam/lstm_386/lstm_cell_386/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_386/lstm_cell_386/bias/v*
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
VARIABLE_VALUEdense_128/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_128/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_384/lstm_cell_384/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_384/lstm_cell_384/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_384/lstm_cell_384/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_385/lstm_cell_385/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_385/lstm_cell_385/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_385/lstm_cell_385/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_386/lstm_cell_386/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_386/lstm_cell_386/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_386/lstm_cell_386/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_128/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_128/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_384/lstm_cell_384/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_384/lstm_cell_384/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_384/lstm_cell_384/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_385/lstm_cell_385/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_385/lstm_cell_385/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_385/lstm_cell_385/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_386/lstm_cell_386/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_386/lstm_cell_386/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_386/lstm_cell_386/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_128/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_128/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_384/lstm_cell_384/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_384/lstm_cell_384/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_384/lstm_cell_384/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_385/lstm_cell_385/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_385/lstm_cell_385/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_385/lstm_cell_385/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_386/lstm_cell_386/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_386/lstm_cell_386/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_386/lstm_cell_386/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_384_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_384_inputlstm_384/lstm_cell_384/kernel'lstm_384/lstm_cell_384/recurrent_kernellstm_384/lstm_cell_384/biaslstm_385/lstm_cell_385/kernel'lstm_385/lstm_cell_385/recurrent_kernellstm_385/lstm_cell_385/biaslstm_386/lstm_cell_386/kernel'lstm_386/lstm_cell_386/recurrent_kernellstm_386/lstm_cell_386/biasdense_128/kerneldense_128/bias*
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
$__inference_signature_wrapper_686653
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_128/kernel/Read/ReadVariableOp"dense_128/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_384/lstm_cell_384/kernel/Read/ReadVariableOp;lstm_384/lstm_cell_384/recurrent_kernel/Read/ReadVariableOp/lstm_384/lstm_cell_384/bias/Read/ReadVariableOp1lstm_385/lstm_cell_385/kernel/Read/ReadVariableOp;lstm_385/lstm_cell_385/recurrent_kernel/Read/ReadVariableOp/lstm_385/lstm_cell_385/bias/Read/ReadVariableOp1lstm_386/lstm_cell_386/kernel/Read/ReadVariableOp;lstm_386/lstm_cell_386/recurrent_kernel/Read/ReadVariableOp/lstm_386/lstm_cell_386/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_128/kernel/m/Read/ReadVariableOp)Adam/dense_128/bias/m/Read/ReadVariableOp8Adam/lstm_384/lstm_cell_384/kernel/m/Read/ReadVariableOpBAdam/lstm_384/lstm_cell_384/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_384/lstm_cell_384/bias/m/Read/ReadVariableOp8Adam/lstm_385/lstm_cell_385/kernel/m/Read/ReadVariableOpBAdam/lstm_385/lstm_cell_385/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_385/lstm_cell_385/bias/m/Read/ReadVariableOp8Adam/lstm_386/lstm_cell_386/kernel/m/Read/ReadVariableOpBAdam/lstm_386/lstm_cell_386/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_386/lstm_cell_386/bias/m/Read/ReadVariableOp+Adam/dense_128/kernel/v/Read/ReadVariableOp)Adam/dense_128/bias/v/Read/ReadVariableOp8Adam/lstm_384/lstm_cell_384/kernel/v/Read/ReadVariableOpBAdam/lstm_384/lstm_cell_384/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_384/lstm_cell_384/bias/v/Read/ReadVariableOp8Adam/lstm_385/lstm_cell_385/kernel/v/Read/ReadVariableOpBAdam/lstm_385/lstm_cell_385/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_385/lstm_cell_385/bias/v/Read/ReadVariableOp8Adam/lstm_386/lstm_cell_386/kernel/v/Read/ReadVariableOpBAdam/lstm_386/lstm_cell_386/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_386/lstm_cell_386/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_689865
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_128/kerneldense_128/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_384/lstm_cell_384/kernel'lstm_384/lstm_cell_384/recurrent_kernellstm_384/lstm_cell_384/biaslstm_385/lstm_cell_385/kernel'lstm_385/lstm_cell_385/recurrent_kernellstm_385/lstm_cell_385/biaslstm_386/lstm_cell_386/kernel'lstm_386/lstm_cell_386/recurrent_kernellstm_386/lstm_cell_386/biastotalcountAdam/dense_128/kernel/mAdam/dense_128/bias/m$Adam/lstm_384/lstm_cell_384/kernel/m.Adam/lstm_384/lstm_cell_384/recurrent_kernel/m"Adam/lstm_384/lstm_cell_384/bias/m$Adam/lstm_385/lstm_cell_385/kernel/m.Adam/lstm_385/lstm_cell_385/recurrent_kernel/m"Adam/lstm_385/lstm_cell_385/bias/m$Adam/lstm_386/lstm_cell_386/kernel/m.Adam/lstm_386/lstm_cell_386/recurrent_kernel/m"Adam/lstm_386/lstm_cell_386/bias/mAdam/dense_128/kernel/vAdam/dense_128/bias/v$Adam/lstm_384/lstm_cell_384/kernel/v.Adam/lstm_384/lstm_cell_384/recurrent_kernel/v"Adam/lstm_384/lstm_cell_384/bias/v$Adam/lstm_385/lstm_cell_385/kernel/v.Adam/lstm_385/lstm_cell_385/recurrent_kernel/v"Adam/lstm_385/lstm_cell_385/bias/v$Adam/lstm_386/lstm_cell_386/kernel/v.Adam/lstm_386/lstm_cell_386/recurrent_kernel/v"Adam/lstm_386/lstm_cell_386/bias/v*4
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
"__inference__traced_restore_689995??+
?8
?
D__inference_lstm_384_layer_call_and_return_conditional_losses_684543

inputs'
lstm_cell_111_684461:	?'
lstm_cell_111_684463:	d?#
lstm_cell_111_684465:	?
identity??%lstm_cell_111/StatefulPartitionedCall?while;
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
%lstm_cell_111/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_111_684461lstm_cell_111_684463lstm_cell_111_684465*
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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_684460n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_111_684461lstm_cell_111_684463lstm_cell_111_684465*
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
while_body_684474*
condR
while_cond_684473*K
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
NoOpNoOp&^lstm_cell_111/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_111/StatefulPartitionedCall%lstm_cell_111/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_385_layer_call_and_return_conditional_losses_686273

inputs?
,lstm_cell_112_matmul_readvariableop_resource:	d?A
.lstm_cell_112_matmul_1_readvariableop_resource:	2?<
-lstm_cell_112_biasadd_readvariableop_resource:	?
identity??$lstm_cell_112/BiasAdd/ReadVariableOp?#lstm_cell_112/MatMul/ReadVariableOp?%lstm_cell_112/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_112/MatMul/ReadVariableOpReadVariableOp,lstm_cell_112_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_112/MatMulMatMulstrided_slice_2:output:0+lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_112_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_112/MatMul_1MatMulzeros:output:0-lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_112/addAddV2lstm_cell_112/MatMul:product:0 lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_112_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_112/BiasAddBiasAddlstm_cell_112/add:z:0,lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_112/splitSplit&lstm_cell_112/split/split_dim:output:0lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_112/SigmoidSigmoidlstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_1Sigmoidlstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_112/mulMullstm_cell_112/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_112/ReluRelulstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_1Mullstm_cell_112/Sigmoid:y:0 lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_112/add_1AddV2lstm_cell_112/mul:z:0lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_2Sigmoidlstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_112/Relu_1Relulstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_2Mullstm_cell_112/Sigmoid_2:y:0"lstm_cell_112/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_112_matmul_readvariableop_resource.lstm_cell_112_matmul_1_readvariableop_resource-lstm_cell_112_biasadd_readvariableop_resource*
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
while_body_686189*
condR
while_cond_686188*K
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
NoOpNoOp%^lstm_cell_112/BiasAdd/ReadVariableOp$^lstm_cell_112/MatMul/ReadVariableOp&^lstm_cell_112/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_112/BiasAdd/ReadVariableOp$lstm_cell_112/BiasAdd/ReadVariableOp2J
#lstm_cell_112/MatMul/ReadVariableOp#lstm_cell_112/MatMul/ReadVariableOp2N
%lstm_cell_112/MatMul_1/ReadVariableOp%lstm_cell_112/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_686024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_113_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_113_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_113_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_113_matmul_readvariableop_resource:2(F
4while_lstm_cell_113_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_113_biasadd_readvariableop_resource:(??*while/lstm_cell_113/BiasAdd/ReadVariableOp?)while/lstm_cell_113/MatMul/ReadVariableOp?+while/lstm_cell_113/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_113/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_113_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_113/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_113_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_113/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_113/addAddV2$while/lstm_cell_113/MatMul:product:0&while/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_113_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_113/BiasAddBiasAddwhile/lstm_cell_113/add:z:02while/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_113/splitSplit,while/lstm_cell_113/split/split_dim:output:0$while/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_113/SigmoidSigmoid"while/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_1Sigmoid"while/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mulMul!while/lstm_cell_113/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_113/ReluRelu"while/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_1Mulwhile/lstm_cell_113/Sigmoid:y:0&while/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/add_1AddV2while/lstm_cell_113/mul:z:0while/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_2Sigmoid"while/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_113/Relu_1Reluwhile/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_2Mul!while/lstm_cell_113/Sigmoid_2:y:0(while/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_113/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_113/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_113/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_113/BiasAdd/ReadVariableOp*^while/lstm_cell_113/MatMul/ReadVariableOp,^while/lstm_cell_113/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_113_biasadd_readvariableop_resource5while_lstm_cell_113_biasadd_readvariableop_resource_0"n
4while_lstm_cell_113_matmul_1_readvariableop_resource6while_lstm_cell_113_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_113_matmul_readvariableop_resource4while_lstm_cell_113_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_113/BiasAdd/ReadVariableOp*while/lstm_cell_113/BiasAdd/ReadVariableOp2V
)while/lstm_cell_113/MatMul/ReadVariableOp)while/lstm_cell_113/MatMul/ReadVariableOp2Z
+while/lstm_cell_113/MatMul_1/ReadVariableOp+while/lstm_cell_113/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_687663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_687663___redundant_placeholder04
0while_while_cond_687663___redundant_placeholder14
0while_while_cond_687663___redundant_placeholder24
0while_while_cond_687663___redundant_placeholder3
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
while_body_687950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_111_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_111_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_111_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_111_matmul_readvariableop_resource:	?G
4while_lstm_cell_111_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_111_biasadd_readvariableop_resource:	???*while/lstm_cell_111/BiasAdd/ReadVariableOp?)while/lstm_cell_111/MatMul/ReadVariableOp?+while/lstm_cell_111/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_111/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_111_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_111_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_111/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_111/addAddV2$while/lstm_cell_111/MatMul:product:0&while/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_111_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_111/BiasAddBiasAddwhile/lstm_cell_111/add:z:02while/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:0$while/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_111/SigmoidSigmoid"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_1Sigmoid"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mulMul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_111/ReluRelu"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_1Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/add_1AddV2while/lstm_cell_111/mul:z:0while/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_2Sigmoid"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_2Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_111/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_111/BiasAdd/ReadVariableOp*^while/lstm_cell_111/MatMul/ReadVariableOp,^while/lstm_cell_111/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_111_biasadd_readvariableop_resource5while_lstm_cell_111_biasadd_readvariableop_resource_0"n
4while_lstm_cell_111_matmul_1_readvariableop_resource6while_lstm_cell_111_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_111_matmul_readvariableop_resource4while_lstm_cell_111_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_111/BiasAdd/ReadVariableOp*while/lstm_cell_111/BiasAdd/ReadVariableOp2V
)while/lstm_cell_111/MatMul/ReadVariableOp)while/lstm_cell_111/MatMul/ReadVariableOp2Z
+while/lstm_cell_111/MatMul_1/ReadVariableOp+while/lstm_cell_111/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_128_layer_call_and_return_conditional_losses_685917

inputs"
lstm_384_685593:	?"
lstm_384_685595:	d?
lstm_384_685597:	?"
lstm_385_685743:	d?"
lstm_385_685745:	2?
lstm_385_685747:	?!
lstm_386_685893:2(!
lstm_386_685895:
(
lstm_386_685897:("
dense_128_685911:

dense_128_685913:
identity??!dense_128/StatefulPartitionedCall? lstm_384/StatefulPartitionedCall? lstm_385/StatefulPartitionedCall? lstm_386/StatefulPartitionedCall?
 lstm_384/StatefulPartitionedCallStatefulPartitionedCallinputslstm_384_685593lstm_384_685595lstm_384_685597*
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_685592?
 lstm_385/StatefulPartitionedCallStatefulPartitionedCall)lstm_384/StatefulPartitionedCall:output:0lstm_385_685743lstm_385_685745lstm_385_685747*
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_685742?
 lstm_386/StatefulPartitionedCallStatefulPartitionedCall)lstm_385/StatefulPartitionedCall:output:0lstm_386_685893lstm_386_685895lstm_386_685897*
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_685892?
!dense_128/StatefulPartitionedCallStatefulPartitionedCall)lstm_386/StatefulPartitionedCall:output:0dense_128_685911dense_128_685913*
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
E__inference_dense_128_layer_call_and_return_conditional_losses_685910y
IdentityIdentity*dense_128/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_128/StatefulPartitionedCall!^lstm_384/StatefulPartitionedCall!^lstm_385/StatefulPartitionedCall!^lstm_386/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2D
 lstm_384/StatefulPartitionedCall lstm_384/StatefulPartitionedCall2D
 lstm_385/StatefulPartitionedCall lstm_385/StatefulPartitionedCall2D
 lstm_386/StatefulPartitionedCall lstm_386/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_128_layer_call_and_return_conditional_losses_686588
lstm_384_input"
lstm_384_686561:	?"
lstm_384_686563:	d?
lstm_384_686565:	?"
lstm_385_686568:	d?"
lstm_385_686570:	2?
lstm_385_686572:	?!
lstm_386_686575:2(!
lstm_386_686577:
(
lstm_386_686579:("
dense_128_686582:

dense_128_686584:
identity??!dense_128/StatefulPartitionedCall? lstm_384/StatefulPartitionedCall? lstm_385/StatefulPartitionedCall? lstm_386/StatefulPartitionedCall?
 lstm_384/StatefulPartitionedCallStatefulPartitionedCalllstm_384_inputlstm_384_686561lstm_384_686563lstm_384_686565*
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_685592?
 lstm_385/StatefulPartitionedCallStatefulPartitionedCall)lstm_384/StatefulPartitionedCall:output:0lstm_385_686568lstm_385_686570lstm_385_686572*
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_685742?
 lstm_386/StatefulPartitionedCallStatefulPartitionedCall)lstm_385/StatefulPartitionedCall:output:0lstm_386_686575lstm_386_686577lstm_386_686579*
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_685892?
!dense_128/StatefulPartitionedCallStatefulPartitionedCall)lstm_386/StatefulPartitionedCall:output:0dense_128_686582dense_128_686584*
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
E__inference_dense_128_layer_call_and_return_conditional_losses_685910y
IdentityIdentity*dense_128/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_128/StatefulPartitionedCall!^lstm_384/StatefulPartitionedCall!^lstm_385/StatefulPartitionedCall!^lstm_386/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2D
 lstm_384/StatefulPartitionedCall lstm_384/StatefulPartitionedCall2D
 lstm_385/StatefulPartitionedCall lstm_385/StatefulPartitionedCall2D
 lstm_386/StatefulPartitionedCall lstm_386/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_384_input
?	
?
E__inference_dense_128_layer_call_and_return_conditional_losses_685910

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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_689624

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
/__inference_sequential_128_layer_call_fn_685942
lstm_384_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_384_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_128_layer_call_and_return_conditional_losses_685917o
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
_user_specified_namelstm_384_input
??
?
J__inference_sequential_128_layer_call_and_return_conditional_losses_687561

inputsH
5lstm_384_lstm_cell_111_matmul_readvariableop_resource:	?J
7lstm_384_lstm_cell_111_matmul_1_readvariableop_resource:	d?E
6lstm_384_lstm_cell_111_biasadd_readvariableop_resource:	?H
5lstm_385_lstm_cell_112_matmul_readvariableop_resource:	d?J
7lstm_385_lstm_cell_112_matmul_1_readvariableop_resource:	2?E
6lstm_385_lstm_cell_112_biasadd_readvariableop_resource:	?G
5lstm_386_lstm_cell_113_matmul_readvariableop_resource:2(I
7lstm_386_lstm_cell_113_matmul_1_readvariableop_resource:
(D
6lstm_386_lstm_cell_113_biasadd_readvariableop_resource:(:
(dense_128_matmul_readvariableop_resource:
7
)dense_128_biasadd_readvariableop_resource:
identity?? dense_128/BiasAdd/ReadVariableOp?dense_128/MatMul/ReadVariableOp?-lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp?,lstm_384/lstm_cell_111/MatMul/ReadVariableOp?.lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp?lstm_384/while?-lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp?,lstm_385/lstm_cell_112/MatMul/ReadVariableOp?.lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp?lstm_385/while?-lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp?,lstm_386/lstm_cell_113/MatMul/ReadVariableOp?.lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp?lstm_386/whileD
lstm_384/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_384/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_384/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_384/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_384/strided_sliceStridedSlicelstm_384/Shape:output:0%lstm_384/strided_slice/stack:output:0'lstm_384/strided_slice/stack_1:output:0'lstm_384/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_384/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_384/zeros/packedPacklstm_384/strided_slice:output:0 lstm_384/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_384/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_384/zerosFilllstm_384/zeros/packed:output:0lstm_384/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_384/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_384/zeros_1/packedPacklstm_384/strided_slice:output:0"lstm_384/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_384/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_384/zeros_1Fill lstm_384/zeros_1/packed:output:0lstm_384/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_384/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_384/transpose	Transposeinputs lstm_384/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_384/Shape_1Shapelstm_384/transpose:y:0*
T0*
_output_shapes
:h
lstm_384/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_384/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_384/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_384/strided_slice_1StridedSlicelstm_384/Shape_1:output:0'lstm_384/strided_slice_1/stack:output:0)lstm_384/strided_slice_1/stack_1:output:0)lstm_384/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_384/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_384/TensorArrayV2TensorListReserve-lstm_384/TensorArrayV2/element_shape:output:0!lstm_384/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_384/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_384/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_384/transpose:y:0Glstm_384/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_384/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_384/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_384/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_384/strided_slice_2StridedSlicelstm_384/transpose:y:0'lstm_384/strided_slice_2/stack:output:0)lstm_384/strided_slice_2/stack_1:output:0)lstm_384/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_384/lstm_cell_111/MatMul/ReadVariableOpReadVariableOp5lstm_384_lstm_cell_111_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_384/lstm_cell_111/MatMulMatMul!lstm_384/strided_slice_2:output:04lstm_384/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_384/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp7lstm_384_lstm_cell_111_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_384/lstm_cell_111/MatMul_1MatMullstm_384/zeros:output:06lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_384/lstm_cell_111/addAddV2'lstm_384/lstm_cell_111/MatMul:product:0)lstm_384/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_384/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp6lstm_384_lstm_cell_111_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_384/lstm_cell_111/BiasAddBiasAddlstm_384/lstm_cell_111/add:z:05lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_384/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_384/lstm_cell_111/splitSplit/lstm_384/lstm_cell_111/split/split_dim:output:0'lstm_384/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_384/lstm_cell_111/SigmoidSigmoid%lstm_384/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_384/lstm_cell_111/Sigmoid_1Sigmoid%lstm_384/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_384/lstm_cell_111/mulMul$lstm_384/lstm_cell_111/Sigmoid_1:y:0lstm_384/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_384/lstm_cell_111/ReluRelu%lstm_384/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_384/lstm_cell_111/mul_1Mul"lstm_384/lstm_cell_111/Sigmoid:y:0)lstm_384/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_384/lstm_cell_111/add_1AddV2lstm_384/lstm_cell_111/mul:z:0 lstm_384/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_384/lstm_cell_111/Sigmoid_2Sigmoid%lstm_384/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_384/lstm_cell_111/Relu_1Relu lstm_384/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_384/lstm_cell_111/mul_2Mul$lstm_384/lstm_cell_111/Sigmoid_2:y:0+lstm_384/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_384/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_384/TensorArrayV2_1TensorListReserve/lstm_384/TensorArrayV2_1/element_shape:output:0!lstm_384/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_384/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_384/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_384/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_384/whileWhile$lstm_384/while/loop_counter:output:0*lstm_384/while/maximum_iterations:output:0lstm_384/time:output:0!lstm_384/TensorArrayV2_1:handle:0lstm_384/zeros:output:0lstm_384/zeros_1:output:0!lstm_384/strided_slice_1:output:0@lstm_384/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_384_lstm_cell_111_matmul_readvariableop_resource7lstm_384_lstm_cell_111_matmul_1_readvariableop_resource6lstm_384_lstm_cell_111_biasadd_readvariableop_resource*
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
lstm_384_while_body_687193*&
condR
lstm_384_while_cond_687192*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_384/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_384/TensorArrayV2Stack/TensorListStackTensorListStacklstm_384/while:output:3Blstm_384/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_384/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_384/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_384/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_384/strided_slice_3StridedSlice4lstm_384/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_384/strided_slice_3/stack:output:0)lstm_384/strided_slice_3/stack_1:output:0)lstm_384/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_384/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_384/transpose_1	Transpose4lstm_384/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_384/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_384/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_385/ShapeShapelstm_384/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_385/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_385/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_385/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_385/strided_sliceStridedSlicelstm_385/Shape:output:0%lstm_385/strided_slice/stack:output:0'lstm_385/strided_slice/stack_1:output:0'lstm_385/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_385/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_385/zeros/packedPacklstm_385/strided_slice:output:0 lstm_385/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_385/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_385/zerosFilllstm_385/zeros/packed:output:0lstm_385/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_385/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_385/zeros_1/packedPacklstm_385/strided_slice:output:0"lstm_385/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_385/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_385/zeros_1Fill lstm_385/zeros_1/packed:output:0lstm_385/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_385/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_385/transpose	Transposelstm_384/transpose_1:y:0 lstm_385/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_385/Shape_1Shapelstm_385/transpose:y:0*
T0*
_output_shapes
:h
lstm_385/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_385/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_385/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_385/strided_slice_1StridedSlicelstm_385/Shape_1:output:0'lstm_385/strided_slice_1/stack:output:0)lstm_385/strided_slice_1/stack_1:output:0)lstm_385/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_385/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_385/TensorArrayV2TensorListReserve-lstm_385/TensorArrayV2/element_shape:output:0!lstm_385/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_385/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_385/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_385/transpose:y:0Glstm_385/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_385/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_385/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_385/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_385/strided_slice_2StridedSlicelstm_385/transpose:y:0'lstm_385/strided_slice_2/stack:output:0)lstm_385/strided_slice_2/stack_1:output:0)lstm_385/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_385/lstm_cell_112/MatMul/ReadVariableOpReadVariableOp5lstm_385_lstm_cell_112_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_385/lstm_cell_112/MatMulMatMul!lstm_385/strided_slice_2:output:04lstm_385/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_385/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp7lstm_385_lstm_cell_112_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_385/lstm_cell_112/MatMul_1MatMullstm_385/zeros:output:06lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_385/lstm_cell_112/addAddV2'lstm_385/lstm_cell_112/MatMul:product:0)lstm_385/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_385/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp6lstm_385_lstm_cell_112_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_385/lstm_cell_112/BiasAddBiasAddlstm_385/lstm_cell_112/add:z:05lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_385/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_385/lstm_cell_112/splitSplit/lstm_385/lstm_cell_112/split/split_dim:output:0'lstm_385/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_385/lstm_cell_112/SigmoidSigmoid%lstm_385/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_385/lstm_cell_112/Sigmoid_1Sigmoid%lstm_385/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_385/lstm_cell_112/mulMul$lstm_385/lstm_cell_112/Sigmoid_1:y:0lstm_385/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_385/lstm_cell_112/ReluRelu%lstm_385/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_385/lstm_cell_112/mul_1Mul"lstm_385/lstm_cell_112/Sigmoid:y:0)lstm_385/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_385/lstm_cell_112/add_1AddV2lstm_385/lstm_cell_112/mul:z:0 lstm_385/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_385/lstm_cell_112/Sigmoid_2Sigmoid%lstm_385/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_385/lstm_cell_112/Relu_1Relu lstm_385/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_385/lstm_cell_112/mul_2Mul$lstm_385/lstm_cell_112/Sigmoid_2:y:0+lstm_385/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_385/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_385/TensorArrayV2_1TensorListReserve/lstm_385/TensorArrayV2_1/element_shape:output:0!lstm_385/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_385/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_385/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_385/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_385/whileWhile$lstm_385/while/loop_counter:output:0*lstm_385/while/maximum_iterations:output:0lstm_385/time:output:0!lstm_385/TensorArrayV2_1:handle:0lstm_385/zeros:output:0lstm_385/zeros_1:output:0!lstm_385/strided_slice_1:output:0@lstm_385/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_385_lstm_cell_112_matmul_readvariableop_resource7lstm_385_lstm_cell_112_matmul_1_readvariableop_resource6lstm_385_lstm_cell_112_biasadd_readvariableop_resource*
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
lstm_385_while_body_687332*&
condR
lstm_385_while_cond_687331*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_385/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_385/TensorArrayV2Stack/TensorListStackTensorListStacklstm_385/while:output:3Blstm_385/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_385/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_385/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_385/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_385/strided_slice_3StridedSlice4lstm_385/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_385/strided_slice_3/stack:output:0)lstm_385/strided_slice_3/stack_1:output:0)lstm_385/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_385/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_385/transpose_1	Transpose4lstm_385/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_385/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_385/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_386/ShapeShapelstm_385/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_386/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_386/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_386/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_386/strided_sliceStridedSlicelstm_386/Shape:output:0%lstm_386/strided_slice/stack:output:0'lstm_386/strided_slice/stack_1:output:0'lstm_386/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_386/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_386/zeros/packedPacklstm_386/strided_slice:output:0 lstm_386/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_386/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_386/zerosFilllstm_386/zeros/packed:output:0lstm_386/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_386/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_386/zeros_1/packedPacklstm_386/strided_slice:output:0"lstm_386/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_386/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_386/zeros_1Fill lstm_386/zeros_1/packed:output:0lstm_386/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_386/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_386/transpose	Transposelstm_385/transpose_1:y:0 lstm_386/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_386/Shape_1Shapelstm_386/transpose:y:0*
T0*
_output_shapes
:h
lstm_386/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_386/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_386/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_386/strided_slice_1StridedSlicelstm_386/Shape_1:output:0'lstm_386/strided_slice_1/stack:output:0)lstm_386/strided_slice_1/stack_1:output:0)lstm_386/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_386/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_386/TensorArrayV2TensorListReserve-lstm_386/TensorArrayV2/element_shape:output:0!lstm_386/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_386/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_386/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_386/transpose:y:0Glstm_386/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_386/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_386/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_386/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_386/strided_slice_2StridedSlicelstm_386/transpose:y:0'lstm_386/strided_slice_2/stack:output:0)lstm_386/strided_slice_2/stack_1:output:0)lstm_386/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_386/lstm_cell_113/MatMul/ReadVariableOpReadVariableOp5lstm_386_lstm_cell_113_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_386/lstm_cell_113/MatMulMatMul!lstm_386/strided_slice_2:output:04lstm_386/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_386/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp7lstm_386_lstm_cell_113_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_386/lstm_cell_113/MatMul_1MatMullstm_386/zeros:output:06lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_386/lstm_cell_113/addAddV2'lstm_386/lstm_cell_113/MatMul:product:0)lstm_386/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_386/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp6lstm_386_lstm_cell_113_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_386/lstm_cell_113/BiasAddBiasAddlstm_386/lstm_cell_113/add:z:05lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_386/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_386/lstm_cell_113/splitSplit/lstm_386/lstm_cell_113/split/split_dim:output:0'lstm_386/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_386/lstm_cell_113/SigmoidSigmoid%lstm_386/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_386/lstm_cell_113/Sigmoid_1Sigmoid%lstm_386/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_386/lstm_cell_113/mulMul$lstm_386/lstm_cell_113/Sigmoid_1:y:0lstm_386/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_386/lstm_cell_113/ReluRelu%lstm_386/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_386/lstm_cell_113/mul_1Mul"lstm_386/lstm_cell_113/Sigmoid:y:0)lstm_386/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_386/lstm_cell_113/add_1AddV2lstm_386/lstm_cell_113/mul:z:0 lstm_386/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_386/lstm_cell_113/Sigmoid_2Sigmoid%lstm_386/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_386/lstm_cell_113/Relu_1Relu lstm_386/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_386/lstm_cell_113/mul_2Mul$lstm_386/lstm_cell_113/Sigmoid_2:y:0+lstm_386/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_386/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_386/TensorArrayV2_1TensorListReserve/lstm_386/TensorArrayV2_1/element_shape:output:0!lstm_386/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_386/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_386/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_386/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_386/whileWhile$lstm_386/while/loop_counter:output:0*lstm_386/while/maximum_iterations:output:0lstm_386/time:output:0!lstm_386/TensorArrayV2_1:handle:0lstm_386/zeros:output:0lstm_386/zeros_1:output:0!lstm_386/strided_slice_1:output:0@lstm_386/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_386_lstm_cell_113_matmul_readvariableop_resource7lstm_386_lstm_cell_113_matmul_1_readvariableop_resource6lstm_386_lstm_cell_113_biasadd_readvariableop_resource*
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
lstm_386_while_body_687471*&
condR
lstm_386_while_cond_687470*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_386/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_386/TensorArrayV2Stack/TensorListStackTensorListStacklstm_386/while:output:3Blstm_386/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_386/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_386/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_386/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_386/strided_slice_3StridedSlice4lstm_386/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_386/strided_slice_3/stack:output:0)lstm_386/strided_slice_3/stack_1:output:0)lstm_386/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_386/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_386/transpose_1	Transpose4lstm_386/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_386/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_386/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_128/MatMul/ReadVariableOpReadVariableOp(dense_128_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_128/MatMulMatMul!lstm_386/strided_slice_3:output:0'dense_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_128/BiasAdd/ReadVariableOpReadVariableOp)dense_128_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_128/BiasAddBiasAdddense_128/MatMul:product:0(dense_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_128/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_128/BiasAdd/ReadVariableOp ^dense_128/MatMul/ReadVariableOp.^lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp-^lstm_384/lstm_cell_111/MatMul/ReadVariableOp/^lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp^lstm_384/while.^lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp-^lstm_385/lstm_cell_112/MatMul/ReadVariableOp/^lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp^lstm_385/while.^lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp-^lstm_386/lstm_cell_113/MatMul/ReadVariableOp/^lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp^lstm_386/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_128/BiasAdd/ReadVariableOp dense_128/BiasAdd/ReadVariableOp2B
dense_128/MatMul/ReadVariableOpdense_128/MatMul/ReadVariableOp2^
-lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp-lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp2\
,lstm_384/lstm_cell_111/MatMul/ReadVariableOp,lstm_384/lstm_cell_111/MatMul/ReadVariableOp2`
.lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp.lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp2 
lstm_384/whilelstm_384/while2^
-lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp-lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp2\
,lstm_385/lstm_cell_112/MatMul/ReadVariableOp,lstm_385/lstm_cell_112/MatMul/ReadVariableOp2`
.lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp.lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp2 
lstm_385/whilelstm_385/while2^
-lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp-lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp2\
,lstm_386/lstm_cell_113/MatMul/ReadVariableOp,lstm_386/lstm_cell_113/MatMul/ReadVariableOp2`
.lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp.lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp2 
lstm_386/whilelstm_386/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_684956

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
?C
?

lstm_385_while_body_686905.
*lstm_385_while_lstm_385_while_loop_counter4
0lstm_385_while_lstm_385_while_maximum_iterations
lstm_385_while_placeholder 
lstm_385_while_placeholder_1 
lstm_385_while_placeholder_2 
lstm_385_while_placeholder_3-
)lstm_385_while_lstm_385_strided_slice_1_0i
elstm_385_while_tensorarrayv2read_tensorlistgetitem_lstm_385_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_385_while_lstm_cell_112_matmul_readvariableop_resource_0:	d?R
?lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource_0:	2?M
>lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource_0:	?
lstm_385_while_identity
lstm_385_while_identity_1
lstm_385_while_identity_2
lstm_385_while_identity_3
lstm_385_while_identity_4
lstm_385_while_identity_5+
'lstm_385_while_lstm_385_strided_slice_1g
clstm_385_while_tensorarrayv2read_tensorlistgetitem_lstm_385_tensorarrayunstack_tensorlistfromtensorN
;lstm_385_while_lstm_cell_112_matmul_readvariableop_resource:	d?P
=lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource:	2?K
<lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource:	???3lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp?2lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp?4lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp?
@lstm_385/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_385/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_385_while_tensorarrayv2read_tensorlistgetitem_lstm_385_tensorarrayunstack_tensorlistfromtensor_0lstm_385_while_placeholderIlstm_385/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_385/while/lstm_cell_112/MatMul/ReadVariableOpReadVariableOp=lstm_385_while_lstm_cell_112_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_385/while/lstm_cell_112/MatMulMatMul9lstm_385/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp?lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_385/while/lstm_cell_112/MatMul_1MatMullstm_385_while_placeholder_2<lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_385/while/lstm_cell_112/addAddV2-lstm_385/while/lstm_cell_112/MatMul:product:0/lstm_385/while/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp>lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_385/while/lstm_cell_112/BiasAddBiasAdd$lstm_385/while/lstm_cell_112/add:z:0;lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_385/while/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_385/while/lstm_cell_112/splitSplit5lstm_385/while/lstm_cell_112/split/split_dim:output:0-lstm_385/while/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_385/while/lstm_cell_112/SigmoidSigmoid+lstm_385/while/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_385/while/lstm_cell_112/Sigmoid_1Sigmoid+lstm_385/while/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_385/while/lstm_cell_112/mulMul*lstm_385/while/lstm_cell_112/Sigmoid_1:y:0lstm_385_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_385/while/lstm_cell_112/ReluRelu+lstm_385/while/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_385/while/lstm_cell_112/mul_1Mul(lstm_385/while/lstm_cell_112/Sigmoid:y:0/lstm_385/while/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_385/while/lstm_cell_112/add_1AddV2$lstm_385/while/lstm_cell_112/mul:z:0&lstm_385/while/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_385/while/lstm_cell_112/Sigmoid_2Sigmoid+lstm_385/while/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_385/while/lstm_cell_112/Relu_1Relu&lstm_385/while/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_385/while/lstm_cell_112/mul_2Mul*lstm_385/while/lstm_cell_112/Sigmoid_2:y:01lstm_385/while/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_385/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_385_while_placeholder_1lstm_385_while_placeholder&lstm_385/while/lstm_cell_112/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_385/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_385/while/addAddV2lstm_385_while_placeholderlstm_385/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_385/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_385/while/add_1AddV2*lstm_385_while_lstm_385_while_loop_counterlstm_385/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_385/while/IdentityIdentitylstm_385/while/add_1:z:0^lstm_385/while/NoOp*
T0*
_output_shapes
: ?
lstm_385/while/Identity_1Identity0lstm_385_while_lstm_385_while_maximum_iterations^lstm_385/while/NoOp*
T0*
_output_shapes
: t
lstm_385/while/Identity_2Identitylstm_385/while/add:z:0^lstm_385/while/NoOp*
T0*
_output_shapes
: ?
lstm_385/while/Identity_3IdentityClstm_385/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_385/while/NoOp*
T0*
_output_shapes
: ?
lstm_385/while/Identity_4Identity&lstm_385/while/lstm_cell_112/mul_2:z:0^lstm_385/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_385/while/Identity_5Identity&lstm_385/while/lstm_cell_112/add_1:z:0^lstm_385/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_385/while/NoOpNoOp4^lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp3^lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp5^lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_385_while_identity lstm_385/while/Identity:output:0"?
lstm_385_while_identity_1"lstm_385/while/Identity_1:output:0"?
lstm_385_while_identity_2"lstm_385/while/Identity_2:output:0"?
lstm_385_while_identity_3"lstm_385/while/Identity_3:output:0"?
lstm_385_while_identity_4"lstm_385/while/Identity_4:output:0"?
lstm_385_while_identity_5"lstm_385/while/Identity_5:output:0"T
'lstm_385_while_lstm_385_strided_slice_1)lstm_385_while_lstm_385_strided_slice_1_0"~
<lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource>lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource_0"?
=lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource?lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource_0"|
;lstm_385_while_lstm_cell_112_matmul_readvariableop_resource=lstm_385_while_lstm_cell_112_matmul_readvariableop_resource_0"?
clstm_385_while_tensorarrayv2read_tensorlistgetitem_lstm_385_tensorarrayunstack_tensorlistfromtensorelstm_385_while_tensorarrayv2read_tensorlistgetitem_lstm_385_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp3lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp2h
2lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp2lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp2l
4lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp4lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_385_layer_call_fn_688199
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_685084|
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
.__inference_lstm_cell_112_layer_call_fn_689543

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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_684810o
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
while_cond_688565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_688565___redundant_placeholder04
0while_while_cond_688565___redundant_placeholder14
0while_while_cond_688565___redundant_placeholder24
0while_while_cond_688565___redundant_placeholder3
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
while_cond_685657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_685657___redundant_placeholder04
0while_while_cond_685657___redundant_placeholder14
0while_while_cond_685657___redundant_placeholder24
0while_while_cond_685657___redundant_placeholder3
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
while_cond_688422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_688422___redundant_placeholder04
0while_while_cond_688422___redundant_placeholder14
0while_while_cond_688422___redundant_placeholder24
0while_while_cond_688422___redundant_placeholder3
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
while_body_684474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_111_684498_0:	?/
while_lstm_cell_111_684500_0:	d?+
while_lstm_cell_111_684502_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_111_684498:	?-
while_lstm_cell_111_684500:	d?)
while_lstm_cell_111_684502:	???+while/lstm_cell_111/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_111/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_111_684498_0while_lstm_cell_111_684500_0while_lstm_cell_111_684502_0*
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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_684460?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_111/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_111/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_111/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_111/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_111_684498while_lstm_cell_111_684498_0":
while_lstm_cell_111_684500while_lstm_cell_111_684500_0":
while_lstm_cell_111_684502while_lstm_cell_111_684502_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_111/StatefulPartitionedCall+while/lstm_cell_111/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_685364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_685364___redundant_placeholder04
0while_while_cond_685364___redundant_placeholder14
0while_while_cond_685364___redundant_placeholder24
0while_while_cond_685364___redundant_placeholder3
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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_684810

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
D__inference_lstm_384_layer_call_and_return_conditional_losses_687891
inputs_0?
,lstm_cell_111_matmul_readvariableop_resource:	?A
.lstm_cell_111_matmul_1_readvariableop_resource:	d?<
-lstm_cell_111_biasadd_readvariableop_resource:	?
identity??$lstm_cell_111/BiasAdd/ReadVariableOp?#lstm_cell_111/MatMul/ReadVariableOp?%lstm_cell_111/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_111/MatMul/ReadVariableOpReadVariableOp,lstm_cell_111_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0+lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_111_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_111/MatMul_1MatMulzeros:output:0-lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_111/addAddV2lstm_cell_111/MatMul:product:0 lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_111_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_111/BiasAddBiasAddlstm_cell_111/add:z:0,lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_111/SigmoidSigmoidlstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_111/mulMullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_111/ReluRelulstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_1Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_111/add_1AddV2lstm_cell_111/mul:z:0lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_111/Relu_1Relulstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_2Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_111_matmul_readvariableop_resource.lstm_cell_111_matmul_1_readvariableop_resource-lstm_cell_111_biasadd_readvariableop_resource*
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
while_body_687807*
condR
while_cond_687806*K
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
NoOpNoOp%^lstm_cell_111/BiasAdd/ReadVariableOp$^lstm_cell_111/MatMul/ReadVariableOp&^lstm_cell_111/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_111/BiasAdd/ReadVariableOp$lstm_cell_111/BiasAdd/ReadVariableOp2J
#lstm_cell_111/MatMul/ReadVariableOp#lstm_cell_111/MatMul/ReadVariableOp2N
%lstm_cell_111/MatMul_1/ReadVariableOp%lstm_cell_111/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_689039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_113_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_113_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_113_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_113_matmul_readvariableop_resource:2(F
4while_lstm_cell_113_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_113_biasadd_readvariableop_resource:(??*while/lstm_cell_113/BiasAdd/ReadVariableOp?)while/lstm_cell_113/MatMul/ReadVariableOp?+while/lstm_cell_113/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_113/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_113_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_113/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_113_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_113/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_113/addAddV2$while/lstm_cell_113/MatMul:product:0&while/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_113_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_113/BiasAddBiasAddwhile/lstm_cell_113/add:z:02while/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_113/splitSplit,while/lstm_cell_113/split/split_dim:output:0$while/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_113/SigmoidSigmoid"while/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_1Sigmoid"while/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mulMul!while/lstm_cell_113/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_113/ReluRelu"while/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_1Mulwhile/lstm_cell_113/Sigmoid:y:0&while/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/add_1AddV2while/lstm_cell_113/mul:z:0while/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_2Sigmoid"while/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_113/Relu_1Reluwhile/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_2Mul!while/lstm_cell_113/Sigmoid_2:y:0(while/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_113/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_113/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_113/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_113/BiasAdd/ReadVariableOp*^while/lstm_cell_113/MatMul/ReadVariableOp,^while/lstm_cell_113/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_113_biasadd_readvariableop_resource5while_lstm_cell_113_biasadd_readvariableop_resource_0"n
4while_lstm_cell_113_matmul_1_readvariableop_resource6while_lstm_cell_113_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_113_matmul_readvariableop_resource4while_lstm_cell_113_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_113/BiasAdd/ReadVariableOp*while/lstm_cell_113/BiasAdd/ReadVariableOp2V
)while/lstm_cell_113/MatMul/ReadVariableOp)while/lstm_cell_113/MatMul/ReadVariableOp2Z
+while/lstm_cell_113/MatMul_1/ReadVariableOp+while/lstm_cell_113/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_685892

inputs>
,lstm_cell_113_matmul_readvariableop_resource:2(@
.lstm_cell_113_matmul_1_readvariableop_resource:
(;
-lstm_cell_113_biasadd_readvariableop_resource:(
identity??$lstm_cell_113/BiasAdd/ReadVariableOp?#lstm_cell_113/MatMul/ReadVariableOp?%lstm_cell_113/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_113/MatMul/ReadVariableOpReadVariableOp,lstm_cell_113_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_113/MatMulMatMulstrided_slice_2:output:0+lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_113_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_113/MatMul_1MatMulzeros:output:0-lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_113/addAddV2lstm_cell_113/MatMul:product:0 lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_113_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_113/BiasAddBiasAddlstm_cell_113/add:z:0,lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_113/splitSplit&lstm_cell_113/split/split_dim:output:0lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_113/SigmoidSigmoidlstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_1Sigmoidlstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_113/mulMullstm_cell_113/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_113/ReluRelulstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_1Mullstm_cell_113/Sigmoid:y:0 lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_113/add_1AddV2lstm_cell_113/mul:z:0lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_2Sigmoidlstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_113/Relu_1Relulstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_2Mullstm_cell_113/Sigmoid_2:y:0"lstm_cell_113/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_113_matmul_readvariableop_resource.lstm_cell_113_matmul_1_readvariableop_resource-lstm_cell_113_biasadd_readvariableop_resource*
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
while_body_685808*
condR
while_cond_685807*K
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
NoOpNoOp%^lstm_cell_113/BiasAdd/ReadVariableOp$^lstm_cell_113/MatMul/ReadVariableOp&^lstm_cell_113/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_113/BiasAdd/ReadVariableOp$lstm_cell_113/BiasAdd/ReadVariableOp2J
#lstm_cell_113/MatMul/ReadVariableOp#lstm_cell_113/MatMul/ReadVariableOp2N
%lstm_cell_113/MatMul_1/ReadVariableOp%lstm_cell_113/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_384_layer_call_and_return_conditional_losses_686438

inputs?
,lstm_cell_111_matmul_readvariableop_resource:	?A
.lstm_cell_111_matmul_1_readvariableop_resource:	d?<
-lstm_cell_111_biasadd_readvariableop_resource:	?
identity??$lstm_cell_111/BiasAdd/ReadVariableOp?#lstm_cell_111/MatMul/ReadVariableOp?%lstm_cell_111/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_111/MatMul/ReadVariableOpReadVariableOp,lstm_cell_111_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0+lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_111_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_111/MatMul_1MatMulzeros:output:0-lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_111/addAddV2lstm_cell_111/MatMul:product:0 lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_111_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_111/BiasAddBiasAddlstm_cell_111/add:z:0,lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_111/SigmoidSigmoidlstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_111/mulMullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_111/ReluRelulstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_1Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_111/add_1AddV2lstm_cell_111/mul:z:0lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_111/Relu_1Relulstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_2Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_111_matmul_readvariableop_resource.lstm_cell_111_matmul_1_readvariableop_resource-lstm_cell_111_biasadd_readvariableop_resource*
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
while_body_686354*
condR
while_cond_686353*K
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
NoOpNoOp%^lstm_cell_111/BiasAdd/ReadVariableOp$^lstm_cell_111/MatMul/ReadVariableOp&^lstm_cell_111/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_111/BiasAdd/ReadVariableOp$lstm_cell_111/BiasAdd/ReadVariableOp2J
#lstm_cell_111/MatMul/ReadVariableOp#lstm_cell_111/MatMul/ReadVariableOp2N
%lstm_cell_111/MatMul_1/ReadVariableOp%lstm_cell_111/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_385_layer_call_and_return_conditional_losses_685742

inputs?
,lstm_cell_112_matmul_readvariableop_resource:	d?A
.lstm_cell_112_matmul_1_readvariableop_resource:	2?<
-lstm_cell_112_biasadd_readvariableop_resource:	?
identity??$lstm_cell_112/BiasAdd/ReadVariableOp?#lstm_cell_112/MatMul/ReadVariableOp?%lstm_cell_112/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_112/MatMul/ReadVariableOpReadVariableOp,lstm_cell_112_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_112/MatMulMatMulstrided_slice_2:output:0+lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_112_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_112/MatMul_1MatMulzeros:output:0-lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_112/addAddV2lstm_cell_112/MatMul:product:0 lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_112_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_112/BiasAddBiasAddlstm_cell_112/add:z:0,lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_112/splitSplit&lstm_cell_112/split/split_dim:output:0lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_112/SigmoidSigmoidlstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_1Sigmoidlstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_112/mulMullstm_cell_112/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_112/ReluRelulstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_1Mullstm_cell_112/Sigmoid:y:0 lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_112/add_1AddV2lstm_cell_112/mul:z:0lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_2Sigmoidlstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_112/Relu_1Relulstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_2Mullstm_cell_112/Sigmoid_2:y:0"lstm_cell_112/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_112_matmul_readvariableop_resource.lstm_cell_112_matmul_1_readvariableop_resource-lstm_cell_112_biasadd_readvariableop_resource*
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
while_body_685658*
condR
while_cond_685657*K
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
NoOpNoOp%^lstm_cell_112/BiasAdd/ReadVariableOp$^lstm_cell_112/MatMul/ReadVariableOp&^lstm_cell_112/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_112/BiasAdd/ReadVariableOp$lstm_cell_112/BiasAdd/ReadVariableOp2J
#lstm_cell_112/MatMul/ReadVariableOp#lstm_cell_112/MatMul/ReadVariableOp2N
%lstm_cell_112/MatMul_1/ReadVariableOp%lstm_cell_112/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
/__inference_sequential_128_layer_call_fn_686680

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
J__inference_sequential_128_layer_call_and_return_conditional_losses_685917o
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
)__inference_lstm_384_layer_call_fn_687594

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
D__inference_lstm_384_layer_call_and_return_conditional_losses_685592s
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
while_cond_688092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_688092___redundant_placeholder04
0while_while_cond_688092___redundant_placeholder14
0while_while_cond_688092___redundant_placeholder24
0while_while_cond_688092___redundant_placeholder3
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
?"
?
while_body_685174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_113_685198_0:2(.
while_lstm_cell_113_685200_0:
(*
while_lstm_cell_113_685202_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_113_685198:2(,
while_lstm_cell_113_685200:
((
while_lstm_cell_113_685202:(??+while/lstm_cell_113/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_113/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_113_685198_0while_lstm_cell_113_685200_0while_lstm_cell_113_685202_0*
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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_685160?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_113/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_113/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_113/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_113/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_113_685198while_lstm_cell_113_685198_0":
while_lstm_cell_113_685200while_lstm_cell_113_685200_0":
while_lstm_cell_113_685202while_lstm_cell_113_685202_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_113/StatefulPartitionedCall+while/lstm_cell_113/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_386_while_cond_687043.
*lstm_386_while_lstm_386_while_loop_counter4
0lstm_386_while_lstm_386_while_maximum_iterations
lstm_386_while_placeholder 
lstm_386_while_placeholder_1 
lstm_386_while_placeholder_2 
lstm_386_while_placeholder_30
,lstm_386_while_less_lstm_386_strided_slice_1F
Blstm_386_while_lstm_386_while_cond_687043___redundant_placeholder0F
Blstm_386_while_lstm_386_while_cond_687043___redundant_placeholder1F
Blstm_386_while_lstm_386_while_cond_687043___redundant_placeholder2F
Blstm_386_while_lstm_386_while_cond_687043___redundant_placeholder3
lstm_386_while_identity
?
lstm_386/while/LessLesslstm_386_while_placeholder,lstm_386_while_less_lstm_386_strided_slice_1*
T0*
_output_shapes
: ]
lstm_386/while/IdentityIdentitylstm_386/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_386_while_identity lstm_386/while/Identity:output:0*(
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
while_body_686189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_112_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_112_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_112_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_112_matmul_readvariableop_resource:	d?G
4while_lstm_cell_112_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_112_biasadd_readvariableop_resource:	???*while/lstm_cell_112/BiasAdd/ReadVariableOp?)while/lstm_cell_112/MatMul/ReadVariableOp?+while/lstm_cell_112/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_112/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_112_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_112/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_112_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_112/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_112/addAddV2$while/lstm_cell_112/MatMul:product:0&while/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_112_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_112/BiasAddBiasAddwhile/lstm_cell_112/add:z:02while/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_112/splitSplit,while/lstm_cell_112/split/split_dim:output:0$while/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_112/SigmoidSigmoid"while/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_1Sigmoid"while/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mulMul!while/lstm_cell_112/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_112/ReluRelu"while/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_1Mulwhile/lstm_cell_112/Sigmoid:y:0&while/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/add_1AddV2while/lstm_cell_112/mul:z:0while/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_2Sigmoid"while/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_112/Relu_1Reluwhile/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_2Mul!while/lstm_cell_112/Sigmoid_2:y:0(while/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_112/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_112/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_112/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_112/BiasAdd/ReadVariableOp*^while/lstm_cell_112/MatMul/ReadVariableOp,^while/lstm_cell_112/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_112_biasadd_readvariableop_resource5while_lstm_cell_112_biasadd_readvariableop_resource_0"n
4while_lstm_cell_112_matmul_1_readvariableop_resource6while_lstm_cell_112_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_112_matmul_readvariableop_resource4while_lstm_cell_112_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_112/BiasAdd/ReadVariableOp*while/lstm_cell_112/BiasAdd/ReadVariableOp2V
)while/lstm_cell_112/MatMul/ReadVariableOp)while/lstm_cell_112/MatMul/ReadVariableOp2Z
+while/lstm_cell_112/MatMul_1/ReadVariableOp+while/lstm_cell_112/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_685507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_685507___redundant_placeholder04
0while_while_cond_685507___redundant_placeholder14
0while_while_cond_685507___redundant_placeholder24
0while_while_cond_685507___redundant_placeholder3
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
?"
?
while_body_685365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_113_685389_0:2(.
while_lstm_cell_113_685391_0:
(*
while_lstm_cell_113_685393_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_113_685389:2(,
while_lstm_cell_113_685391:
((
while_lstm_cell_113_685393:(??+while/lstm_cell_113/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_113/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_113_685389_0while_lstm_cell_113_685391_0while_lstm_cell_113_685393_0*
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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_685306?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_113/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_113/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_113/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_113/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_113_685389while_lstm_cell_113_685389_0":
while_lstm_cell_113_685391while_lstm_cell_113_685391_0":
while_lstm_cell_113_685393while_lstm_cell_113_685393_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_113/StatefulPartitionedCall+while/lstm_cell_113/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_689123
inputs_0>
,lstm_cell_113_matmul_readvariableop_resource:2(@
.lstm_cell_113_matmul_1_readvariableop_resource:
(;
-lstm_cell_113_biasadd_readvariableop_resource:(
identity??$lstm_cell_113/BiasAdd/ReadVariableOp?#lstm_cell_113/MatMul/ReadVariableOp?%lstm_cell_113/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_113/MatMul/ReadVariableOpReadVariableOp,lstm_cell_113_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_113/MatMulMatMulstrided_slice_2:output:0+lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_113_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_113/MatMul_1MatMulzeros:output:0-lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_113/addAddV2lstm_cell_113/MatMul:product:0 lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_113_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_113/BiasAddBiasAddlstm_cell_113/add:z:0,lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_113/splitSplit&lstm_cell_113/split/split_dim:output:0lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_113/SigmoidSigmoidlstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_1Sigmoidlstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_113/mulMullstm_cell_113/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_113/ReluRelulstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_1Mullstm_cell_113/Sigmoid:y:0 lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_113/add_1AddV2lstm_cell_113/mul:z:0lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_2Sigmoidlstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_113/Relu_1Relulstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_2Mullstm_cell_113/Sigmoid_2:y:0"lstm_cell_113/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_113_matmul_readvariableop_resource.lstm_cell_113_matmul_1_readvariableop_resource-lstm_cell_113_biasadd_readvariableop_resource*
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
while_body_689039*
condR
while_cond_689038*K
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
NoOpNoOp%^lstm_cell_113/BiasAdd/ReadVariableOp$^lstm_cell_113/MatMul/ReadVariableOp&^lstm_cell_113/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_113/BiasAdd/ReadVariableOp$lstm_cell_113/BiasAdd/ReadVariableOp2J
#lstm_cell_113/MatMul/ReadVariableOp#lstm_cell_113/MatMul/ReadVariableOp2N
%lstm_cell_113/MatMul_1/ReadVariableOp%lstm_cell_113/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_384_layer_call_and_return_conditional_losses_685592

inputs?
,lstm_cell_111_matmul_readvariableop_resource:	?A
.lstm_cell_111_matmul_1_readvariableop_resource:	d?<
-lstm_cell_111_biasadd_readvariableop_resource:	?
identity??$lstm_cell_111/BiasAdd/ReadVariableOp?#lstm_cell_111/MatMul/ReadVariableOp?%lstm_cell_111/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_111/MatMul/ReadVariableOpReadVariableOp,lstm_cell_111_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0+lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_111_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_111/MatMul_1MatMulzeros:output:0-lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_111/addAddV2lstm_cell_111/MatMul:product:0 lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_111_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_111/BiasAddBiasAddlstm_cell_111/add:z:0,lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_111/SigmoidSigmoidlstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_111/mulMullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_111/ReluRelulstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_1Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_111/add_1AddV2lstm_cell_111/mul:z:0lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_111/Relu_1Relulstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_2Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_111_matmul_readvariableop_resource.lstm_cell_111_matmul_1_readvariableop_resource-lstm_cell_111_biasadd_readvariableop_resource*
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
while_body_685508*
condR
while_cond_685507*K
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
NoOpNoOp%^lstm_cell_111/BiasAdd/ReadVariableOp$^lstm_cell_111/MatMul/ReadVariableOp&^lstm_cell_111/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_111/BiasAdd/ReadVariableOp$lstm_cell_111/BiasAdd/ReadVariableOp2J
#lstm_cell_111/MatMul/ReadVariableOp#lstm_cell_111/MatMul/ReadVariableOp2N
%lstm_cell_111/MatMul_1/ReadVariableOp%lstm_cell_111/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_128_layer_call_fn_686558
lstm_384_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_384_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_128_layer_call_and_return_conditional_losses_686506o
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
_user_specified_namelstm_384_input
?
?
)__inference_lstm_386_layer_call_fn_688815
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_685434o
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_689266

inputs>
,lstm_cell_113_matmul_readvariableop_resource:2(@
.lstm_cell_113_matmul_1_readvariableop_resource:
(;
-lstm_cell_113_biasadd_readvariableop_resource:(
identity??$lstm_cell_113/BiasAdd/ReadVariableOp?#lstm_cell_113/MatMul/ReadVariableOp?%lstm_cell_113/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_113/MatMul/ReadVariableOpReadVariableOp,lstm_cell_113_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_113/MatMulMatMulstrided_slice_2:output:0+lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_113_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_113/MatMul_1MatMulzeros:output:0-lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_113/addAddV2lstm_cell_113/MatMul:product:0 lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_113_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_113/BiasAddBiasAddlstm_cell_113/add:z:0,lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_113/splitSplit&lstm_cell_113/split/split_dim:output:0lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_113/SigmoidSigmoidlstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_1Sigmoidlstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_113/mulMullstm_cell_113/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_113/ReluRelulstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_1Mullstm_cell_113/Sigmoid:y:0 lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_113/add_1AddV2lstm_cell_113/mul:z:0lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_2Sigmoidlstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_113/Relu_1Relulstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_2Mullstm_cell_113/Sigmoid_2:y:0"lstm_cell_113/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_113_matmul_readvariableop_resource.lstm_cell_113_matmul_1_readvariableop_resource-lstm_cell_113_biasadd_readvariableop_resource*
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
while_body_689182*
condR
while_cond_689181*K
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
NoOpNoOp%^lstm_cell_113/BiasAdd/ReadVariableOp$^lstm_cell_113/MatMul/ReadVariableOp&^lstm_cell_113/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_113/BiasAdd/ReadVariableOp$lstm_cell_113/BiasAdd/ReadVariableOp2J
#lstm_cell_113/MatMul/ReadVariableOp#lstm_cell_113/MatMul/ReadVariableOp2N
%lstm_cell_113/MatMul_1/ReadVariableOp%lstm_cell_113/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_112_layer_call_fn_689560

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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_684956o
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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_689526

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
D__inference_lstm_386_layer_call_and_return_conditional_losses_688980
inputs_0>
,lstm_cell_113_matmul_readvariableop_resource:2(@
.lstm_cell_113_matmul_1_readvariableop_resource:
(;
-lstm_cell_113_biasadd_readvariableop_resource:(
identity??$lstm_cell_113/BiasAdd/ReadVariableOp?#lstm_cell_113/MatMul/ReadVariableOp?%lstm_cell_113/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_113/MatMul/ReadVariableOpReadVariableOp,lstm_cell_113_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_113/MatMulMatMulstrided_slice_2:output:0+lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_113_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_113/MatMul_1MatMulzeros:output:0-lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_113/addAddV2lstm_cell_113/MatMul:product:0 lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_113_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_113/BiasAddBiasAddlstm_cell_113/add:z:0,lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_113/splitSplit&lstm_cell_113/split/split_dim:output:0lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_113/SigmoidSigmoidlstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_1Sigmoidlstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_113/mulMullstm_cell_113/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_113/ReluRelulstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_1Mullstm_cell_113/Sigmoid:y:0 lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_113/add_1AddV2lstm_cell_113/mul:z:0lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_2Sigmoidlstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_113/Relu_1Relulstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_2Mullstm_cell_113/Sigmoid_2:y:0"lstm_cell_113/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_113_matmul_readvariableop_resource.lstm_cell_113_matmul_1_readvariableop_resource-lstm_cell_113_biasadd_readvariableop_resource*
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
while_body_688896*
condR
while_cond_688895*K
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
NoOpNoOp%^lstm_cell_113/BiasAdd/ReadVariableOp$^lstm_cell_113/MatMul/ReadVariableOp&^lstm_cell_113/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_113/BiasAdd/ReadVariableOp$lstm_cell_113/BiasAdd/ReadVariableOp2J
#lstm_cell_113/MatMul/ReadVariableOp#lstm_cell_113/MatMul/ReadVariableOp2N
%lstm_cell_113/MatMul_1/ReadVariableOp%lstm_cell_113/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_688896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_113_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_113_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_113_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_113_matmul_readvariableop_resource:2(F
4while_lstm_cell_113_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_113_biasadd_readvariableop_resource:(??*while/lstm_cell_113/BiasAdd/ReadVariableOp?)while/lstm_cell_113/MatMul/ReadVariableOp?+while/lstm_cell_113/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_113/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_113_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_113/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_113_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_113/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_113/addAddV2$while/lstm_cell_113/MatMul:product:0&while/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_113_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_113/BiasAddBiasAddwhile/lstm_cell_113/add:z:02while/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_113/splitSplit,while/lstm_cell_113/split/split_dim:output:0$while/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_113/SigmoidSigmoid"while/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_1Sigmoid"while/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mulMul!while/lstm_cell_113/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_113/ReluRelu"while/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_1Mulwhile/lstm_cell_113/Sigmoid:y:0&while/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/add_1AddV2while/lstm_cell_113/mul:z:0while/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_2Sigmoid"while/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_113/Relu_1Reluwhile/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_2Mul!while/lstm_cell_113/Sigmoid_2:y:0(while/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_113/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_113/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_113/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_113/BiasAdd/ReadVariableOp*^while/lstm_cell_113/MatMul/ReadVariableOp,^while/lstm_cell_113/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_113_biasadd_readvariableop_resource5while_lstm_cell_113_biasadd_readvariableop_resource_0"n
4while_lstm_cell_113_matmul_1_readvariableop_resource6while_lstm_cell_113_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_113_matmul_readvariableop_resource4while_lstm_cell_113_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_113/BiasAdd/ReadVariableOp*while/lstm_cell_113/BiasAdd/ReadVariableOp2V
)while/lstm_cell_113/MatMul/ReadVariableOp)while/lstm_cell_113/MatMul/ReadVariableOp2Z
+while/lstm_cell_113/MatMul_1/ReadVariableOp+while/lstm_cell_113/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_384_while_body_686766.
*lstm_384_while_lstm_384_while_loop_counter4
0lstm_384_while_lstm_384_while_maximum_iterations
lstm_384_while_placeholder 
lstm_384_while_placeholder_1 
lstm_384_while_placeholder_2 
lstm_384_while_placeholder_3-
)lstm_384_while_lstm_384_strided_slice_1_0i
elstm_384_while_tensorarrayv2read_tensorlistgetitem_lstm_384_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_384_while_lstm_cell_111_matmul_readvariableop_resource_0:	?R
?lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource_0:	d?M
>lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource_0:	?
lstm_384_while_identity
lstm_384_while_identity_1
lstm_384_while_identity_2
lstm_384_while_identity_3
lstm_384_while_identity_4
lstm_384_while_identity_5+
'lstm_384_while_lstm_384_strided_slice_1g
clstm_384_while_tensorarrayv2read_tensorlistgetitem_lstm_384_tensorarrayunstack_tensorlistfromtensorN
;lstm_384_while_lstm_cell_111_matmul_readvariableop_resource:	?P
=lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource:	d?K
<lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource:	???3lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp?2lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp?4lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp?
@lstm_384/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_384/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_384_while_tensorarrayv2read_tensorlistgetitem_lstm_384_tensorarrayunstack_tensorlistfromtensor_0lstm_384_while_placeholderIlstm_384/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_384/while/lstm_cell_111/MatMul/ReadVariableOpReadVariableOp=lstm_384_while_lstm_cell_111_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_384/while/lstm_cell_111/MatMulMatMul9lstm_384/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp?lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_384/while/lstm_cell_111/MatMul_1MatMullstm_384_while_placeholder_2<lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_384/while/lstm_cell_111/addAddV2-lstm_384/while/lstm_cell_111/MatMul:product:0/lstm_384/while/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp>lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_384/while/lstm_cell_111/BiasAddBiasAdd$lstm_384/while/lstm_cell_111/add:z:0;lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_384/while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_384/while/lstm_cell_111/splitSplit5lstm_384/while/lstm_cell_111/split/split_dim:output:0-lstm_384/while/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_384/while/lstm_cell_111/SigmoidSigmoid+lstm_384/while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_384/while/lstm_cell_111/Sigmoid_1Sigmoid+lstm_384/while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_384/while/lstm_cell_111/mulMul*lstm_384/while/lstm_cell_111/Sigmoid_1:y:0lstm_384_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_384/while/lstm_cell_111/ReluRelu+lstm_384/while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_384/while/lstm_cell_111/mul_1Mul(lstm_384/while/lstm_cell_111/Sigmoid:y:0/lstm_384/while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_384/while/lstm_cell_111/add_1AddV2$lstm_384/while/lstm_cell_111/mul:z:0&lstm_384/while/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_384/while/lstm_cell_111/Sigmoid_2Sigmoid+lstm_384/while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_384/while/lstm_cell_111/Relu_1Relu&lstm_384/while/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_384/while/lstm_cell_111/mul_2Mul*lstm_384/while/lstm_cell_111/Sigmoid_2:y:01lstm_384/while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_384/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_384_while_placeholder_1lstm_384_while_placeholder&lstm_384/while/lstm_cell_111/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_384/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_384/while/addAddV2lstm_384_while_placeholderlstm_384/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_384/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_384/while/add_1AddV2*lstm_384_while_lstm_384_while_loop_counterlstm_384/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_384/while/IdentityIdentitylstm_384/while/add_1:z:0^lstm_384/while/NoOp*
T0*
_output_shapes
: ?
lstm_384/while/Identity_1Identity0lstm_384_while_lstm_384_while_maximum_iterations^lstm_384/while/NoOp*
T0*
_output_shapes
: t
lstm_384/while/Identity_2Identitylstm_384/while/add:z:0^lstm_384/while/NoOp*
T0*
_output_shapes
: ?
lstm_384/while/Identity_3IdentityClstm_384/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_384/while/NoOp*
T0*
_output_shapes
: ?
lstm_384/while/Identity_4Identity&lstm_384/while/lstm_cell_111/mul_2:z:0^lstm_384/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_384/while/Identity_5Identity&lstm_384/while/lstm_cell_111/add_1:z:0^lstm_384/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_384/while/NoOpNoOp4^lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp3^lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp5^lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_384_while_identity lstm_384/while/Identity:output:0"?
lstm_384_while_identity_1"lstm_384/while/Identity_1:output:0"?
lstm_384_while_identity_2"lstm_384/while/Identity_2:output:0"?
lstm_384_while_identity_3"lstm_384/while/Identity_3:output:0"?
lstm_384_while_identity_4"lstm_384/while/Identity_4:output:0"?
lstm_384_while_identity_5"lstm_384/while/Identity_5:output:0"T
'lstm_384_while_lstm_384_strided_slice_1)lstm_384_while_lstm_384_strided_slice_1_0"~
<lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource>lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource_0"?
=lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource?lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource_0"|
;lstm_384_while_lstm_cell_111_matmul_readvariableop_resource=lstm_384_while_lstm_cell_111_matmul_readvariableop_resource_0"?
clstm_384_while_tensorarrayv2read_tensorlistgetitem_lstm_384_tensorarrayunstack_tensorlistfromtensorelstm_384_while_tensorarrayv2read_tensorlistgetitem_lstm_384_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp3lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp2h
2lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp2lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp2l
4lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp4lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_684823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_684823___redundant_placeholder04
0while_while_cond_684823___redundant_placeholder14
0while_while_cond_684823___redundant_placeholder24
0while_while_cond_684823___redundant_placeholder3
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
while_body_684665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_111_684689_0:	?/
while_lstm_cell_111_684691_0:	d?+
while_lstm_cell_111_684693_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_111_684689:	?-
while_lstm_cell_111_684691:	d?)
while_lstm_cell_111_684693:	???+while/lstm_cell_111/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_111/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_111_684689_0while_lstm_cell_111_684691_0while_lstm_cell_111_684693_0*
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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_684606?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_111/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_111/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_111/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_111/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_111_684689while_lstm_cell_111_684689_0":
while_lstm_cell_111_684691while_lstm_cell_111_684691_0":
while_lstm_cell_111_684693while_lstm_cell_111_684693_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_111/StatefulPartitionedCall+while/lstm_cell_111/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_689494

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
)__inference_lstm_384_layer_call_fn_687583
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_684734|
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_688034

inputs?
,lstm_cell_111_matmul_readvariableop_resource:	?A
.lstm_cell_111_matmul_1_readvariableop_resource:	d?<
-lstm_cell_111_biasadd_readvariableop_resource:	?
identity??$lstm_cell_111/BiasAdd/ReadVariableOp?#lstm_cell_111/MatMul/ReadVariableOp?%lstm_cell_111/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_111/MatMul/ReadVariableOpReadVariableOp,lstm_cell_111_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0+lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_111_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_111/MatMul_1MatMulzeros:output:0-lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_111/addAddV2lstm_cell_111/MatMul:product:0 lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_111_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_111/BiasAddBiasAddlstm_cell_111/add:z:0,lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_111/SigmoidSigmoidlstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_111/mulMullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_111/ReluRelulstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_1Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_111/add_1AddV2lstm_cell_111/mul:z:0lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_111/Relu_1Relulstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_2Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_111_matmul_readvariableop_resource.lstm_cell_111_matmul_1_readvariableop_resource-lstm_cell_111_biasadd_readvariableop_resource*
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
while_body_687950*
condR
while_cond_687949*K
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
NoOpNoOp%^lstm_cell_111/BiasAdd/ReadVariableOp$^lstm_cell_111/MatMul/ReadVariableOp&^lstm_cell_111/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_111/BiasAdd/ReadVariableOp$lstm_cell_111/BiasAdd/ReadVariableOp2J
#lstm_cell_111/MatMul/ReadVariableOp#lstm_cell_111/MatMul/ReadVariableOp2N
%lstm_cell_111/MatMul_1/ReadVariableOp%lstm_cell_111/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
__inference__traced_save_689865
file_prefix/
+savev2_dense_128_kernel_read_readvariableop-
)savev2_dense_128_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_384_lstm_cell_384_kernel_read_readvariableopF
Bsavev2_lstm_384_lstm_cell_384_recurrent_kernel_read_readvariableop:
6savev2_lstm_384_lstm_cell_384_bias_read_readvariableop<
8savev2_lstm_385_lstm_cell_385_kernel_read_readvariableopF
Bsavev2_lstm_385_lstm_cell_385_recurrent_kernel_read_readvariableop:
6savev2_lstm_385_lstm_cell_385_bias_read_readvariableop<
8savev2_lstm_386_lstm_cell_386_kernel_read_readvariableopF
Bsavev2_lstm_386_lstm_cell_386_recurrent_kernel_read_readvariableop:
6savev2_lstm_386_lstm_cell_386_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_128_kernel_m_read_readvariableop4
0savev2_adam_dense_128_bias_m_read_readvariableopC
?savev2_adam_lstm_384_lstm_cell_384_kernel_m_read_readvariableopM
Isavev2_adam_lstm_384_lstm_cell_384_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_384_lstm_cell_384_bias_m_read_readvariableopC
?savev2_adam_lstm_385_lstm_cell_385_kernel_m_read_readvariableopM
Isavev2_adam_lstm_385_lstm_cell_385_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_385_lstm_cell_385_bias_m_read_readvariableopC
?savev2_adam_lstm_386_lstm_cell_386_kernel_m_read_readvariableopM
Isavev2_adam_lstm_386_lstm_cell_386_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_386_lstm_cell_386_bias_m_read_readvariableop6
2savev2_adam_dense_128_kernel_v_read_readvariableop4
0savev2_adam_dense_128_bias_v_read_readvariableopC
?savev2_adam_lstm_384_lstm_cell_384_kernel_v_read_readvariableopM
Isavev2_adam_lstm_384_lstm_cell_384_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_384_lstm_cell_384_bias_v_read_readvariableopC
?savev2_adam_lstm_385_lstm_cell_385_kernel_v_read_readvariableopM
Isavev2_adam_lstm_385_lstm_cell_385_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_385_lstm_cell_385_bias_v_read_readvariableopC
?savev2_adam_lstm_386_lstm_cell_386_kernel_v_read_readvariableopM
Isavev2_adam_lstm_386_lstm_cell_386_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_386_lstm_cell_386_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_128_kernel_read_readvariableop)savev2_dense_128_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_384_lstm_cell_384_kernel_read_readvariableopBsavev2_lstm_384_lstm_cell_384_recurrent_kernel_read_readvariableop6savev2_lstm_384_lstm_cell_384_bias_read_readvariableop8savev2_lstm_385_lstm_cell_385_kernel_read_readvariableopBsavev2_lstm_385_lstm_cell_385_recurrent_kernel_read_readvariableop6savev2_lstm_385_lstm_cell_385_bias_read_readvariableop8savev2_lstm_386_lstm_cell_386_kernel_read_readvariableopBsavev2_lstm_386_lstm_cell_386_recurrent_kernel_read_readvariableop6savev2_lstm_386_lstm_cell_386_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_128_kernel_m_read_readvariableop0savev2_adam_dense_128_bias_m_read_readvariableop?savev2_adam_lstm_384_lstm_cell_384_kernel_m_read_readvariableopIsavev2_adam_lstm_384_lstm_cell_384_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_384_lstm_cell_384_bias_m_read_readvariableop?savev2_adam_lstm_385_lstm_cell_385_kernel_m_read_readvariableopIsavev2_adam_lstm_385_lstm_cell_385_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_385_lstm_cell_385_bias_m_read_readvariableop?savev2_adam_lstm_386_lstm_cell_386_kernel_m_read_readvariableopIsavev2_adam_lstm_386_lstm_cell_386_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_386_lstm_cell_386_bias_m_read_readvariableop2savev2_adam_dense_128_kernel_v_read_readvariableop0savev2_adam_dense_128_bias_v_read_readvariableop?savev2_adam_lstm_384_lstm_cell_384_kernel_v_read_readvariableopIsavev2_adam_lstm_384_lstm_cell_384_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_384_lstm_cell_384_bias_v_read_readvariableop?savev2_adam_lstm_385_lstm_cell_385_kernel_v_read_readvariableopIsavev2_adam_lstm_385_lstm_cell_385_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_385_lstm_cell_385_bias_v_read_readvariableop?savev2_adam_lstm_386_lstm_cell_386_kernel_v_read_readvariableopIsavev2_adam_lstm_386_lstm_cell_386_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_386_lstm_cell_386_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_685243

inputs&
lstm_cell_113_685161:2(&
lstm_cell_113_685163:
("
lstm_cell_113_685165:(
identity??%lstm_cell_113/StatefulPartitionedCall?while;
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
%lstm_cell_113/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_113_685161lstm_cell_113_685163lstm_cell_113_685165*
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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_685160n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_113_685161lstm_cell_113_685163lstm_cell_113_685165*
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
while_body_685174*
condR
while_cond_685173*K
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
NoOpNoOp&^lstm_cell_113/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_113/StatefulPartitionedCall%lstm_cell_113/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_685808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_113_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_113_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_113_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_113_matmul_readvariableop_resource:2(F
4while_lstm_cell_113_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_113_biasadd_readvariableop_resource:(??*while/lstm_cell_113/BiasAdd/ReadVariableOp?)while/lstm_cell_113/MatMul/ReadVariableOp?+while/lstm_cell_113/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_113/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_113_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_113/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_113_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_113/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_113/addAddV2$while/lstm_cell_113/MatMul:product:0&while/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_113_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_113/BiasAddBiasAddwhile/lstm_cell_113/add:z:02while/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_113/splitSplit,while/lstm_cell_113/split/split_dim:output:0$while/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_113/SigmoidSigmoid"while/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_1Sigmoid"while/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mulMul!while/lstm_cell_113/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_113/ReluRelu"while/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_1Mulwhile/lstm_cell_113/Sigmoid:y:0&while/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/add_1AddV2while/lstm_cell_113/mul:z:0while/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_2Sigmoid"while/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_113/Relu_1Reluwhile/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_2Mul!while/lstm_cell_113/Sigmoid_2:y:0(while/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_113/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_113/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_113/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_113/BiasAdd/ReadVariableOp*^while/lstm_cell_113/MatMul/ReadVariableOp,^while/lstm_cell_113/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_113_biasadd_readvariableop_resource5while_lstm_cell_113_biasadd_readvariableop_resource_0"n
4while_lstm_cell_113_matmul_1_readvariableop_resource6while_lstm_cell_113_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_113_matmul_readvariableop_resource4while_lstm_cell_113_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_113/BiasAdd/ReadVariableOp*while/lstm_cell_113/BiasAdd/ReadVariableOp2V
)while/lstm_cell_113/MatMul/ReadVariableOp)while/lstm_cell_113/MatMul/ReadVariableOp2Z
+while/lstm_cell_113/MatMul_1/ReadVariableOp+while/lstm_cell_113/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_687806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_687806___redundant_placeholder04
0while_while_cond_687806___redundant_placeholder14
0while_while_cond_687806___redundant_placeholder24
0while_while_cond_687806___redundant_placeholder3
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
!__inference__wrapped_model_684393
lstm_384_inputW
Dsequential_128_lstm_384_lstm_cell_111_matmul_readvariableop_resource:	?Y
Fsequential_128_lstm_384_lstm_cell_111_matmul_1_readvariableop_resource:	d?T
Esequential_128_lstm_384_lstm_cell_111_biasadd_readvariableop_resource:	?W
Dsequential_128_lstm_385_lstm_cell_112_matmul_readvariableop_resource:	d?Y
Fsequential_128_lstm_385_lstm_cell_112_matmul_1_readvariableop_resource:	2?T
Esequential_128_lstm_385_lstm_cell_112_biasadd_readvariableop_resource:	?V
Dsequential_128_lstm_386_lstm_cell_113_matmul_readvariableop_resource:2(X
Fsequential_128_lstm_386_lstm_cell_113_matmul_1_readvariableop_resource:
(S
Esequential_128_lstm_386_lstm_cell_113_biasadd_readvariableop_resource:(I
7sequential_128_dense_128_matmul_readvariableop_resource:
F
8sequential_128_dense_128_biasadd_readvariableop_resource:
identity??/sequential_128/dense_128/BiasAdd/ReadVariableOp?.sequential_128/dense_128/MatMul/ReadVariableOp?<sequential_128/lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp?;sequential_128/lstm_384/lstm_cell_111/MatMul/ReadVariableOp?=sequential_128/lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp?sequential_128/lstm_384/while?<sequential_128/lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp?;sequential_128/lstm_385/lstm_cell_112/MatMul/ReadVariableOp?=sequential_128/lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp?sequential_128/lstm_385/while?<sequential_128/lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp?;sequential_128/lstm_386/lstm_cell_113/MatMul/ReadVariableOp?=sequential_128/lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp?sequential_128/lstm_386/while[
sequential_128/lstm_384/ShapeShapelstm_384_input*
T0*
_output_shapes
:u
+sequential_128/lstm_384/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_128/lstm_384/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_128/lstm_384/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_128/lstm_384/strided_sliceStridedSlice&sequential_128/lstm_384/Shape:output:04sequential_128/lstm_384/strided_slice/stack:output:06sequential_128/lstm_384/strided_slice/stack_1:output:06sequential_128/lstm_384/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_128/lstm_384/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_128/lstm_384/zeros/packedPack.sequential_128/lstm_384/strided_slice:output:0/sequential_128/lstm_384/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_128/lstm_384/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_128/lstm_384/zerosFill-sequential_128/lstm_384/zeros/packed:output:0,sequential_128/lstm_384/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_128/lstm_384/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_128/lstm_384/zeros_1/packedPack.sequential_128/lstm_384/strided_slice:output:01sequential_128/lstm_384/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_128/lstm_384/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_128/lstm_384/zeros_1Fill/sequential_128/lstm_384/zeros_1/packed:output:0.sequential_128/lstm_384/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_128/lstm_384/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_128/lstm_384/transpose	Transposelstm_384_input/sequential_128/lstm_384/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_128/lstm_384/Shape_1Shape%sequential_128/lstm_384/transpose:y:0*
T0*
_output_shapes
:w
-sequential_128/lstm_384/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_128/lstm_384/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_128/lstm_384/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_128/lstm_384/strided_slice_1StridedSlice(sequential_128/lstm_384/Shape_1:output:06sequential_128/lstm_384/strided_slice_1/stack:output:08sequential_128/lstm_384/strided_slice_1/stack_1:output:08sequential_128/lstm_384/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_128/lstm_384/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_128/lstm_384/TensorArrayV2TensorListReserve<sequential_128/lstm_384/TensorArrayV2/element_shape:output:00sequential_128/lstm_384/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_128/lstm_384/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_128/lstm_384/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_128/lstm_384/transpose:y:0Vsequential_128/lstm_384/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_128/lstm_384/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_128/lstm_384/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_128/lstm_384/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_128/lstm_384/strided_slice_2StridedSlice%sequential_128/lstm_384/transpose:y:06sequential_128/lstm_384/strided_slice_2/stack:output:08sequential_128/lstm_384/strided_slice_2/stack_1:output:08sequential_128/lstm_384/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_128/lstm_384/lstm_cell_111/MatMul/ReadVariableOpReadVariableOpDsequential_128_lstm_384_lstm_cell_111_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_128/lstm_384/lstm_cell_111/MatMulMatMul0sequential_128/lstm_384/strided_slice_2:output:0Csequential_128/lstm_384/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_128/lstm_384/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOpFsequential_128_lstm_384_lstm_cell_111_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_128/lstm_384/lstm_cell_111/MatMul_1MatMul&sequential_128/lstm_384/zeros:output:0Esequential_128/lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_128/lstm_384/lstm_cell_111/addAddV26sequential_128/lstm_384/lstm_cell_111/MatMul:product:08sequential_128/lstm_384/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_128/lstm_384/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOpEsequential_128_lstm_384_lstm_cell_111_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_128/lstm_384/lstm_cell_111/BiasAddBiasAdd-sequential_128/lstm_384/lstm_cell_111/add:z:0Dsequential_128/lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_128/lstm_384/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_128/lstm_384/lstm_cell_111/splitSplit>sequential_128/lstm_384/lstm_cell_111/split/split_dim:output:06sequential_128/lstm_384/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_128/lstm_384/lstm_cell_111/SigmoidSigmoid4sequential_128/lstm_384/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_128/lstm_384/lstm_cell_111/Sigmoid_1Sigmoid4sequential_128/lstm_384/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_128/lstm_384/lstm_cell_111/mulMul3sequential_128/lstm_384/lstm_cell_111/Sigmoid_1:y:0(sequential_128/lstm_384/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_128/lstm_384/lstm_cell_111/ReluRelu4sequential_128/lstm_384/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_128/lstm_384/lstm_cell_111/mul_1Mul1sequential_128/lstm_384/lstm_cell_111/Sigmoid:y:08sequential_128/lstm_384/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_128/lstm_384/lstm_cell_111/add_1AddV2-sequential_128/lstm_384/lstm_cell_111/mul:z:0/sequential_128/lstm_384/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_128/lstm_384/lstm_cell_111/Sigmoid_2Sigmoid4sequential_128/lstm_384/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_128/lstm_384/lstm_cell_111/Relu_1Relu/sequential_128/lstm_384/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_128/lstm_384/lstm_cell_111/mul_2Mul3sequential_128/lstm_384/lstm_cell_111/Sigmoid_2:y:0:sequential_128/lstm_384/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_128/lstm_384/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_128/lstm_384/TensorArrayV2_1TensorListReserve>sequential_128/lstm_384/TensorArrayV2_1/element_shape:output:00sequential_128/lstm_384/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_128/lstm_384/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_128/lstm_384/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_128/lstm_384/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_128/lstm_384/whileWhile3sequential_128/lstm_384/while/loop_counter:output:09sequential_128/lstm_384/while/maximum_iterations:output:0%sequential_128/lstm_384/time:output:00sequential_128/lstm_384/TensorArrayV2_1:handle:0&sequential_128/lstm_384/zeros:output:0(sequential_128/lstm_384/zeros_1:output:00sequential_128/lstm_384/strided_slice_1:output:0Osequential_128/lstm_384/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_128_lstm_384_lstm_cell_111_matmul_readvariableop_resourceFsequential_128_lstm_384_lstm_cell_111_matmul_1_readvariableop_resourceEsequential_128_lstm_384_lstm_cell_111_biasadd_readvariableop_resource*
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
)sequential_128_lstm_384_while_body_684025*5
cond-R+
)sequential_128_lstm_384_while_cond_684024*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_128/lstm_384/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_128/lstm_384/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_128/lstm_384/while:output:3Qsequential_128/lstm_384/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_128/lstm_384/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_128/lstm_384/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_128/lstm_384/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_128/lstm_384/strided_slice_3StridedSliceCsequential_128/lstm_384/TensorArrayV2Stack/TensorListStack:tensor:06sequential_128/lstm_384/strided_slice_3/stack:output:08sequential_128/lstm_384/strided_slice_3/stack_1:output:08sequential_128/lstm_384/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_128/lstm_384/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_128/lstm_384/transpose_1	TransposeCsequential_128/lstm_384/TensorArrayV2Stack/TensorListStack:tensor:01sequential_128/lstm_384/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_128/lstm_384/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_128/lstm_385/ShapeShape'sequential_128/lstm_384/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_128/lstm_385/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_128/lstm_385/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_128/lstm_385/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_128/lstm_385/strided_sliceStridedSlice&sequential_128/lstm_385/Shape:output:04sequential_128/lstm_385/strided_slice/stack:output:06sequential_128/lstm_385/strided_slice/stack_1:output:06sequential_128/lstm_385/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_128/lstm_385/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_128/lstm_385/zeros/packedPack.sequential_128/lstm_385/strided_slice:output:0/sequential_128/lstm_385/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_128/lstm_385/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_128/lstm_385/zerosFill-sequential_128/lstm_385/zeros/packed:output:0,sequential_128/lstm_385/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_128/lstm_385/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_128/lstm_385/zeros_1/packedPack.sequential_128/lstm_385/strided_slice:output:01sequential_128/lstm_385/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_128/lstm_385/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_128/lstm_385/zeros_1Fill/sequential_128/lstm_385/zeros_1/packed:output:0.sequential_128/lstm_385/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_128/lstm_385/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_128/lstm_385/transpose	Transpose'sequential_128/lstm_384/transpose_1:y:0/sequential_128/lstm_385/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_128/lstm_385/Shape_1Shape%sequential_128/lstm_385/transpose:y:0*
T0*
_output_shapes
:w
-sequential_128/lstm_385/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_128/lstm_385/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_128/lstm_385/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_128/lstm_385/strided_slice_1StridedSlice(sequential_128/lstm_385/Shape_1:output:06sequential_128/lstm_385/strided_slice_1/stack:output:08sequential_128/lstm_385/strided_slice_1/stack_1:output:08sequential_128/lstm_385/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_128/lstm_385/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_128/lstm_385/TensorArrayV2TensorListReserve<sequential_128/lstm_385/TensorArrayV2/element_shape:output:00sequential_128/lstm_385/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_128/lstm_385/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_128/lstm_385/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_128/lstm_385/transpose:y:0Vsequential_128/lstm_385/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_128/lstm_385/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_128/lstm_385/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_128/lstm_385/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_128/lstm_385/strided_slice_2StridedSlice%sequential_128/lstm_385/transpose:y:06sequential_128/lstm_385/strided_slice_2/stack:output:08sequential_128/lstm_385/strided_slice_2/stack_1:output:08sequential_128/lstm_385/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_128/lstm_385/lstm_cell_112/MatMul/ReadVariableOpReadVariableOpDsequential_128_lstm_385_lstm_cell_112_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_128/lstm_385/lstm_cell_112/MatMulMatMul0sequential_128/lstm_385/strided_slice_2:output:0Csequential_128/lstm_385/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_128/lstm_385/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOpFsequential_128_lstm_385_lstm_cell_112_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_128/lstm_385/lstm_cell_112/MatMul_1MatMul&sequential_128/lstm_385/zeros:output:0Esequential_128/lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_128/lstm_385/lstm_cell_112/addAddV26sequential_128/lstm_385/lstm_cell_112/MatMul:product:08sequential_128/lstm_385/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_128/lstm_385/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOpEsequential_128_lstm_385_lstm_cell_112_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_128/lstm_385/lstm_cell_112/BiasAddBiasAdd-sequential_128/lstm_385/lstm_cell_112/add:z:0Dsequential_128/lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_128/lstm_385/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_128/lstm_385/lstm_cell_112/splitSplit>sequential_128/lstm_385/lstm_cell_112/split/split_dim:output:06sequential_128/lstm_385/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_128/lstm_385/lstm_cell_112/SigmoidSigmoid4sequential_128/lstm_385/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_128/lstm_385/lstm_cell_112/Sigmoid_1Sigmoid4sequential_128/lstm_385/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_128/lstm_385/lstm_cell_112/mulMul3sequential_128/lstm_385/lstm_cell_112/Sigmoid_1:y:0(sequential_128/lstm_385/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_128/lstm_385/lstm_cell_112/ReluRelu4sequential_128/lstm_385/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_128/lstm_385/lstm_cell_112/mul_1Mul1sequential_128/lstm_385/lstm_cell_112/Sigmoid:y:08sequential_128/lstm_385/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_128/lstm_385/lstm_cell_112/add_1AddV2-sequential_128/lstm_385/lstm_cell_112/mul:z:0/sequential_128/lstm_385/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_128/lstm_385/lstm_cell_112/Sigmoid_2Sigmoid4sequential_128/lstm_385/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_128/lstm_385/lstm_cell_112/Relu_1Relu/sequential_128/lstm_385/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_128/lstm_385/lstm_cell_112/mul_2Mul3sequential_128/lstm_385/lstm_cell_112/Sigmoid_2:y:0:sequential_128/lstm_385/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_128/lstm_385/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_128/lstm_385/TensorArrayV2_1TensorListReserve>sequential_128/lstm_385/TensorArrayV2_1/element_shape:output:00sequential_128/lstm_385/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_128/lstm_385/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_128/lstm_385/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_128/lstm_385/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_128/lstm_385/whileWhile3sequential_128/lstm_385/while/loop_counter:output:09sequential_128/lstm_385/while/maximum_iterations:output:0%sequential_128/lstm_385/time:output:00sequential_128/lstm_385/TensorArrayV2_1:handle:0&sequential_128/lstm_385/zeros:output:0(sequential_128/lstm_385/zeros_1:output:00sequential_128/lstm_385/strided_slice_1:output:0Osequential_128/lstm_385/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_128_lstm_385_lstm_cell_112_matmul_readvariableop_resourceFsequential_128_lstm_385_lstm_cell_112_matmul_1_readvariableop_resourceEsequential_128_lstm_385_lstm_cell_112_biasadd_readvariableop_resource*
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
)sequential_128_lstm_385_while_body_684164*5
cond-R+
)sequential_128_lstm_385_while_cond_684163*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_128/lstm_385/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_128/lstm_385/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_128/lstm_385/while:output:3Qsequential_128/lstm_385/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_128/lstm_385/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_128/lstm_385/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_128/lstm_385/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_128/lstm_385/strided_slice_3StridedSliceCsequential_128/lstm_385/TensorArrayV2Stack/TensorListStack:tensor:06sequential_128/lstm_385/strided_slice_3/stack:output:08sequential_128/lstm_385/strided_slice_3/stack_1:output:08sequential_128/lstm_385/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_128/lstm_385/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_128/lstm_385/transpose_1	TransposeCsequential_128/lstm_385/TensorArrayV2Stack/TensorListStack:tensor:01sequential_128/lstm_385/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_128/lstm_385/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_128/lstm_386/ShapeShape'sequential_128/lstm_385/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_128/lstm_386/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_128/lstm_386/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_128/lstm_386/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_128/lstm_386/strided_sliceStridedSlice&sequential_128/lstm_386/Shape:output:04sequential_128/lstm_386/strided_slice/stack:output:06sequential_128/lstm_386/strided_slice/stack_1:output:06sequential_128/lstm_386/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_128/lstm_386/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_128/lstm_386/zeros/packedPack.sequential_128/lstm_386/strided_slice:output:0/sequential_128/lstm_386/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_128/lstm_386/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_128/lstm_386/zerosFill-sequential_128/lstm_386/zeros/packed:output:0,sequential_128/lstm_386/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_128/lstm_386/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_128/lstm_386/zeros_1/packedPack.sequential_128/lstm_386/strided_slice:output:01sequential_128/lstm_386/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_128/lstm_386/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_128/lstm_386/zeros_1Fill/sequential_128/lstm_386/zeros_1/packed:output:0.sequential_128/lstm_386/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_128/lstm_386/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_128/lstm_386/transpose	Transpose'sequential_128/lstm_385/transpose_1:y:0/sequential_128/lstm_386/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_128/lstm_386/Shape_1Shape%sequential_128/lstm_386/transpose:y:0*
T0*
_output_shapes
:w
-sequential_128/lstm_386/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_128/lstm_386/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_128/lstm_386/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_128/lstm_386/strided_slice_1StridedSlice(sequential_128/lstm_386/Shape_1:output:06sequential_128/lstm_386/strided_slice_1/stack:output:08sequential_128/lstm_386/strided_slice_1/stack_1:output:08sequential_128/lstm_386/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_128/lstm_386/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_128/lstm_386/TensorArrayV2TensorListReserve<sequential_128/lstm_386/TensorArrayV2/element_shape:output:00sequential_128/lstm_386/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_128/lstm_386/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_128/lstm_386/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_128/lstm_386/transpose:y:0Vsequential_128/lstm_386/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_128/lstm_386/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_128/lstm_386/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_128/lstm_386/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_128/lstm_386/strided_slice_2StridedSlice%sequential_128/lstm_386/transpose:y:06sequential_128/lstm_386/strided_slice_2/stack:output:08sequential_128/lstm_386/strided_slice_2/stack_1:output:08sequential_128/lstm_386/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_128/lstm_386/lstm_cell_113/MatMul/ReadVariableOpReadVariableOpDsequential_128_lstm_386_lstm_cell_113_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_128/lstm_386/lstm_cell_113/MatMulMatMul0sequential_128/lstm_386/strided_slice_2:output:0Csequential_128/lstm_386/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_128/lstm_386/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOpFsequential_128_lstm_386_lstm_cell_113_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_128/lstm_386/lstm_cell_113/MatMul_1MatMul&sequential_128/lstm_386/zeros:output:0Esequential_128/lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_128/lstm_386/lstm_cell_113/addAddV26sequential_128/lstm_386/lstm_cell_113/MatMul:product:08sequential_128/lstm_386/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_128/lstm_386/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOpEsequential_128_lstm_386_lstm_cell_113_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_128/lstm_386/lstm_cell_113/BiasAddBiasAdd-sequential_128/lstm_386/lstm_cell_113/add:z:0Dsequential_128/lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_128/lstm_386/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_128/lstm_386/lstm_cell_113/splitSplit>sequential_128/lstm_386/lstm_cell_113/split/split_dim:output:06sequential_128/lstm_386/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_128/lstm_386/lstm_cell_113/SigmoidSigmoid4sequential_128/lstm_386/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_128/lstm_386/lstm_cell_113/Sigmoid_1Sigmoid4sequential_128/lstm_386/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_128/lstm_386/lstm_cell_113/mulMul3sequential_128/lstm_386/lstm_cell_113/Sigmoid_1:y:0(sequential_128/lstm_386/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_128/lstm_386/lstm_cell_113/ReluRelu4sequential_128/lstm_386/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_128/lstm_386/lstm_cell_113/mul_1Mul1sequential_128/lstm_386/lstm_cell_113/Sigmoid:y:08sequential_128/lstm_386/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_128/lstm_386/lstm_cell_113/add_1AddV2-sequential_128/lstm_386/lstm_cell_113/mul:z:0/sequential_128/lstm_386/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_128/lstm_386/lstm_cell_113/Sigmoid_2Sigmoid4sequential_128/lstm_386/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_128/lstm_386/lstm_cell_113/Relu_1Relu/sequential_128/lstm_386/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_128/lstm_386/lstm_cell_113/mul_2Mul3sequential_128/lstm_386/lstm_cell_113/Sigmoid_2:y:0:sequential_128/lstm_386/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_128/lstm_386/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_128/lstm_386/TensorArrayV2_1TensorListReserve>sequential_128/lstm_386/TensorArrayV2_1/element_shape:output:00sequential_128/lstm_386/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_128/lstm_386/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_128/lstm_386/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_128/lstm_386/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_128/lstm_386/whileWhile3sequential_128/lstm_386/while/loop_counter:output:09sequential_128/lstm_386/while/maximum_iterations:output:0%sequential_128/lstm_386/time:output:00sequential_128/lstm_386/TensorArrayV2_1:handle:0&sequential_128/lstm_386/zeros:output:0(sequential_128/lstm_386/zeros_1:output:00sequential_128/lstm_386/strided_slice_1:output:0Osequential_128/lstm_386/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_128_lstm_386_lstm_cell_113_matmul_readvariableop_resourceFsequential_128_lstm_386_lstm_cell_113_matmul_1_readvariableop_resourceEsequential_128_lstm_386_lstm_cell_113_biasadd_readvariableop_resource*
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
)sequential_128_lstm_386_while_body_684303*5
cond-R+
)sequential_128_lstm_386_while_cond_684302*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_128/lstm_386/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_128/lstm_386/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_128/lstm_386/while:output:3Qsequential_128/lstm_386/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_128/lstm_386/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_128/lstm_386/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_128/lstm_386/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_128/lstm_386/strided_slice_3StridedSliceCsequential_128/lstm_386/TensorArrayV2Stack/TensorListStack:tensor:06sequential_128/lstm_386/strided_slice_3/stack:output:08sequential_128/lstm_386/strided_slice_3/stack_1:output:08sequential_128/lstm_386/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_128/lstm_386/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_128/lstm_386/transpose_1	TransposeCsequential_128/lstm_386/TensorArrayV2Stack/TensorListStack:tensor:01sequential_128/lstm_386/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_128/lstm_386/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_128/dense_128/MatMul/ReadVariableOpReadVariableOp7sequential_128_dense_128_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_128/dense_128/MatMulMatMul0sequential_128/lstm_386/strided_slice_3:output:06sequential_128/dense_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_128/dense_128/BiasAdd/ReadVariableOpReadVariableOp8sequential_128_dense_128_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_128/dense_128/BiasAddBiasAdd)sequential_128/dense_128/MatMul:product:07sequential_128/dense_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_128/dense_128/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_128/dense_128/BiasAdd/ReadVariableOp/^sequential_128/dense_128/MatMul/ReadVariableOp=^sequential_128/lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp<^sequential_128/lstm_384/lstm_cell_111/MatMul/ReadVariableOp>^sequential_128/lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp^sequential_128/lstm_384/while=^sequential_128/lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp<^sequential_128/lstm_385/lstm_cell_112/MatMul/ReadVariableOp>^sequential_128/lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp^sequential_128/lstm_385/while=^sequential_128/lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp<^sequential_128/lstm_386/lstm_cell_113/MatMul/ReadVariableOp>^sequential_128/lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp^sequential_128/lstm_386/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_128/dense_128/BiasAdd/ReadVariableOp/sequential_128/dense_128/BiasAdd/ReadVariableOp2`
.sequential_128/dense_128/MatMul/ReadVariableOp.sequential_128/dense_128/MatMul/ReadVariableOp2|
<sequential_128/lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp<sequential_128/lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp2z
;sequential_128/lstm_384/lstm_cell_111/MatMul/ReadVariableOp;sequential_128/lstm_384/lstm_cell_111/MatMul/ReadVariableOp2~
=sequential_128/lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp=sequential_128/lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp2>
sequential_128/lstm_384/whilesequential_128/lstm_384/while2|
<sequential_128/lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp<sequential_128/lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp2z
;sequential_128/lstm_385/lstm_cell_112/MatMul/ReadVariableOp;sequential_128/lstm_385/lstm_cell_112/MatMul/ReadVariableOp2~
=sequential_128/lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp=sequential_128/lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp2>
sequential_128/lstm_385/whilesequential_128/lstm_385/while2|
<sequential_128/lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp<sequential_128/lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp2z
;sequential_128/lstm_386/lstm_cell_113/MatMul/ReadVariableOp;sequential_128/lstm_386/lstm_cell_113/MatMul/ReadVariableOp2~
=sequential_128/lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp=sequential_128/lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp2>
sequential_128/lstm_386/whilesequential_128/lstm_386/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_384_input
?
?
.__inference_lstm_cell_111_layer_call_fn_689445

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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_684460o
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
while_body_689325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_113_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_113_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_113_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_113_matmul_readvariableop_resource:2(F
4while_lstm_cell_113_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_113_biasadd_readvariableop_resource:(??*while/lstm_cell_113/BiasAdd/ReadVariableOp?)while/lstm_cell_113/MatMul/ReadVariableOp?+while/lstm_cell_113/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_113/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_113_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_113/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_113_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_113/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_113/addAddV2$while/lstm_cell_113/MatMul:product:0&while/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_113_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_113/BiasAddBiasAddwhile/lstm_cell_113/add:z:02while/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_113/splitSplit,while/lstm_cell_113/split/split_dim:output:0$while/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_113/SigmoidSigmoid"while/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_1Sigmoid"while/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mulMul!while/lstm_cell_113/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_113/ReluRelu"while/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_1Mulwhile/lstm_cell_113/Sigmoid:y:0&while/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/add_1AddV2while/lstm_cell_113/mul:z:0while/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_2Sigmoid"while/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_113/Relu_1Reluwhile/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_2Mul!while/lstm_cell_113/Sigmoid_2:y:0(while/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_113/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_113/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_113/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_113/BiasAdd/ReadVariableOp*^while/lstm_cell_113/MatMul/ReadVariableOp,^while/lstm_cell_113/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_113_biasadd_readvariableop_resource5while_lstm_cell_113_biasadd_readvariableop_resource_0"n
4while_lstm_cell_113_matmul_1_readvariableop_resource6while_lstm_cell_113_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_113_matmul_readvariableop_resource4while_lstm_cell_113_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_113/BiasAdd/ReadVariableOp*while/lstm_cell_113/BiasAdd/ReadVariableOp2V
)while/lstm_cell_113/MatMul/ReadVariableOp)while/lstm_cell_113/MatMul/ReadVariableOp2Z
+while/lstm_cell_113/MatMul_1/ReadVariableOp+while/lstm_cell_113/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_689592

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
while_body_687807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_111_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_111_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_111_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_111_matmul_readvariableop_resource:	?G
4while_lstm_cell_111_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_111_biasadd_readvariableop_resource:	???*while/lstm_cell_111/BiasAdd/ReadVariableOp?)while/lstm_cell_111/MatMul/ReadVariableOp?+while/lstm_cell_111/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_111/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_111_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_111_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_111/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_111/addAddV2$while/lstm_cell_111/MatMul:product:0&while/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_111_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_111/BiasAddBiasAddwhile/lstm_cell_111/add:z:02while/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:0$while/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_111/SigmoidSigmoid"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_1Sigmoid"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mulMul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_111/ReluRelu"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_1Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/add_1AddV2while/lstm_cell_111/mul:z:0while/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_2Sigmoid"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_2Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_111/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_111/BiasAdd/ReadVariableOp*^while/lstm_cell_111/MatMul/ReadVariableOp,^while/lstm_cell_111/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_111_biasadd_readvariableop_resource5while_lstm_cell_111_biasadd_readvariableop_resource_0"n
4while_lstm_cell_111_matmul_1_readvariableop_resource6while_lstm_cell_111_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_111_matmul_readvariableop_resource4while_lstm_cell_111_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_111/BiasAdd/ReadVariableOp*while/lstm_cell_111/BiasAdd/ReadVariableOp2V
)while/lstm_cell_111/MatMul/ReadVariableOp)while/lstm_cell_111/MatMul/ReadVariableOp2Z
+while/lstm_cell_111/MatMul_1/ReadVariableOp+while/lstm_cell_111/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_128_layer_call_fn_689418

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
E__inference_dense_128_layer_call_and_return_conditional_losses_685910o
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
?"
?
while_body_685015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_112_685039_0:	d?/
while_lstm_cell_112_685041_0:	2?+
while_lstm_cell_112_685043_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_112_685039:	d?-
while_lstm_cell_112_685041:	2?)
while_lstm_cell_112_685043:	???+while/lstm_cell_112/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_112/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_112_685039_0while_lstm_cell_112_685041_0while_lstm_cell_112_685043_0*
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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_684956?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_112/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_112/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_112/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_112/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_112_685039while_lstm_cell_112_685039_0":
while_lstm_cell_112_685041while_lstm_cell_112_685041_0":
while_lstm_cell_112_685043while_lstm_cell_112_685043_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_112/StatefulPartitionedCall+while/lstm_cell_112/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_384_while_cond_687192.
*lstm_384_while_lstm_384_while_loop_counter4
0lstm_384_while_lstm_384_while_maximum_iterations
lstm_384_while_placeholder 
lstm_384_while_placeholder_1 
lstm_384_while_placeholder_2 
lstm_384_while_placeholder_30
,lstm_384_while_less_lstm_384_strided_slice_1F
Blstm_384_while_lstm_384_while_cond_687192___redundant_placeholder0F
Blstm_384_while_lstm_384_while_cond_687192___redundant_placeholder1F
Blstm_384_while_lstm_384_while_cond_687192___redundant_placeholder2F
Blstm_384_while_lstm_384_while_cond_687192___redundant_placeholder3
lstm_384_while_identity
?
lstm_384/while/LessLesslstm_384_while_placeholder,lstm_384_while_less_lstm_384_strided_slice_1*
T0*
_output_shapes
: ]
lstm_384/while/IdentityIdentitylstm_384/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_384_while_identity lstm_384/while/Identity:output:0*(
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
)__inference_lstm_386_layer_call_fn_688837

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
D__inference_lstm_386_layer_call_and_return_conditional_losses_686108o
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
?
)__inference_lstm_385_layer_call_fn_688210

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
D__inference_lstm_385_layer_call_and_return_conditional_losses_685742s
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_684734

inputs'
lstm_cell_111_684652:	?'
lstm_cell_111_684654:	d?#
lstm_cell_111_684656:	?
identity??%lstm_cell_111/StatefulPartitionedCall?while;
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
%lstm_cell_111/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_111_684652lstm_cell_111_684654lstm_cell_111_684656*
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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_684606n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_111_684652lstm_cell_111_684654lstm_cell_111_684656*
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
while_body_684665*
condR
while_cond_684664*K
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
NoOpNoOp&^lstm_cell_111/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_111/StatefulPartitionedCall%lstm_cell_111/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_685807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_685807___redundant_placeholder04
0while_while_cond_685807___redundant_placeholder14
0while_while_cond_685807___redundant_placeholder24
0while_while_cond_685807___redundant_placeholder3
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
)__inference_lstm_386_layer_call_fn_688804
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_685243o
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
?
?
J__inference_sequential_128_layer_call_and_return_conditional_losses_686506

inputs"
lstm_384_686479:	?"
lstm_384_686481:	d?
lstm_384_686483:	?"
lstm_385_686486:	d?"
lstm_385_686488:	2?
lstm_385_686490:	?!
lstm_386_686493:2(!
lstm_386_686495:
(
lstm_386_686497:("
dense_128_686500:

dense_128_686502:
identity??!dense_128/StatefulPartitionedCall? lstm_384/StatefulPartitionedCall? lstm_385/StatefulPartitionedCall? lstm_386/StatefulPartitionedCall?
 lstm_384/StatefulPartitionedCallStatefulPartitionedCallinputslstm_384_686479lstm_384_686481lstm_384_686483*
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_686438?
 lstm_385/StatefulPartitionedCallStatefulPartitionedCall)lstm_384/StatefulPartitionedCall:output:0lstm_385_686486lstm_385_686488lstm_385_686490*
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_686273?
 lstm_386/StatefulPartitionedCallStatefulPartitionedCall)lstm_385/StatefulPartitionedCall:output:0lstm_386_686493lstm_386_686495lstm_386_686497*
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_686108?
!dense_128/StatefulPartitionedCallStatefulPartitionedCall)lstm_386/StatefulPartitionedCall:output:0dense_128_686500dense_128_686502*
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
E__inference_dense_128_layer_call_and_return_conditional_losses_685910y
IdentityIdentity*dense_128/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_128/StatefulPartitionedCall!^lstm_384/StatefulPartitionedCall!^lstm_385/StatefulPartitionedCall!^lstm_386/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2D
 lstm_384/StatefulPartitionedCall lstm_384/StatefulPartitionedCall2D
 lstm_385/StatefulPartitionedCall lstm_385/StatefulPartitionedCall2D
 lstm_386/StatefulPartitionedCall lstm_386/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_385_layer_call_and_return_conditional_losses_688650

inputs?
,lstm_cell_112_matmul_readvariableop_resource:	d?A
.lstm_cell_112_matmul_1_readvariableop_resource:	2?<
-lstm_cell_112_biasadd_readvariableop_resource:	?
identity??$lstm_cell_112/BiasAdd/ReadVariableOp?#lstm_cell_112/MatMul/ReadVariableOp?%lstm_cell_112/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_112/MatMul/ReadVariableOpReadVariableOp,lstm_cell_112_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_112/MatMulMatMulstrided_slice_2:output:0+lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_112_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_112/MatMul_1MatMulzeros:output:0-lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_112/addAddV2lstm_cell_112/MatMul:product:0 lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_112_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_112/BiasAddBiasAddlstm_cell_112/add:z:0,lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_112/splitSplit&lstm_cell_112/split/split_dim:output:0lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_112/SigmoidSigmoidlstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_1Sigmoidlstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_112/mulMullstm_cell_112/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_112/ReluRelulstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_1Mullstm_cell_112/Sigmoid:y:0 lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_112/add_1AddV2lstm_cell_112/mul:z:0lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_2Sigmoidlstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_112/Relu_1Relulstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_2Mullstm_cell_112/Sigmoid_2:y:0"lstm_cell_112/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_112_matmul_readvariableop_resource.lstm_cell_112_matmul_1_readvariableop_resource-lstm_cell_112_biasadd_readvariableop_resource*
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
while_body_688566*
condR
while_cond_688565*K
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
NoOpNoOp%^lstm_cell_112/BiasAdd/ReadVariableOp$^lstm_cell_112/MatMul/ReadVariableOp&^lstm_cell_112/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_112/BiasAdd/ReadVariableOp$lstm_cell_112/BiasAdd/ReadVariableOp2J
#lstm_cell_112/MatMul/ReadVariableOp#lstm_cell_112/MatMul/ReadVariableOp2N
%lstm_cell_112/MatMul_1/ReadVariableOp%lstm_cell_112/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_384_while_body_687193.
*lstm_384_while_lstm_384_while_loop_counter4
0lstm_384_while_lstm_384_while_maximum_iterations
lstm_384_while_placeholder 
lstm_384_while_placeholder_1 
lstm_384_while_placeholder_2 
lstm_384_while_placeholder_3-
)lstm_384_while_lstm_384_strided_slice_1_0i
elstm_384_while_tensorarrayv2read_tensorlistgetitem_lstm_384_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_384_while_lstm_cell_111_matmul_readvariableop_resource_0:	?R
?lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource_0:	d?M
>lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource_0:	?
lstm_384_while_identity
lstm_384_while_identity_1
lstm_384_while_identity_2
lstm_384_while_identity_3
lstm_384_while_identity_4
lstm_384_while_identity_5+
'lstm_384_while_lstm_384_strided_slice_1g
clstm_384_while_tensorarrayv2read_tensorlistgetitem_lstm_384_tensorarrayunstack_tensorlistfromtensorN
;lstm_384_while_lstm_cell_111_matmul_readvariableop_resource:	?P
=lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource:	d?K
<lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource:	???3lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp?2lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp?4lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp?
@lstm_384/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_384/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_384_while_tensorarrayv2read_tensorlistgetitem_lstm_384_tensorarrayunstack_tensorlistfromtensor_0lstm_384_while_placeholderIlstm_384/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_384/while/lstm_cell_111/MatMul/ReadVariableOpReadVariableOp=lstm_384_while_lstm_cell_111_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_384/while/lstm_cell_111/MatMulMatMul9lstm_384/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp?lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_384/while/lstm_cell_111/MatMul_1MatMullstm_384_while_placeholder_2<lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_384/while/lstm_cell_111/addAddV2-lstm_384/while/lstm_cell_111/MatMul:product:0/lstm_384/while/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp>lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_384/while/lstm_cell_111/BiasAddBiasAdd$lstm_384/while/lstm_cell_111/add:z:0;lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_384/while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_384/while/lstm_cell_111/splitSplit5lstm_384/while/lstm_cell_111/split/split_dim:output:0-lstm_384/while/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_384/while/lstm_cell_111/SigmoidSigmoid+lstm_384/while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_384/while/lstm_cell_111/Sigmoid_1Sigmoid+lstm_384/while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_384/while/lstm_cell_111/mulMul*lstm_384/while/lstm_cell_111/Sigmoid_1:y:0lstm_384_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_384/while/lstm_cell_111/ReluRelu+lstm_384/while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_384/while/lstm_cell_111/mul_1Mul(lstm_384/while/lstm_cell_111/Sigmoid:y:0/lstm_384/while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_384/while/lstm_cell_111/add_1AddV2$lstm_384/while/lstm_cell_111/mul:z:0&lstm_384/while/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_384/while/lstm_cell_111/Sigmoid_2Sigmoid+lstm_384/while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_384/while/lstm_cell_111/Relu_1Relu&lstm_384/while/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_384/while/lstm_cell_111/mul_2Mul*lstm_384/while/lstm_cell_111/Sigmoid_2:y:01lstm_384/while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_384/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_384_while_placeholder_1lstm_384_while_placeholder&lstm_384/while/lstm_cell_111/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_384/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_384/while/addAddV2lstm_384_while_placeholderlstm_384/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_384/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_384/while/add_1AddV2*lstm_384_while_lstm_384_while_loop_counterlstm_384/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_384/while/IdentityIdentitylstm_384/while/add_1:z:0^lstm_384/while/NoOp*
T0*
_output_shapes
: ?
lstm_384/while/Identity_1Identity0lstm_384_while_lstm_384_while_maximum_iterations^lstm_384/while/NoOp*
T0*
_output_shapes
: t
lstm_384/while/Identity_2Identitylstm_384/while/add:z:0^lstm_384/while/NoOp*
T0*
_output_shapes
: ?
lstm_384/while/Identity_3IdentityClstm_384/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_384/while/NoOp*
T0*
_output_shapes
: ?
lstm_384/while/Identity_4Identity&lstm_384/while/lstm_cell_111/mul_2:z:0^lstm_384/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_384/while/Identity_5Identity&lstm_384/while/lstm_cell_111/add_1:z:0^lstm_384/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_384/while/NoOpNoOp4^lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp3^lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp5^lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_384_while_identity lstm_384/while/Identity:output:0"?
lstm_384_while_identity_1"lstm_384/while/Identity_1:output:0"?
lstm_384_while_identity_2"lstm_384/while/Identity_2:output:0"?
lstm_384_while_identity_3"lstm_384/while/Identity_3:output:0"?
lstm_384_while_identity_4"lstm_384/while/Identity_4:output:0"?
lstm_384_while_identity_5"lstm_384/while/Identity_5:output:0"T
'lstm_384_while_lstm_384_strided_slice_1)lstm_384_while_lstm_384_strided_slice_1_0"~
<lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource>lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource_0"?
=lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource?lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource_0"|
;lstm_384_while_lstm_cell_111_matmul_readvariableop_resource=lstm_384_while_lstm_cell_111_matmul_readvariableop_resource_0"?
clstm_384_while_tensorarrayv2read_tensorlistgetitem_lstm_384_tensorarrayunstack_tensorlistfromtensorelstm_384_while_tensorarrayv2read_tensorlistgetitem_lstm_384_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp3lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp2h
2lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp2lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp2l
4lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp4lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_689409

inputs>
,lstm_cell_113_matmul_readvariableop_resource:2(@
.lstm_cell_113_matmul_1_readvariableop_resource:
(;
-lstm_cell_113_biasadd_readvariableop_resource:(
identity??$lstm_cell_113/BiasAdd/ReadVariableOp?#lstm_cell_113/MatMul/ReadVariableOp?%lstm_cell_113/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_113/MatMul/ReadVariableOpReadVariableOp,lstm_cell_113_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_113/MatMulMatMulstrided_slice_2:output:0+lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_113_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_113/MatMul_1MatMulzeros:output:0-lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_113/addAddV2lstm_cell_113/MatMul:product:0 lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_113_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_113/BiasAddBiasAddlstm_cell_113/add:z:0,lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_113/splitSplit&lstm_cell_113/split/split_dim:output:0lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_113/SigmoidSigmoidlstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_1Sigmoidlstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_113/mulMullstm_cell_113/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_113/ReluRelulstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_1Mullstm_cell_113/Sigmoid:y:0 lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_113/add_1AddV2lstm_cell_113/mul:z:0lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_2Sigmoidlstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_113/Relu_1Relulstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_2Mullstm_cell_113/Sigmoid_2:y:0"lstm_cell_113/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_113_matmul_readvariableop_resource.lstm_cell_113_matmul_1_readvariableop_resource-lstm_cell_113_biasadd_readvariableop_resource*
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
while_body_689325*
condR
while_cond_689324*K
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
NoOpNoOp%^lstm_cell_113/BiasAdd/ReadVariableOp$^lstm_cell_113/MatMul/ReadVariableOp&^lstm_cell_113/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_113/BiasAdd/ReadVariableOp$lstm_cell_113/BiasAdd/ReadVariableOp2J
#lstm_cell_113/MatMul/ReadVariableOp#lstm_cell_113/MatMul/ReadVariableOp2N
%lstm_cell_113/MatMul_1/ReadVariableOp%lstm_cell_113/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_688093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_111_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_111_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_111_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_111_matmul_readvariableop_resource:	?G
4while_lstm_cell_111_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_111_biasadd_readvariableop_resource:	???*while/lstm_cell_111/BiasAdd/ReadVariableOp?)while/lstm_cell_111/MatMul/ReadVariableOp?+while/lstm_cell_111/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_111/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_111_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_111_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_111/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_111/addAddV2$while/lstm_cell_111/MatMul:product:0&while/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_111_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_111/BiasAddBiasAddwhile/lstm_cell_111/add:z:02while/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:0$while/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_111/SigmoidSigmoid"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_1Sigmoid"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mulMul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_111/ReluRelu"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_1Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/add_1AddV2while/lstm_cell_111/mul:z:0while/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_2Sigmoid"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_2Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_111/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_111/BiasAdd/ReadVariableOp*^while/lstm_cell_111/MatMul/ReadVariableOp,^while/lstm_cell_111/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_111_biasadd_readvariableop_resource5while_lstm_cell_111_biasadd_readvariableop_resource_0"n
4while_lstm_cell_111_matmul_1_readvariableop_resource6while_lstm_cell_111_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_111_matmul_readvariableop_resource4while_lstm_cell_111_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_111/BiasAdd/ReadVariableOp*while/lstm_cell_111/BiasAdd/ReadVariableOp2V
)while/lstm_cell_111/MatMul/ReadVariableOp)while/lstm_cell_111/MatMul/ReadVariableOp2Z
+while/lstm_cell_111/MatMul_1/ReadVariableOp+while/lstm_cell_111/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_685306

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
while_cond_685014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_685014___redundant_placeholder04
0while_while_cond_685014___redundant_placeholder14
0while_while_cond_685014___redundant_placeholder24
0while_while_cond_685014___redundant_placeholder3
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_688507
inputs_0?
,lstm_cell_112_matmul_readvariableop_resource:	d?A
.lstm_cell_112_matmul_1_readvariableop_resource:	2?<
-lstm_cell_112_biasadd_readvariableop_resource:	?
identity??$lstm_cell_112/BiasAdd/ReadVariableOp?#lstm_cell_112/MatMul/ReadVariableOp?%lstm_cell_112/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_112/MatMul/ReadVariableOpReadVariableOp,lstm_cell_112_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_112/MatMulMatMulstrided_slice_2:output:0+lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_112_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_112/MatMul_1MatMulzeros:output:0-lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_112/addAddV2lstm_cell_112/MatMul:product:0 lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_112_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_112/BiasAddBiasAddlstm_cell_112/add:z:0,lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_112/splitSplit&lstm_cell_112/split/split_dim:output:0lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_112/SigmoidSigmoidlstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_1Sigmoidlstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_112/mulMullstm_cell_112/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_112/ReluRelulstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_1Mullstm_cell_112/Sigmoid:y:0 lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_112/add_1AddV2lstm_cell_112/mul:z:0lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_2Sigmoidlstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_112/Relu_1Relulstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_2Mullstm_cell_112/Sigmoid_2:y:0"lstm_cell_112/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_112_matmul_readvariableop_resource.lstm_cell_112_matmul_1_readvariableop_resource-lstm_cell_112_biasadd_readvariableop_resource*
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
while_body_688423*
condR
while_cond_688422*K
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
NoOpNoOp%^lstm_cell_112/BiasAdd/ReadVariableOp$^lstm_cell_112/MatMul/ReadVariableOp&^lstm_cell_112/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_112/BiasAdd/ReadVariableOp$lstm_cell_112/BiasAdd/ReadVariableOp2J
#lstm_cell_112/MatMul/ReadVariableOp#lstm_cell_112/MatMul/ReadVariableOp2N
%lstm_cell_112/MatMul_1/ReadVariableOp%lstm_cell_112/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
.__inference_lstm_cell_113_layer_call_fn_689658

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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_685306o
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
while_body_688423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_112_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_112_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_112_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_112_matmul_readvariableop_resource:	d?G
4while_lstm_cell_112_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_112_biasadd_readvariableop_resource:	???*while/lstm_cell_112/BiasAdd/ReadVariableOp?)while/lstm_cell_112/MatMul/ReadVariableOp?+while/lstm_cell_112/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_112/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_112_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_112/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_112_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_112/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_112/addAddV2$while/lstm_cell_112/MatMul:product:0&while/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_112_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_112/BiasAddBiasAddwhile/lstm_cell_112/add:z:02while/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_112/splitSplit,while/lstm_cell_112/split/split_dim:output:0$while/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_112/SigmoidSigmoid"while/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_1Sigmoid"while/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mulMul!while/lstm_cell_112/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_112/ReluRelu"while/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_1Mulwhile/lstm_cell_112/Sigmoid:y:0&while/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/add_1AddV2while/lstm_cell_112/mul:z:0while/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_2Sigmoid"while/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_112/Relu_1Reluwhile/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_2Mul!while/lstm_cell_112/Sigmoid_2:y:0(while/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_112/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_112/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_112/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_112/BiasAdd/ReadVariableOp*^while/lstm_cell_112/MatMul/ReadVariableOp,^while/lstm_cell_112/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_112_biasadd_readvariableop_resource5while_lstm_cell_112_biasadd_readvariableop_resource_0"n
4while_lstm_cell_112_matmul_1_readvariableop_resource6while_lstm_cell_112_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_112_matmul_readvariableop_resource4while_lstm_cell_112_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_112/BiasAdd/ReadVariableOp*while/lstm_cell_112/BiasAdd/ReadVariableOp2V
)while/lstm_cell_112/MatMul/ReadVariableOp)while/lstm_cell_112/MatMul/ReadVariableOp2Z
+while/lstm_cell_112/MatMul_1/ReadVariableOp+while/lstm_cell_112/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_384_layer_call_fn_687605

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
D__inference_lstm_384_layer_call_and_return_conditional_losses_686438s
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
while_body_688709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_112_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_112_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_112_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_112_matmul_readvariableop_resource:	d?G
4while_lstm_cell_112_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_112_biasadd_readvariableop_resource:	???*while/lstm_cell_112/BiasAdd/ReadVariableOp?)while/lstm_cell_112/MatMul/ReadVariableOp?+while/lstm_cell_112/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_112/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_112_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_112/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_112_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_112/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_112/addAddV2$while/lstm_cell_112/MatMul:product:0&while/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_112_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_112/BiasAddBiasAddwhile/lstm_cell_112/add:z:02while/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_112/splitSplit,while/lstm_cell_112/split/split_dim:output:0$while/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_112/SigmoidSigmoid"while/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_1Sigmoid"while/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mulMul!while/lstm_cell_112/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_112/ReluRelu"while/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_1Mulwhile/lstm_cell_112/Sigmoid:y:0&while/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/add_1AddV2while/lstm_cell_112/mul:z:0while/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_2Sigmoid"while/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_112/Relu_1Reluwhile/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_2Mul!while/lstm_cell_112/Sigmoid_2:y:0(while/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_112/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_112/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_112/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_112/BiasAdd/ReadVariableOp*^while/lstm_cell_112/MatMul/ReadVariableOp,^while/lstm_cell_112/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_112_biasadd_readvariableop_resource5while_lstm_cell_112_biasadd_readvariableop_resource_0"n
4while_lstm_cell_112_matmul_1_readvariableop_resource6while_lstm_cell_112_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_112_matmul_readvariableop_resource4while_lstm_cell_112_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_112/BiasAdd/ReadVariableOp*while/lstm_cell_112/BiasAdd/ReadVariableOp2V
)while/lstm_cell_112/MatMul/ReadVariableOp)while/lstm_cell_112/MatMul/ReadVariableOp2Z
+while/lstm_cell_112/MatMul_1/ReadVariableOp+while/lstm_cell_112/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_687748
inputs_0?
,lstm_cell_111_matmul_readvariableop_resource:	?A
.lstm_cell_111_matmul_1_readvariableop_resource:	d?<
-lstm_cell_111_biasadd_readvariableop_resource:	?
identity??$lstm_cell_111/BiasAdd/ReadVariableOp?#lstm_cell_111/MatMul/ReadVariableOp?%lstm_cell_111/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_111/MatMul/ReadVariableOpReadVariableOp,lstm_cell_111_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0+lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_111_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_111/MatMul_1MatMulzeros:output:0-lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_111/addAddV2lstm_cell_111/MatMul:product:0 lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_111_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_111/BiasAddBiasAddlstm_cell_111/add:z:0,lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_111/SigmoidSigmoidlstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_111/mulMullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_111/ReluRelulstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_1Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_111/add_1AddV2lstm_cell_111/mul:z:0lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_111/Relu_1Relulstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_2Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_111_matmul_readvariableop_resource.lstm_cell_111_matmul_1_readvariableop_resource-lstm_cell_111_biasadd_readvariableop_resource*
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
while_body_687664*
condR
while_cond_687663*K
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
NoOpNoOp%^lstm_cell_111/BiasAdd/ReadVariableOp$^lstm_cell_111/MatMul/ReadVariableOp&^lstm_cell_111/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_111/BiasAdd/ReadVariableOp$lstm_cell_111/BiasAdd/ReadVariableOp2J
#lstm_cell_111/MatMul/ReadVariableOp#lstm_cell_111/MatMul/ReadVariableOp2N
%lstm_cell_111/MatMul_1/ReadVariableOp%lstm_cell_111/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_385_layer_call_and_return_conditional_losses_688793

inputs?
,lstm_cell_112_matmul_readvariableop_resource:	d?A
.lstm_cell_112_matmul_1_readvariableop_resource:	2?<
-lstm_cell_112_biasadd_readvariableop_resource:	?
identity??$lstm_cell_112/BiasAdd/ReadVariableOp?#lstm_cell_112/MatMul/ReadVariableOp?%lstm_cell_112/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_112/MatMul/ReadVariableOpReadVariableOp,lstm_cell_112_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_112/MatMulMatMulstrided_slice_2:output:0+lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_112_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_112/MatMul_1MatMulzeros:output:0-lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_112/addAddV2lstm_cell_112/MatMul:product:0 lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_112_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_112/BiasAddBiasAddlstm_cell_112/add:z:0,lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_112/splitSplit&lstm_cell_112/split/split_dim:output:0lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_112/SigmoidSigmoidlstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_1Sigmoidlstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_112/mulMullstm_cell_112/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_112/ReluRelulstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_1Mullstm_cell_112/Sigmoid:y:0 lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_112/add_1AddV2lstm_cell_112/mul:z:0lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_2Sigmoidlstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_112/Relu_1Relulstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_2Mullstm_cell_112/Sigmoid_2:y:0"lstm_cell_112/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_112_matmul_readvariableop_resource.lstm_cell_112_matmul_1_readvariableop_resource-lstm_cell_112_biasadd_readvariableop_resource*
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
while_body_688709*
condR
while_cond_688708*K
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
NoOpNoOp%^lstm_cell_112/BiasAdd/ReadVariableOp$^lstm_cell_112/MatMul/ReadVariableOp&^lstm_cell_112/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_112/BiasAdd/ReadVariableOp$lstm_cell_112/BiasAdd/ReadVariableOp2J
#lstm_cell_112/MatMul/ReadVariableOp#lstm_cell_112/MatMul/ReadVariableOp2N
%lstm_cell_112/MatMul_1/ReadVariableOp%lstm_cell_112/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?T
?
)sequential_128_lstm_386_while_body_684303L
Hsequential_128_lstm_386_while_sequential_128_lstm_386_while_loop_counterR
Nsequential_128_lstm_386_while_sequential_128_lstm_386_while_maximum_iterations-
)sequential_128_lstm_386_while_placeholder/
+sequential_128_lstm_386_while_placeholder_1/
+sequential_128_lstm_386_while_placeholder_2/
+sequential_128_lstm_386_while_placeholder_3K
Gsequential_128_lstm_386_while_sequential_128_lstm_386_strided_slice_1_0?
?sequential_128_lstm_386_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_386_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_128_lstm_386_while_lstm_cell_113_matmul_readvariableop_resource_0:2(`
Nsequential_128_lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource_0:
([
Msequential_128_lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource_0:(*
&sequential_128_lstm_386_while_identity,
(sequential_128_lstm_386_while_identity_1,
(sequential_128_lstm_386_while_identity_2,
(sequential_128_lstm_386_while_identity_3,
(sequential_128_lstm_386_while_identity_4,
(sequential_128_lstm_386_while_identity_5I
Esequential_128_lstm_386_while_sequential_128_lstm_386_strided_slice_1?
?sequential_128_lstm_386_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_386_tensorarrayunstack_tensorlistfromtensor\
Jsequential_128_lstm_386_while_lstm_cell_113_matmul_readvariableop_resource:2(^
Lsequential_128_lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource:
(Y
Ksequential_128_lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource:(??Bsequential_128/lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp?Asequential_128/lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp?Csequential_128/lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp?
Osequential_128/lstm_386/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_128/lstm_386/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_128_lstm_386_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_386_tensorarrayunstack_tensorlistfromtensor_0)sequential_128_lstm_386_while_placeholderXsequential_128/lstm_386/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_128/lstm_386/while/lstm_cell_113/MatMul/ReadVariableOpReadVariableOpLsequential_128_lstm_386_while_lstm_cell_113_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_128/lstm_386/while/lstm_cell_113/MatMulMatMulHsequential_128/lstm_386/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_128/lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_128/lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOpNsequential_128_lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_128/lstm_386/while/lstm_cell_113/MatMul_1MatMul+sequential_128_lstm_386_while_placeholder_2Ksequential_128/lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_128/lstm_386/while/lstm_cell_113/addAddV2<sequential_128/lstm_386/while/lstm_cell_113/MatMul:product:0>sequential_128/lstm_386/while/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_128/lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOpMsequential_128_lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_128/lstm_386/while/lstm_cell_113/BiasAddBiasAdd3sequential_128/lstm_386/while/lstm_cell_113/add:z:0Jsequential_128/lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_128/lstm_386/while/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_128/lstm_386/while/lstm_cell_113/splitSplitDsequential_128/lstm_386/while/lstm_cell_113/split/split_dim:output:0<sequential_128/lstm_386/while/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_128/lstm_386/while/lstm_cell_113/SigmoidSigmoid:sequential_128/lstm_386/while/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_128/lstm_386/while/lstm_cell_113/Sigmoid_1Sigmoid:sequential_128/lstm_386/while/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_128/lstm_386/while/lstm_cell_113/mulMul9sequential_128/lstm_386/while/lstm_cell_113/Sigmoid_1:y:0+sequential_128_lstm_386_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_128/lstm_386/while/lstm_cell_113/ReluRelu:sequential_128/lstm_386/while/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_128/lstm_386/while/lstm_cell_113/mul_1Mul7sequential_128/lstm_386/while/lstm_cell_113/Sigmoid:y:0>sequential_128/lstm_386/while/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_128/lstm_386/while/lstm_cell_113/add_1AddV23sequential_128/lstm_386/while/lstm_cell_113/mul:z:05sequential_128/lstm_386/while/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_128/lstm_386/while/lstm_cell_113/Sigmoid_2Sigmoid:sequential_128/lstm_386/while/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_128/lstm_386/while/lstm_cell_113/Relu_1Relu5sequential_128/lstm_386/while/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_128/lstm_386/while/lstm_cell_113/mul_2Mul9sequential_128/lstm_386/while/lstm_cell_113/Sigmoid_2:y:0@sequential_128/lstm_386/while/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_128/lstm_386/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_128_lstm_386_while_placeholder_1)sequential_128_lstm_386_while_placeholder5sequential_128/lstm_386/while/lstm_cell_113/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_128/lstm_386/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_128/lstm_386/while/addAddV2)sequential_128_lstm_386_while_placeholder,sequential_128/lstm_386/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_128/lstm_386/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_128/lstm_386/while/add_1AddV2Hsequential_128_lstm_386_while_sequential_128_lstm_386_while_loop_counter.sequential_128/lstm_386/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_128/lstm_386/while/IdentityIdentity'sequential_128/lstm_386/while/add_1:z:0#^sequential_128/lstm_386/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_386/while/Identity_1IdentityNsequential_128_lstm_386_while_sequential_128_lstm_386_while_maximum_iterations#^sequential_128/lstm_386/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_386/while/Identity_2Identity%sequential_128/lstm_386/while/add:z:0#^sequential_128/lstm_386/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_386/while/Identity_3IdentityRsequential_128/lstm_386/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_128/lstm_386/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_386/while/Identity_4Identity5sequential_128/lstm_386/while/lstm_cell_113/mul_2:z:0#^sequential_128/lstm_386/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_128/lstm_386/while/Identity_5Identity5sequential_128/lstm_386/while/lstm_cell_113/add_1:z:0#^sequential_128/lstm_386/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_128/lstm_386/while/NoOpNoOpC^sequential_128/lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOpB^sequential_128/lstm_386/while/lstm_cell_113/MatMul/ReadVariableOpD^sequential_128/lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_128_lstm_386_while_identity/sequential_128/lstm_386/while/Identity:output:0"]
(sequential_128_lstm_386_while_identity_11sequential_128/lstm_386/while/Identity_1:output:0"]
(sequential_128_lstm_386_while_identity_21sequential_128/lstm_386/while/Identity_2:output:0"]
(sequential_128_lstm_386_while_identity_31sequential_128/lstm_386/while/Identity_3:output:0"]
(sequential_128_lstm_386_while_identity_41sequential_128/lstm_386/while/Identity_4:output:0"]
(sequential_128_lstm_386_while_identity_51sequential_128/lstm_386/while/Identity_5:output:0"?
Ksequential_128_lstm_386_while_lstm_cell_113_biasadd_readvariableop_resourceMsequential_128_lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource_0"?
Lsequential_128_lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resourceNsequential_128_lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource_0"?
Jsequential_128_lstm_386_while_lstm_cell_113_matmul_readvariableop_resourceLsequential_128_lstm_386_while_lstm_cell_113_matmul_readvariableop_resource_0"?
Esequential_128_lstm_386_while_sequential_128_lstm_386_strided_slice_1Gsequential_128_lstm_386_while_sequential_128_lstm_386_strided_slice_1_0"?
?sequential_128_lstm_386_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_386_tensorarrayunstack_tensorlistfromtensor?sequential_128_lstm_386_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_386_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_128/lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOpBsequential_128/lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp2?
Asequential_128/lstm_386/while/lstm_cell_113/MatMul/ReadVariableOpAsequential_128/lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp2?
Csequential_128/lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOpCsequential_128/lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_685160

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

?
lstm_384_while_cond_686765.
*lstm_384_while_lstm_384_while_loop_counter4
0lstm_384_while_lstm_384_while_maximum_iterations
lstm_384_while_placeholder 
lstm_384_while_placeholder_1 
lstm_384_while_placeholder_2 
lstm_384_while_placeholder_30
,lstm_384_while_less_lstm_384_strided_slice_1F
Blstm_384_while_lstm_384_while_cond_686765___redundant_placeholder0F
Blstm_384_while_lstm_384_while_cond_686765___redundant_placeholder1F
Blstm_384_while_lstm_384_while_cond_686765___redundant_placeholder2F
Blstm_384_while_lstm_384_while_cond_686765___redundant_placeholder3
lstm_384_while_identity
?
lstm_384/while/LessLesslstm_384_while_placeholder,lstm_384_while_less_lstm_384_strided_slice_1*
T0*
_output_shapes
: ]
lstm_384/while/IdentityIdentitylstm_384/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_384_while_identity lstm_384/while/Identity:output:0*(
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
J__inference_sequential_128_layer_call_and_return_conditional_losses_687134

inputsH
5lstm_384_lstm_cell_111_matmul_readvariableop_resource:	?J
7lstm_384_lstm_cell_111_matmul_1_readvariableop_resource:	d?E
6lstm_384_lstm_cell_111_biasadd_readvariableop_resource:	?H
5lstm_385_lstm_cell_112_matmul_readvariableop_resource:	d?J
7lstm_385_lstm_cell_112_matmul_1_readvariableop_resource:	2?E
6lstm_385_lstm_cell_112_biasadd_readvariableop_resource:	?G
5lstm_386_lstm_cell_113_matmul_readvariableop_resource:2(I
7lstm_386_lstm_cell_113_matmul_1_readvariableop_resource:
(D
6lstm_386_lstm_cell_113_biasadd_readvariableop_resource:(:
(dense_128_matmul_readvariableop_resource:
7
)dense_128_biasadd_readvariableop_resource:
identity?? dense_128/BiasAdd/ReadVariableOp?dense_128/MatMul/ReadVariableOp?-lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp?,lstm_384/lstm_cell_111/MatMul/ReadVariableOp?.lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp?lstm_384/while?-lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp?,lstm_385/lstm_cell_112/MatMul/ReadVariableOp?.lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp?lstm_385/while?-lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp?,lstm_386/lstm_cell_113/MatMul/ReadVariableOp?.lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp?lstm_386/whileD
lstm_384/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_384/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_384/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_384/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_384/strided_sliceStridedSlicelstm_384/Shape:output:0%lstm_384/strided_slice/stack:output:0'lstm_384/strided_slice/stack_1:output:0'lstm_384/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_384/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_384/zeros/packedPacklstm_384/strided_slice:output:0 lstm_384/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_384/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_384/zerosFilllstm_384/zeros/packed:output:0lstm_384/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_384/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_384/zeros_1/packedPacklstm_384/strided_slice:output:0"lstm_384/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_384/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_384/zeros_1Fill lstm_384/zeros_1/packed:output:0lstm_384/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_384/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_384/transpose	Transposeinputs lstm_384/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_384/Shape_1Shapelstm_384/transpose:y:0*
T0*
_output_shapes
:h
lstm_384/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_384/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_384/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_384/strided_slice_1StridedSlicelstm_384/Shape_1:output:0'lstm_384/strided_slice_1/stack:output:0)lstm_384/strided_slice_1/stack_1:output:0)lstm_384/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_384/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_384/TensorArrayV2TensorListReserve-lstm_384/TensorArrayV2/element_shape:output:0!lstm_384/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_384/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_384/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_384/transpose:y:0Glstm_384/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_384/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_384/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_384/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_384/strided_slice_2StridedSlicelstm_384/transpose:y:0'lstm_384/strided_slice_2/stack:output:0)lstm_384/strided_slice_2/stack_1:output:0)lstm_384/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_384/lstm_cell_111/MatMul/ReadVariableOpReadVariableOp5lstm_384_lstm_cell_111_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_384/lstm_cell_111/MatMulMatMul!lstm_384/strided_slice_2:output:04lstm_384/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_384/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp7lstm_384_lstm_cell_111_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_384/lstm_cell_111/MatMul_1MatMullstm_384/zeros:output:06lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_384/lstm_cell_111/addAddV2'lstm_384/lstm_cell_111/MatMul:product:0)lstm_384/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_384/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp6lstm_384_lstm_cell_111_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_384/lstm_cell_111/BiasAddBiasAddlstm_384/lstm_cell_111/add:z:05lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_384/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_384/lstm_cell_111/splitSplit/lstm_384/lstm_cell_111/split/split_dim:output:0'lstm_384/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_384/lstm_cell_111/SigmoidSigmoid%lstm_384/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_384/lstm_cell_111/Sigmoid_1Sigmoid%lstm_384/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_384/lstm_cell_111/mulMul$lstm_384/lstm_cell_111/Sigmoid_1:y:0lstm_384/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_384/lstm_cell_111/ReluRelu%lstm_384/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_384/lstm_cell_111/mul_1Mul"lstm_384/lstm_cell_111/Sigmoid:y:0)lstm_384/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_384/lstm_cell_111/add_1AddV2lstm_384/lstm_cell_111/mul:z:0 lstm_384/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_384/lstm_cell_111/Sigmoid_2Sigmoid%lstm_384/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_384/lstm_cell_111/Relu_1Relu lstm_384/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_384/lstm_cell_111/mul_2Mul$lstm_384/lstm_cell_111/Sigmoid_2:y:0+lstm_384/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_384/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_384/TensorArrayV2_1TensorListReserve/lstm_384/TensorArrayV2_1/element_shape:output:0!lstm_384/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_384/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_384/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_384/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_384/whileWhile$lstm_384/while/loop_counter:output:0*lstm_384/while/maximum_iterations:output:0lstm_384/time:output:0!lstm_384/TensorArrayV2_1:handle:0lstm_384/zeros:output:0lstm_384/zeros_1:output:0!lstm_384/strided_slice_1:output:0@lstm_384/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_384_lstm_cell_111_matmul_readvariableop_resource7lstm_384_lstm_cell_111_matmul_1_readvariableop_resource6lstm_384_lstm_cell_111_biasadd_readvariableop_resource*
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
lstm_384_while_body_686766*&
condR
lstm_384_while_cond_686765*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_384/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_384/TensorArrayV2Stack/TensorListStackTensorListStacklstm_384/while:output:3Blstm_384/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_384/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_384/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_384/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_384/strided_slice_3StridedSlice4lstm_384/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_384/strided_slice_3/stack:output:0)lstm_384/strided_slice_3/stack_1:output:0)lstm_384/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_384/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_384/transpose_1	Transpose4lstm_384/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_384/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_384/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_385/ShapeShapelstm_384/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_385/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_385/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_385/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_385/strided_sliceStridedSlicelstm_385/Shape:output:0%lstm_385/strided_slice/stack:output:0'lstm_385/strided_slice/stack_1:output:0'lstm_385/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_385/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_385/zeros/packedPacklstm_385/strided_slice:output:0 lstm_385/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_385/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_385/zerosFilllstm_385/zeros/packed:output:0lstm_385/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_385/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_385/zeros_1/packedPacklstm_385/strided_slice:output:0"lstm_385/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_385/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_385/zeros_1Fill lstm_385/zeros_1/packed:output:0lstm_385/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_385/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_385/transpose	Transposelstm_384/transpose_1:y:0 lstm_385/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_385/Shape_1Shapelstm_385/transpose:y:0*
T0*
_output_shapes
:h
lstm_385/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_385/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_385/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_385/strided_slice_1StridedSlicelstm_385/Shape_1:output:0'lstm_385/strided_slice_1/stack:output:0)lstm_385/strided_slice_1/stack_1:output:0)lstm_385/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_385/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_385/TensorArrayV2TensorListReserve-lstm_385/TensorArrayV2/element_shape:output:0!lstm_385/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_385/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_385/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_385/transpose:y:0Glstm_385/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_385/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_385/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_385/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_385/strided_slice_2StridedSlicelstm_385/transpose:y:0'lstm_385/strided_slice_2/stack:output:0)lstm_385/strided_slice_2/stack_1:output:0)lstm_385/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_385/lstm_cell_112/MatMul/ReadVariableOpReadVariableOp5lstm_385_lstm_cell_112_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_385/lstm_cell_112/MatMulMatMul!lstm_385/strided_slice_2:output:04lstm_385/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_385/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp7lstm_385_lstm_cell_112_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_385/lstm_cell_112/MatMul_1MatMullstm_385/zeros:output:06lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_385/lstm_cell_112/addAddV2'lstm_385/lstm_cell_112/MatMul:product:0)lstm_385/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_385/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp6lstm_385_lstm_cell_112_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_385/lstm_cell_112/BiasAddBiasAddlstm_385/lstm_cell_112/add:z:05lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_385/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_385/lstm_cell_112/splitSplit/lstm_385/lstm_cell_112/split/split_dim:output:0'lstm_385/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_385/lstm_cell_112/SigmoidSigmoid%lstm_385/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_385/lstm_cell_112/Sigmoid_1Sigmoid%lstm_385/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_385/lstm_cell_112/mulMul$lstm_385/lstm_cell_112/Sigmoid_1:y:0lstm_385/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_385/lstm_cell_112/ReluRelu%lstm_385/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_385/lstm_cell_112/mul_1Mul"lstm_385/lstm_cell_112/Sigmoid:y:0)lstm_385/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_385/lstm_cell_112/add_1AddV2lstm_385/lstm_cell_112/mul:z:0 lstm_385/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_385/lstm_cell_112/Sigmoid_2Sigmoid%lstm_385/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_385/lstm_cell_112/Relu_1Relu lstm_385/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_385/lstm_cell_112/mul_2Mul$lstm_385/lstm_cell_112/Sigmoid_2:y:0+lstm_385/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_385/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_385/TensorArrayV2_1TensorListReserve/lstm_385/TensorArrayV2_1/element_shape:output:0!lstm_385/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_385/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_385/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_385/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_385/whileWhile$lstm_385/while/loop_counter:output:0*lstm_385/while/maximum_iterations:output:0lstm_385/time:output:0!lstm_385/TensorArrayV2_1:handle:0lstm_385/zeros:output:0lstm_385/zeros_1:output:0!lstm_385/strided_slice_1:output:0@lstm_385/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_385_lstm_cell_112_matmul_readvariableop_resource7lstm_385_lstm_cell_112_matmul_1_readvariableop_resource6lstm_385_lstm_cell_112_biasadd_readvariableop_resource*
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
lstm_385_while_body_686905*&
condR
lstm_385_while_cond_686904*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_385/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_385/TensorArrayV2Stack/TensorListStackTensorListStacklstm_385/while:output:3Blstm_385/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_385/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_385/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_385/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_385/strided_slice_3StridedSlice4lstm_385/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_385/strided_slice_3/stack:output:0)lstm_385/strided_slice_3/stack_1:output:0)lstm_385/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_385/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_385/transpose_1	Transpose4lstm_385/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_385/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_385/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_386/ShapeShapelstm_385/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_386/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_386/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_386/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_386/strided_sliceStridedSlicelstm_386/Shape:output:0%lstm_386/strided_slice/stack:output:0'lstm_386/strided_slice/stack_1:output:0'lstm_386/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_386/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_386/zeros/packedPacklstm_386/strided_slice:output:0 lstm_386/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_386/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_386/zerosFilllstm_386/zeros/packed:output:0lstm_386/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_386/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_386/zeros_1/packedPacklstm_386/strided_slice:output:0"lstm_386/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_386/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_386/zeros_1Fill lstm_386/zeros_1/packed:output:0lstm_386/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_386/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_386/transpose	Transposelstm_385/transpose_1:y:0 lstm_386/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_386/Shape_1Shapelstm_386/transpose:y:0*
T0*
_output_shapes
:h
lstm_386/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_386/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_386/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_386/strided_slice_1StridedSlicelstm_386/Shape_1:output:0'lstm_386/strided_slice_1/stack:output:0)lstm_386/strided_slice_1/stack_1:output:0)lstm_386/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_386/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_386/TensorArrayV2TensorListReserve-lstm_386/TensorArrayV2/element_shape:output:0!lstm_386/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_386/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_386/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_386/transpose:y:0Glstm_386/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_386/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_386/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_386/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_386/strided_slice_2StridedSlicelstm_386/transpose:y:0'lstm_386/strided_slice_2/stack:output:0)lstm_386/strided_slice_2/stack_1:output:0)lstm_386/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_386/lstm_cell_113/MatMul/ReadVariableOpReadVariableOp5lstm_386_lstm_cell_113_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_386/lstm_cell_113/MatMulMatMul!lstm_386/strided_slice_2:output:04lstm_386/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_386/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp7lstm_386_lstm_cell_113_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_386/lstm_cell_113/MatMul_1MatMullstm_386/zeros:output:06lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_386/lstm_cell_113/addAddV2'lstm_386/lstm_cell_113/MatMul:product:0)lstm_386/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_386/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp6lstm_386_lstm_cell_113_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_386/lstm_cell_113/BiasAddBiasAddlstm_386/lstm_cell_113/add:z:05lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_386/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_386/lstm_cell_113/splitSplit/lstm_386/lstm_cell_113/split/split_dim:output:0'lstm_386/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_386/lstm_cell_113/SigmoidSigmoid%lstm_386/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_386/lstm_cell_113/Sigmoid_1Sigmoid%lstm_386/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_386/lstm_cell_113/mulMul$lstm_386/lstm_cell_113/Sigmoid_1:y:0lstm_386/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_386/lstm_cell_113/ReluRelu%lstm_386/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_386/lstm_cell_113/mul_1Mul"lstm_386/lstm_cell_113/Sigmoid:y:0)lstm_386/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_386/lstm_cell_113/add_1AddV2lstm_386/lstm_cell_113/mul:z:0 lstm_386/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_386/lstm_cell_113/Sigmoid_2Sigmoid%lstm_386/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_386/lstm_cell_113/Relu_1Relu lstm_386/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_386/lstm_cell_113/mul_2Mul$lstm_386/lstm_cell_113/Sigmoid_2:y:0+lstm_386/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_386/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_386/TensorArrayV2_1TensorListReserve/lstm_386/TensorArrayV2_1/element_shape:output:0!lstm_386/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_386/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_386/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_386/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_386/whileWhile$lstm_386/while/loop_counter:output:0*lstm_386/while/maximum_iterations:output:0lstm_386/time:output:0!lstm_386/TensorArrayV2_1:handle:0lstm_386/zeros:output:0lstm_386/zeros_1:output:0!lstm_386/strided_slice_1:output:0@lstm_386/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_386_lstm_cell_113_matmul_readvariableop_resource7lstm_386_lstm_cell_113_matmul_1_readvariableop_resource6lstm_386_lstm_cell_113_biasadd_readvariableop_resource*
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
lstm_386_while_body_687044*&
condR
lstm_386_while_cond_687043*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_386/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_386/TensorArrayV2Stack/TensorListStackTensorListStacklstm_386/while:output:3Blstm_386/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_386/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_386/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_386/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_386/strided_slice_3StridedSlice4lstm_386/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_386/strided_slice_3/stack:output:0)lstm_386/strided_slice_3/stack_1:output:0)lstm_386/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_386/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_386/transpose_1	Transpose4lstm_386/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_386/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_386/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_128/MatMul/ReadVariableOpReadVariableOp(dense_128_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_128/MatMulMatMul!lstm_386/strided_slice_3:output:0'dense_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_128/BiasAdd/ReadVariableOpReadVariableOp)dense_128_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_128/BiasAddBiasAdddense_128/MatMul:product:0(dense_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_128/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_128/BiasAdd/ReadVariableOp ^dense_128/MatMul/ReadVariableOp.^lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp-^lstm_384/lstm_cell_111/MatMul/ReadVariableOp/^lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp^lstm_384/while.^lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp-^lstm_385/lstm_cell_112/MatMul/ReadVariableOp/^lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp^lstm_385/while.^lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp-^lstm_386/lstm_cell_113/MatMul/ReadVariableOp/^lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp^lstm_386/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_128/BiasAdd/ReadVariableOp dense_128/BiasAdd/ReadVariableOp2B
dense_128/MatMul/ReadVariableOpdense_128/MatMul/ReadVariableOp2^
-lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp-lstm_384/lstm_cell_111/BiasAdd/ReadVariableOp2\
,lstm_384/lstm_cell_111/MatMul/ReadVariableOp,lstm_384/lstm_cell_111/MatMul/ReadVariableOp2`
.lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp.lstm_384/lstm_cell_111/MatMul_1/ReadVariableOp2 
lstm_384/whilelstm_384/while2^
-lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp-lstm_385/lstm_cell_112/BiasAdd/ReadVariableOp2\
,lstm_385/lstm_cell_112/MatMul/ReadVariableOp,lstm_385/lstm_cell_112/MatMul/ReadVariableOp2`
.lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp.lstm_385/lstm_cell_112/MatMul_1/ReadVariableOp2 
lstm_385/whilelstm_385/while2^
-lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp-lstm_386/lstm_cell_113/BiasAdd/ReadVariableOp2\
,lstm_386/lstm_cell_113/MatMul/ReadVariableOp,lstm_386/lstm_cell_113/MatMul/ReadVariableOp2`
.lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp.lstm_386/lstm_cell_113/MatMul_1/ReadVariableOp2 
lstm_386/whilelstm_386/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_385_while_cond_687331.
*lstm_385_while_lstm_385_while_loop_counter4
0lstm_385_while_lstm_385_while_maximum_iterations
lstm_385_while_placeholder 
lstm_385_while_placeholder_1 
lstm_385_while_placeholder_2 
lstm_385_while_placeholder_30
,lstm_385_while_less_lstm_385_strided_slice_1F
Blstm_385_while_lstm_385_while_cond_687331___redundant_placeholder0F
Blstm_385_while_lstm_385_while_cond_687331___redundant_placeholder1F
Blstm_385_while_lstm_385_while_cond_687331___redundant_placeholder2F
Blstm_385_while_lstm_385_while_cond_687331___redundant_placeholder3
lstm_385_while_identity
?
lstm_385/while/LessLesslstm_385_while_placeholder,lstm_385_while_less_lstm_385_strided_slice_1*
T0*
_output_shapes
: ]
lstm_385/while/IdentityIdentitylstm_385/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_385_while_identity lstm_385/while/Identity:output:0*(
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

lstm_386_while_body_687044.
*lstm_386_while_lstm_386_while_loop_counter4
0lstm_386_while_lstm_386_while_maximum_iterations
lstm_386_while_placeholder 
lstm_386_while_placeholder_1 
lstm_386_while_placeholder_2 
lstm_386_while_placeholder_3-
)lstm_386_while_lstm_386_strided_slice_1_0i
elstm_386_while_tensorarrayv2read_tensorlistgetitem_lstm_386_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_386_while_lstm_cell_113_matmul_readvariableop_resource_0:2(Q
?lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource_0:
(L
>lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource_0:(
lstm_386_while_identity
lstm_386_while_identity_1
lstm_386_while_identity_2
lstm_386_while_identity_3
lstm_386_while_identity_4
lstm_386_while_identity_5+
'lstm_386_while_lstm_386_strided_slice_1g
clstm_386_while_tensorarrayv2read_tensorlistgetitem_lstm_386_tensorarrayunstack_tensorlistfromtensorM
;lstm_386_while_lstm_cell_113_matmul_readvariableop_resource:2(O
=lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource:
(J
<lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource:(??3lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp?2lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp?4lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp?
@lstm_386/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_386/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_386_while_tensorarrayv2read_tensorlistgetitem_lstm_386_tensorarrayunstack_tensorlistfromtensor_0lstm_386_while_placeholderIlstm_386/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_386/while/lstm_cell_113/MatMul/ReadVariableOpReadVariableOp=lstm_386_while_lstm_cell_113_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_386/while/lstm_cell_113/MatMulMatMul9lstm_386/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp?lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_386/while/lstm_cell_113/MatMul_1MatMullstm_386_while_placeholder_2<lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_386/while/lstm_cell_113/addAddV2-lstm_386/while/lstm_cell_113/MatMul:product:0/lstm_386/while/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp>lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_386/while/lstm_cell_113/BiasAddBiasAdd$lstm_386/while/lstm_cell_113/add:z:0;lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_386/while/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_386/while/lstm_cell_113/splitSplit5lstm_386/while/lstm_cell_113/split/split_dim:output:0-lstm_386/while/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_386/while/lstm_cell_113/SigmoidSigmoid+lstm_386/while/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_386/while/lstm_cell_113/Sigmoid_1Sigmoid+lstm_386/while/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_386/while/lstm_cell_113/mulMul*lstm_386/while/lstm_cell_113/Sigmoid_1:y:0lstm_386_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_386/while/lstm_cell_113/ReluRelu+lstm_386/while/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_386/while/lstm_cell_113/mul_1Mul(lstm_386/while/lstm_cell_113/Sigmoid:y:0/lstm_386/while/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_386/while/lstm_cell_113/add_1AddV2$lstm_386/while/lstm_cell_113/mul:z:0&lstm_386/while/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_386/while/lstm_cell_113/Sigmoid_2Sigmoid+lstm_386/while/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_386/while/lstm_cell_113/Relu_1Relu&lstm_386/while/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_386/while/lstm_cell_113/mul_2Mul*lstm_386/while/lstm_cell_113/Sigmoid_2:y:01lstm_386/while/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_386/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_386_while_placeholder_1lstm_386_while_placeholder&lstm_386/while/lstm_cell_113/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_386/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_386/while/addAddV2lstm_386_while_placeholderlstm_386/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_386/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_386/while/add_1AddV2*lstm_386_while_lstm_386_while_loop_counterlstm_386/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_386/while/IdentityIdentitylstm_386/while/add_1:z:0^lstm_386/while/NoOp*
T0*
_output_shapes
: ?
lstm_386/while/Identity_1Identity0lstm_386_while_lstm_386_while_maximum_iterations^lstm_386/while/NoOp*
T0*
_output_shapes
: t
lstm_386/while/Identity_2Identitylstm_386/while/add:z:0^lstm_386/while/NoOp*
T0*
_output_shapes
: ?
lstm_386/while/Identity_3IdentityClstm_386/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_386/while/NoOp*
T0*
_output_shapes
: ?
lstm_386/while/Identity_4Identity&lstm_386/while/lstm_cell_113/mul_2:z:0^lstm_386/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_386/while/Identity_5Identity&lstm_386/while/lstm_cell_113/add_1:z:0^lstm_386/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_386/while/NoOpNoOp4^lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp3^lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp5^lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_386_while_identity lstm_386/while/Identity:output:0"?
lstm_386_while_identity_1"lstm_386/while/Identity_1:output:0"?
lstm_386_while_identity_2"lstm_386/while/Identity_2:output:0"?
lstm_386_while_identity_3"lstm_386/while/Identity_3:output:0"?
lstm_386_while_identity_4"lstm_386/while/Identity_4:output:0"?
lstm_386_while_identity_5"lstm_386/while/Identity_5:output:0"T
'lstm_386_while_lstm_386_strided_slice_1)lstm_386_while_lstm_386_strided_slice_1_0"~
<lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource>lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource_0"?
=lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource?lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource_0"|
;lstm_386_while_lstm_cell_113_matmul_readvariableop_resource=lstm_386_while_lstm_cell_113_matmul_readvariableop_resource_0"?
clstm_386_while_tensorarrayv2read_tensorlistgetitem_lstm_386_tensorarrayunstack_tensorlistfromtensorelstm_386_while_tensorarrayv2read_tensorlistgetitem_lstm_386_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp3lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp2h
2lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp2lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp2l
4lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp4lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_686353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_686353___redundant_placeholder04
0while_while_cond_686353___redundant_placeholder14
0while_while_cond_686353___redundant_placeholder24
0while_while_cond_686353___redundant_placeholder3
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_685084

inputs'
lstm_cell_112_685002:	d?'
lstm_cell_112_685004:	2?#
lstm_cell_112_685006:	?
identity??%lstm_cell_112/StatefulPartitionedCall?while;
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
%lstm_cell_112/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_112_685002lstm_cell_112_685004lstm_cell_112_685006*
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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_684956n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_112_685002lstm_cell_112_685004lstm_cell_112_685006*
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
while_body_685015*
condR
while_cond_685014*K
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
NoOpNoOp&^lstm_cell_112/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_112/StatefulPartitionedCall%lstm_cell_112/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_689995
file_prefix3
!assignvariableop_dense_128_kernel:
/
!assignvariableop_1_dense_128_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_384_lstm_cell_384_kernel:	?M
:assignvariableop_8_lstm_384_lstm_cell_384_recurrent_kernel:	d?=
.assignvariableop_9_lstm_384_lstm_cell_384_bias:	?D
1assignvariableop_10_lstm_385_lstm_cell_385_kernel:	d?N
;assignvariableop_11_lstm_385_lstm_cell_385_recurrent_kernel:	2?>
/assignvariableop_12_lstm_385_lstm_cell_385_bias:	?C
1assignvariableop_13_lstm_386_lstm_cell_386_kernel:2(M
;assignvariableop_14_lstm_386_lstm_cell_386_recurrent_kernel:
(=
/assignvariableop_15_lstm_386_lstm_cell_386_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_128_kernel_m:
7
)assignvariableop_19_adam_dense_128_bias_m:K
8assignvariableop_20_adam_lstm_384_lstm_cell_384_kernel_m:	?U
Bassignvariableop_21_adam_lstm_384_lstm_cell_384_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_384_lstm_cell_384_bias_m:	?K
8assignvariableop_23_adam_lstm_385_lstm_cell_385_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_385_lstm_cell_385_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_385_lstm_cell_385_bias_m:	?J
8assignvariableop_26_adam_lstm_386_lstm_cell_386_kernel_m:2(T
Bassignvariableop_27_adam_lstm_386_lstm_cell_386_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_386_lstm_cell_386_bias_m:(=
+assignvariableop_29_adam_dense_128_kernel_v:
7
)assignvariableop_30_adam_dense_128_bias_v:K
8assignvariableop_31_adam_lstm_384_lstm_cell_384_kernel_v:	?U
Bassignvariableop_32_adam_lstm_384_lstm_cell_384_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_384_lstm_cell_384_bias_v:	?K
8assignvariableop_34_adam_lstm_385_lstm_cell_385_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_385_lstm_cell_385_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_385_lstm_cell_385_bias_v:	?J
8assignvariableop_37_adam_lstm_386_lstm_cell_386_kernel_v:2(T
Bassignvariableop_38_adam_lstm_386_lstm_cell_386_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_386_lstm_cell_386_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_128_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_128_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_384_lstm_cell_384_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_384_lstm_cell_384_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_384_lstm_cell_384_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_385_lstm_cell_385_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_385_lstm_cell_385_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_385_lstm_cell_385_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_386_lstm_cell_386_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_386_lstm_cell_386_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_386_lstm_cell_386_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_128_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_128_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_384_lstm_cell_384_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_384_lstm_cell_384_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_384_lstm_cell_384_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_385_lstm_cell_385_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_385_lstm_cell_385_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_385_lstm_cell_385_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_386_lstm_cell_386_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_386_lstm_cell_386_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_386_lstm_cell_386_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_128_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_128_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_384_lstm_cell_384_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_384_lstm_cell_384_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_384_lstm_cell_384_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_385_lstm_cell_385_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_385_lstm_cell_385_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_385_lstm_cell_385_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_386_lstm_cell_386_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_386_lstm_cell_386_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_386_lstm_cell_386_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_686354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_111_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_111_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_111_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_111_matmul_readvariableop_resource:	?G
4while_lstm_cell_111_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_111_biasadd_readvariableop_resource:	???*while/lstm_cell_111/BiasAdd/ReadVariableOp?)while/lstm_cell_111/MatMul/ReadVariableOp?+while/lstm_cell_111/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_111/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_111_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_111_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_111/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_111/addAddV2$while/lstm_cell_111/MatMul:product:0&while/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_111_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_111/BiasAddBiasAddwhile/lstm_cell_111/add:z:02while/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:0$while/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_111/SigmoidSigmoid"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_1Sigmoid"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mulMul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_111/ReluRelu"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_1Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/add_1AddV2while/lstm_cell_111/mul:z:0while/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_2Sigmoid"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_2Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_111/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_111/BiasAdd/ReadVariableOp*^while/lstm_cell_111/MatMul/ReadVariableOp,^while/lstm_cell_111/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_111_biasadd_readvariableop_resource5while_lstm_cell_111_biasadd_readvariableop_resource_0"n
4while_lstm_cell_111_matmul_1_readvariableop_resource6while_lstm_cell_111_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_111_matmul_readvariableop_resource4while_lstm_cell_111_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_111/BiasAdd/ReadVariableOp*while/lstm_cell_111/BiasAdd/ReadVariableOp2V
)while/lstm_cell_111/MatMul/ReadVariableOp)while/lstm_cell_111/MatMul/ReadVariableOp2Z
+while/lstm_cell_111/MatMul_1/ReadVariableOp+while/lstm_cell_111/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_128_lstm_384_while_body_684025L
Hsequential_128_lstm_384_while_sequential_128_lstm_384_while_loop_counterR
Nsequential_128_lstm_384_while_sequential_128_lstm_384_while_maximum_iterations-
)sequential_128_lstm_384_while_placeholder/
+sequential_128_lstm_384_while_placeholder_1/
+sequential_128_lstm_384_while_placeholder_2/
+sequential_128_lstm_384_while_placeholder_3K
Gsequential_128_lstm_384_while_sequential_128_lstm_384_strided_slice_1_0?
?sequential_128_lstm_384_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_384_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_128_lstm_384_while_lstm_cell_111_matmul_readvariableop_resource_0:	?a
Nsequential_128_lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource_0:	d?\
Msequential_128_lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource_0:	?*
&sequential_128_lstm_384_while_identity,
(sequential_128_lstm_384_while_identity_1,
(sequential_128_lstm_384_while_identity_2,
(sequential_128_lstm_384_while_identity_3,
(sequential_128_lstm_384_while_identity_4,
(sequential_128_lstm_384_while_identity_5I
Esequential_128_lstm_384_while_sequential_128_lstm_384_strided_slice_1?
?sequential_128_lstm_384_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_384_tensorarrayunstack_tensorlistfromtensor]
Jsequential_128_lstm_384_while_lstm_cell_111_matmul_readvariableop_resource:	?_
Lsequential_128_lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource:	d?Z
Ksequential_128_lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource:	???Bsequential_128/lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp?Asequential_128/lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp?Csequential_128/lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp?
Osequential_128/lstm_384/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_128/lstm_384/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_128_lstm_384_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_384_tensorarrayunstack_tensorlistfromtensor_0)sequential_128_lstm_384_while_placeholderXsequential_128/lstm_384/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_128/lstm_384/while/lstm_cell_111/MatMul/ReadVariableOpReadVariableOpLsequential_128_lstm_384_while_lstm_cell_111_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_128/lstm_384/while/lstm_cell_111/MatMulMatMulHsequential_128/lstm_384/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_128/lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_128/lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOpNsequential_128_lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_128/lstm_384/while/lstm_cell_111/MatMul_1MatMul+sequential_128_lstm_384_while_placeholder_2Ksequential_128/lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_128/lstm_384/while/lstm_cell_111/addAddV2<sequential_128/lstm_384/while/lstm_cell_111/MatMul:product:0>sequential_128/lstm_384/while/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_128/lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOpMsequential_128_lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_128/lstm_384/while/lstm_cell_111/BiasAddBiasAdd3sequential_128/lstm_384/while/lstm_cell_111/add:z:0Jsequential_128/lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_128/lstm_384/while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_128/lstm_384/while/lstm_cell_111/splitSplitDsequential_128/lstm_384/while/lstm_cell_111/split/split_dim:output:0<sequential_128/lstm_384/while/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_128/lstm_384/while/lstm_cell_111/SigmoidSigmoid:sequential_128/lstm_384/while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_128/lstm_384/while/lstm_cell_111/Sigmoid_1Sigmoid:sequential_128/lstm_384/while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_128/lstm_384/while/lstm_cell_111/mulMul9sequential_128/lstm_384/while/lstm_cell_111/Sigmoid_1:y:0+sequential_128_lstm_384_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_128/lstm_384/while/lstm_cell_111/ReluRelu:sequential_128/lstm_384/while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_128/lstm_384/while/lstm_cell_111/mul_1Mul7sequential_128/lstm_384/while/lstm_cell_111/Sigmoid:y:0>sequential_128/lstm_384/while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_128/lstm_384/while/lstm_cell_111/add_1AddV23sequential_128/lstm_384/while/lstm_cell_111/mul:z:05sequential_128/lstm_384/while/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_128/lstm_384/while/lstm_cell_111/Sigmoid_2Sigmoid:sequential_128/lstm_384/while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_128/lstm_384/while/lstm_cell_111/Relu_1Relu5sequential_128/lstm_384/while/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_128/lstm_384/while/lstm_cell_111/mul_2Mul9sequential_128/lstm_384/while/lstm_cell_111/Sigmoid_2:y:0@sequential_128/lstm_384/while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_128/lstm_384/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_128_lstm_384_while_placeholder_1)sequential_128_lstm_384_while_placeholder5sequential_128/lstm_384/while/lstm_cell_111/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_128/lstm_384/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_128/lstm_384/while/addAddV2)sequential_128_lstm_384_while_placeholder,sequential_128/lstm_384/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_128/lstm_384/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_128/lstm_384/while/add_1AddV2Hsequential_128_lstm_384_while_sequential_128_lstm_384_while_loop_counter.sequential_128/lstm_384/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_128/lstm_384/while/IdentityIdentity'sequential_128/lstm_384/while/add_1:z:0#^sequential_128/lstm_384/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_384/while/Identity_1IdentityNsequential_128_lstm_384_while_sequential_128_lstm_384_while_maximum_iterations#^sequential_128/lstm_384/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_384/while/Identity_2Identity%sequential_128/lstm_384/while/add:z:0#^sequential_128/lstm_384/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_384/while/Identity_3IdentityRsequential_128/lstm_384/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_128/lstm_384/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_384/while/Identity_4Identity5sequential_128/lstm_384/while/lstm_cell_111/mul_2:z:0#^sequential_128/lstm_384/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_128/lstm_384/while/Identity_5Identity5sequential_128/lstm_384/while/lstm_cell_111/add_1:z:0#^sequential_128/lstm_384/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_128/lstm_384/while/NoOpNoOpC^sequential_128/lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOpB^sequential_128/lstm_384/while/lstm_cell_111/MatMul/ReadVariableOpD^sequential_128/lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_128_lstm_384_while_identity/sequential_128/lstm_384/while/Identity:output:0"]
(sequential_128_lstm_384_while_identity_11sequential_128/lstm_384/while/Identity_1:output:0"]
(sequential_128_lstm_384_while_identity_21sequential_128/lstm_384/while/Identity_2:output:0"]
(sequential_128_lstm_384_while_identity_31sequential_128/lstm_384/while/Identity_3:output:0"]
(sequential_128_lstm_384_while_identity_41sequential_128/lstm_384/while/Identity_4:output:0"]
(sequential_128_lstm_384_while_identity_51sequential_128/lstm_384/while/Identity_5:output:0"?
Ksequential_128_lstm_384_while_lstm_cell_111_biasadd_readvariableop_resourceMsequential_128_lstm_384_while_lstm_cell_111_biasadd_readvariableop_resource_0"?
Lsequential_128_lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resourceNsequential_128_lstm_384_while_lstm_cell_111_matmul_1_readvariableop_resource_0"?
Jsequential_128_lstm_384_while_lstm_cell_111_matmul_readvariableop_resourceLsequential_128_lstm_384_while_lstm_cell_111_matmul_readvariableop_resource_0"?
Esequential_128_lstm_384_while_sequential_128_lstm_384_strided_slice_1Gsequential_128_lstm_384_while_sequential_128_lstm_384_strided_slice_1_0"?
?sequential_128_lstm_384_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_384_tensorarrayunstack_tensorlistfromtensor?sequential_128_lstm_384_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_384_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_128/lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOpBsequential_128/lstm_384/while/lstm_cell_111/BiasAdd/ReadVariableOp2?
Asequential_128/lstm_384/while/lstm_cell_111/MatMul/ReadVariableOpAsequential_128/lstm_384/while/lstm_cell_111/MatMul/ReadVariableOp2?
Csequential_128/lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOpCsequential_128/lstm_384/while/lstm_cell_111/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_686108

inputs>
,lstm_cell_113_matmul_readvariableop_resource:2(@
.lstm_cell_113_matmul_1_readvariableop_resource:
(;
-lstm_cell_113_biasadd_readvariableop_resource:(
identity??$lstm_cell_113/BiasAdd/ReadVariableOp?#lstm_cell_113/MatMul/ReadVariableOp?%lstm_cell_113/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_113/MatMul/ReadVariableOpReadVariableOp,lstm_cell_113_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_113/MatMulMatMulstrided_slice_2:output:0+lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_113_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_113/MatMul_1MatMulzeros:output:0-lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_113/addAddV2lstm_cell_113/MatMul:product:0 lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_113_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_113/BiasAddBiasAddlstm_cell_113/add:z:0,lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_113/splitSplit&lstm_cell_113/split/split_dim:output:0lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_113/SigmoidSigmoidlstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_1Sigmoidlstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_113/mulMullstm_cell_113/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_113/ReluRelulstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_1Mullstm_cell_113/Sigmoid:y:0 lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_113/add_1AddV2lstm_cell_113/mul:z:0lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_113/Sigmoid_2Sigmoidlstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_113/Relu_1Relulstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_113/mul_2Mullstm_cell_113/Sigmoid_2:y:0"lstm_cell_113/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_113_matmul_readvariableop_resource.lstm_cell_113_matmul_1_readvariableop_resource-lstm_cell_113_biasadd_readvariableop_resource*
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
while_body_686024*
condR
while_cond_686023*K
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
NoOpNoOp%^lstm_cell_113/BiasAdd/ReadVariableOp$^lstm_cell_113/MatMul/ReadVariableOp&^lstm_cell_113/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_113/BiasAdd/ReadVariableOp$lstm_cell_113/BiasAdd/ReadVariableOp2J
#lstm_cell_113/MatMul/ReadVariableOp#lstm_cell_113/MatMul/ReadVariableOp2N
%lstm_cell_113/MatMul_1/ReadVariableOp%lstm_cell_113/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_685508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_111_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_111_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_111_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_111_matmul_readvariableop_resource:	?G
4while_lstm_cell_111_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_111_biasadd_readvariableop_resource:	???*while/lstm_cell_111/BiasAdd/ReadVariableOp?)while/lstm_cell_111/MatMul/ReadVariableOp?+while/lstm_cell_111/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_111/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_111_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_111_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_111/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_111/addAddV2$while/lstm_cell_111/MatMul:product:0&while/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_111_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_111/BiasAddBiasAddwhile/lstm_cell_111/add:z:02while/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:0$while/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_111/SigmoidSigmoid"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_1Sigmoid"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mulMul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_111/ReluRelu"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_1Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/add_1AddV2while/lstm_cell_111/mul:z:0while/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_2Sigmoid"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_2Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_111/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_111/BiasAdd/ReadVariableOp*^while/lstm_cell_111/MatMul/ReadVariableOp,^while/lstm_cell_111/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_111_biasadd_readvariableop_resource5while_lstm_cell_111_biasadd_readvariableop_resource_0"n
4while_lstm_cell_111_matmul_1_readvariableop_resource6while_lstm_cell_111_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_111_matmul_readvariableop_resource4while_lstm_cell_111_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_111/BiasAdd/ReadVariableOp*while/lstm_cell_111/BiasAdd/ReadVariableOp2V
)while/lstm_cell_111/MatMul/ReadVariableOp)while/lstm_cell_111/MatMul/ReadVariableOp2Z
+while/lstm_cell_111/MatMul_1/ReadVariableOp+while/lstm_cell_111/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_689038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_689038___redundant_placeholder04
0while_while_cond_689038___redundant_placeholder14
0while_while_cond_689038___redundant_placeholder24
0while_while_cond_689038___redundant_placeholder3
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

lstm_385_while_body_687332.
*lstm_385_while_lstm_385_while_loop_counter4
0lstm_385_while_lstm_385_while_maximum_iterations
lstm_385_while_placeholder 
lstm_385_while_placeholder_1 
lstm_385_while_placeholder_2 
lstm_385_while_placeholder_3-
)lstm_385_while_lstm_385_strided_slice_1_0i
elstm_385_while_tensorarrayv2read_tensorlistgetitem_lstm_385_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_385_while_lstm_cell_112_matmul_readvariableop_resource_0:	d?R
?lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource_0:	2?M
>lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource_0:	?
lstm_385_while_identity
lstm_385_while_identity_1
lstm_385_while_identity_2
lstm_385_while_identity_3
lstm_385_while_identity_4
lstm_385_while_identity_5+
'lstm_385_while_lstm_385_strided_slice_1g
clstm_385_while_tensorarrayv2read_tensorlistgetitem_lstm_385_tensorarrayunstack_tensorlistfromtensorN
;lstm_385_while_lstm_cell_112_matmul_readvariableop_resource:	d?P
=lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource:	2?K
<lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource:	???3lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp?2lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp?4lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp?
@lstm_385/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_385/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_385_while_tensorarrayv2read_tensorlistgetitem_lstm_385_tensorarrayunstack_tensorlistfromtensor_0lstm_385_while_placeholderIlstm_385/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_385/while/lstm_cell_112/MatMul/ReadVariableOpReadVariableOp=lstm_385_while_lstm_cell_112_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_385/while/lstm_cell_112/MatMulMatMul9lstm_385/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp?lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_385/while/lstm_cell_112/MatMul_1MatMullstm_385_while_placeholder_2<lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_385/while/lstm_cell_112/addAddV2-lstm_385/while/lstm_cell_112/MatMul:product:0/lstm_385/while/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp>lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_385/while/lstm_cell_112/BiasAddBiasAdd$lstm_385/while/lstm_cell_112/add:z:0;lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_385/while/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_385/while/lstm_cell_112/splitSplit5lstm_385/while/lstm_cell_112/split/split_dim:output:0-lstm_385/while/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_385/while/lstm_cell_112/SigmoidSigmoid+lstm_385/while/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_385/while/lstm_cell_112/Sigmoid_1Sigmoid+lstm_385/while/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_385/while/lstm_cell_112/mulMul*lstm_385/while/lstm_cell_112/Sigmoid_1:y:0lstm_385_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_385/while/lstm_cell_112/ReluRelu+lstm_385/while/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_385/while/lstm_cell_112/mul_1Mul(lstm_385/while/lstm_cell_112/Sigmoid:y:0/lstm_385/while/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_385/while/lstm_cell_112/add_1AddV2$lstm_385/while/lstm_cell_112/mul:z:0&lstm_385/while/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_385/while/lstm_cell_112/Sigmoid_2Sigmoid+lstm_385/while/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_385/while/lstm_cell_112/Relu_1Relu&lstm_385/while/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_385/while/lstm_cell_112/mul_2Mul*lstm_385/while/lstm_cell_112/Sigmoid_2:y:01lstm_385/while/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_385/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_385_while_placeholder_1lstm_385_while_placeholder&lstm_385/while/lstm_cell_112/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_385/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_385/while/addAddV2lstm_385_while_placeholderlstm_385/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_385/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_385/while/add_1AddV2*lstm_385_while_lstm_385_while_loop_counterlstm_385/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_385/while/IdentityIdentitylstm_385/while/add_1:z:0^lstm_385/while/NoOp*
T0*
_output_shapes
: ?
lstm_385/while/Identity_1Identity0lstm_385_while_lstm_385_while_maximum_iterations^lstm_385/while/NoOp*
T0*
_output_shapes
: t
lstm_385/while/Identity_2Identitylstm_385/while/add:z:0^lstm_385/while/NoOp*
T0*
_output_shapes
: ?
lstm_385/while/Identity_3IdentityClstm_385/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_385/while/NoOp*
T0*
_output_shapes
: ?
lstm_385/while/Identity_4Identity&lstm_385/while/lstm_cell_112/mul_2:z:0^lstm_385/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_385/while/Identity_5Identity&lstm_385/while/lstm_cell_112/add_1:z:0^lstm_385/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_385/while/NoOpNoOp4^lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp3^lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp5^lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_385_while_identity lstm_385/while/Identity:output:0"?
lstm_385_while_identity_1"lstm_385/while/Identity_1:output:0"?
lstm_385_while_identity_2"lstm_385/while/Identity_2:output:0"?
lstm_385_while_identity_3"lstm_385/while/Identity_3:output:0"?
lstm_385_while_identity_4"lstm_385/while/Identity_4:output:0"?
lstm_385_while_identity_5"lstm_385/while/Identity_5:output:0"T
'lstm_385_while_lstm_385_strided_slice_1)lstm_385_while_lstm_385_strided_slice_1_0"~
<lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource>lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource_0"?
=lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource?lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource_0"|
;lstm_385_while_lstm_cell_112_matmul_readvariableop_resource=lstm_385_while_lstm_cell_112_matmul_readvariableop_resource_0"?
clstm_385_while_tensorarrayv2read_tensorlistgetitem_lstm_385_tensorarrayunstack_tensorlistfromtensorelstm_385_while_tensorarrayv2read_tensorlistgetitem_lstm_385_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp3lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp2h
2lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp2lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp2l
4lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp4lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_128_lstm_384_while_cond_684024L
Hsequential_128_lstm_384_while_sequential_128_lstm_384_while_loop_counterR
Nsequential_128_lstm_384_while_sequential_128_lstm_384_while_maximum_iterations-
)sequential_128_lstm_384_while_placeholder/
+sequential_128_lstm_384_while_placeholder_1/
+sequential_128_lstm_384_while_placeholder_2/
+sequential_128_lstm_384_while_placeholder_3N
Jsequential_128_lstm_384_while_less_sequential_128_lstm_384_strided_slice_1d
`sequential_128_lstm_384_while_sequential_128_lstm_384_while_cond_684024___redundant_placeholder0d
`sequential_128_lstm_384_while_sequential_128_lstm_384_while_cond_684024___redundant_placeholder1d
`sequential_128_lstm_384_while_sequential_128_lstm_384_while_cond_684024___redundant_placeholder2d
`sequential_128_lstm_384_while_sequential_128_lstm_384_while_cond_684024___redundant_placeholder3*
&sequential_128_lstm_384_while_identity
?
"sequential_128/lstm_384/while/LessLess)sequential_128_lstm_384_while_placeholderJsequential_128_lstm_384_while_less_sequential_128_lstm_384_strided_slice_1*
T0*
_output_shapes
: {
&sequential_128/lstm_384/while/IdentityIdentity&sequential_128/lstm_384/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_128_lstm_384_while_identity/sequential_128/lstm_384/while/Identity:output:0*(
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
?
J__inference_sequential_128_layer_call_and_return_conditional_losses_686618
lstm_384_input"
lstm_384_686591:	?"
lstm_384_686593:	d?
lstm_384_686595:	?"
lstm_385_686598:	d?"
lstm_385_686600:	2?
lstm_385_686602:	?!
lstm_386_686605:2(!
lstm_386_686607:
(
lstm_386_686609:("
dense_128_686612:

dense_128_686614:
identity??!dense_128/StatefulPartitionedCall? lstm_384/StatefulPartitionedCall? lstm_385/StatefulPartitionedCall? lstm_386/StatefulPartitionedCall?
 lstm_384/StatefulPartitionedCallStatefulPartitionedCalllstm_384_inputlstm_384_686591lstm_384_686593lstm_384_686595*
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_686438?
 lstm_385/StatefulPartitionedCallStatefulPartitionedCall)lstm_384/StatefulPartitionedCall:output:0lstm_385_686598lstm_385_686600lstm_385_686602*
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_686273?
 lstm_386/StatefulPartitionedCallStatefulPartitionedCall)lstm_385/StatefulPartitionedCall:output:0lstm_386_686605lstm_386_686607lstm_386_686609*
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_686108?
!dense_128/StatefulPartitionedCallStatefulPartitionedCall)lstm_386/StatefulPartitionedCall:output:0dense_128_686612dense_128_686614*
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
E__inference_dense_128_layer_call_and_return_conditional_losses_685910y
IdentityIdentity*dense_128/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_128/StatefulPartitionedCall!^lstm_384/StatefulPartitionedCall!^lstm_385/StatefulPartitionedCall!^lstm_386/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2D
 lstm_384/StatefulPartitionedCall lstm_384/StatefulPartitionedCall2D
 lstm_385/StatefulPartitionedCall lstm_385/StatefulPartitionedCall2D
 lstm_386/StatefulPartitionedCall lstm_386/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_384_input
?8
?
while_body_685658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_112_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_112_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_112_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_112_matmul_readvariableop_resource:	d?G
4while_lstm_cell_112_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_112_biasadd_readvariableop_resource:	???*while/lstm_cell_112/BiasAdd/ReadVariableOp?)while/lstm_cell_112/MatMul/ReadVariableOp?+while/lstm_cell_112/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_112/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_112_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_112/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_112_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_112/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_112/addAddV2$while/lstm_cell_112/MatMul:product:0&while/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_112_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_112/BiasAddBiasAddwhile/lstm_cell_112/add:z:02while/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_112/splitSplit,while/lstm_cell_112/split/split_dim:output:0$while/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_112/SigmoidSigmoid"while/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_1Sigmoid"while/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mulMul!while/lstm_cell_112/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_112/ReluRelu"while/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_1Mulwhile/lstm_cell_112/Sigmoid:y:0&while/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/add_1AddV2while/lstm_cell_112/mul:z:0while/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_2Sigmoid"while/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_112/Relu_1Reluwhile/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_2Mul!while/lstm_cell_112/Sigmoid_2:y:0(while/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_112/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_112/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_112/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_112/BiasAdd/ReadVariableOp*^while/lstm_cell_112/MatMul/ReadVariableOp,^while/lstm_cell_112/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_112_biasadd_readvariableop_resource5while_lstm_cell_112_biasadd_readvariableop_resource_0"n
4while_lstm_cell_112_matmul_1_readvariableop_resource6while_lstm_cell_112_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_112_matmul_readvariableop_resource4while_lstm_cell_112_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_112/BiasAdd/ReadVariableOp*while/lstm_cell_112/BiasAdd/ReadVariableOp2V
)while/lstm_cell_112/MatMul/ReadVariableOp)while/lstm_cell_112/MatMul/ReadVariableOp2Z
+while/lstm_cell_112/MatMul_1/ReadVariableOp+while/lstm_cell_112/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_385_layer_call_fn_688188
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_684893|
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
.__inference_lstm_cell_113_layer_call_fn_689641

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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_685160o
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
?
D__inference_lstm_386_layer_call_and_return_conditional_losses_685434

inputs&
lstm_cell_113_685352:2(&
lstm_cell_113_685354:
("
lstm_cell_113_685356:(
identity??%lstm_cell_113/StatefulPartitionedCall?while;
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
%lstm_cell_113/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_113_685352lstm_cell_113_685354lstm_cell_113_685356*
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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_685306n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_113_685352lstm_cell_113_685354lstm_cell_113_685356*
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
while_body_685365*
condR
while_cond_685364*K
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
NoOpNoOp&^lstm_cell_113/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_113/StatefulPartitionedCall%lstm_cell_113/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_684606

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

?
lstm_385_while_cond_686904.
*lstm_385_while_lstm_385_while_loop_counter4
0lstm_385_while_lstm_385_while_maximum_iterations
lstm_385_while_placeholder 
lstm_385_while_placeholder_1 
lstm_385_while_placeholder_2 
lstm_385_while_placeholder_30
,lstm_385_while_less_lstm_385_strided_slice_1F
Blstm_385_while_lstm_385_while_cond_686904___redundant_placeholder0F
Blstm_385_while_lstm_385_while_cond_686904___redundant_placeholder1F
Blstm_385_while_lstm_385_while_cond_686904___redundant_placeholder2F
Blstm_385_while_lstm_385_while_cond_686904___redundant_placeholder3
lstm_385_while_identity
?
lstm_385/while/LessLesslstm_385_while_placeholder,lstm_385_while_less_lstm_385_strided_slice_1*
T0*
_output_shapes
: ]
lstm_385/while/IdentityIdentitylstm_385/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_385_while_identity lstm_385/while/Identity:output:0*(
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_688364
inputs_0?
,lstm_cell_112_matmul_readvariableop_resource:	d?A
.lstm_cell_112_matmul_1_readvariableop_resource:	2?<
-lstm_cell_112_biasadd_readvariableop_resource:	?
identity??$lstm_cell_112/BiasAdd/ReadVariableOp?#lstm_cell_112/MatMul/ReadVariableOp?%lstm_cell_112/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_112/MatMul/ReadVariableOpReadVariableOp,lstm_cell_112_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_112/MatMulMatMulstrided_slice_2:output:0+lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_112_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_112/MatMul_1MatMulzeros:output:0-lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_112/addAddV2lstm_cell_112/MatMul:product:0 lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_112_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_112/BiasAddBiasAddlstm_cell_112/add:z:0,lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_112/splitSplit&lstm_cell_112/split/split_dim:output:0lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_112/SigmoidSigmoidlstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_1Sigmoidlstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_112/mulMullstm_cell_112/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_112/ReluRelulstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_1Mullstm_cell_112/Sigmoid:y:0 lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_112/add_1AddV2lstm_cell_112/mul:z:0lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_112/Sigmoid_2Sigmoidlstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_112/Relu_1Relulstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_112/mul_2Mullstm_cell_112/Sigmoid_2:y:0"lstm_cell_112/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_112_matmul_readvariableop_resource.lstm_cell_112_matmul_1_readvariableop_resource-lstm_cell_112_biasadd_readvariableop_resource*
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
while_body_688280*
condR
while_cond_688279*K
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
NoOpNoOp%^lstm_cell_112/BiasAdd/ReadVariableOp$^lstm_cell_112/MatMul/ReadVariableOp&^lstm_cell_112/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_112/BiasAdd/ReadVariableOp$lstm_cell_112/BiasAdd/ReadVariableOp2J
#lstm_cell_112/MatMul/ReadVariableOp#lstm_cell_112/MatMul/ReadVariableOp2N
%lstm_cell_112/MatMul_1/ReadVariableOp%lstm_cell_112/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_689690

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
while_cond_684473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_684473___redundant_placeholder04
0while_while_cond_684473___redundant_placeholder14
0while_while_cond_684473___redundant_placeholder24
0while_while_cond_684473___redundant_placeholder3
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
while_cond_685173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_685173___redundant_placeholder04
0while_while_cond_685173___redundant_placeholder14
0while_while_cond_685173___redundant_placeholder24
0while_while_cond_685173___redundant_placeholder3
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_688177

inputs?
,lstm_cell_111_matmul_readvariableop_resource:	?A
.lstm_cell_111_matmul_1_readvariableop_resource:	d?<
-lstm_cell_111_biasadd_readvariableop_resource:	?
identity??$lstm_cell_111/BiasAdd/ReadVariableOp?#lstm_cell_111/MatMul/ReadVariableOp?%lstm_cell_111/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_111/MatMul/ReadVariableOpReadVariableOp,lstm_cell_111_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0+lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_111_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_111/MatMul_1MatMulzeros:output:0-lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_111/addAddV2lstm_cell_111/MatMul:product:0 lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_111_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_111/BiasAddBiasAddlstm_cell_111/add:z:0,lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_111/SigmoidSigmoidlstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_111/mulMullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_111/ReluRelulstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_1Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_111/add_1AddV2lstm_cell_111/mul:z:0lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_111/Relu_1Relulstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_111/mul_2Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_111_matmul_readvariableop_resource.lstm_cell_111_matmul_1_readvariableop_resource-lstm_cell_111_biasadd_readvariableop_resource*
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
while_body_688093*
condR
while_cond_688092*K
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
NoOpNoOp%^lstm_cell_111/BiasAdd/ReadVariableOp$^lstm_cell_111/MatMul/ReadVariableOp&^lstm_cell_111/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_111/BiasAdd/ReadVariableOp$lstm_cell_111/BiasAdd/ReadVariableOp2J
#lstm_cell_111/MatMul/ReadVariableOp#lstm_cell_111/MatMul/ReadVariableOp2N
%lstm_cell_111/MatMul_1/ReadVariableOp%lstm_cell_111/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_384_layer_call_fn_687572
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_684543|
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
while_body_687664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_111_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_111_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_111_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_111_matmul_readvariableop_resource:	?G
4while_lstm_cell_111_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_111_biasadd_readvariableop_resource:	???*while/lstm_cell_111/BiasAdd/ReadVariableOp?)while/lstm_cell_111/MatMul/ReadVariableOp?+while/lstm_cell_111/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_111/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_111_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_111/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_111/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_111_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_111/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_111/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_111/addAddV2$while/lstm_cell_111/MatMul:product:0&while/lstm_cell_111/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_111/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_111_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_111/BiasAddBiasAddwhile/lstm_cell_111/add:z:02while/lstm_cell_111/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:0$while/lstm_cell_111/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_111/SigmoidSigmoid"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_1Sigmoid"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mulMul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_111/ReluRelu"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_1Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/add_1AddV2while/lstm_cell_111/mul:z:0while/lstm_cell_111/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_111/Sigmoid_2Sigmoid"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_111/mul_2Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_111/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_111/BiasAdd/ReadVariableOp*^while/lstm_cell_111/MatMul/ReadVariableOp,^while/lstm_cell_111/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_111_biasadd_readvariableop_resource5while_lstm_cell_111_biasadd_readvariableop_resource_0"n
4while_lstm_cell_111_matmul_1_readvariableop_resource6while_lstm_cell_111_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_111_matmul_readvariableop_resource4while_lstm_cell_111_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_111/BiasAdd/ReadVariableOp*while/lstm_cell_111/BiasAdd/ReadVariableOp2V
)while/lstm_cell_111/MatMul/ReadVariableOp)while/lstm_cell_111/MatMul/ReadVariableOp2Z
+while/lstm_cell_111/MatMul_1/ReadVariableOp+while/lstm_cell_111/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_386_layer_call_fn_688826

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
D__inference_lstm_386_layer_call_and_return_conditional_losses_685892o
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
?
)__inference_lstm_385_layer_call_fn_688221

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
D__inference_lstm_385_layer_call_and_return_conditional_losses_686273s
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
?T
?
)sequential_128_lstm_385_while_body_684164L
Hsequential_128_lstm_385_while_sequential_128_lstm_385_while_loop_counterR
Nsequential_128_lstm_385_while_sequential_128_lstm_385_while_maximum_iterations-
)sequential_128_lstm_385_while_placeholder/
+sequential_128_lstm_385_while_placeholder_1/
+sequential_128_lstm_385_while_placeholder_2/
+sequential_128_lstm_385_while_placeholder_3K
Gsequential_128_lstm_385_while_sequential_128_lstm_385_strided_slice_1_0?
?sequential_128_lstm_385_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_385_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_128_lstm_385_while_lstm_cell_112_matmul_readvariableop_resource_0:	d?a
Nsequential_128_lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource_0:	2?\
Msequential_128_lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource_0:	?*
&sequential_128_lstm_385_while_identity,
(sequential_128_lstm_385_while_identity_1,
(sequential_128_lstm_385_while_identity_2,
(sequential_128_lstm_385_while_identity_3,
(sequential_128_lstm_385_while_identity_4,
(sequential_128_lstm_385_while_identity_5I
Esequential_128_lstm_385_while_sequential_128_lstm_385_strided_slice_1?
?sequential_128_lstm_385_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_385_tensorarrayunstack_tensorlistfromtensor]
Jsequential_128_lstm_385_while_lstm_cell_112_matmul_readvariableop_resource:	d?_
Lsequential_128_lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource:	2?Z
Ksequential_128_lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource:	???Bsequential_128/lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp?Asequential_128/lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp?Csequential_128/lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp?
Osequential_128/lstm_385/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_128/lstm_385/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_128_lstm_385_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_385_tensorarrayunstack_tensorlistfromtensor_0)sequential_128_lstm_385_while_placeholderXsequential_128/lstm_385/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_128/lstm_385/while/lstm_cell_112/MatMul/ReadVariableOpReadVariableOpLsequential_128_lstm_385_while_lstm_cell_112_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_128/lstm_385/while/lstm_cell_112/MatMulMatMulHsequential_128/lstm_385/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_128/lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_128/lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOpNsequential_128_lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_128/lstm_385/while/lstm_cell_112/MatMul_1MatMul+sequential_128_lstm_385_while_placeholder_2Ksequential_128/lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_128/lstm_385/while/lstm_cell_112/addAddV2<sequential_128/lstm_385/while/lstm_cell_112/MatMul:product:0>sequential_128/lstm_385/while/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_128/lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOpMsequential_128_lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_128/lstm_385/while/lstm_cell_112/BiasAddBiasAdd3sequential_128/lstm_385/while/lstm_cell_112/add:z:0Jsequential_128/lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_128/lstm_385/while/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_128/lstm_385/while/lstm_cell_112/splitSplitDsequential_128/lstm_385/while/lstm_cell_112/split/split_dim:output:0<sequential_128/lstm_385/while/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_128/lstm_385/while/lstm_cell_112/SigmoidSigmoid:sequential_128/lstm_385/while/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_128/lstm_385/while/lstm_cell_112/Sigmoid_1Sigmoid:sequential_128/lstm_385/while/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_128/lstm_385/while/lstm_cell_112/mulMul9sequential_128/lstm_385/while/lstm_cell_112/Sigmoid_1:y:0+sequential_128_lstm_385_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_128/lstm_385/while/lstm_cell_112/ReluRelu:sequential_128/lstm_385/while/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_128/lstm_385/while/lstm_cell_112/mul_1Mul7sequential_128/lstm_385/while/lstm_cell_112/Sigmoid:y:0>sequential_128/lstm_385/while/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_128/lstm_385/while/lstm_cell_112/add_1AddV23sequential_128/lstm_385/while/lstm_cell_112/mul:z:05sequential_128/lstm_385/while/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_128/lstm_385/while/lstm_cell_112/Sigmoid_2Sigmoid:sequential_128/lstm_385/while/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_128/lstm_385/while/lstm_cell_112/Relu_1Relu5sequential_128/lstm_385/while/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_128/lstm_385/while/lstm_cell_112/mul_2Mul9sequential_128/lstm_385/while/lstm_cell_112/Sigmoid_2:y:0@sequential_128/lstm_385/while/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_128/lstm_385/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_128_lstm_385_while_placeholder_1)sequential_128_lstm_385_while_placeholder5sequential_128/lstm_385/while/lstm_cell_112/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_128/lstm_385/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_128/lstm_385/while/addAddV2)sequential_128_lstm_385_while_placeholder,sequential_128/lstm_385/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_128/lstm_385/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_128/lstm_385/while/add_1AddV2Hsequential_128_lstm_385_while_sequential_128_lstm_385_while_loop_counter.sequential_128/lstm_385/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_128/lstm_385/while/IdentityIdentity'sequential_128/lstm_385/while/add_1:z:0#^sequential_128/lstm_385/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_385/while/Identity_1IdentityNsequential_128_lstm_385_while_sequential_128_lstm_385_while_maximum_iterations#^sequential_128/lstm_385/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_385/while/Identity_2Identity%sequential_128/lstm_385/while/add:z:0#^sequential_128/lstm_385/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_385/while/Identity_3IdentityRsequential_128/lstm_385/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_128/lstm_385/while/NoOp*
T0*
_output_shapes
: ?
(sequential_128/lstm_385/while/Identity_4Identity5sequential_128/lstm_385/while/lstm_cell_112/mul_2:z:0#^sequential_128/lstm_385/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_128/lstm_385/while/Identity_5Identity5sequential_128/lstm_385/while/lstm_cell_112/add_1:z:0#^sequential_128/lstm_385/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_128/lstm_385/while/NoOpNoOpC^sequential_128/lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOpB^sequential_128/lstm_385/while/lstm_cell_112/MatMul/ReadVariableOpD^sequential_128/lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_128_lstm_385_while_identity/sequential_128/lstm_385/while/Identity:output:0"]
(sequential_128_lstm_385_while_identity_11sequential_128/lstm_385/while/Identity_1:output:0"]
(sequential_128_lstm_385_while_identity_21sequential_128/lstm_385/while/Identity_2:output:0"]
(sequential_128_lstm_385_while_identity_31sequential_128/lstm_385/while/Identity_3:output:0"]
(sequential_128_lstm_385_while_identity_41sequential_128/lstm_385/while/Identity_4:output:0"]
(sequential_128_lstm_385_while_identity_51sequential_128/lstm_385/while/Identity_5:output:0"?
Ksequential_128_lstm_385_while_lstm_cell_112_biasadd_readvariableop_resourceMsequential_128_lstm_385_while_lstm_cell_112_biasadd_readvariableop_resource_0"?
Lsequential_128_lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resourceNsequential_128_lstm_385_while_lstm_cell_112_matmul_1_readvariableop_resource_0"?
Jsequential_128_lstm_385_while_lstm_cell_112_matmul_readvariableop_resourceLsequential_128_lstm_385_while_lstm_cell_112_matmul_readvariableop_resource_0"?
Esequential_128_lstm_385_while_sequential_128_lstm_385_strided_slice_1Gsequential_128_lstm_385_while_sequential_128_lstm_385_strided_slice_1_0"?
?sequential_128_lstm_385_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_385_tensorarrayunstack_tensorlistfromtensor?sequential_128_lstm_385_while_tensorarrayv2read_tensorlistgetitem_sequential_128_lstm_385_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_128/lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOpBsequential_128/lstm_385/while/lstm_cell_112/BiasAdd/ReadVariableOp2?
Asequential_128/lstm_385/while/lstm_cell_112/MatMul/ReadVariableOpAsequential_128/lstm_385/while/lstm_cell_112/MatMul/ReadVariableOp2?
Csequential_128/lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOpCsequential_128/lstm_385/while/lstm_cell_112/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_686023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_686023___redundant_placeholder04
0while_while_cond_686023___redundant_placeholder14
0while_while_cond_686023___redundant_placeholder24
0while_while_cond_686023___redundant_placeholder3
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
while_cond_688708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_688708___redundant_placeholder04
0while_while_cond_688708___redundant_placeholder14
0while_while_cond_688708___redundant_placeholder24
0while_while_cond_688708___redundant_placeholder3
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
?
)sequential_128_lstm_386_while_cond_684302L
Hsequential_128_lstm_386_while_sequential_128_lstm_386_while_loop_counterR
Nsequential_128_lstm_386_while_sequential_128_lstm_386_while_maximum_iterations-
)sequential_128_lstm_386_while_placeholder/
+sequential_128_lstm_386_while_placeholder_1/
+sequential_128_lstm_386_while_placeholder_2/
+sequential_128_lstm_386_while_placeholder_3N
Jsequential_128_lstm_386_while_less_sequential_128_lstm_386_strided_slice_1d
`sequential_128_lstm_386_while_sequential_128_lstm_386_while_cond_684302___redundant_placeholder0d
`sequential_128_lstm_386_while_sequential_128_lstm_386_while_cond_684302___redundant_placeholder1d
`sequential_128_lstm_386_while_sequential_128_lstm_386_while_cond_684302___redundant_placeholder2d
`sequential_128_lstm_386_while_sequential_128_lstm_386_while_cond_684302___redundant_placeholder3*
&sequential_128_lstm_386_while_identity
?
"sequential_128/lstm_386/while/LessLess)sequential_128_lstm_386_while_placeholderJsequential_128_lstm_386_while_less_sequential_128_lstm_386_strided_slice_1*
T0*
_output_shapes
: {
&sequential_128/lstm_386/while/IdentityIdentity&sequential_128/lstm_386/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_128_lstm_386_while_identity/sequential_128/lstm_386/while/Identity:output:0*(
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

lstm_386_while_body_687471.
*lstm_386_while_lstm_386_while_loop_counter4
0lstm_386_while_lstm_386_while_maximum_iterations
lstm_386_while_placeholder 
lstm_386_while_placeholder_1 
lstm_386_while_placeholder_2 
lstm_386_while_placeholder_3-
)lstm_386_while_lstm_386_strided_slice_1_0i
elstm_386_while_tensorarrayv2read_tensorlistgetitem_lstm_386_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_386_while_lstm_cell_113_matmul_readvariableop_resource_0:2(Q
?lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource_0:
(L
>lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource_0:(
lstm_386_while_identity
lstm_386_while_identity_1
lstm_386_while_identity_2
lstm_386_while_identity_3
lstm_386_while_identity_4
lstm_386_while_identity_5+
'lstm_386_while_lstm_386_strided_slice_1g
clstm_386_while_tensorarrayv2read_tensorlistgetitem_lstm_386_tensorarrayunstack_tensorlistfromtensorM
;lstm_386_while_lstm_cell_113_matmul_readvariableop_resource:2(O
=lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource:
(J
<lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource:(??3lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp?2lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp?4lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp?
@lstm_386/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_386/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_386_while_tensorarrayv2read_tensorlistgetitem_lstm_386_tensorarrayunstack_tensorlistfromtensor_0lstm_386_while_placeholderIlstm_386/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_386/while/lstm_cell_113/MatMul/ReadVariableOpReadVariableOp=lstm_386_while_lstm_cell_113_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_386/while/lstm_cell_113/MatMulMatMul9lstm_386/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp?lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_386/while/lstm_cell_113/MatMul_1MatMullstm_386_while_placeholder_2<lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_386/while/lstm_cell_113/addAddV2-lstm_386/while/lstm_cell_113/MatMul:product:0/lstm_386/while/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp>lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_386/while/lstm_cell_113/BiasAddBiasAdd$lstm_386/while/lstm_cell_113/add:z:0;lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_386/while/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_386/while/lstm_cell_113/splitSplit5lstm_386/while/lstm_cell_113/split/split_dim:output:0-lstm_386/while/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_386/while/lstm_cell_113/SigmoidSigmoid+lstm_386/while/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_386/while/lstm_cell_113/Sigmoid_1Sigmoid+lstm_386/while/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_386/while/lstm_cell_113/mulMul*lstm_386/while/lstm_cell_113/Sigmoid_1:y:0lstm_386_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_386/while/lstm_cell_113/ReluRelu+lstm_386/while/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_386/while/lstm_cell_113/mul_1Mul(lstm_386/while/lstm_cell_113/Sigmoid:y:0/lstm_386/while/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_386/while/lstm_cell_113/add_1AddV2$lstm_386/while/lstm_cell_113/mul:z:0&lstm_386/while/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_386/while/lstm_cell_113/Sigmoid_2Sigmoid+lstm_386/while/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_386/while/lstm_cell_113/Relu_1Relu&lstm_386/while/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_386/while/lstm_cell_113/mul_2Mul*lstm_386/while/lstm_cell_113/Sigmoid_2:y:01lstm_386/while/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_386/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_386_while_placeholder_1lstm_386_while_placeholder&lstm_386/while/lstm_cell_113/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_386/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_386/while/addAddV2lstm_386_while_placeholderlstm_386/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_386/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_386/while/add_1AddV2*lstm_386_while_lstm_386_while_loop_counterlstm_386/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_386/while/IdentityIdentitylstm_386/while/add_1:z:0^lstm_386/while/NoOp*
T0*
_output_shapes
: ?
lstm_386/while/Identity_1Identity0lstm_386_while_lstm_386_while_maximum_iterations^lstm_386/while/NoOp*
T0*
_output_shapes
: t
lstm_386/while/Identity_2Identitylstm_386/while/add:z:0^lstm_386/while/NoOp*
T0*
_output_shapes
: ?
lstm_386/while/Identity_3IdentityClstm_386/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_386/while/NoOp*
T0*
_output_shapes
: ?
lstm_386/while/Identity_4Identity&lstm_386/while/lstm_cell_113/mul_2:z:0^lstm_386/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_386/while/Identity_5Identity&lstm_386/while/lstm_cell_113/add_1:z:0^lstm_386/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_386/while/NoOpNoOp4^lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp3^lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp5^lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_386_while_identity lstm_386/while/Identity:output:0"?
lstm_386_while_identity_1"lstm_386/while/Identity_1:output:0"?
lstm_386_while_identity_2"lstm_386/while/Identity_2:output:0"?
lstm_386_while_identity_3"lstm_386/while/Identity_3:output:0"?
lstm_386_while_identity_4"lstm_386/while/Identity_4:output:0"?
lstm_386_while_identity_5"lstm_386/while/Identity_5:output:0"T
'lstm_386_while_lstm_386_strided_slice_1)lstm_386_while_lstm_386_strided_slice_1_0"~
<lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource>lstm_386_while_lstm_cell_113_biasadd_readvariableop_resource_0"?
=lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource?lstm_386_while_lstm_cell_113_matmul_1_readvariableop_resource_0"|
;lstm_386_while_lstm_cell_113_matmul_readvariableop_resource=lstm_386_while_lstm_cell_113_matmul_readvariableop_resource_0"?
clstm_386_while_tensorarrayv2read_tensorlistgetitem_lstm_386_tensorarrayunstack_tensorlistfromtensorelstm_386_while_tensorarrayv2read_tensorlistgetitem_lstm_386_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp3lstm_386/while/lstm_cell_113/BiasAdd/ReadVariableOp2h
2lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp2lstm_386/while/lstm_cell_113/MatMul/ReadVariableOp2l
4lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp4lstm_386/while/lstm_cell_113/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_684460

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
while_cond_688279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_688279___redundant_placeholder04
0while_while_cond_688279___redundant_placeholder14
0while_while_cond_688279___redundant_placeholder24
0while_while_cond_688279___redundant_placeholder3
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
while_cond_689324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_689324___redundant_placeholder04
0while_while_cond_689324___redundant_placeholder14
0while_while_cond_689324___redundant_placeholder24
0while_while_cond_689324___redundant_placeholder3
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
while_cond_688895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_688895___redundant_placeholder04
0while_while_cond_688895___redundant_placeholder14
0while_while_cond_688895___redundant_placeholder24
0while_while_cond_688895___redundant_placeholder3
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
while_cond_689181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_689181___redundant_placeholder04
0while_while_cond_689181___redundant_placeholder14
0while_while_cond_689181___redundant_placeholder24
0while_while_cond_689181___redundant_placeholder3
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
while_body_688566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_112_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_112_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_112_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_112_matmul_readvariableop_resource:	d?G
4while_lstm_cell_112_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_112_biasadd_readvariableop_resource:	???*while/lstm_cell_112/BiasAdd/ReadVariableOp?)while/lstm_cell_112/MatMul/ReadVariableOp?+while/lstm_cell_112/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_112/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_112_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_112/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_112_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_112/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_112/addAddV2$while/lstm_cell_112/MatMul:product:0&while/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_112_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_112/BiasAddBiasAddwhile/lstm_cell_112/add:z:02while/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_112/splitSplit,while/lstm_cell_112/split/split_dim:output:0$while/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_112/SigmoidSigmoid"while/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_1Sigmoid"while/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mulMul!while/lstm_cell_112/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_112/ReluRelu"while/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_1Mulwhile/lstm_cell_112/Sigmoid:y:0&while/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/add_1AddV2while/lstm_cell_112/mul:z:0while/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_2Sigmoid"while/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_112/Relu_1Reluwhile/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_2Mul!while/lstm_cell_112/Sigmoid_2:y:0(while/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_112/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_112/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_112/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_112/BiasAdd/ReadVariableOp*^while/lstm_cell_112/MatMul/ReadVariableOp,^while/lstm_cell_112/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_112_biasadd_readvariableop_resource5while_lstm_cell_112_biasadd_readvariableop_resource_0"n
4while_lstm_cell_112_matmul_1_readvariableop_resource6while_lstm_cell_112_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_112_matmul_readvariableop_resource4while_lstm_cell_112_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_112/BiasAdd/ReadVariableOp*while/lstm_cell_112/BiasAdd/ReadVariableOp2V
)while/lstm_cell_112/MatMul/ReadVariableOp)while/lstm_cell_112/MatMul/ReadVariableOp2Z
+while/lstm_cell_112/MatMul_1/ReadVariableOp+while/lstm_cell_112/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_689722

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
$__inference_signature_wrapper_686653
lstm_384_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_384_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_684393o
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
_user_specified_namelstm_384_input
?8
?
while_body_689182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_113_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_113_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_113_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_113_matmul_readvariableop_resource:2(F
4while_lstm_cell_113_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_113_biasadd_readvariableop_resource:(??*while/lstm_cell_113/BiasAdd/ReadVariableOp?)while/lstm_cell_113/MatMul/ReadVariableOp?+while/lstm_cell_113/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_113/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_113_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_113/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_113/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_113_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_113/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_113/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_113/addAddV2$while/lstm_cell_113/MatMul:product:0&while/lstm_cell_113/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_113/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_113_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_113/BiasAddBiasAddwhile/lstm_cell_113/add:z:02while/lstm_cell_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_113/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_113/splitSplit,while/lstm_cell_113/split/split_dim:output:0$while/lstm_cell_113/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_113/SigmoidSigmoid"while/lstm_cell_113/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_1Sigmoid"while/lstm_cell_113/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mulMul!while/lstm_cell_113/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_113/ReluRelu"while/lstm_cell_113/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_1Mulwhile/lstm_cell_113/Sigmoid:y:0&while/lstm_cell_113/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/add_1AddV2while/lstm_cell_113/mul:z:0while/lstm_cell_113/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_113/Sigmoid_2Sigmoid"while/lstm_cell_113/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_113/Relu_1Reluwhile/lstm_cell_113/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_113/mul_2Mul!while/lstm_cell_113/Sigmoid_2:y:0(while/lstm_cell_113/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_113/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_113/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_113/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_113/BiasAdd/ReadVariableOp*^while/lstm_cell_113/MatMul/ReadVariableOp,^while/lstm_cell_113/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_113_biasadd_readvariableop_resource5while_lstm_cell_113_biasadd_readvariableop_resource_0"n
4while_lstm_cell_113_matmul_1_readvariableop_resource6while_lstm_cell_113_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_113_matmul_readvariableop_resource4while_lstm_cell_113_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_113/BiasAdd/ReadVariableOp*while/lstm_cell_113/BiasAdd/ReadVariableOp2V
)while/lstm_cell_113/MatMul/ReadVariableOp)while/lstm_cell_113/MatMul/ReadVariableOp2Z
+while/lstm_cell_113/MatMul_1/ReadVariableOp+while/lstm_cell_113/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_128_lstm_385_while_cond_684163L
Hsequential_128_lstm_385_while_sequential_128_lstm_385_while_loop_counterR
Nsequential_128_lstm_385_while_sequential_128_lstm_385_while_maximum_iterations-
)sequential_128_lstm_385_while_placeholder/
+sequential_128_lstm_385_while_placeholder_1/
+sequential_128_lstm_385_while_placeholder_2/
+sequential_128_lstm_385_while_placeholder_3N
Jsequential_128_lstm_385_while_less_sequential_128_lstm_385_strided_slice_1d
`sequential_128_lstm_385_while_sequential_128_lstm_385_while_cond_684163___redundant_placeholder0d
`sequential_128_lstm_385_while_sequential_128_lstm_385_while_cond_684163___redundant_placeholder1d
`sequential_128_lstm_385_while_sequential_128_lstm_385_while_cond_684163___redundant_placeholder2d
`sequential_128_lstm_385_while_sequential_128_lstm_385_while_cond_684163___redundant_placeholder3*
&sequential_128_lstm_385_while_identity
?
"sequential_128/lstm_385/while/LessLess)sequential_128_lstm_385_while_placeholderJsequential_128_lstm_385_while_less_sequential_128_lstm_385_strided_slice_1*
T0*
_output_shapes
: {
&sequential_128/lstm_385/while/IdentityIdentity&sequential_128/lstm_385/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_128_lstm_385_while_identity/sequential_128/lstm_385/while/Identity:output:0*(
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
while_cond_684664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_684664___redundant_placeholder04
0while_while_cond_684664___redundant_placeholder14
0while_while_cond_684664___redundant_placeholder24
0while_while_cond_684664___redundant_placeholder3
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
while_cond_686188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_686188___redundant_placeholder04
0while_while_cond_686188___redundant_placeholder14
0while_while_cond_686188___redundant_placeholder24
0while_while_cond_686188___redundant_placeholder3
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
lstm_386_while_cond_687470.
*lstm_386_while_lstm_386_while_loop_counter4
0lstm_386_while_lstm_386_while_maximum_iterations
lstm_386_while_placeholder 
lstm_386_while_placeholder_1 
lstm_386_while_placeholder_2 
lstm_386_while_placeholder_30
,lstm_386_while_less_lstm_386_strided_slice_1F
Blstm_386_while_lstm_386_while_cond_687470___redundant_placeholder0F
Blstm_386_while_lstm_386_while_cond_687470___redundant_placeholder1F
Blstm_386_while_lstm_386_while_cond_687470___redundant_placeholder2F
Blstm_386_while_lstm_386_while_cond_687470___redundant_placeholder3
lstm_386_while_identity
?
lstm_386/while/LessLesslstm_386_while_placeholder,lstm_386_while_less_lstm_386_strided_slice_1*
T0*
_output_shapes
: ]
lstm_386/while/IdentityIdentitylstm_386/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_386_while_identity lstm_386/while/Identity:output:0*(
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
E__inference_dense_128_layer_call_and_return_conditional_losses_689428

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
?
D__inference_lstm_385_layer_call_and_return_conditional_losses_684893

inputs'
lstm_cell_112_684811:	d?'
lstm_cell_112_684813:	2?#
lstm_cell_112_684815:	?
identity??%lstm_cell_112/StatefulPartitionedCall?while;
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
%lstm_cell_112/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_112_684811lstm_cell_112_684813lstm_cell_112_684815*
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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_684810n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_112_684811lstm_cell_112_684813lstm_cell_112_684815*
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
while_body_684824*
condR
while_cond_684823*K
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
NoOpNoOp&^lstm_cell_112/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_112/StatefulPartitionedCall%lstm_cell_112/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?"
?
while_body_684824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_112_684848_0:	d?/
while_lstm_cell_112_684850_0:	2?+
while_lstm_cell_112_684852_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_112_684848:	d?-
while_lstm_cell_112_684850:	2?)
while_lstm_cell_112_684852:	???+while/lstm_cell_112/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_112/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_112_684848_0while_lstm_cell_112_684850_0while_lstm_cell_112_684852_0*
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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_684810?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_112/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_112/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_112/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_112/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_112_684848while_lstm_cell_112_684848_0":
while_lstm_cell_112_684850while_lstm_cell_112_684850_0":
while_lstm_cell_112_684852while_lstm_cell_112_684852_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_112/StatefulPartitionedCall+while/lstm_cell_112/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_111_layer_call_fn_689462

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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_684606o
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

?
/__inference_sequential_128_layer_call_fn_686707

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
J__inference_sequential_128_layer_call_and_return_conditional_losses_686506o
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
while_cond_687949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_687949___redundant_placeholder04
0while_while_cond_687949___redundant_placeholder14
0while_while_cond_687949___redundant_placeholder24
0while_while_cond_687949___redundant_placeholder3
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
while_body_688280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_112_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_112_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_112_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_112_matmul_readvariableop_resource:	d?G
4while_lstm_cell_112_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_112_biasadd_readvariableop_resource:	???*while/lstm_cell_112/BiasAdd/ReadVariableOp?)while/lstm_cell_112/MatMul/ReadVariableOp?+while/lstm_cell_112/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_112/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_112_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_112/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_112/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_112/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_112_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_112/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_112/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_112/addAddV2$while/lstm_cell_112/MatMul:product:0&while/lstm_cell_112/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_112/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_112_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_112/BiasAddBiasAddwhile/lstm_cell_112/add:z:02while/lstm_cell_112/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_112/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_112/splitSplit,while/lstm_cell_112/split/split_dim:output:0$while/lstm_cell_112/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_112/SigmoidSigmoid"while/lstm_cell_112/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_1Sigmoid"while/lstm_cell_112/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mulMul!while/lstm_cell_112/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_112/ReluRelu"while/lstm_cell_112/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_1Mulwhile/lstm_cell_112/Sigmoid:y:0&while/lstm_cell_112/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/add_1AddV2while/lstm_cell_112/mul:z:0while/lstm_cell_112/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_112/Sigmoid_2Sigmoid"while/lstm_cell_112/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_112/Relu_1Reluwhile/lstm_cell_112/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_112/mul_2Mul!while/lstm_cell_112/Sigmoid_2:y:0(while/lstm_cell_112/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_112/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_112/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_112/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_112/BiasAdd/ReadVariableOp*^while/lstm_cell_112/MatMul/ReadVariableOp,^while/lstm_cell_112/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_112_biasadd_readvariableop_resource5while_lstm_cell_112_biasadd_readvariableop_resource_0"n
4while_lstm_cell_112_matmul_1_readvariableop_resource6while_lstm_cell_112_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_112_matmul_readvariableop_resource4while_lstm_cell_112_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_112/BiasAdd/ReadVariableOp*while/lstm_cell_112/BiasAdd/ReadVariableOp2V
)while/lstm_cell_112/MatMul/ReadVariableOp)while/lstm_cell_112/MatMul/ReadVariableOp2Z
+while/lstm_cell_112/MatMul_1/ReadVariableOp+while/lstm_cell_112/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_384_input;
 serving_default_lstm_384_input:0?????????=
	dense_1280
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
2dense_128/kernel
:2dense_128/bias
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
0:.	?2lstm_384/lstm_cell_384/kernel
::8	d?2'lstm_384/lstm_cell_384/recurrent_kernel
*:(?2lstm_384/lstm_cell_384/bias
0:.	d?2lstm_385/lstm_cell_385/kernel
::8	2?2'lstm_385/lstm_cell_385/recurrent_kernel
*:(?2lstm_385/lstm_cell_385/bias
/:-2(2lstm_386/lstm_cell_386/kernel
9:7
(2'lstm_386/lstm_cell_386/recurrent_kernel
):'(2lstm_386/lstm_cell_386/bias
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
2Adam/dense_128/kernel/m
!:2Adam/dense_128/bias/m
5:3	?2$Adam/lstm_384/lstm_cell_384/kernel/m
?:=	d?2.Adam/lstm_384/lstm_cell_384/recurrent_kernel/m
/:-?2"Adam/lstm_384/lstm_cell_384/bias/m
5:3	d?2$Adam/lstm_385/lstm_cell_385/kernel/m
?:=	2?2.Adam/lstm_385/lstm_cell_385/recurrent_kernel/m
/:-?2"Adam/lstm_385/lstm_cell_385/bias/m
4:22(2$Adam/lstm_386/lstm_cell_386/kernel/m
>:<
(2.Adam/lstm_386/lstm_cell_386/recurrent_kernel/m
.:,(2"Adam/lstm_386/lstm_cell_386/bias/m
':%
2Adam/dense_128/kernel/v
!:2Adam/dense_128/bias/v
5:3	?2$Adam/lstm_384/lstm_cell_384/kernel/v
?:=	d?2.Adam/lstm_384/lstm_cell_384/recurrent_kernel/v
/:-?2"Adam/lstm_384/lstm_cell_384/bias/v
5:3	d?2$Adam/lstm_385/lstm_cell_385/kernel/v
?:=	2?2.Adam/lstm_385/lstm_cell_385/recurrent_kernel/v
/:-?2"Adam/lstm_385/lstm_cell_385/bias/v
4:22(2$Adam/lstm_386/lstm_cell_386/kernel/v
>:<
(2.Adam/lstm_386/lstm_cell_386/recurrent_kernel/v
.:,(2"Adam/lstm_386/lstm_cell_386/bias/v
?2?
/__inference_sequential_128_layer_call_fn_685942
/__inference_sequential_128_layer_call_fn_686680
/__inference_sequential_128_layer_call_fn_686707
/__inference_sequential_128_layer_call_fn_686558?
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
J__inference_sequential_128_layer_call_and_return_conditional_losses_687134
J__inference_sequential_128_layer_call_and_return_conditional_losses_687561
J__inference_sequential_128_layer_call_and_return_conditional_losses_686588
J__inference_sequential_128_layer_call_and_return_conditional_losses_686618?
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
!__inference__wrapped_model_684393lstm_384_input"?
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
)__inference_lstm_384_layer_call_fn_687572
)__inference_lstm_384_layer_call_fn_687583
)__inference_lstm_384_layer_call_fn_687594
)__inference_lstm_384_layer_call_fn_687605?
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_687748
D__inference_lstm_384_layer_call_and_return_conditional_losses_687891
D__inference_lstm_384_layer_call_and_return_conditional_losses_688034
D__inference_lstm_384_layer_call_and_return_conditional_losses_688177?
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
)__inference_lstm_385_layer_call_fn_688188
)__inference_lstm_385_layer_call_fn_688199
)__inference_lstm_385_layer_call_fn_688210
)__inference_lstm_385_layer_call_fn_688221?
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_688364
D__inference_lstm_385_layer_call_and_return_conditional_losses_688507
D__inference_lstm_385_layer_call_and_return_conditional_losses_688650
D__inference_lstm_385_layer_call_and_return_conditional_losses_688793?
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
)__inference_lstm_386_layer_call_fn_688804
)__inference_lstm_386_layer_call_fn_688815
)__inference_lstm_386_layer_call_fn_688826
)__inference_lstm_386_layer_call_fn_688837?
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_688980
D__inference_lstm_386_layer_call_and_return_conditional_losses_689123
D__inference_lstm_386_layer_call_and_return_conditional_losses_689266
D__inference_lstm_386_layer_call_and_return_conditional_losses_689409?
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
*__inference_dense_128_layer_call_fn_689418?
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
E__inference_dense_128_layer_call_and_return_conditional_losses_689428?
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
$__inference_signature_wrapper_686653lstm_384_input"?
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
.__inference_lstm_cell_111_layer_call_fn_689445
.__inference_lstm_cell_111_layer_call_fn_689462?
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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_689494
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_689526?
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
.__inference_lstm_cell_112_layer_call_fn_689543
.__inference_lstm_cell_112_layer_call_fn_689560?
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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_689592
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_689624?
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
.__inference_lstm_cell_113_layer_call_fn_689641
.__inference_lstm_cell_113_layer_call_fn_689658?
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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_689690
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_689722?
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
!__inference__wrapped_model_684393?-./012345!";?8
1?.
,?)
lstm_384_input?????????
? "5?2
0
	dense_128#? 
	dense_128??????????
E__inference_dense_128_layer_call_and_return_conditional_losses_689428\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_128_layer_call_fn_689418O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_384_layer_call_and_return_conditional_losses_687748?-./O?L
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_687891?-./O?L
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_688034q-./??<
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
D__inference_lstm_384_layer_call_and_return_conditional_losses_688177q-./??<
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
)__inference_lstm_384_layer_call_fn_687572}-./O?L
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
)__inference_lstm_384_layer_call_fn_687583}-./O?L
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
)__inference_lstm_384_layer_call_fn_687594d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_384_layer_call_fn_687605d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_385_layer_call_and_return_conditional_losses_688364?012O?L
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_688507?012O?L
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_688650q012??<
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
D__inference_lstm_385_layer_call_and_return_conditional_losses_688793q012??<
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
)__inference_lstm_385_layer_call_fn_688188}012O?L
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
)__inference_lstm_385_layer_call_fn_688199}012O?L
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
)__inference_lstm_385_layer_call_fn_688210d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_385_layer_call_fn_688221d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_386_layer_call_and_return_conditional_losses_688980}345O?L
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_689123}345O?L
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_689266m345??<
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
D__inference_lstm_386_layer_call_and_return_conditional_losses_689409m345??<
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
)__inference_lstm_386_layer_call_fn_688804p345O?L
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
)__inference_lstm_386_layer_call_fn_688815p345O?L
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
)__inference_lstm_386_layer_call_fn_688826`345??<
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
)__inference_lstm_386_layer_call_fn_688837`345??<
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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_689494?-./??}
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
I__inference_lstm_cell_111_layer_call_and_return_conditional_losses_689526?-./??}
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
.__inference_lstm_cell_111_layer_call_fn_689445?-./??}
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
.__inference_lstm_cell_111_layer_call_fn_689462?-./??}
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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_689592?012??}
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
I__inference_lstm_cell_112_layer_call_and_return_conditional_losses_689624?012??}
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
.__inference_lstm_cell_112_layer_call_fn_689543?012??}
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
.__inference_lstm_cell_112_layer_call_fn_689560?012??}
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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_689690?345??}
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
I__inference_lstm_cell_113_layer_call_and_return_conditional_losses_689722?345??}
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
.__inference_lstm_cell_113_layer_call_fn_689641?345??}
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
.__inference_lstm_cell_113_layer_call_fn_689658?345??}
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
J__inference_sequential_128_layer_call_and_return_conditional_losses_686588y-./012345!"C?@
9?6
,?)
lstm_384_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_128_layer_call_and_return_conditional_losses_686618y-./012345!"C?@
9?6
,?)
lstm_384_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_128_layer_call_and_return_conditional_losses_687134q-./012345!";?8
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
J__inference_sequential_128_layer_call_and_return_conditional_losses_687561q-./012345!";?8
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
/__inference_sequential_128_layer_call_fn_685942l-./012345!"C?@
9?6
,?)
lstm_384_input?????????
p 

 
? "???????????
/__inference_sequential_128_layer_call_fn_686558l-./012345!"C?@
9?6
,?)
lstm_384_input?????????
p

 
? "???????????
/__inference_sequential_128_layer_call_fn_686680d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_128_layer_call_fn_686707d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_686653?-./012345!"M?J
? 
C?@
>
lstm_384_input,?)
lstm_384_input?????????"5?2
0
	dense_128#? 
	dense_128?????????