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
dense_183/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_183/kernel
u
$dense_183/kernel/Read/ReadVariableOpReadVariableOpdense_183/kernel*
_output_shapes

:
*
dtype0
t
dense_183/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_183/bias
m
"dense_183/bias/Read/ReadVariableOpReadVariableOpdense_183/bias*
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
lstm_549/lstm_cell_549/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_549/lstm_cell_549/kernel
?
1lstm_549/lstm_cell_549/kernel/Read/ReadVariableOpReadVariableOplstm_549/lstm_cell_549/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_549/lstm_cell_549/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_549/lstm_cell_549/recurrent_kernel
?
;lstm_549/lstm_cell_549/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_549/lstm_cell_549/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_549/lstm_cell_549/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_549/lstm_cell_549/bias
?
/lstm_549/lstm_cell_549/bias/Read/ReadVariableOpReadVariableOplstm_549/lstm_cell_549/bias*
_output_shapes	
:?*
dtype0
?
lstm_550/lstm_cell_550/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_550/lstm_cell_550/kernel
?
1lstm_550/lstm_cell_550/kernel/Read/ReadVariableOpReadVariableOplstm_550/lstm_cell_550/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_550/lstm_cell_550/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_550/lstm_cell_550/recurrent_kernel
?
;lstm_550/lstm_cell_550/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_550/lstm_cell_550/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_550/lstm_cell_550/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_550/lstm_cell_550/bias
?
/lstm_550/lstm_cell_550/bias/Read/ReadVariableOpReadVariableOplstm_550/lstm_cell_550/bias*
_output_shapes	
:?*
dtype0
?
lstm_551/lstm_cell_551/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_551/lstm_cell_551/kernel
?
1lstm_551/lstm_cell_551/kernel/Read/ReadVariableOpReadVariableOplstm_551/lstm_cell_551/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_551/lstm_cell_551/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_551/lstm_cell_551/recurrent_kernel
?
;lstm_551/lstm_cell_551/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_551/lstm_cell_551/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_551/lstm_cell_551/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_551/lstm_cell_551/bias
?
/lstm_551/lstm_cell_551/bias/Read/ReadVariableOpReadVariableOplstm_551/lstm_cell_551/bias*
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
Adam/dense_183/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_183/kernel/m
?
+Adam/dense_183/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_183/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_183/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_183/bias/m
{
)Adam/dense_183/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_183/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_549/lstm_cell_549/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_549/lstm_cell_549/kernel/m
?
8Adam/lstm_549/lstm_cell_549/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_549/lstm_cell_549/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_549/lstm_cell_549/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_549/lstm_cell_549/recurrent_kernel/m
?
BAdam/lstm_549/lstm_cell_549/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_549/lstm_cell_549/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_549/lstm_cell_549/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_549/lstm_cell_549/bias/m
?
6Adam/lstm_549/lstm_cell_549/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_549/lstm_cell_549/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_550/lstm_cell_550/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_550/lstm_cell_550/kernel/m
?
8Adam/lstm_550/lstm_cell_550/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_550/lstm_cell_550/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_550/lstm_cell_550/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_550/lstm_cell_550/recurrent_kernel/m
?
BAdam/lstm_550/lstm_cell_550/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_550/lstm_cell_550/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_550/lstm_cell_550/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_550/lstm_cell_550/bias/m
?
6Adam/lstm_550/lstm_cell_550/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_550/lstm_cell_550/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_551/lstm_cell_551/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_551/lstm_cell_551/kernel/m
?
8Adam/lstm_551/lstm_cell_551/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_551/lstm_cell_551/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_551/lstm_cell_551/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_551/lstm_cell_551/recurrent_kernel/m
?
BAdam/lstm_551/lstm_cell_551/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_551/lstm_cell_551/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_551/lstm_cell_551/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_551/lstm_cell_551/bias/m
?
6Adam/lstm_551/lstm_cell_551/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_551/lstm_cell_551/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_183/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_183/kernel/v
?
+Adam/dense_183/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_183/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_183/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_183/bias/v
{
)Adam/dense_183/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_183/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_549/lstm_cell_549/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_549/lstm_cell_549/kernel/v
?
8Adam/lstm_549/lstm_cell_549/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_549/lstm_cell_549/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_549/lstm_cell_549/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_549/lstm_cell_549/recurrent_kernel/v
?
BAdam/lstm_549/lstm_cell_549/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_549/lstm_cell_549/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_549/lstm_cell_549/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_549/lstm_cell_549/bias/v
?
6Adam/lstm_549/lstm_cell_549/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_549/lstm_cell_549/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_550/lstm_cell_550/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_550/lstm_cell_550/kernel/v
?
8Adam/lstm_550/lstm_cell_550/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_550/lstm_cell_550/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_550/lstm_cell_550/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_550/lstm_cell_550/recurrent_kernel/v
?
BAdam/lstm_550/lstm_cell_550/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_550/lstm_cell_550/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_550/lstm_cell_550/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_550/lstm_cell_550/bias/v
?
6Adam/lstm_550/lstm_cell_550/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_550/lstm_cell_550/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_551/lstm_cell_551/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_551/lstm_cell_551/kernel/v
?
8Adam/lstm_551/lstm_cell_551/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_551/lstm_cell_551/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_551/lstm_cell_551/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_551/lstm_cell_551/recurrent_kernel/v
?
BAdam/lstm_551/lstm_cell_551/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_551/lstm_cell_551/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_551/lstm_cell_551/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_551/lstm_cell_551/bias/v
?
6Adam/lstm_551/lstm_cell_551/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_551/lstm_cell_551/bias/v*
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
VARIABLE_VALUEdense_183/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_183/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_549/lstm_cell_549/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_549/lstm_cell_549/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_549/lstm_cell_549/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_550/lstm_cell_550/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_550/lstm_cell_550/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_550/lstm_cell_550/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_551/lstm_cell_551/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_551/lstm_cell_551/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_551/lstm_cell_551/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_183/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_183/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_549/lstm_cell_549/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_549/lstm_cell_549/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_549/lstm_cell_549/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_550/lstm_cell_550/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_550/lstm_cell_550/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_550/lstm_cell_550/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_551/lstm_cell_551/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_551/lstm_cell_551/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_551/lstm_cell_551/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_183/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_183/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_549/lstm_cell_549/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_549/lstm_cell_549/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_549/lstm_cell_549/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_550/lstm_cell_550/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_550/lstm_cell_550/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_550/lstm_cell_550/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_551/lstm_cell_551/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_551/lstm_cell_551/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_551/lstm_cell_551/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_549_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_549_inputlstm_549/lstm_cell_549/kernel'lstm_549/lstm_cell_549/recurrent_kernellstm_549/lstm_cell_549/biaslstm_550/lstm_cell_550/kernel'lstm_550/lstm_cell_550/recurrent_kernellstm_550/lstm_cell_550/biaslstm_551/lstm_cell_551/kernel'lstm_551/lstm_cell_551/recurrent_kernellstm_551/lstm_cell_551/biasdense_183/kerneldense_183/bias*
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
%__inference_signature_wrapper_1920221
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_183/kernel/Read/ReadVariableOp"dense_183/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_549/lstm_cell_549/kernel/Read/ReadVariableOp;lstm_549/lstm_cell_549/recurrent_kernel/Read/ReadVariableOp/lstm_549/lstm_cell_549/bias/Read/ReadVariableOp1lstm_550/lstm_cell_550/kernel/Read/ReadVariableOp;lstm_550/lstm_cell_550/recurrent_kernel/Read/ReadVariableOp/lstm_550/lstm_cell_550/bias/Read/ReadVariableOp1lstm_551/lstm_cell_551/kernel/Read/ReadVariableOp;lstm_551/lstm_cell_551/recurrent_kernel/Read/ReadVariableOp/lstm_551/lstm_cell_551/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_183/kernel/m/Read/ReadVariableOp)Adam/dense_183/bias/m/Read/ReadVariableOp8Adam/lstm_549/lstm_cell_549/kernel/m/Read/ReadVariableOpBAdam/lstm_549/lstm_cell_549/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_549/lstm_cell_549/bias/m/Read/ReadVariableOp8Adam/lstm_550/lstm_cell_550/kernel/m/Read/ReadVariableOpBAdam/lstm_550/lstm_cell_550/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_550/lstm_cell_550/bias/m/Read/ReadVariableOp8Adam/lstm_551/lstm_cell_551/kernel/m/Read/ReadVariableOpBAdam/lstm_551/lstm_cell_551/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_551/lstm_cell_551/bias/m/Read/ReadVariableOp+Adam/dense_183/kernel/v/Read/ReadVariableOp)Adam/dense_183/bias/v/Read/ReadVariableOp8Adam/lstm_549/lstm_cell_549/kernel/v/Read/ReadVariableOpBAdam/lstm_549/lstm_cell_549/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_549/lstm_cell_549/bias/v/Read/ReadVariableOp8Adam/lstm_550/lstm_cell_550/kernel/v/Read/ReadVariableOpBAdam/lstm_550/lstm_cell_550/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_550/lstm_cell_550/bias/v/Read/ReadVariableOp8Adam/lstm_551/lstm_cell_551/kernel/v/Read/ReadVariableOpBAdam/lstm_551/lstm_cell_551/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_551/lstm_cell_551/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1923433
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_183/kerneldense_183/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_549/lstm_cell_549/kernel'lstm_549/lstm_cell_549/recurrent_kernellstm_549/lstm_cell_549/biaslstm_550/lstm_cell_550/kernel'lstm_550/lstm_cell_550/recurrent_kernellstm_550/lstm_cell_550/biaslstm_551/lstm_cell_551/kernel'lstm_551/lstm_cell_551/recurrent_kernellstm_551/lstm_cell_551/biastotalcountAdam/dense_183/kernel/mAdam/dense_183/bias/m$Adam/lstm_549/lstm_cell_549/kernel/m.Adam/lstm_549/lstm_cell_549/recurrent_kernel/m"Adam/lstm_549/lstm_cell_549/bias/m$Adam/lstm_550/lstm_cell_550/kernel/m.Adam/lstm_550/lstm_cell_550/recurrent_kernel/m"Adam/lstm_550/lstm_cell_550/bias/m$Adam/lstm_551/lstm_cell_551/kernel/m.Adam/lstm_551/lstm_cell_551/recurrent_kernel/m"Adam/lstm_551/lstm_cell_551/bias/mAdam/dense_183/kernel/vAdam/dense_183/bias/v$Adam/lstm_549/lstm_cell_549/kernel/v.Adam/lstm_549/lstm_cell_549/recurrent_kernel/v"Adam/lstm_549/lstm_cell_549/bias/v$Adam/lstm_550/lstm_cell_550/kernel/v.Adam/lstm_550/lstm_cell_550/recurrent_kernel/v"Adam/lstm_550/lstm_cell_550/bias/v$Adam/lstm_551/lstm_cell_551/kernel/v.Adam/lstm_551/lstm_cell_551/recurrent_kernel/v"Adam/lstm_551/lstm_cell_551/bias/v*4
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
#__inference__traced_restore_1923563??+
?
?
*__inference_lstm_551_layer_call_fn_1922372
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1918811o
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
while_body_1919376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_317_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_317_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_317_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_317_matmul_readvariableop_resource:2(F
4while_lstm_cell_317_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_317_biasadd_readvariableop_resource:(??*while/lstm_cell_317/BiasAdd/ReadVariableOp?)while/lstm_cell_317/MatMul/ReadVariableOp?+while/lstm_cell_317/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_317/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_317_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_317/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_317_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_317/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_317/addAddV2$while/lstm_cell_317/MatMul:product:0&while/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_317_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_317/BiasAddBiasAddwhile/lstm_cell_317/add:z:02while/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_317/splitSplit,while/lstm_cell_317/split/split_dim:output:0$while/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_317/SigmoidSigmoid"while/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_1Sigmoid"while/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mulMul!while/lstm_cell_317/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_317/ReluRelu"while/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_1Mulwhile/lstm_cell_317/Sigmoid:y:0&while/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/add_1AddV2while/lstm_cell_317/mul:z:0while/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_2Sigmoid"while/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_317/Relu_1Reluwhile/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_2Mul!while/lstm_cell_317/Sigmoid_2:y:0(while/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_317/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_317/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_317/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_317/BiasAdd/ReadVariableOp*^while/lstm_cell_317/MatMul/ReadVariableOp,^while/lstm_cell_317/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_317_biasadd_readvariableop_resource5while_lstm_cell_317_biasadd_readvariableop_resource_0"n
4while_lstm_cell_317_matmul_1_readvariableop_resource6while_lstm_cell_317_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_317_matmul_readvariableop_resource4while_lstm_cell_317_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_317/BiasAdd/ReadVariableOp*while/lstm_cell_317/BiasAdd/ReadVariableOp2V
)while/lstm_cell_317/MatMul/ReadVariableOp)while/lstm_cell_317/MatMul/ReadVariableOp2Z
+while/lstm_cell_317/MatMul_1/ReadVariableOp+while/lstm_cell_317/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921745

inputs?
,lstm_cell_315_matmul_readvariableop_resource:	?A
.lstm_cell_315_matmul_1_readvariableop_resource:	d?<
-lstm_cell_315_biasadd_readvariableop_resource:	?
identity??$lstm_cell_315/BiasAdd/ReadVariableOp?#lstm_cell_315/MatMul/ReadVariableOp?%lstm_cell_315/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_315/MatMul/ReadVariableOpReadVariableOp,lstm_cell_315_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_315/MatMulMatMulstrided_slice_2:output:0+lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_315_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_315/MatMul_1MatMulzeros:output:0-lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_315/addAddV2lstm_cell_315/MatMul:product:0 lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_315/BiasAddBiasAddlstm_cell_315/add:z:0,lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_315/splitSplit&lstm_cell_315/split/split_dim:output:0lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_315/SigmoidSigmoidlstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_1Sigmoidlstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_315/mulMullstm_cell_315/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_315/ReluRelulstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_1Mullstm_cell_315/Sigmoid:y:0 lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_315/add_1AddV2lstm_cell_315/mul:z:0lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_2Sigmoidlstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_315/Relu_1Relulstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_2Mullstm_cell_315/Sigmoid_2:y:0"lstm_cell_315/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_315_matmul_readvariableop_resource.lstm_cell_315_matmul_1_readvariableop_resource-lstm_cell_315_biasadd_readvariableop_resource*
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
while_body_1921661*
condR
while_cond_1921660*K
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
NoOpNoOp%^lstm_cell_315/BiasAdd/ReadVariableOp$^lstm_cell_315/MatMul/ReadVariableOp&^lstm_cell_315/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_315/BiasAdd/ReadVariableOp$lstm_cell_315/BiasAdd/ReadVariableOp2J
#lstm_cell_315/MatMul/ReadVariableOp#lstm_cell_315/MatMul/ReadVariableOp2N
%lstm_cell_315/MatMul_1/ReadVariableOp%lstm_cell_315/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_550_layer_call_fn_1921778

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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1919310s
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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1918874

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
while_cond_1918741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1918741___redundant_placeholder05
1while_while_cond_1918741___redundant_placeholder15
1while_while_cond_1918741___redundant_placeholder25
1while_while_cond_1918741___redundant_placeholder3
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921459
inputs_0?
,lstm_cell_315_matmul_readvariableop_resource:	?A
.lstm_cell_315_matmul_1_readvariableop_resource:	d?<
-lstm_cell_315_biasadd_readvariableop_resource:	?
identity??$lstm_cell_315/BiasAdd/ReadVariableOp?#lstm_cell_315/MatMul/ReadVariableOp?%lstm_cell_315/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_315/MatMul/ReadVariableOpReadVariableOp,lstm_cell_315_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_315/MatMulMatMulstrided_slice_2:output:0+lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_315_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_315/MatMul_1MatMulzeros:output:0-lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_315/addAddV2lstm_cell_315/MatMul:product:0 lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_315/BiasAddBiasAddlstm_cell_315/add:z:0,lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_315/splitSplit&lstm_cell_315/split/split_dim:output:0lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_315/SigmoidSigmoidlstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_1Sigmoidlstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_315/mulMullstm_cell_315/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_315/ReluRelulstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_1Mullstm_cell_315/Sigmoid:y:0 lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_315/add_1AddV2lstm_cell_315/mul:z:0lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_2Sigmoidlstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_315/Relu_1Relulstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_2Mullstm_cell_315/Sigmoid_2:y:0"lstm_cell_315/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_315_matmul_readvariableop_resource.lstm_cell_315_matmul_1_readvariableop_resource-lstm_cell_315_biasadd_readvariableop_resource*
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
while_body_1921375*
condR
while_cond_1921374*K
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
NoOpNoOp%^lstm_cell_315/BiasAdd/ReadVariableOp$^lstm_cell_315/MatMul/ReadVariableOp&^lstm_cell_315/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_315/BiasAdd/ReadVariableOp$lstm_cell_315/BiasAdd/ReadVariableOp2J
#lstm_cell_315/MatMul/ReadVariableOp#lstm_cell_315/MatMul/ReadVariableOp2N
%lstm_cell_315/MatMul_1/ReadVariableOp%lstm_cell_315/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1922463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1922463___redundant_placeholder05
1while_while_cond_1922463___redundant_placeholder15
1while_while_cond_1922463___redundant_placeholder25
1while_while_cond_1922463___redundant_placeholder3
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
while_cond_1921517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1921517___redundant_placeholder05
1while_while_cond_1921517___redundant_placeholder15
1while_while_cond_1921517___redundant_placeholder25
1while_while_cond_1921517___redundant_placeholder3
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1923062

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
?C
?

lstm_551_while_body_1921039.
*lstm_551_while_lstm_551_while_loop_counter4
0lstm_551_while_lstm_551_while_maximum_iterations
lstm_551_while_placeholder 
lstm_551_while_placeholder_1 
lstm_551_while_placeholder_2 
lstm_551_while_placeholder_3-
)lstm_551_while_lstm_551_strided_slice_1_0i
elstm_551_while_tensorarrayv2read_tensorlistgetitem_lstm_551_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_551_while_lstm_cell_317_matmul_readvariableop_resource_0:2(Q
?lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource_0:
(L
>lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource_0:(
lstm_551_while_identity
lstm_551_while_identity_1
lstm_551_while_identity_2
lstm_551_while_identity_3
lstm_551_while_identity_4
lstm_551_while_identity_5+
'lstm_551_while_lstm_551_strided_slice_1g
clstm_551_while_tensorarrayv2read_tensorlistgetitem_lstm_551_tensorarrayunstack_tensorlistfromtensorM
;lstm_551_while_lstm_cell_317_matmul_readvariableop_resource:2(O
=lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource:
(J
<lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource:(??3lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp?2lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp?4lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp?
@lstm_551/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_551/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_551_while_tensorarrayv2read_tensorlistgetitem_lstm_551_tensorarrayunstack_tensorlistfromtensor_0lstm_551_while_placeholderIlstm_551/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_551/while/lstm_cell_317/MatMul/ReadVariableOpReadVariableOp=lstm_551_while_lstm_cell_317_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_551/while/lstm_cell_317/MatMulMatMul9lstm_551/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp?lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_551/while/lstm_cell_317/MatMul_1MatMullstm_551_while_placeholder_2<lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_551/while/lstm_cell_317/addAddV2-lstm_551/while/lstm_cell_317/MatMul:product:0/lstm_551/while/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp>lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_551/while/lstm_cell_317/BiasAddBiasAdd$lstm_551/while/lstm_cell_317/add:z:0;lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_551/while/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_551/while/lstm_cell_317/splitSplit5lstm_551/while/lstm_cell_317/split/split_dim:output:0-lstm_551/while/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_551/while/lstm_cell_317/SigmoidSigmoid+lstm_551/while/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_551/while/lstm_cell_317/Sigmoid_1Sigmoid+lstm_551/while/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_551/while/lstm_cell_317/mulMul*lstm_551/while/lstm_cell_317/Sigmoid_1:y:0lstm_551_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_551/while/lstm_cell_317/ReluRelu+lstm_551/while/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_551/while/lstm_cell_317/mul_1Mul(lstm_551/while/lstm_cell_317/Sigmoid:y:0/lstm_551/while/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_551/while/lstm_cell_317/add_1AddV2$lstm_551/while/lstm_cell_317/mul:z:0&lstm_551/while/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_551/while/lstm_cell_317/Sigmoid_2Sigmoid+lstm_551/while/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_551/while/lstm_cell_317/Relu_1Relu&lstm_551/while/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_551/while/lstm_cell_317/mul_2Mul*lstm_551/while/lstm_cell_317/Sigmoid_2:y:01lstm_551/while/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_551/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_551_while_placeholder_1lstm_551_while_placeholder&lstm_551/while/lstm_cell_317/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_551/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_551/while/addAddV2lstm_551_while_placeholderlstm_551/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_551/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_551/while/add_1AddV2*lstm_551_while_lstm_551_while_loop_counterlstm_551/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_551/while/IdentityIdentitylstm_551/while/add_1:z:0^lstm_551/while/NoOp*
T0*
_output_shapes
: ?
lstm_551/while/Identity_1Identity0lstm_551_while_lstm_551_while_maximum_iterations^lstm_551/while/NoOp*
T0*
_output_shapes
: t
lstm_551/while/Identity_2Identitylstm_551/while/add:z:0^lstm_551/while/NoOp*
T0*
_output_shapes
: ?
lstm_551/while/Identity_3IdentityClstm_551/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_551/while/NoOp*
T0*
_output_shapes
: ?
lstm_551/while/Identity_4Identity&lstm_551/while/lstm_cell_317/mul_2:z:0^lstm_551/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_551/while/Identity_5Identity&lstm_551/while/lstm_cell_317/add_1:z:0^lstm_551/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_551/while/NoOpNoOp4^lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp3^lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp5^lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_551_while_identity lstm_551/while/Identity:output:0"?
lstm_551_while_identity_1"lstm_551/while/Identity_1:output:0"?
lstm_551_while_identity_2"lstm_551/while/Identity_2:output:0"?
lstm_551_while_identity_3"lstm_551/while/Identity_3:output:0"?
lstm_551_while_identity_4"lstm_551/while/Identity_4:output:0"?
lstm_551_while_identity_5"lstm_551/while/Identity_5:output:0"T
'lstm_551_while_lstm_551_strided_slice_1)lstm_551_while_lstm_551_strided_slice_1_0"~
<lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource>lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource_0"?
=lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource?lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource_0"|
;lstm_551_while_lstm_cell_317_matmul_readvariableop_resource=lstm_551_while_lstm_cell_317_matmul_readvariableop_resource_0"?
clstm_551_while_tensorarrayv2read_tensorlistgetitem_lstm_551_tensorarrayunstack_tensorlistfromtensorelstm_551_while_tensorarrayv2read_tensorlistgetitem_lstm_551_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp3lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp2h
2lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp2lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp2l
4lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp4lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_183_lstm_551_while_body_1917871L
Hsequential_183_lstm_551_while_sequential_183_lstm_551_while_loop_counterR
Nsequential_183_lstm_551_while_sequential_183_lstm_551_while_maximum_iterations-
)sequential_183_lstm_551_while_placeholder/
+sequential_183_lstm_551_while_placeholder_1/
+sequential_183_lstm_551_while_placeholder_2/
+sequential_183_lstm_551_while_placeholder_3K
Gsequential_183_lstm_551_while_sequential_183_lstm_551_strided_slice_1_0?
?sequential_183_lstm_551_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_551_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_183_lstm_551_while_lstm_cell_317_matmul_readvariableop_resource_0:2(`
Nsequential_183_lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource_0:
([
Msequential_183_lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource_0:(*
&sequential_183_lstm_551_while_identity,
(sequential_183_lstm_551_while_identity_1,
(sequential_183_lstm_551_while_identity_2,
(sequential_183_lstm_551_while_identity_3,
(sequential_183_lstm_551_while_identity_4,
(sequential_183_lstm_551_while_identity_5I
Esequential_183_lstm_551_while_sequential_183_lstm_551_strided_slice_1?
?sequential_183_lstm_551_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_551_tensorarrayunstack_tensorlistfromtensor\
Jsequential_183_lstm_551_while_lstm_cell_317_matmul_readvariableop_resource:2(^
Lsequential_183_lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource:
(Y
Ksequential_183_lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource:(??Bsequential_183/lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp?Asequential_183/lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp?Csequential_183/lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp?
Osequential_183/lstm_551/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_183/lstm_551/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_183_lstm_551_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_551_tensorarrayunstack_tensorlistfromtensor_0)sequential_183_lstm_551_while_placeholderXsequential_183/lstm_551/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_183/lstm_551/while/lstm_cell_317/MatMul/ReadVariableOpReadVariableOpLsequential_183_lstm_551_while_lstm_cell_317_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_183/lstm_551/while/lstm_cell_317/MatMulMatMulHsequential_183/lstm_551/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_183/lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_183/lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOpNsequential_183_lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_183/lstm_551/while/lstm_cell_317/MatMul_1MatMul+sequential_183_lstm_551_while_placeholder_2Ksequential_183/lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_183/lstm_551/while/lstm_cell_317/addAddV2<sequential_183/lstm_551/while/lstm_cell_317/MatMul:product:0>sequential_183/lstm_551/while/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_183/lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOpMsequential_183_lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_183/lstm_551/while/lstm_cell_317/BiasAddBiasAdd3sequential_183/lstm_551/while/lstm_cell_317/add:z:0Jsequential_183/lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_183/lstm_551/while/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_183/lstm_551/while/lstm_cell_317/splitSplitDsequential_183/lstm_551/while/lstm_cell_317/split/split_dim:output:0<sequential_183/lstm_551/while/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_183/lstm_551/while/lstm_cell_317/SigmoidSigmoid:sequential_183/lstm_551/while/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_183/lstm_551/while/lstm_cell_317/Sigmoid_1Sigmoid:sequential_183/lstm_551/while/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_183/lstm_551/while/lstm_cell_317/mulMul9sequential_183/lstm_551/while/lstm_cell_317/Sigmoid_1:y:0+sequential_183_lstm_551_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_183/lstm_551/while/lstm_cell_317/ReluRelu:sequential_183/lstm_551/while/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_183/lstm_551/while/lstm_cell_317/mul_1Mul7sequential_183/lstm_551/while/lstm_cell_317/Sigmoid:y:0>sequential_183/lstm_551/while/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_183/lstm_551/while/lstm_cell_317/add_1AddV23sequential_183/lstm_551/while/lstm_cell_317/mul:z:05sequential_183/lstm_551/while/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_183/lstm_551/while/lstm_cell_317/Sigmoid_2Sigmoid:sequential_183/lstm_551/while/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_183/lstm_551/while/lstm_cell_317/Relu_1Relu5sequential_183/lstm_551/while/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_183/lstm_551/while/lstm_cell_317/mul_2Mul9sequential_183/lstm_551/while/lstm_cell_317/Sigmoid_2:y:0@sequential_183/lstm_551/while/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_183/lstm_551/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_183_lstm_551_while_placeholder_1)sequential_183_lstm_551_while_placeholder5sequential_183/lstm_551/while/lstm_cell_317/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_183/lstm_551/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_183/lstm_551/while/addAddV2)sequential_183_lstm_551_while_placeholder,sequential_183/lstm_551/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_183/lstm_551/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_183/lstm_551/while/add_1AddV2Hsequential_183_lstm_551_while_sequential_183_lstm_551_while_loop_counter.sequential_183/lstm_551/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_183/lstm_551/while/IdentityIdentity'sequential_183/lstm_551/while/add_1:z:0#^sequential_183/lstm_551/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_551/while/Identity_1IdentityNsequential_183_lstm_551_while_sequential_183_lstm_551_while_maximum_iterations#^sequential_183/lstm_551/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_551/while/Identity_2Identity%sequential_183/lstm_551/while/add:z:0#^sequential_183/lstm_551/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_551/while/Identity_3IdentityRsequential_183/lstm_551/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_183/lstm_551/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_551/while/Identity_4Identity5sequential_183/lstm_551/while/lstm_cell_317/mul_2:z:0#^sequential_183/lstm_551/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_183/lstm_551/while/Identity_5Identity5sequential_183/lstm_551/while/lstm_cell_317/add_1:z:0#^sequential_183/lstm_551/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_183/lstm_551/while/NoOpNoOpC^sequential_183/lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOpB^sequential_183/lstm_551/while/lstm_cell_317/MatMul/ReadVariableOpD^sequential_183/lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_183_lstm_551_while_identity/sequential_183/lstm_551/while/Identity:output:0"]
(sequential_183_lstm_551_while_identity_11sequential_183/lstm_551/while/Identity_1:output:0"]
(sequential_183_lstm_551_while_identity_21sequential_183/lstm_551/while/Identity_2:output:0"]
(sequential_183_lstm_551_while_identity_31sequential_183/lstm_551/while/Identity_3:output:0"]
(sequential_183_lstm_551_while_identity_41sequential_183/lstm_551/while/Identity_4:output:0"]
(sequential_183_lstm_551_while_identity_51sequential_183/lstm_551/while/Identity_5:output:0"?
Ksequential_183_lstm_551_while_lstm_cell_317_biasadd_readvariableop_resourceMsequential_183_lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource_0"?
Lsequential_183_lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resourceNsequential_183_lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource_0"?
Jsequential_183_lstm_551_while_lstm_cell_317_matmul_readvariableop_resourceLsequential_183_lstm_551_while_lstm_cell_317_matmul_readvariableop_resource_0"?
Esequential_183_lstm_551_while_sequential_183_lstm_551_strided_slice_1Gsequential_183_lstm_551_while_sequential_183_lstm_551_strided_slice_1_0"?
?sequential_183_lstm_551_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_551_tensorarrayunstack_tensorlistfromtensor?sequential_183_lstm_551_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_551_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_183/lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOpBsequential_183/lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp2?
Asequential_183/lstm_551/while/lstm_cell_317/MatMul/ReadVariableOpAsequential_183/lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp2?
Csequential_183/lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOpCsequential_183/lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_316_layer_call_fn_1923128

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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1918524o
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
?#
?
while_body_1918042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_315_1918066_0:	?0
while_lstm_cell_315_1918068_0:	d?,
while_lstm_cell_315_1918070_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_315_1918066:	?.
while_lstm_cell_315_1918068:	d?*
while_lstm_cell_315_1918070:	???+while/lstm_cell_315/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_315/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_315_1918066_0while_lstm_cell_315_1918068_0while_lstm_cell_315_1918070_0*
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1918028?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_315/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_315/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_315/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_315/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_315_1918066while_lstm_cell_315_1918066_0"<
while_lstm_cell_315_1918068while_lstm_cell_315_1918068_0"<
while_lstm_cell_315_1918070while_lstm_cell_315_1918070_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_315/StatefulPartitionedCall+while/lstm_cell_315/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1919310

inputs?
,lstm_cell_316_matmul_readvariableop_resource:	d?A
.lstm_cell_316_matmul_1_readvariableop_resource:	2?<
-lstm_cell_316_biasadd_readvariableop_resource:	?
identity??$lstm_cell_316/BiasAdd/ReadVariableOp?#lstm_cell_316/MatMul/ReadVariableOp?%lstm_cell_316/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_316/MatMul/ReadVariableOpReadVariableOp,lstm_cell_316_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_316/MatMulMatMulstrided_slice_2:output:0+lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_316_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_316/MatMul_1MatMulzeros:output:0-lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_316/addAddV2lstm_cell_316/MatMul:product:0 lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_316/BiasAddBiasAddlstm_cell_316/add:z:0,lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_316/splitSplit&lstm_cell_316/split/split_dim:output:0lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_316/SigmoidSigmoidlstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_1Sigmoidlstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_316/mulMullstm_cell_316/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_316/ReluRelulstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_1Mullstm_cell_316/Sigmoid:y:0 lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_316/add_1AddV2lstm_cell_316/mul:z:0lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_2Sigmoidlstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_316/Relu_1Relulstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_2Mullstm_cell_316/Sigmoid_2:y:0"lstm_cell_316/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_316_matmul_readvariableop_resource.lstm_cell_316_matmul_1_readvariableop_resource-lstm_cell_316_biasadd_readvariableop_resource*
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
while_body_1919226*
condR
while_cond_1919225*K
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
NoOpNoOp%^lstm_cell_316/BiasAdd/ReadVariableOp$^lstm_cell_316/MatMul/ReadVariableOp&^lstm_cell_316/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_316/BiasAdd/ReadVariableOp$lstm_cell_316/BiasAdd/ReadVariableOp2J
#lstm_cell_316/MatMul/ReadVariableOp#lstm_cell_316/MatMul/ReadVariableOp2N
%lstm_cell_316/MatMul_1/ReadVariableOp%lstm_cell_316/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1921848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_316_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_316_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_316_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_316_matmul_readvariableop_resource:	d?G
4while_lstm_cell_316_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_316_biasadd_readvariableop_resource:	???*while/lstm_cell_316/BiasAdd/ReadVariableOp?)while/lstm_cell_316/MatMul/ReadVariableOp?+while/lstm_cell_316/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_316/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_316_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_316/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_316_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_316/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_316/addAddV2$while/lstm_cell_316/MatMul:product:0&while/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_316_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_316/BiasAddBiasAddwhile/lstm_cell_316/add:z:02while/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_316/splitSplit,while/lstm_cell_316/split/split_dim:output:0$while/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_316/SigmoidSigmoid"while/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_1Sigmoid"while/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mulMul!while/lstm_cell_316/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_316/ReluRelu"while/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_1Mulwhile/lstm_cell_316/Sigmoid:y:0&while/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/add_1AddV2while/lstm_cell_316/mul:z:0while/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_2Sigmoid"while/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_316/Relu_1Reluwhile/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_2Mul!while/lstm_cell_316/Sigmoid_2:y:0(while/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_316/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_316/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_316/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_316/BiasAdd/ReadVariableOp*^while/lstm_cell_316/MatMul/ReadVariableOp,^while/lstm_cell_316/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_316_biasadd_readvariableop_resource5while_lstm_cell_316_biasadd_readvariableop_resource_0"n
4while_lstm_cell_316_matmul_1_readvariableop_resource6while_lstm_cell_316_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_316_matmul_readvariableop_resource4while_lstm_cell_316_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_316/BiasAdd/ReadVariableOp*while/lstm_cell_316/BiasAdd/ReadVariableOp2V
)while/lstm_cell_316/MatMul/ReadVariableOp)while/lstm_cell_316/MatMul/ReadVariableOp2Z
+while/lstm_cell_316/MatMul_1/ReadVariableOp+while/lstm_cell_316/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_183_layer_call_and_return_conditional_losses_1922996

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
while_body_1921661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_315_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_315_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_315_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_315_matmul_readvariableop_resource:	?G
4while_lstm_cell_315_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_315_biasadd_readvariableop_resource:	???*while/lstm_cell_315/BiasAdd/ReadVariableOp?)while/lstm_cell_315/MatMul/ReadVariableOp?+while/lstm_cell_315/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_315/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_315_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_315/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_315_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_315/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_315/addAddV2$while/lstm_cell_315/MatMul:product:0&while/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_315_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_315/BiasAddBiasAddwhile/lstm_cell_315/add:z:02while/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_315/splitSplit,while/lstm_cell_315/split/split_dim:output:0$while/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_315/SigmoidSigmoid"while/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_1Sigmoid"while/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mulMul!while/lstm_cell_315/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_315/ReluRelu"while/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_1Mulwhile/lstm_cell_315/Sigmoid:y:0&while/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/add_1AddV2while/lstm_cell_315/mul:z:0while/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_2Sigmoid"while/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_315/Relu_1Reluwhile/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_2Mul!while/lstm_cell_315/Sigmoid_2:y:0(while/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_315/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_315/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_315/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_315/BiasAdd/ReadVariableOp*^while/lstm_cell_315/MatMul/ReadVariableOp,^while/lstm_cell_315/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_315_biasadd_readvariableop_resource5while_lstm_cell_315_biasadd_readvariableop_resource_0"n
4while_lstm_cell_315_matmul_1_readvariableop_resource6while_lstm_cell_315_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_315_matmul_readvariableop_resource4while_lstm_cell_315_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_315/BiasAdd/ReadVariableOp*while/lstm_cell_315/BiasAdd/ReadVariableOp2V
)while/lstm_cell_315/MatMul/ReadVariableOp)while/lstm_cell_315/MatMul/ReadVariableOp2Z
+while/lstm_cell_315/MatMul_1/ReadVariableOp+while/lstm_cell_315/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1918232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1918232___redundant_placeholder05
1while_while_cond_1918232___redundant_placeholder15
1while_while_cond_1918232___redundant_placeholder25
1while_while_cond_1918232___redundant_placeholder3
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922977

inputs>
,lstm_cell_317_matmul_readvariableop_resource:2(@
.lstm_cell_317_matmul_1_readvariableop_resource:
(;
-lstm_cell_317_biasadd_readvariableop_resource:(
identity??$lstm_cell_317/BiasAdd/ReadVariableOp?#lstm_cell_317/MatMul/ReadVariableOp?%lstm_cell_317/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_317/MatMul/ReadVariableOpReadVariableOp,lstm_cell_317_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_317/MatMulMatMulstrided_slice_2:output:0+lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_317_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_317/MatMul_1MatMulzeros:output:0-lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_317/addAddV2lstm_cell_317/MatMul:product:0 lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_317_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_317/BiasAddBiasAddlstm_cell_317/add:z:0,lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_317/splitSplit&lstm_cell_317/split/split_dim:output:0lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_317/SigmoidSigmoidlstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_1Sigmoidlstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_317/mulMullstm_cell_317/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_317/ReluRelulstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_1Mullstm_cell_317/Sigmoid:y:0 lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_317/add_1AddV2lstm_cell_317/mul:z:0lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_2Sigmoidlstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_317/Relu_1Relulstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_2Mullstm_cell_317/Sigmoid_2:y:0"lstm_cell_317/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_317_matmul_readvariableop_resource.lstm_cell_317_matmul_1_readvariableop_resource-lstm_cell_317_biasadd_readvariableop_resource*
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
while_body_1922893*
condR
while_cond_1922892*K
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
NoOpNoOp%^lstm_cell_317/BiasAdd/ReadVariableOp$^lstm_cell_317/MatMul/ReadVariableOp&^lstm_cell_317/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_317/BiasAdd/ReadVariableOp$lstm_cell_317/BiasAdd/ReadVariableOp2J
#lstm_cell_317/MatMul/ReadVariableOp#lstm_cell_317/MatMul/ReadVariableOp2N
%lstm_cell_317/MatMul_1/ReadVariableOp%lstm_cell_317/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_551_layer_call_and_return_conditional_losses_1919676

inputs>
,lstm_cell_317_matmul_readvariableop_resource:2(@
.lstm_cell_317_matmul_1_readvariableop_resource:
(;
-lstm_cell_317_biasadd_readvariableop_resource:(
identity??$lstm_cell_317/BiasAdd/ReadVariableOp?#lstm_cell_317/MatMul/ReadVariableOp?%lstm_cell_317/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_317/MatMul/ReadVariableOpReadVariableOp,lstm_cell_317_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_317/MatMulMatMulstrided_slice_2:output:0+lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_317_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_317/MatMul_1MatMulzeros:output:0-lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_317/addAddV2lstm_cell_317/MatMul:product:0 lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_317_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_317/BiasAddBiasAddlstm_cell_317/add:z:0,lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_317/splitSplit&lstm_cell_317/split/split_dim:output:0lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_317/SigmoidSigmoidlstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_1Sigmoidlstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_317/mulMullstm_cell_317/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_317/ReluRelulstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_1Mullstm_cell_317/Sigmoid:y:0 lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_317/add_1AddV2lstm_cell_317/mul:z:0lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_2Sigmoidlstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_317/Relu_1Relulstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_2Mullstm_cell_317/Sigmoid_2:y:0"lstm_cell_317/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_317_matmul_readvariableop_resource.lstm_cell_317_matmul_1_readvariableop_resource-lstm_cell_317_biasadd_readvariableop_resource*
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
while_body_1919592*
condR
while_cond_1919591*K
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
NoOpNoOp%^lstm_cell_317/BiasAdd/ReadVariableOp$^lstm_cell_317/MatMul/ReadVariableOp&^lstm_cell_317/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_317/BiasAdd/ReadVariableOp$lstm_cell_317/BiasAdd/ReadVariableOp2J
#lstm_cell_317/MatMul/ReadVariableOp#lstm_cell_317/MatMul/ReadVariableOp2N
%lstm_cell_317/MatMul_1/ReadVariableOp%lstm_cell_317/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921316
inputs_0?
,lstm_cell_315_matmul_readvariableop_resource:	?A
.lstm_cell_315_matmul_1_readvariableop_resource:	d?<
-lstm_cell_315_biasadd_readvariableop_resource:	?
identity??$lstm_cell_315/BiasAdd/ReadVariableOp?#lstm_cell_315/MatMul/ReadVariableOp?%lstm_cell_315/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_315/MatMul/ReadVariableOpReadVariableOp,lstm_cell_315_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_315/MatMulMatMulstrided_slice_2:output:0+lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_315_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_315/MatMul_1MatMulzeros:output:0-lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_315/addAddV2lstm_cell_315/MatMul:product:0 lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_315/BiasAddBiasAddlstm_cell_315/add:z:0,lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_315/splitSplit&lstm_cell_315/split/split_dim:output:0lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_315/SigmoidSigmoidlstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_1Sigmoidlstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_315/mulMullstm_cell_315/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_315/ReluRelulstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_1Mullstm_cell_315/Sigmoid:y:0 lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_315/add_1AddV2lstm_cell_315/mul:z:0lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_2Sigmoidlstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_315/Relu_1Relulstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_2Mullstm_cell_315/Sigmoid_2:y:0"lstm_cell_315/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_315_matmul_readvariableop_resource.lstm_cell_315_matmul_1_readvariableop_resource-lstm_cell_315_biasadd_readvariableop_resource*
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
while_body_1921232*
condR
while_cond_1921231*K
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
NoOpNoOp%^lstm_cell_315/BiasAdd/ReadVariableOp$^lstm_cell_315/MatMul/ReadVariableOp&^lstm_cell_315/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_315/BiasAdd/ReadVariableOp$lstm_cell_315/BiasAdd/ReadVariableOp2J
#lstm_cell_315/MatMul/ReadVariableOp#lstm_cell_315/MatMul/ReadVariableOp2N
%lstm_cell_315/MatMul_1/ReadVariableOp%lstm_cell_315/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*sequential_183_lstm_549_while_cond_1917592L
Hsequential_183_lstm_549_while_sequential_183_lstm_549_while_loop_counterR
Nsequential_183_lstm_549_while_sequential_183_lstm_549_while_maximum_iterations-
)sequential_183_lstm_549_while_placeholder/
+sequential_183_lstm_549_while_placeholder_1/
+sequential_183_lstm_549_while_placeholder_2/
+sequential_183_lstm_549_while_placeholder_3N
Jsequential_183_lstm_549_while_less_sequential_183_lstm_549_strided_slice_1e
asequential_183_lstm_549_while_sequential_183_lstm_549_while_cond_1917592___redundant_placeholder0e
asequential_183_lstm_549_while_sequential_183_lstm_549_while_cond_1917592___redundant_placeholder1e
asequential_183_lstm_549_while_sequential_183_lstm_549_while_cond_1917592___redundant_placeholder2e
asequential_183_lstm_549_while_sequential_183_lstm_549_while_cond_1917592___redundant_placeholder3*
&sequential_183_lstm_549_while_identity
?
"sequential_183/lstm_549/while/LessLess)sequential_183_lstm_549_while_placeholderJsequential_183_lstm_549_while_less_sequential_183_lstm_549_strided_slice_1*
T0*
_output_shapes
: {
&sequential_183/lstm_549/while/IdentityIdentity&sequential_183/lstm_549/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_183_lstm_549_while_identity/sequential_183/lstm_549/while/Identity:output:0*(
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
while_cond_1919756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1919756___redundant_placeholder05
1while_while_cond_1919756___redundant_placeholder15
1while_while_cond_1919756___redundant_placeholder25
1while_while_cond_1919756___redundant_placeholder3
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
while_body_1919922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_315_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_315_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_315_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_315_matmul_readvariableop_resource:	?G
4while_lstm_cell_315_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_315_biasadd_readvariableop_resource:	???*while/lstm_cell_315/BiasAdd/ReadVariableOp?)while/lstm_cell_315/MatMul/ReadVariableOp?+while/lstm_cell_315/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_315/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_315_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_315/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_315_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_315/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_315/addAddV2$while/lstm_cell_315/MatMul:product:0&while/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_315_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_315/BiasAddBiasAddwhile/lstm_cell_315/add:z:02while/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_315/splitSplit,while/lstm_cell_315/split/split_dim:output:0$while/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_315/SigmoidSigmoid"while/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_1Sigmoid"while/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mulMul!while/lstm_cell_315/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_315/ReluRelu"while/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_1Mulwhile/lstm_cell_315/Sigmoid:y:0&while/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/add_1AddV2while/lstm_cell_315/mul:z:0while/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_2Sigmoid"while/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_315/Relu_1Reluwhile/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_2Mul!while/lstm_cell_315/Sigmoid_2:y:0(while/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_315/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_315/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_315/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_315/BiasAdd/ReadVariableOp*^while/lstm_cell_315/MatMul/ReadVariableOp,^while/lstm_cell_315/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_315_biasadd_readvariableop_resource5while_lstm_cell_315_biasadd_readvariableop_resource_0"n
4while_lstm_cell_315_matmul_1_readvariableop_resource6while_lstm_cell_315_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_315_matmul_readvariableop_resource4while_lstm_cell_315_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_315/BiasAdd/ReadVariableOp*while/lstm_cell_315/BiasAdd/ReadVariableOp2V
)while/lstm_cell_315/MatMul/ReadVariableOp)while/lstm_cell_315/MatMul/ReadVariableOp2Z
+while/lstm_cell_315/MatMul_1/ReadVariableOp+while/lstm_cell_315/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?K
?
E__inference_lstm_550_layer_call_and_return_conditional_losses_1922075
inputs_0?
,lstm_cell_316_matmul_readvariableop_resource:	d?A
.lstm_cell_316_matmul_1_readvariableop_resource:	2?<
-lstm_cell_316_biasadd_readvariableop_resource:	?
identity??$lstm_cell_316/BiasAdd/ReadVariableOp?#lstm_cell_316/MatMul/ReadVariableOp?%lstm_cell_316/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_316/MatMul/ReadVariableOpReadVariableOp,lstm_cell_316_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_316/MatMulMatMulstrided_slice_2:output:0+lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_316_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_316/MatMul_1MatMulzeros:output:0-lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_316/addAddV2lstm_cell_316/MatMul:product:0 lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_316/BiasAddBiasAddlstm_cell_316/add:z:0,lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_316/splitSplit&lstm_cell_316/split/split_dim:output:0lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_316/SigmoidSigmoidlstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_1Sigmoidlstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_316/mulMullstm_cell_316/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_316/ReluRelulstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_1Mullstm_cell_316/Sigmoid:y:0 lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_316/add_1AddV2lstm_cell_316/mul:z:0lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_2Sigmoidlstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_316/Relu_1Relulstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_2Mullstm_cell_316/Sigmoid_2:y:0"lstm_cell_316/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_316_matmul_readvariableop_resource.lstm_cell_316_matmul_1_readvariableop_resource-lstm_cell_316_biasadd_readvariableop_resource*
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
while_body_1921991*
condR
while_cond_1921990*K
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
NoOpNoOp%^lstm_cell_316/BiasAdd/ReadVariableOp$^lstm_cell_316/MatMul/ReadVariableOp&^lstm_cell_316/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_316/BiasAdd/ReadVariableOp$lstm_cell_316/BiasAdd/ReadVariableOp2J
#lstm_cell_316/MatMul/ReadVariableOp#lstm_cell_316/MatMul/ReadVariableOp2N
%lstm_cell_316/MatMul_1/ReadVariableOp%lstm_cell_316/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_1921518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_315_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_315_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_315_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_315_matmul_readvariableop_resource:	?G
4while_lstm_cell_315_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_315_biasadd_readvariableop_resource:	???*while/lstm_cell_315/BiasAdd/ReadVariableOp?)while/lstm_cell_315/MatMul/ReadVariableOp?+while/lstm_cell_315/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_315/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_315_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_315/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_315_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_315/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_315/addAddV2$while/lstm_cell_315/MatMul:product:0&while/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_315_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_315/BiasAddBiasAddwhile/lstm_cell_315/add:z:02while/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_315/splitSplit,while/lstm_cell_315/split/split_dim:output:0$while/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_315/SigmoidSigmoid"while/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_1Sigmoid"while/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mulMul!while/lstm_cell_315/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_315/ReluRelu"while/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_1Mulwhile/lstm_cell_315/Sigmoid:y:0&while/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/add_1AddV2while/lstm_cell_315/mul:z:0while/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_2Sigmoid"while/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_315/Relu_1Reluwhile/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_2Mul!while/lstm_cell_315/Sigmoid_2:y:0(while/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_315/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_315/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_315/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_315/BiasAdd/ReadVariableOp*^while/lstm_cell_315/MatMul/ReadVariableOp,^while/lstm_cell_315/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_315_biasadd_readvariableop_resource5while_lstm_cell_315_biasadd_readvariableop_resource_0"n
4while_lstm_cell_315_matmul_1_readvariableop_resource6while_lstm_cell_315_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_315_matmul_readvariableop_resource4while_lstm_cell_315_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_315/BiasAdd/ReadVariableOp*while/lstm_cell_315/BiasAdd/ReadVariableOp2V
)while/lstm_cell_315/MatMul/ReadVariableOp)while/lstm_cell_315/MatMul/ReadVariableOp2Z
+while/lstm_cell_315/MatMul_1/ReadVariableOp+while/lstm_cell_315/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_550_layer_call_fn_1921756
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1918461|
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
*__inference_lstm_549_layer_call_fn_1921162

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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1919160s
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
while_cond_1921990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1921990___redundant_placeholder05
1while_while_cond_1921990___redundant_placeholder15
1while_while_cond_1921990___redundant_placeholder25
1while_while_cond_1921990___redundant_placeholder3
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
*__inference_lstm_551_layer_call_fn_1922394

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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1919460o
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
?
E__inference_lstm_549_layer_call_and_return_conditional_losses_1918111

inputs(
lstm_cell_315_1918029:	?(
lstm_cell_315_1918031:	d?$
lstm_cell_315_1918033:	?
identity??%lstm_cell_315/StatefulPartitionedCall?while;
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
%lstm_cell_315/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_315_1918029lstm_cell_315_1918031lstm_cell_315_1918033*
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1918028n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_315_1918029lstm_cell_315_1918031lstm_cell_315_1918033*
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
while_body_1918042*
condR
while_cond_1918041*K
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
NoOpNoOp&^lstm_cell_315/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_315/StatefulPartitionedCall%lstm_cell_315/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_183_layer_call_fn_1920248

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
K__inference_sequential_183_layer_call_and_return_conditional_losses_1919485o
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
while_cond_1922133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1922133___redundant_placeholder05
1while_while_cond_1922133___redundant_placeholder15
1while_while_cond_1922133___redundant_placeholder25
1while_while_cond_1922133___redundant_placeholder3
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
/__inference_lstm_cell_317_layer_call_fn_1923226

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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1918874o
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
?#
?
while_body_1918233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_315_1918257_0:	?0
while_lstm_cell_315_1918259_0:	d?,
while_lstm_cell_315_1918261_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_315_1918257:	?.
while_lstm_cell_315_1918259:	d?*
while_lstm_cell_315_1918261:	???+while/lstm_cell_315/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_315/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_315_1918257_0while_lstm_cell_315_1918259_0while_lstm_cell_315_1918261_0*
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1918174?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_315/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_315/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_315/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_315/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_315_1918257while_lstm_cell_315_1918257_0"<
while_lstm_cell_315_1918259while_lstm_cell_315_1918259_0"<
while_lstm_cell_315_1918261while_lstm_cell_315_1918261_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_315/StatefulPartitionedCall+while/lstm_cell_315/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_183_lstm_550_while_cond_1917731L
Hsequential_183_lstm_550_while_sequential_183_lstm_550_while_loop_counterR
Nsequential_183_lstm_550_while_sequential_183_lstm_550_while_maximum_iterations-
)sequential_183_lstm_550_while_placeholder/
+sequential_183_lstm_550_while_placeholder_1/
+sequential_183_lstm_550_while_placeholder_2/
+sequential_183_lstm_550_while_placeholder_3N
Jsequential_183_lstm_550_while_less_sequential_183_lstm_550_strided_slice_1e
asequential_183_lstm_550_while_sequential_183_lstm_550_while_cond_1917731___redundant_placeholder0e
asequential_183_lstm_550_while_sequential_183_lstm_550_while_cond_1917731___redundant_placeholder1e
asequential_183_lstm_550_while_sequential_183_lstm_550_while_cond_1917731___redundant_placeholder2e
asequential_183_lstm_550_while_sequential_183_lstm_550_while_cond_1917731___redundant_placeholder3*
&sequential_183_lstm_550_while_identity
?
"sequential_183/lstm_550/while/LessLess)sequential_183_lstm_550_while_placeholderJsequential_183_lstm_550_while_less_sequential_183_lstm_550_strided_slice_1*
T0*
_output_shapes
: {
&sequential_183/lstm_550/while/IdentityIdentity&sequential_183/lstm_550/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_183_lstm_550_while_identity/sequential_183/lstm_550/while/Identity:output:0*(
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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1923258

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

?
lstm_549_while_cond_1920760.
*lstm_549_while_lstm_549_while_loop_counter4
0lstm_549_while_lstm_549_while_maximum_iterations
lstm_549_while_placeholder 
lstm_549_while_placeholder_1 
lstm_549_while_placeholder_2 
lstm_549_while_placeholder_30
,lstm_549_while_less_lstm_549_strided_slice_1G
Clstm_549_while_lstm_549_while_cond_1920760___redundant_placeholder0G
Clstm_549_while_lstm_549_while_cond_1920760___redundant_placeholder1G
Clstm_549_while_lstm_549_while_cond_1920760___redundant_placeholder2G
Clstm_549_while_lstm_549_while_cond_1920760___redundant_placeholder3
lstm_549_while_identity
?
lstm_549/while/LessLesslstm_549_while_placeholder,lstm_549_while_less_lstm_549_strided_slice_1*
T0*
_output_shapes
: ]
lstm_549/while/IdentityIdentitylstm_549/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_549_while_identity lstm_549/while/Identity:output:0*(
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
while_body_1921232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_315_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_315_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_315_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_315_matmul_readvariableop_resource:	?G
4while_lstm_cell_315_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_315_biasadd_readvariableop_resource:	???*while/lstm_cell_315/BiasAdd/ReadVariableOp?)while/lstm_cell_315/MatMul/ReadVariableOp?+while/lstm_cell_315/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_315/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_315_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_315/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_315_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_315/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_315/addAddV2$while/lstm_cell_315/MatMul:product:0&while/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_315_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_315/BiasAddBiasAddwhile/lstm_cell_315/add:z:02while/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_315/splitSplit,while/lstm_cell_315/split/split_dim:output:0$while/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_315/SigmoidSigmoid"while/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_1Sigmoid"while/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mulMul!while/lstm_cell_315/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_315/ReluRelu"while/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_1Mulwhile/lstm_cell_315/Sigmoid:y:0&while/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/add_1AddV2while/lstm_cell_315/mul:z:0while/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_2Sigmoid"while/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_315/Relu_1Reluwhile/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_2Mul!while/lstm_cell_315/Sigmoid_2:y:0(while/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_315/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_315/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_315/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_315/BiasAdd/ReadVariableOp*^while/lstm_cell_315/MatMul/ReadVariableOp,^while/lstm_cell_315/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_315_biasadd_readvariableop_resource5while_lstm_cell_315_biasadd_readvariableop_resource_0"n
4while_lstm_cell_315_matmul_1_readvariableop_resource6while_lstm_cell_315_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_315_matmul_readvariableop_resource4while_lstm_cell_315_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_315/BiasAdd/ReadVariableOp*while/lstm_cell_315/BiasAdd/ReadVariableOp2V
)while/lstm_cell_315/MatMul/ReadVariableOp)while/lstm_cell_315/MatMul/ReadVariableOp2Z
+while/lstm_cell_315/MatMul_1/ReadVariableOp+while/lstm_cell_315/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1922892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1922892___redundant_placeholder05
1while_while_cond_1922892___redundant_placeholder15
1while_while_cond_1922892___redundant_placeholder25
1while_while_cond_1922892___redundant_placeholder3
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
while_cond_1922606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1922606___redundant_placeholder05
1while_while_cond_1922606___redundant_placeholder15
1while_while_cond_1922606___redundant_placeholder25
1while_while_cond_1922606___redundant_placeholder3
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
while_body_1918742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_317_1918766_0:2(/
while_lstm_cell_317_1918768_0:
(+
while_lstm_cell_317_1918770_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_317_1918766:2(-
while_lstm_cell_317_1918768:
()
while_lstm_cell_317_1918770:(??+while/lstm_cell_317/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_317/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_317_1918766_0while_lstm_cell_317_1918768_0while_lstm_cell_317_1918770_0*
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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1918728?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_317/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_317/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_317/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_317/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_317_1918766while_lstm_cell_317_1918766_0"<
while_lstm_cell_317_1918768while_lstm_cell_317_1918768_0"<
while_lstm_cell_317_1918770while_lstm_cell_317_1918770_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_317/StatefulPartitionedCall+while/lstm_cell_317/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1919591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1919591___redundant_placeholder05
1while_while_cond_1919591___redundant_placeholder15
1while_while_cond_1919591___redundant_placeholder25
1while_while_cond_1919591___redundant_placeholder3
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
lstm_549_while_cond_1920333.
*lstm_549_while_lstm_549_while_loop_counter4
0lstm_549_while_lstm_549_while_maximum_iterations
lstm_549_while_placeholder 
lstm_549_while_placeholder_1 
lstm_549_while_placeholder_2 
lstm_549_while_placeholder_30
,lstm_549_while_less_lstm_549_strided_slice_1G
Clstm_549_while_lstm_549_while_cond_1920333___redundant_placeholder0G
Clstm_549_while_lstm_549_while_cond_1920333___redundant_placeholder1G
Clstm_549_while_lstm_549_while_cond_1920333___redundant_placeholder2G
Clstm_549_while_lstm_549_while_cond_1920333___redundant_placeholder3
lstm_549_while_identity
?
lstm_549/while/LessLesslstm_549_while_placeholder,lstm_549_while_less_lstm_549_strided_slice_1*
T0*
_output_shapes
: ]
lstm_549/while/IdentityIdentitylstm_549/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_549_while_identity lstm_549/while/Identity:output:0*(
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
while_cond_1918582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1918582___redundant_placeholder05
1while_while_cond_1918582___redundant_placeholder15
1while_while_cond_1918582___redundant_placeholder25
1while_while_cond_1918582___redundant_placeholder3
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1922218

inputs?
,lstm_cell_316_matmul_readvariableop_resource:	d?A
.lstm_cell_316_matmul_1_readvariableop_resource:	2?<
-lstm_cell_316_biasadd_readvariableop_resource:	?
identity??$lstm_cell_316/BiasAdd/ReadVariableOp?#lstm_cell_316/MatMul/ReadVariableOp?%lstm_cell_316/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_316/MatMul/ReadVariableOpReadVariableOp,lstm_cell_316_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_316/MatMulMatMulstrided_slice_2:output:0+lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_316_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_316/MatMul_1MatMulzeros:output:0-lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_316/addAddV2lstm_cell_316/MatMul:product:0 lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_316/BiasAddBiasAddlstm_cell_316/add:z:0,lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_316/splitSplit&lstm_cell_316/split/split_dim:output:0lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_316/SigmoidSigmoidlstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_1Sigmoidlstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_316/mulMullstm_cell_316/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_316/ReluRelulstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_1Mullstm_cell_316/Sigmoid:y:0 lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_316/add_1AddV2lstm_cell_316/mul:z:0lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_2Sigmoidlstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_316/Relu_1Relulstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_2Mullstm_cell_316/Sigmoid_2:y:0"lstm_cell_316/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_316_matmul_readvariableop_resource.lstm_cell_316_matmul_1_readvariableop_resource-lstm_cell_316_biasadd_readvariableop_resource*
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
while_body_1922134*
condR
while_cond_1922133*K
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
NoOpNoOp%^lstm_cell_316/BiasAdd/ReadVariableOp$^lstm_cell_316/MatMul/ReadVariableOp&^lstm_cell_316/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_316/BiasAdd/ReadVariableOp$lstm_cell_316/BiasAdd/ReadVariableOp2J
#lstm_cell_316/MatMul/ReadVariableOp#lstm_cell_316/MatMul/ReadVariableOp2N
%lstm_cell_316/MatMul_1/ReadVariableOp%lstm_cell_316/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_183_lstm_551_while_cond_1917870L
Hsequential_183_lstm_551_while_sequential_183_lstm_551_while_loop_counterR
Nsequential_183_lstm_551_while_sequential_183_lstm_551_while_maximum_iterations-
)sequential_183_lstm_551_while_placeholder/
+sequential_183_lstm_551_while_placeholder_1/
+sequential_183_lstm_551_while_placeholder_2/
+sequential_183_lstm_551_while_placeholder_3N
Jsequential_183_lstm_551_while_less_sequential_183_lstm_551_strided_slice_1e
asequential_183_lstm_551_while_sequential_183_lstm_551_while_cond_1917870___redundant_placeholder0e
asequential_183_lstm_551_while_sequential_183_lstm_551_while_cond_1917870___redundant_placeholder1e
asequential_183_lstm_551_while_sequential_183_lstm_551_while_cond_1917870___redundant_placeholder2e
asequential_183_lstm_551_while_sequential_183_lstm_551_while_cond_1917870___redundant_placeholder3*
&sequential_183_lstm_551_while_identity
?
"sequential_183/lstm_551/while/LessLess)sequential_183_lstm_551_while_placeholderJsequential_183_lstm_551_while_less_sequential_183_lstm_551_strided_slice_1*
T0*
_output_shapes
: {
&sequential_183/lstm_551/while/IdentityIdentity&sequential_183/lstm_551/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_183_lstm_551_while_identity/sequential_183/lstm_551/while/Identity:output:0*(
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
%__inference_signature_wrapper_1920221
lstm_549_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_549_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1917961o
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
_user_specified_namelstm_549_input
?
?
*__inference_lstm_550_layer_call_fn_1921767
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1918652|
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
"__inference__wrapped_model_1917961
lstm_549_inputW
Dsequential_183_lstm_549_lstm_cell_315_matmul_readvariableop_resource:	?Y
Fsequential_183_lstm_549_lstm_cell_315_matmul_1_readvariableop_resource:	d?T
Esequential_183_lstm_549_lstm_cell_315_biasadd_readvariableop_resource:	?W
Dsequential_183_lstm_550_lstm_cell_316_matmul_readvariableop_resource:	d?Y
Fsequential_183_lstm_550_lstm_cell_316_matmul_1_readvariableop_resource:	2?T
Esequential_183_lstm_550_lstm_cell_316_biasadd_readvariableop_resource:	?V
Dsequential_183_lstm_551_lstm_cell_317_matmul_readvariableop_resource:2(X
Fsequential_183_lstm_551_lstm_cell_317_matmul_1_readvariableop_resource:
(S
Esequential_183_lstm_551_lstm_cell_317_biasadd_readvariableop_resource:(I
7sequential_183_dense_183_matmul_readvariableop_resource:
F
8sequential_183_dense_183_biasadd_readvariableop_resource:
identity??/sequential_183/dense_183/BiasAdd/ReadVariableOp?.sequential_183/dense_183/MatMul/ReadVariableOp?<sequential_183/lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp?;sequential_183/lstm_549/lstm_cell_315/MatMul/ReadVariableOp?=sequential_183/lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp?sequential_183/lstm_549/while?<sequential_183/lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp?;sequential_183/lstm_550/lstm_cell_316/MatMul/ReadVariableOp?=sequential_183/lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp?sequential_183/lstm_550/while?<sequential_183/lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp?;sequential_183/lstm_551/lstm_cell_317/MatMul/ReadVariableOp?=sequential_183/lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp?sequential_183/lstm_551/while[
sequential_183/lstm_549/ShapeShapelstm_549_input*
T0*
_output_shapes
:u
+sequential_183/lstm_549/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_183/lstm_549/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_183/lstm_549/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_183/lstm_549/strided_sliceStridedSlice&sequential_183/lstm_549/Shape:output:04sequential_183/lstm_549/strided_slice/stack:output:06sequential_183/lstm_549/strided_slice/stack_1:output:06sequential_183/lstm_549/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_183/lstm_549/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_183/lstm_549/zeros/packedPack.sequential_183/lstm_549/strided_slice:output:0/sequential_183/lstm_549/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_183/lstm_549/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_183/lstm_549/zerosFill-sequential_183/lstm_549/zeros/packed:output:0,sequential_183/lstm_549/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_183/lstm_549/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_183/lstm_549/zeros_1/packedPack.sequential_183/lstm_549/strided_slice:output:01sequential_183/lstm_549/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_183/lstm_549/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_183/lstm_549/zeros_1Fill/sequential_183/lstm_549/zeros_1/packed:output:0.sequential_183/lstm_549/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_183/lstm_549/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_183/lstm_549/transpose	Transposelstm_549_input/sequential_183/lstm_549/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_183/lstm_549/Shape_1Shape%sequential_183/lstm_549/transpose:y:0*
T0*
_output_shapes
:w
-sequential_183/lstm_549/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_183/lstm_549/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_183/lstm_549/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_183/lstm_549/strided_slice_1StridedSlice(sequential_183/lstm_549/Shape_1:output:06sequential_183/lstm_549/strided_slice_1/stack:output:08sequential_183/lstm_549/strided_slice_1/stack_1:output:08sequential_183/lstm_549/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_183/lstm_549/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_183/lstm_549/TensorArrayV2TensorListReserve<sequential_183/lstm_549/TensorArrayV2/element_shape:output:00sequential_183/lstm_549/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_183/lstm_549/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_183/lstm_549/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_183/lstm_549/transpose:y:0Vsequential_183/lstm_549/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_183/lstm_549/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_183/lstm_549/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_183/lstm_549/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_183/lstm_549/strided_slice_2StridedSlice%sequential_183/lstm_549/transpose:y:06sequential_183/lstm_549/strided_slice_2/stack:output:08sequential_183/lstm_549/strided_slice_2/stack_1:output:08sequential_183/lstm_549/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_183/lstm_549/lstm_cell_315/MatMul/ReadVariableOpReadVariableOpDsequential_183_lstm_549_lstm_cell_315_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_183/lstm_549/lstm_cell_315/MatMulMatMul0sequential_183/lstm_549/strided_slice_2:output:0Csequential_183/lstm_549/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_183/lstm_549/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOpFsequential_183_lstm_549_lstm_cell_315_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_183/lstm_549/lstm_cell_315/MatMul_1MatMul&sequential_183/lstm_549/zeros:output:0Esequential_183/lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_183/lstm_549/lstm_cell_315/addAddV26sequential_183/lstm_549/lstm_cell_315/MatMul:product:08sequential_183/lstm_549/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_183/lstm_549/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOpEsequential_183_lstm_549_lstm_cell_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_183/lstm_549/lstm_cell_315/BiasAddBiasAdd-sequential_183/lstm_549/lstm_cell_315/add:z:0Dsequential_183/lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_183/lstm_549/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_183/lstm_549/lstm_cell_315/splitSplit>sequential_183/lstm_549/lstm_cell_315/split/split_dim:output:06sequential_183/lstm_549/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_183/lstm_549/lstm_cell_315/SigmoidSigmoid4sequential_183/lstm_549/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_183/lstm_549/lstm_cell_315/Sigmoid_1Sigmoid4sequential_183/lstm_549/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_183/lstm_549/lstm_cell_315/mulMul3sequential_183/lstm_549/lstm_cell_315/Sigmoid_1:y:0(sequential_183/lstm_549/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_183/lstm_549/lstm_cell_315/ReluRelu4sequential_183/lstm_549/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_183/lstm_549/lstm_cell_315/mul_1Mul1sequential_183/lstm_549/lstm_cell_315/Sigmoid:y:08sequential_183/lstm_549/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_183/lstm_549/lstm_cell_315/add_1AddV2-sequential_183/lstm_549/lstm_cell_315/mul:z:0/sequential_183/lstm_549/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_183/lstm_549/lstm_cell_315/Sigmoid_2Sigmoid4sequential_183/lstm_549/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_183/lstm_549/lstm_cell_315/Relu_1Relu/sequential_183/lstm_549/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_183/lstm_549/lstm_cell_315/mul_2Mul3sequential_183/lstm_549/lstm_cell_315/Sigmoid_2:y:0:sequential_183/lstm_549/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_183/lstm_549/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_183/lstm_549/TensorArrayV2_1TensorListReserve>sequential_183/lstm_549/TensorArrayV2_1/element_shape:output:00sequential_183/lstm_549/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_183/lstm_549/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_183/lstm_549/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_183/lstm_549/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_183/lstm_549/whileWhile3sequential_183/lstm_549/while/loop_counter:output:09sequential_183/lstm_549/while/maximum_iterations:output:0%sequential_183/lstm_549/time:output:00sequential_183/lstm_549/TensorArrayV2_1:handle:0&sequential_183/lstm_549/zeros:output:0(sequential_183/lstm_549/zeros_1:output:00sequential_183/lstm_549/strided_slice_1:output:0Osequential_183/lstm_549/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_183_lstm_549_lstm_cell_315_matmul_readvariableop_resourceFsequential_183_lstm_549_lstm_cell_315_matmul_1_readvariableop_resourceEsequential_183_lstm_549_lstm_cell_315_biasadd_readvariableop_resource*
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
*sequential_183_lstm_549_while_body_1917593*6
cond.R,
*sequential_183_lstm_549_while_cond_1917592*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_183/lstm_549/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_183/lstm_549/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_183/lstm_549/while:output:3Qsequential_183/lstm_549/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_183/lstm_549/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_183/lstm_549/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_183/lstm_549/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_183/lstm_549/strided_slice_3StridedSliceCsequential_183/lstm_549/TensorArrayV2Stack/TensorListStack:tensor:06sequential_183/lstm_549/strided_slice_3/stack:output:08sequential_183/lstm_549/strided_slice_3/stack_1:output:08sequential_183/lstm_549/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_183/lstm_549/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_183/lstm_549/transpose_1	TransposeCsequential_183/lstm_549/TensorArrayV2Stack/TensorListStack:tensor:01sequential_183/lstm_549/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_183/lstm_549/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_183/lstm_550/ShapeShape'sequential_183/lstm_549/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_183/lstm_550/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_183/lstm_550/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_183/lstm_550/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_183/lstm_550/strided_sliceStridedSlice&sequential_183/lstm_550/Shape:output:04sequential_183/lstm_550/strided_slice/stack:output:06sequential_183/lstm_550/strided_slice/stack_1:output:06sequential_183/lstm_550/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_183/lstm_550/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_183/lstm_550/zeros/packedPack.sequential_183/lstm_550/strided_slice:output:0/sequential_183/lstm_550/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_183/lstm_550/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_183/lstm_550/zerosFill-sequential_183/lstm_550/zeros/packed:output:0,sequential_183/lstm_550/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_183/lstm_550/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_183/lstm_550/zeros_1/packedPack.sequential_183/lstm_550/strided_slice:output:01sequential_183/lstm_550/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_183/lstm_550/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_183/lstm_550/zeros_1Fill/sequential_183/lstm_550/zeros_1/packed:output:0.sequential_183/lstm_550/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_183/lstm_550/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_183/lstm_550/transpose	Transpose'sequential_183/lstm_549/transpose_1:y:0/sequential_183/lstm_550/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_183/lstm_550/Shape_1Shape%sequential_183/lstm_550/transpose:y:0*
T0*
_output_shapes
:w
-sequential_183/lstm_550/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_183/lstm_550/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_183/lstm_550/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_183/lstm_550/strided_slice_1StridedSlice(sequential_183/lstm_550/Shape_1:output:06sequential_183/lstm_550/strided_slice_1/stack:output:08sequential_183/lstm_550/strided_slice_1/stack_1:output:08sequential_183/lstm_550/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_183/lstm_550/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_183/lstm_550/TensorArrayV2TensorListReserve<sequential_183/lstm_550/TensorArrayV2/element_shape:output:00sequential_183/lstm_550/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_183/lstm_550/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_183/lstm_550/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_183/lstm_550/transpose:y:0Vsequential_183/lstm_550/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_183/lstm_550/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_183/lstm_550/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_183/lstm_550/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_183/lstm_550/strided_slice_2StridedSlice%sequential_183/lstm_550/transpose:y:06sequential_183/lstm_550/strided_slice_2/stack:output:08sequential_183/lstm_550/strided_slice_2/stack_1:output:08sequential_183/lstm_550/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_183/lstm_550/lstm_cell_316/MatMul/ReadVariableOpReadVariableOpDsequential_183_lstm_550_lstm_cell_316_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_183/lstm_550/lstm_cell_316/MatMulMatMul0sequential_183/lstm_550/strided_slice_2:output:0Csequential_183/lstm_550/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_183/lstm_550/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOpFsequential_183_lstm_550_lstm_cell_316_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_183/lstm_550/lstm_cell_316/MatMul_1MatMul&sequential_183/lstm_550/zeros:output:0Esequential_183/lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_183/lstm_550/lstm_cell_316/addAddV26sequential_183/lstm_550/lstm_cell_316/MatMul:product:08sequential_183/lstm_550/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_183/lstm_550/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOpEsequential_183_lstm_550_lstm_cell_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_183/lstm_550/lstm_cell_316/BiasAddBiasAdd-sequential_183/lstm_550/lstm_cell_316/add:z:0Dsequential_183/lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_183/lstm_550/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_183/lstm_550/lstm_cell_316/splitSplit>sequential_183/lstm_550/lstm_cell_316/split/split_dim:output:06sequential_183/lstm_550/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_183/lstm_550/lstm_cell_316/SigmoidSigmoid4sequential_183/lstm_550/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_183/lstm_550/lstm_cell_316/Sigmoid_1Sigmoid4sequential_183/lstm_550/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_183/lstm_550/lstm_cell_316/mulMul3sequential_183/lstm_550/lstm_cell_316/Sigmoid_1:y:0(sequential_183/lstm_550/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_183/lstm_550/lstm_cell_316/ReluRelu4sequential_183/lstm_550/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_183/lstm_550/lstm_cell_316/mul_1Mul1sequential_183/lstm_550/lstm_cell_316/Sigmoid:y:08sequential_183/lstm_550/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_183/lstm_550/lstm_cell_316/add_1AddV2-sequential_183/lstm_550/lstm_cell_316/mul:z:0/sequential_183/lstm_550/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_183/lstm_550/lstm_cell_316/Sigmoid_2Sigmoid4sequential_183/lstm_550/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_183/lstm_550/lstm_cell_316/Relu_1Relu/sequential_183/lstm_550/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_183/lstm_550/lstm_cell_316/mul_2Mul3sequential_183/lstm_550/lstm_cell_316/Sigmoid_2:y:0:sequential_183/lstm_550/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_183/lstm_550/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_183/lstm_550/TensorArrayV2_1TensorListReserve>sequential_183/lstm_550/TensorArrayV2_1/element_shape:output:00sequential_183/lstm_550/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_183/lstm_550/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_183/lstm_550/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_183/lstm_550/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_183/lstm_550/whileWhile3sequential_183/lstm_550/while/loop_counter:output:09sequential_183/lstm_550/while/maximum_iterations:output:0%sequential_183/lstm_550/time:output:00sequential_183/lstm_550/TensorArrayV2_1:handle:0&sequential_183/lstm_550/zeros:output:0(sequential_183/lstm_550/zeros_1:output:00sequential_183/lstm_550/strided_slice_1:output:0Osequential_183/lstm_550/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_183_lstm_550_lstm_cell_316_matmul_readvariableop_resourceFsequential_183_lstm_550_lstm_cell_316_matmul_1_readvariableop_resourceEsequential_183_lstm_550_lstm_cell_316_biasadd_readvariableop_resource*
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
*sequential_183_lstm_550_while_body_1917732*6
cond.R,
*sequential_183_lstm_550_while_cond_1917731*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_183/lstm_550/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_183/lstm_550/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_183/lstm_550/while:output:3Qsequential_183/lstm_550/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_183/lstm_550/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_183/lstm_550/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_183/lstm_550/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_183/lstm_550/strided_slice_3StridedSliceCsequential_183/lstm_550/TensorArrayV2Stack/TensorListStack:tensor:06sequential_183/lstm_550/strided_slice_3/stack:output:08sequential_183/lstm_550/strided_slice_3/stack_1:output:08sequential_183/lstm_550/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_183/lstm_550/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_183/lstm_550/transpose_1	TransposeCsequential_183/lstm_550/TensorArrayV2Stack/TensorListStack:tensor:01sequential_183/lstm_550/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_183/lstm_550/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_183/lstm_551/ShapeShape'sequential_183/lstm_550/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_183/lstm_551/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_183/lstm_551/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_183/lstm_551/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_183/lstm_551/strided_sliceStridedSlice&sequential_183/lstm_551/Shape:output:04sequential_183/lstm_551/strided_slice/stack:output:06sequential_183/lstm_551/strided_slice/stack_1:output:06sequential_183/lstm_551/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_183/lstm_551/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_183/lstm_551/zeros/packedPack.sequential_183/lstm_551/strided_slice:output:0/sequential_183/lstm_551/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_183/lstm_551/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_183/lstm_551/zerosFill-sequential_183/lstm_551/zeros/packed:output:0,sequential_183/lstm_551/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_183/lstm_551/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_183/lstm_551/zeros_1/packedPack.sequential_183/lstm_551/strided_slice:output:01sequential_183/lstm_551/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_183/lstm_551/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_183/lstm_551/zeros_1Fill/sequential_183/lstm_551/zeros_1/packed:output:0.sequential_183/lstm_551/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_183/lstm_551/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_183/lstm_551/transpose	Transpose'sequential_183/lstm_550/transpose_1:y:0/sequential_183/lstm_551/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_183/lstm_551/Shape_1Shape%sequential_183/lstm_551/transpose:y:0*
T0*
_output_shapes
:w
-sequential_183/lstm_551/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_183/lstm_551/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_183/lstm_551/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_183/lstm_551/strided_slice_1StridedSlice(sequential_183/lstm_551/Shape_1:output:06sequential_183/lstm_551/strided_slice_1/stack:output:08sequential_183/lstm_551/strided_slice_1/stack_1:output:08sequential_183/lstm_551/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_183/lstm_551/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_183/lstm_551/TensorArrayV2TensorListReserve<sequential_183/lstm_551/TensorArrayV2/element_shape:output:00sequential_183/lstm_551/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_183/lstm_551/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_183/lstm_551/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_183/lstm_551/transpose:y:0Vsequential_183/lstm_551/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_183/lstm_551/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_183/lstm_551/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_183/lstm_551/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_183/lstm_551/strided_slice_2StridedSlice%sequential_183/lstm_551/transpose:y:06sequential_183/lstm_551/strided_slice_2/stack:output:08sequential_183/lstm_551/strided_slice_2/stack_1:output:08sequential_183/lstm_551/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_183/lstm_551/lstm_cell_317/MatMul/ReadVariableOpReadVariableOpDsequential_183_lstm_551_lstm_cell_317_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_183/lstm_551/lstm_cell_317/MatMulMatMul0sequential_183/lstm_551/strided_slice_2:output:0Csequential_183/lstm_551/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_183/lstm_551/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOpFsequential_183_lstm_551_lstm_cell_317_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_183/lstm_551/lstm_cell_317/MatMul_1MatMul&sequential_183/lstm_551/zeros:output:0Esequential_183/lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_183/lstm_551/lstm_cell_317/addAddV26sequential_183/lstm_551/lstm_cell_317/MatMul:product:08sequential_183/lstm_551/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_183/lstm_551/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOpEsequential_183_lstm_551_lstm_cell_317_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_183/lstm_551/lstm_cell_317/BiasAddBiasAdd-sequential_183/lstm_551/lstm_cell_317/add:z:0Dsequential_183/lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_183/lstm_551/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_183/lstm_551/lstm_cell_317/splitSplit>sequential_183/lstm_551/lstm_cell_317/split/split_dim:output:06sequential_183/lstm_551/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_183/lstm_551/lstm_cell_317/SigmoidSigmoid4sequential_183/lstm_551/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_183/lstm_551/lstm_cell_317/Sigmoid_1Sigmoid4sequential_183/lstm_551/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_183/lstm_551/lstm_cell_317/mulMul3sequential_183/lstm_551/lstm_cell_317/Sigmoid_1:y:0(sequential_183/lstm_551/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_183/lstm_551/lstm_cell_317/ReluRelu4sequential_183/lstm_551/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_183/lstm_551/lstm_cell_317/mul_1Mul1sequential_183/lstm_551/lstm_cell_317/Sigmoid:y:08sequential_183/lstm_551/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_183/lstm_551/lstm_cell_317/add_1AddV2-sequential_183/lstm_551/lstm_cell_317/mul:z:0/sequential_183/lstm_551/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_183/lstm_551/lstm_cell_317/Sigmoid_2Sigmoid4sequential_183/lstm_551/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_183/lstm_551/lstm_cell_317/Relu_1Relu/sequential_183/lstm_551/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_183/lstm_551/lstm_cell_317/mul_2Mul3sequential_183/lstm_551/lstm_cell_317/Sigmoid_2:y:0:sequential_183/lstm_551/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_183/lstm_551/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_183/lstm_551/TensorArrayV2_1TensorListReserve>sequential_183/lstm_551/TensorArrayV2_1/element_shape:output:00sequential_183/lstm_551/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_183/lstm_551/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_183/lstm_551/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_183/lstm_551/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_183/lstm_551/whileWhile3sequential_183/lstm_551/while/loop_counter:output:09sequential_183/lstm_551/while/maximum_iterations:output:0%sequential_183/lstm_551/time:output:00sequential_183/lstm_551/TensorArrayV2_1:handle:0&sequential_183/lstm_551/zeros:output:0(sequential_183/lstm_551/zeros_1:output:00sequential_183/lstm_551/strided_slice_1:output:0Osequential_183/lstm_551/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_183_lstm_551_lstm_cell_317_matmul_readvariableop_resourceFsequential_183_lstm_551_lstm_cell_317_matmul_1_readvariableop_resourceEsequential_183_lstm_551_lstm_cell_317_biasadd_readvariableop_resource*
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
*sequential_183_lstm_551_while_body_1917871*6
cond.R,
*sequential_183_lstm_551_while_cond_1917870*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_183/lstm_551/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_183/lstm_551/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_183/lstm_551/while:output:3Qsequential_183/lstm_551/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_183/lstm_551/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_183/lstm_551/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_183/lstm_551/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_183/lstm_551/strided_slice_3StridedSliceCsequential_183/lstm_551/TensorArrayV2Stack/TensorListStack:tensor:06sequential_183/lstm_551/strided_slice_3/stack:output:08sequential_183/lstm_551/strided_slice_3/stack_1:output:08sequential_183/lstm_551/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_183/lstm_551/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_183/lstm_551/transpose_1	TransposeCsequential_183/lstm_551/TensorArrayV2Stack/TensorListStack:tensor:01sequential_183/lstm_551/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_183/lstm_551/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_183/dense_183/MatMul/ReadVariableOpReadVariableOp7sequential_183_dense_183_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_183/dense_183/MatMulMatMul0sequential_183/lstm_551/strided_slice_3:output:06sequential_183/dense_183/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_183/dense_183/BiasAdd/ReadVariableOpReadVariableOp8sequential_183_dense_183_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_183/dense_183/BiasAddBiasAdd)sequential_183/dense_183/MatMul:product:07sequential_183/dense_183/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_183/dense_183/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_183/dense_183/BiasAdd/ReadVariableOp/^sequential_183/dense_183/MatMul/ReadVariableOp=^sequential_183/lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp<^sequential_183/lstm_549/lstm_cell_315/MatMul/ReadVariableOp>^sequential_183/lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp^sequential_183/lstm_549/while=^sequential_183/lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp<^sequential_183/lstm_550/lstm_cell_316/MatMul/ReadVariableOp>^sequential_183/lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp^sequential_183/lstm_550/while=^sequential_183/lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp<^sequential_183/lstm_551/lstm_cell_317/MatMul/ReadVariableOp>^sequential_183/lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp^sequential_183/lstm_551/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_183/dense_183/BiasAdd/ReadVariableOp/sequential_183/dense_183/BiasAdd/ReadVariableOp2`
.sequential_183/dense_183/MatMul/ReadVariableOp.sequential_183/dense_183/MatMul/ReadVariableOp2|
<sequential_183/lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp<sequential_183/lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp2z
;sequential_183/lstm_549/lstm_cell_315/MatMul/ReadVariableOp;sequential_183/lstm_549/lstm_cell_315/MatMul/ReadVariableOp2~
=sequential_183/lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp=sequential_183/lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp2>
sequential_183/lstm_549/whilesequential_183/lstm_549/while2|
<sequential_183/lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp<sequential_183/lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp2z
;sequential_183/lstm_550/lstm_cell_316/MatMul/ReadVariableOp;sequential_183/lstm_550/lstm_cell_316/MatMul/ReadVariableOp2~
=sequential_183/lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp=sequential_183/lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp2>
sequential_183/lstm_550/whilesequential_183/lstm_550/while2|
<sequential_183/lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp<sequential_183/lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp2z
;sequential_183/lstm_551/lstm_cell_317/MatMul/ReadVariableOp;sequential_183/lstm_551/lstm_cell_317/MatMul/ReadVariableOp2~
=sequential_183/lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp=sequential_183/lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp2>
sequential_183/lstm_551/whilesequential_183/lstm_551/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_549_input
?K
?
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922691
inputs_0>
,lstm_cell_317_matmul_readvariableop_resource:2(@
.lstm_cell_317_matmul_1_readvariableop_resource:
(;
-lstm_cell_317_biasadd_readvariableop_resource:(
identity??$lstm_cell_317/BiasAdd/ReadVariableOp?#lstm_cell_317/MatMul/ReadVariableOp?%lstm_cell_317/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_317/MatMul/ReadVariableOpReadVariableOp,lstm_cell_317_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_317/MatMulMatMulstrided_slice_2:output:0+lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_317_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_317/MatMul_1MatMulzeros:output:0-lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_317/addAddV2lstm_cell_317/MatMul:product:0 lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_317_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_317/BiasAddBiasAddlstm_cell_317/add:z:0,lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_317/splitSplit&lstm_cell_317/split/split_dim:output:0lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_317/SigmoidSigmoidlstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_1Sigmoidlstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_317/mulMullstm_cell_317/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_317/ReluRelulstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_1Mullstm_cell_317/Sigmoid:y:0 lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_317/add_1AddV2lstm_cell_317/mul:z:0lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_2Sigmoidlstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_317/Relu_1Relulstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_2Mullstm_cell_317/Sigmoid_2:y:0"lstm_cell_317/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_317_matmul_readvariableop_resource.lstm_cell_317_matmul_1_readvariableop_resource-lstm_cell_317_biasadd_readvariableop_resource*
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
while_body_1922607*
condR
while_cond_1922606*K
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
NoOpNoOp%^lstm_cell_317/BiasAdd/ReadVariableOp$^lstm_cell_317/MatMul/ReadVariableOp&^lstm_cell_317/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_317/BiasAdd/ReadVariableOp$lstm_cell_317/BiasAdd/ReadVariableOp2J
#lstm_cell_317/MatMul/ReadVariableOp#lstm_cell_317/MatMul/ReadVariableOp2N
%lstm_cell_317/MatMul_1/ReadVariableOp%lstm_cell_317/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1922749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1922749___redundant_placeholder05
1while_while_cond_1922749___redundant_placeholder15
1while_while_cond_1922749___redundant_placeholder25
1while_while_cond_1922749___redundant_placeholder3
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
*sequential_183_lstm_550_while_body_1917732L
Hsequential_183_lstm_550_while_sequential_183_lstm_550_while_loop_counterR
Nsequential_183_lstm_550_while_sequential_183_lstm_550_while_maximum_iterations-
)sequential_183_lstm_550_while_placeholder/
+sequential_183_lstm_550_while_placeholder_1/
+sequential_183_lstm_550_while_placeholder_2/
+sequential_183_lstm_550_while_placeholder_3K
Gsequential_183_lstm_550_while_sequential_183_lstm_550_strided_slice_1_0?
?sequential_183_lstm_550_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_550_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_183_lstm_550_while_lstm_cell_316_matmul_readvariableop_resource_0:	d?a
Nsequential_183_lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource_0:	2?\
Msequential_183_lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource_0:	?*
&sequential_183_lstm_550_while_identity,
(sequential_183_lstm_550_while_identity_1,
(sequential_183_lstm_550_while_identity_2,
(sequential_183_lstm_550_while_identity_3,
(sequential_183_lstm_550_while_identity_4,
(sequential_183_lstm_550_while_identity_5I
Esequential_183_lstm_550_while_sequential_183_lstm_550_strided_slice_1?
?sequential_183_lstm_550_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_550_tensorarrayunstack_tensorlistfromtensor]
Jsequential_183_lstm_550_while_lstm_cell_316_matmul_readvariableop_resource:	d?_
Lsequential_183_lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource:	2?Z
Ksequential_183_lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource:	???Bsequential_183/lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp?Asequential_183/lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp?Csequential_183/lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp?
Osequential_183/lstm_550/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_183/lstm_550/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_183_lstm_550_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_550_tensorarrayunstack_tensorlistfromtensor_0)sequential_183_lstm_550_while_placeholderXsequential_183/lstm_550/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_183/lstm_550/while/lstm_cell_316/MatMul/ReadVariableOpReadVariableOpLsequential_183_lstm_550_while_lstm_cell_316_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_183/lstm_550/while/lstm_cell_316/MatMulMatMulHsequential_183/lstm_550/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_183/lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_183/lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOpNsequential_183_lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_183/lstm_550/while/lstm_cell_316/MatMul_1MatMul+sequential_183_lstm_550_while_placeholder_2Ksequential_183/lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_183/lstm_550/while/lstm_cell_316/addAddV2<sequential_183/lstm_550/while/lstm_cell_316/MatMul:product:0>sequential_183/lstm_550/while/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_183/lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOpMsequential_183_lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_183/lstm_550/while/lstm_cell_316/BiasAddBiasAdd3sequential_183/lstm_550/while/lstm_cell_316/add:z:0Jsequential_183/lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_183/lstm_550/while/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_183/lstm_550/while/lstm_cell_316/splitSplitDsequential_183/lstm_550/while/lstm_cell_316/split/split_dim:output:0<sequential_183/lstm_550/while/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_183/lstm_550/while/lstm_cell_316/SigmoidSigmoid:sequential_183/lstm_550/while/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_183/lstm_550/while/lstm_cell_316/Sigmoid_1Sigmoid:sequential_183/lstm_550/while/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_183/lstm_550/while/lstm_cell_316/mulMul9sequential_183/lstm_550/while/lstm_cell_316/Sigmoid_1:y:0+sequential_183_lstm_550_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_183/lstm_550/while/lstm_cell_316/ReluRelu:sequential_183/lstm_550/while/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_183/lstm_550/while/lstm_cell_316/mul_1Mul7sequential_183/lstm_550/while/lstm_cell_316/Sigmoid:y:0>sequential_183/lstm_550/while/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_183/lstm_550/while/lstm_cell_316/add_1AddV23sequential_183/lstm_550/while/lstm_cell_316/mul:z:05sequential_183/lstm_550/while/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_183/lstm_550/while/lstm_cell_316/Sigmoid_2Sigmoid:sequential_183/lstm_550/while/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_183/lstm_550/while/lstm_cell_316/Relu_1Relu5sequential_183/lstm_550/while/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_183/lstm_550/while/lstm_cell_316/mul_2Mul9sequential_183/lstm_550/while/lstm_cell_316/Sigmoid_2:y:0@sequential_183/lstm_550/while/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_183/lstm_550/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_183_lstm_550_while_placeholder_1)sequential_183_lstm_550_while_placeholder5sequential_183/lstm_550/while/lstm_cell_316/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_183/lstm_550/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_183/lstm_550/while/addAddV2)sequential_183_lstm_550_while_placeholder,sequential_183/lstm_550/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_183/lstm_550/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_183/lstm_550/while/add_1AddV2Hsequential_183_lstm_550_while_sequential_183_lstm_550_while_loop_counter.sequential_183/lstm_550/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_183/lstm_550/while/IdentityIdentity'sequential_183/lstm_550/while/add_1:z:0#^sequential_183/lstm_550/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_550/while/Identity_1IdentityNsequential_183_lstm_550_while_sequential_183_lstm_550_while_maximum_iterations#^sequential_183/lstm_550/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_550/while/Identity_2Identity%sequential_183/lstm_550/while/add:z:0#^sequential_183/lstm_550/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_550/while/Identity_3IdentityRsequential_183/lstm_550/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_183/lstm_550/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_550/while/Identity_4Identity5sequential_183/lstm_550/while/lstm_cell_316/mul_2:z:0#^sequential_183/lstm_550/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_183/lstm_550/while/Identity_5Identity5sequential_183/lstm_550/while/lstm_cell_316/add_1:z:0#^sequential_183/lstm_550/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_183/lstm_550/while/NoOpNoOpC^sequential_183/lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOpB^sequential_183/lstm_550/while/lstm_cell_316/MatMul/ReadVariableOpD^sequential_183/lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_183_lstm_550_while_identity/sequential_183/lstm_550/while/Identity:output:0"]
(sequential_183_lstm_550_while_identity_11sequential_183/lstm_550/while/Identity_1:output:0"]
(sequential_183_lstm_550_while_identity_21sequential_183/lstm_550/while/Identity_2:output:0"]
(sequential_183_lstm_550_while_identity_31sequential_183/lstm_550/while/Identity_3:output:0"]
(sequential_183_lstm_550_while_identity_41sequential_183/lstm_550/while/Identity_4:output:0"]
(sequential_183_lstm_550_while_identity_51sequential_183/lstm_550/while/Identity_5:output:0"?
Ksequential_183_lstm_550_while_lstm_cell_316_biasadd_readvariableop_resourceMsequential_183_lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource_0"?
Lsequential_183_lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resourceNsequential_183_lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource_0"?
Jsequential_183_lstm_550_while_lstm_cell_316_matmul_readvariableop_resourceLsequential_183_lstm_550_while_lstm_cell_316_matmul_readvariableop_resource_0"?
Esequential_183_lstm_550_while_sequential_183_lstm_550_strided_slice_1Gsequential_183_lstm_550_while_sequential_183_lstm_550_strided_slice_1_0"?
?sequential_183_lstm_550_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_550_tensorarrayunstack_tensorlistfromtensor?sequential_183_lstm_550_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_550_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_183/lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOpBsequential_183/lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp2?
Asequential_183/lstm_550/while/lstm_cell_316/MatMul/ReadVariableOpAsequential_183/lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp2?
Csequential_183/lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOpCsequential_183/lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_183_layer_call_and_return_conditional_losses_1921129

inputsH
5lstm_549_lstm_cell_315_matmul_readvariableop_resource:	?J
7lstm_549_lstm_cell_315_matmul_1_readvariableop_resource:	d?E
6lstm_549_lstm_cell_315_biasadd_readvariableop_resource:	?H
5lstm_550_lstm_cell_316_matmul_readvariableop_resource:	d?J
7lstm_550_lstm_cell_316_matmul_1_readvariableop_resource:	2?E
6lstm_550_lstm_cell_316_biasadd_readvariableop_resource:	?G
5lstm_551_lstm_cell_317_matmul_readvariableop_resource:2(I
7lstm_551_lstm_cell_317_matmul_1_readvariableop_resource:
(D
6lstm_551_lstm_cell_317_biasadd_readvariableop_resource:(:
(dense_183_matmul_readvariableop_resource:
7
)dense_183_biasadd_readvariableop_resource:
identity?? dense_183/BiasAdd/ReadVariableOp?dense_183/MatMul/ReadVariableOp?-lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp?,lstm_549/lstm_cell_315/MatMul/ReadVariableOp?.lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp?lstm_549/while?-lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp?,lstm_550/lstm_cell_316/MatMul/ReadVariableOp?.lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp?lstm_550/while?-lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp?,lstm_551/lstm_cell_317/MatMul/ReadVariableOp?.lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp?lstm_551/whileD
lstm_549/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_549/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_549/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_549/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_549/strided_sliceStridedSlicelstm_549/Shape:output:0%lstm_549/strided_slice/stack:output:0'lstm_549/strided_slice/stack_1:output:0'lstm_549/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_549/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_549/zeros/packedPacklstm_549/strided_slice:output:0 lstm_549/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_549/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_549/zerosFilllstm_549/zeros/packed:output:0lstm_549/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_549/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_549/zeros_1/packedPacklstm_549/strided_slice:output:0"lstm_549/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_549/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_549/zeros_1Fill lstm_549/zeros_1/packed:output:0lstm_549/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_549/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_549/transpose	Transposeinputs lstm_549/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_549/Shape_1Shapelstm_549/transpose:y:0*
T0*
_output_shapes
:h
lstm_549/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_549/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_549/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_549/strided_slice_1StridedSlicelstm_549/Shape_1:output:0'lstm_549/strided_slice_1/stack:output:0)lstm_549/strided_slice_1/stack_1:output:0)lstm_549/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_549/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_549/TensorArrayV2TensorListReserve-lstm_549/TensorArrayV2/element_shape:output:0!lstm_549/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_549/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_549/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_549/transpose:y:0Glstm_549/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_549/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_549/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_549/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_549/strided_slice_2StridedSlicelstm_549/transpose:y:0'lstm_549/strided_slice_2/stack:output:0)lstm_549/strided_slice_2/stack_1:output:0)lstm_549/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_549/lstm_cell_315/MatMul/ReadVariableOpReadVariableOp5lstm_549_lstm_cell_315_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_549/lstm_cell_315/MatMulMatMul!lstm_549/strided_slice_2:output:04lstm_549/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_549/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp7lstm_549_lstm_cell_315_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_549/lstm_cell_315/MatMul_1MatMullstm_549/zeros:output:06lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_549/lstm_cell_315/addAddV2'lstm_549/lstm_cell_315/MatMul:product:0)lstm_549/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_549/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp6lstm_549_lstm_cell_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_549/lstm_cell_315/BiasAddBiasAddlstm_549/lstm_cell_315/add:z:05lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_549/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_549/lstm_cell_315/splitSplit/lstm_549/lstm_cell_315/split/split_dim:output:0'lstm_549/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_549/lstm_cell_315/SigmoidSigmoid%lstm_549/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_549/lstm_cell_315/Sigmoid_1Sigmoid%lstm_549/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_549/lstm_cell_315/mulMul$lstm_549/lstm_cell_315/Sigmoid_1:y:0lstm_549/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_549/lstm_cell_315/ReluRelu%lstm_549/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_549/lstm_cell_315/mul_1Mul"lstm_549/lstm_cell_315/Sigmoid:y:0)lstm_549/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_549/lstm_cell_315/add_1AddV2lstm_549/lstm_cell_315/mul:z:0 lstm_549/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_549/lstm_cell_315/Sigmoid_2Sigmoid%lstm_549/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_549/lstm_cell_315/Relu_1Relu lstm_549/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_549/lstm_cell_315/mul_2Mul$lstm_549/lstm_cell_315/Sigmoid_2:y:0+lstm_549/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_549/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_549/TensorArrayV2_1TensorListReserve/lstm_549/TensorArrayV2_1/element_shape:output:0!lstm_549/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_549/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_549/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_549/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_549/whileWhile$lstm_549/while/loop_counter:output:0*lstm_549/while/maximum_iterations:output:0lstm_549/time:output:0!lstm_549/TensorArrayV2_1:handle:0lstm_549/zeros:output:0lstm_549/zeros_1:output:0!lstm_549/strided_slice_1:output:0@lstm_549/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_549_lstm_cell_315_matmul_readvariableop_resource7lstm_549_lstm_cell_315_matmul_1_readvariableop_resource6lstm_549_lstm_cell_315_biasadd_readvariableop_resource*
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
lstm_549_while_body_1920761*'
condR
lstm_549_while_cond_1920760*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_549/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_549/TensorArrayV2Stack/TensorListStackTensorListStacklstm_549/while:output:3Blstm_549/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_549/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_549/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_549/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_549/strided_slice_3StridedSlice4lstm_549/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_549/strided_slice_3/stack:output:0)lstm_549/strided_slice_3/stack_1:output:0)lstm_549/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_549/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_549/transpose_1	Transpose4lstm_549/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_549/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_549/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_550/ShapeShapelstm_549/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_550/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_550/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_550/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_550/strided_sliceStridedSlicelstm_550/Shape:output:0%lstm_550/strided_slice/stack:output:0'lstm_550/strided_slice/stack_1:output:0'lstm_550/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_550/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_550/zeros/packedPacklstm_550/strided_slice:output:0 lstm_550/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_550/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_550/zerosFilllstm_550/zeros/packed:output:0lstm_550/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_550/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_550/zeros_1/packedPacklstm_550/strided_slice:output:0"lstm_550/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_550/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_550/zeros_1Fill lstm_550/zeros_1/packed:output:0lstm_550/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_550/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_550/transpose	Transposelstm_549/transpose_1:y:0 lstm_550/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_550/Shape_1Shapelstm_550/transpose:y:0*
T0*
_output_shapes
:h
lstm_550/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_550/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_550/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_550/strided_slice_1StridedSlicelstm_550/Shape_1:output:0'lstm_550/strided_slice_1/stack:output:0)lstm_550/strided_slice_1/stack_1:output:0)lstm_550/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_550/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_550/TensorArrayV2TensorListReserve-lstm_550/TensorArrayV2/element_shape:output:0!lstm_550/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_550/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_550/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_550/transpose:y:0Glstm_550/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_550/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_550/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_550/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_550/strided_slice_2StridedSlicelstm_550/transpose:y:0'lstm_550/strided_slice_2/stack:output:0)lstm_550/strided_slice_2/stack_1:output:0)lstm_550/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_550/lstm_cell_316/MatMul/ReadVariableOpReadVariableOp5lstm_550_lstm_cell_316_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_550/lstm_cell_316/MatMulMatMul!lstm_550/strided_slice_2:output:04lstm_550/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_550/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp7lstm_550_lstm_cell_316_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_550/lstm_cell_316/MatMul_1MatMullstm_550/zeros:output:06lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_550/lstm_cell_316/addAddV2'lstm_550/lstm_cell_316/MatMul:product:0)lstm_550/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_550/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp6lstm_550_lstm_cell_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_550/lstm_cell_316/BiasAddBiasAddlstm_550/lstm_cell_316/add:z:05lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_550/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_550/lstm_cell_316/splitSplit/lstm_550/lstm_cell_316/split/split_dim:output:0'lstm_550/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_550/lstm_cell_316/SigmoidSigmoid%lstm_550/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_550/lstm_cell_316/Sigmoid_1Sigmoid%lstm_550/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_550/lstm_cell_316/mulMul$lstm_550/lstm_cell_316/Sigmoid_1:y:0lstm_550/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_550/lstm_cell_316/ReluRelu%lstm_550/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_550/lstm_cell_316/mul_1Mul"lstm_550/lstm_cell_316/Sigmoid:y:0)lstm_550/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_550/lstm_cell_316/add_1AddV2lstm_550/lstm_cell_316/mul:z:0 lstm_550/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_550/lstm_cell_316/Sigmoid_2Sigmoid%lstm_550/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_550/lstm_cell_316/Relu_1Relu lstm_550/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_550/lstm_cell_316/mul_2Mul$lstm_550/lstm_cell_316/Sigmoid_2:y:0+lstm_550/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_550/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_550/TensorArrayV2_1TensorListReserve/lstm_550/TensorArrayV2_1/element_shape:output:0!lstm_550/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_550/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_550/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_550/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_550/whileWhile$lstm_550/while/loop_counter:output:0*lstm_550/while/maximum_iterations:output:0lstm_550/time:output:0!lstm_550/TensorArrayV2_1:handle:0lstm_550/zeros:output:0lstm_550/zeros_1:output:0!lstm_550/strided_slice_1:output:0@lstm_550/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_550_lstm_cell_316_matmul_readvariableop_resource7lstm_550_lstm_cell_316_matmul_1_readvariableop_resource6lstm_550_lstm_cell_316_biasadd_readvariableop_resource*
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
lstm_550_while_body_1920900*'
condR
lstm_550_while_cond_1920899*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_550/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_550/TensorArrayV2Stack/TensorListStackTensorListStacklstm_550/while:output:3Blstm_550/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_550/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_550/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_550/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_550/strided_slice_3StridedSlice4lstm_550/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_550/strided_slice_3/stack:output:0)lstm_550/strided_slice_3/stack_1:output:0)lstm_550/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_550/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_550/transpose_1	Transpose4lstm_550/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_550/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_550/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_551/ShapeShapelstm_550/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_551/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_551/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_551/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_551/strided_sliceStridedSlicelstm_551/Shape:output:0%lstm_551/strided_slice/stack:output:0'lstm_551/strided_slice/stack_1:output:0'lstm_551/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_551/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_551/zeros/packedPacklstm_551/strided_slice:output:0 lstm_551/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_551/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_551/zerosFilllstm_551/zeros/packed:output:0lstm_551/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_551/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_551/zeros_1/packedPacklstm_551/strided_slice:output:0"lstm_551/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_551/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_551/zeros_1Fill lstm_551/zeros_1/packed:output:0lstm_551/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_551/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_551/transpose	Transposelstm_550/transpose_1:y:0 lstm_551/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_551/Shape_1Shapelstm_551/transpose:y:0*
T0*
_output_shapes
:h
lstm_551/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_551/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_551/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_551/strided_slice_1StridedSlicelstm_551/Shape_1:output:0'lstm_551/strided_slice_1/stack:output:0)lstm_551/strided_slice_1/stack_1:output:0)lstm_551/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_551/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_551/TensorArrayV2TensorListReserve-lstm_551/TensorArrayV2/element_shape:output:0!lstm_551/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_551/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_551/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_551/transpose:y:0Glstm_551/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_551/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_551/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_551/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_551/strided_slice_2StridedSlicelstm_551/transpose:y:0'lstm_551/strided_slice_2/stack:output:0)lstm_551/strided_slice_2/stack_1:output:0)lstm_551/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_551/lstm_cell_317/MatMul/ReadVariableOpReadVariableOp5lstm_551_lstm_cell_317_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_551/lstm_cell_317/MatMulMatMul!lstm_551/strided_slice_2:output:04lstm_551/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_551/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp7lstm_551_lstm_cell_317_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_551/lstm_cell_317/MatMul_1MatMullstm_551/zeros:output:06lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_551/lstm_cell_317/addAddV2'lstm_551/lstm_cell_317/MatMul:product:0)lstm_551/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_551/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp6lstm_551_lstm_cell_317_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_551/lstm_cell_317/BiasAddBiasAddlstm_551/lstm_cell_317/add:z:05lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_551/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_551/lstm_cell_317/splitSplit/lstm_551/lstm_cell_317/split/split_dim:output:0'lstm_551/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_551/lstm_cell_317/SigmoidSigmoid%lstm_551/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_551/lstm_cell_317/Sigmoid_1Sigmoid%lstm_551/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_551/lstm_cell_317/mulMul$lstm_551/lstm_cell_317/Sigmoid_1:y:0lstm_551/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_551/lstm_cell_317/ReluRelu%lstm_551/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_551/lstm_cell_317/mul_1Mul"lstm_551/lstm_cell_317/Sigmoid:y:0)lstm_551/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_551/lstm_cell_317/add_1AddV2lstm_551/lstm_cell_317/mul:z:0 lstm_551/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_551/lstm_cell_317/Sigmoid_2Sigmoid%lstm_551/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_551/lstm_cell_317/Relu_1Relu lstm_551/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_551/lstm_cell_317/mul_2Mul$lstm_551/lstm_cell_317/Sigmoid_2:y:0+lstm_551/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_551/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_551/TensorArrayV2_1TensorListReserve/lstm_551/TensorArrayV2_1/element_shape:output:0!lstm_551/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_551/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_551/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_551/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_551/whileWhile$lstm_551/while/loop_counter:output:0*lstm_551/while/maximum_iterations:output:0lstm_551/time:output:0!lstm_551/TensorArrayV2_1:handle:0lstm_551/zeros:output:0lstm_551/zeros_1:output:0!lstm_551/strided_slice_1:output:0@lstm_551/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_551_lstm_cell_317_matmul_readvariableop_resource7lstm_551_lstm_cell_317_matmul_1_readvariableop_resource6lstm_551_lstm_cell_317_biasadd_readvariableop_resource*
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
lstm_551_while_body_1921039*'
condR
lstm_551_while_cond_1921038*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_551/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_551/TensorArrayV2Stack/TensorListStackTensorListStacklstm_551/while:output:3Blstm_551/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_551/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_551/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_551/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_551/strided_slice_3StridedSlice4lstm_551/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_551/strided_slice_3/stack:output:0)lstm_551/strided_slice_3/stack_1:output:0)lstm_551/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_551/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_551/transpose_1	Transpose4lstm_551/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_551/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_551/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_183/MatMul/ReadVariableOpReadVariableOp(dense_183_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_183/MatMulMatMul!lstm_551/strided_slice_3:output:0'dense_183/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_183/BiasAdd/ReadVariableOpReadVariableOp)dense_183_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_183/BiasAddBiasAdddense_183/MatMul:product:0(dense_183/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_183/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_183/BiasAdd/ReadVariableOp ^dense_183/MatMul/ReadVariableOp.^lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp-^lstm_549/lstm_cell_315/MatMul/ReadVariableOp/^lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp^lstm_549/while.^lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp-^lstm_550/lstm_cell_316/MatMul/ReadVariableOp/^lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp^lstm_550/while.^lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp-^lstm_551/lstm_cell_317/MatMul/ReadVariableOp/^lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp^lstm_551/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_183/BiasAdd/ReadVariableOp dense_183/BiasAdd/ReadVariableOp2B
dense_183/MatMul/ReadVariableOpdense_183/MatMul/ReadVariableOp2^
-lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp-lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp2\
,lstm_549/lstm_cell_315/MatMul/ReadVariableOp,lstm_549/lstm_cell_315/MatMul/ReadVariableOp2`
.lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp.lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp2 
lstm_549/whilelstm_549/while2^
-lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp-lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp2\
,lstm_550/lstm_cell_316/MatMul/ReadVariableOp,lstm_550/lstm_cell_316/MatMul/ReadVariableOp2`
.lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp.lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp2 
lstm_550/whilelstm_550/while2^
-lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp-lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp2\
,lstm_551/lstm_cell_317/MatMul/ReadVariableOp,lstm_551/lstm_cell_317/MatMul/ReadVariableOp2`
.lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp.lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp2 
lstm_551/whilelstm_551/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920702

inputsH
5lstm_549_lstm_cell_315_matmul_readvariableop_resource:	?J
7lstm_549_lstm_cell_315_matmul_1_readvariableop_resource:	d?E
6lstm_549_lstm_cell_315_biasadd_readvariableop_resource:	?H
5lstm_550_lstm_cell_316_matmul_readvariableop_resource:	d?J
7lstm_550_lstm_cell_316_matmul_1_readvariableop_resource:	2?E
6lstm_550_lstm_cell_316_biasadd_readvariableop_resource:	?G
5lstm_551_lstm_cell_317_matmul_readvariableop_resource:2(I
7lstm_551_lstm_cell_317_matmul_1_readvariableop_resource:
(D
6lstm_551_lstm_cell_317_biasadd_readvariableop_resource:(:
(dense_183_matmul_readvariableop_resource:
7
)dense_183_biasadd_readvariableop_resource:
identity?? dense_183/BiasAdd/ReadVariableOp?dense_183/MatMul/ReadVariableOp?-lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp?,lstm_549/lstm_cell_315/MatMul/ReadVariableOp?.lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp?lstm_549/while?-lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp?,lstm_550/lstm_cell_316/MatMul/ReadVariableOp?.lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp?lstm_550/while?-lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp?,lstm_551/lstm_cell_317/MatMul/ReadVariableOp?.lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp?lstm_551/whileD
lstm_549/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_549/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_549/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_549/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_549/strided_sliceStridedSlicelstm_549/Shape:output:0%lstm_549/strided_slice/stack:output:0'lstm_549/strided_slice/stack_1:output:0'lstm_549/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_549/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_549/zeros/packedPacklstm_549/strided_slice:output:0 lstm_549/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_549/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_549/zerosFilllstm_549/zeros/packed:output:0lstm_549/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_549/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_549/zeros_1/packedPacklstm_549/strided_slice:output:0"lstm_549/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_549/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_549/zeros_1Fill lstm_549/zeros_1/packed:output:0lstm_549/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_549/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_549/transpose	Transposeinputs lstm_549/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_549/Shape_1Shapelstm_549/transpose:y:0*
T0*
_output_shapes
:h
lstm_549/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_549/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_549/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_549/strided_slice_1StridedSlicelstm_549/Shape_1:output:0'lstm_549/strided_slice_1/stack:output:0)lstm_549/strided_slice_1/stack_1:output:0)lstm_549/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_549/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_549/TensorArrayV2TensorListReserve-lstm_549/TensorArrayV2/element_shape:output:0!lstm_549/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_549/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_549/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_549/transpose:y:0Glstm_549/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_549/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_549/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_549/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_549/strided_slice_2StridedSlicelstm_549/transpose:y:0'lstm_549/strided_slice_2/stack:output:0)lstm_549/strided_slice_2/stack_1:output:0)lstm_549/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_549/lstm_cell_315/MatMul/ReadVariableOpReadVariableOp5lstm_549_lstm_cell_315_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_549/lstm_cell_315/MatMulMatMul!lstm_549/strided_slice_2:output:04lstm_549/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_549/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp7lstm_549_lstm_cell_315_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_549/lstm_cell_315/MatMul_1MatMullstm_549/zeros:output:06lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_549/lstm_cell_315/addAddV2'lstm_549/lstm_cell_315/MatMul:product:0)lstm_549/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_549/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp6lstm_549_lstm_cell_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_549/lstm_cell_315/BiasAddBiasAddlstm_549/lstm_cell_315/add:z:05lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_549/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_549/lstm_cell_315/splitSplit/lstm_549/lstm_cell_315/split/split_dim:output:0'lstm_549/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_549/lstm_cell_315/SigmoidSigmoid%lstm_549/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_549/lstm_cell_315/Sigmoid_1Sigmoid%lstm_549/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_549/lstm_cell_315/mulMul$lstm_549/lstm_cell_315/Sigmoid_1:y:0lstm_549/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_549/lstm_cell_315/ReluRelu%lstm_549/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_549/lstm_cell_315/mul_1Mul"lstm_549/lstm_cell_315/Sigmoid:y:0)lstm_549/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_549/lstm_cell_315/add_1AddV2lstm_549/lstm_cell_315/mul:z:0 lstm_549/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_549/lstm_cell_315/Sigmoid_2Sigmoid%lstm_549/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_549/lstm_cell_315/Relu_1Relu lstm_549/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_549/lstm_cell_315/mul_2Mul$lstm_549/lstm_cell_315/Sigmoid_2:y:0+lstm_549/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_549/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_549/TensorArrayV2_1TensorListReserve/lstm_549/TensorArrayV2_1/element_shape:output:0!lstm_549/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_549/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_549/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_549/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_549/whileWhile$lstm_549/while/loop_counter:output:0*lstm_549/while/maximum_iterations:output:0lstm_549/time:output:0!lstm_549/TensorArrayV2_1:handle:0lstm_549/zeros:output:0lstm_549/zeros_1:output:0!lstm_549/strided_slice_1:output:0@lstm_549/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_549_lstm_cell_315_matmul_readvariableop_resource7lstm_549_lstm_cell_315_matmul_1_readvariableop_resource6lstm_549_lstm_cell_315_biasadd_readvariableop_resource*
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
lstm_549_while_body_1920334*'
condR
lstm_549_while_cond_1920333*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_549/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_549/TensorArrayV2Stack/TensorListStackTensorListStacklstm_549/while:output:3Blstm_549/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_549/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_549/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_549/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_549/strided_slice_3StridedSlice4lstm_549/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_549/strided_slice_3/stack:output:0)lstm_549/strided_slice_3/stack_1:output:0)lstm_549/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_549/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_549/transpose_1	Transpose4lstm_549/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_549/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_549/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_550/ShapeShapelstm_549/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_550/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_550/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_550/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_550/strided_sliceStridedSlicelstm_550/Shape:output:0%lstm_550/strided_slice/stack:output:0'lstm_550/strided_slice/stack_1:output:0'lstm_550/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_550/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_550/zeros/packedPacklstm_550/strided_slice:output:0 lstm_550/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_550/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_550/zerosFilllstm_550/zeros/packed:output:0lstm_550/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_550/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_550/zeros_1/packedPacklstm_550/strided_slice:output:0"lstm_550/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_550/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_550/zeros_1Fill lstm_550/zeros_1/packed:output:0lstm_550/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_550/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_550/transpose	Transposelstm_549/transpose_1:y:0 lstm_550/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_550/Shape_1Shapelstm_550/transpose:y:0*
T0*
_output_shapes
:h
lstm_550/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_550/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_550/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_550/strided_slice_1StridedSlicelstm_550/Shape_1:output:0'lstm_550/strided_slice_1/stack:output:0)lstm_550/strided_slice_1/stack_1:output:0)lstm_550/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_550/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_550/TensorArrayV2TensorListReserve-lstm_550/TensorArrayV2/element_shape:output:0!lstm_550/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_550/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_550/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_550/transpose:y:0Glstm_550/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_550/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_550/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_550/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_550/strided_slice_2StridedSlicelstm_550/transpose:y:0'lstm_550/strided_slice_2/stack:output:0)lstm_550/strided_slice_2/stack_1:output:0)lstm_550/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_550/lstm_cell_316/MatMul/ReadVariableOpReadVariableOp5lstm_550_lstm_cell_316_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_550/lstm_cell_316/MatMulMatMul!lstm_550/strided_slice_2:output:04lstm_550/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_550/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp7lstm_550_lstm_cell_316_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_550/lstm_cell_316/MatMul_1MatMullstm_550/zeros:output:06lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_550/lstm_cell_316/addAddV2'lstm_550/lstm_cell_316/MatMul:product:0)lstm_550/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_550/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp6lstm_550_lstm_cell_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_550/lstm_cell_316/BiasAddBiasAddlstm_550/lstm_cell_316/add:z:05lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_550/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_550/lstm_cell_316/splitSplit/lstm_550/lstm_cell_316/split/split_dim:output:0'lstm_550/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_550/lstm_cell_316/SigmoidSigmoid%lstm_550/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_550/lstm_cell_316/Sigmoid_1Sigmoid%lstm_550/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_550/lstm_cell_316/mulMul$lstm_550/lstm_cell_316/Sigmoid_1:y:0lstm_550/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_550/lstm_cell_316/ReluRelu%lstm_550/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_550/lstm_cell_316/mul_1Mul"lstm_550/lstm_cell_316/Sigmoid:y:0)lstm_550/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_550/lstm_cell_316/add_1AddV2lstm_550/lstm_cell_316/mul:z:0 lstm_550/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_550/lstm_cell_316/Sigmoid_2Sigmoid%lstm_550/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_550/lstm_cell_316/Relu_1Relu lstm_550/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_550/lstm_cell_316/mul_2Mul$lstm_550/lstm_cell_316/Sigmoid_2:y:0+lstm_550/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_550/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_550/TensorArrayV2_1TensorListReserve/lstm_550/TensorArrayV2_1/element_shape:output:0!lstm_550/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_550/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_550/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_550/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_550/whileWhile$lstm_550/while/loop_counter:output:0*lstm_550/while/maximum_iterations:output:0lstm_550/time:output:0!lstm_550/TensorArrayV2_1:handle:0lstm_550/zeros:output:0lstm_550/zeros_1:output:0!lstm_550/strided_slice_1:output:0@lstm_550/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_550_lstm_cell_316_matmul_readvariableop_resource7lstm_550_lstm_cell_316_matmul_1_readvariableop_resource6lstm_550_lstm_cell_316_biasadd_readvariableop_resource*
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
lstm_550_while_body_1920473*'
condR
lstm_550_while_cond_1920472*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_550/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_550/TensorArrayV2Stack/TensorListStackTensorListStacklstm_550/while:output:3Blstm_550/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_550/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_550/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_550/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_550/strided_slice_3StridedSlice4lstm_550/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_550/strided_slice_3/stack:output:0)lstm_550/strided_slice_3/stack_1:output:0)lstm_550/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_550/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_550/transpose_1	Transpose4lstm_550/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_550/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_550/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_551/ShapeShapelstm_550/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_551/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_551/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_551/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_551/strided_sliceStridedSlicelstm_551/Shape:output:0%lstm_551/strided_slice/stack:output:0'lstm_551/strided_slice/stack_1:output:0'lstm_551/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_551/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_551/zeros/packedPacklstm_551/strided_slice:output:0 lstm_551/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_551/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_551/zerosFilllstm_551/zeros/packed:output:0lstm_551/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_551/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_551/zeros_1/packedPacklstm_551/strided_slice:output:0"lstm_551/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_551/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_551/zeros_1Fill lstm_551/zeros_1/packed:output:0lstm_551/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_551/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_551/transpose	Transposelstm_550/transpose_1:y:0 lstm_551/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_551/Shape_1Shapelstm_551/transpose:y:0*
T0*
_output_shapes
:h
lstm_551/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_551/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_551/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_551/strided_slice_1StridedSlicelstm_551/Shape_1:output:0'lstm_551/strided_slice_1/stack:output:0)lstm_551/strided_slice_1/stack_1:output:0)lstm_551/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_551/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_551/TensorArrayV2TensorListReserve-lstm_551/TensorArrayV2/element_shape:output:0!lstm_551/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_551/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_551/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_551/transpose:y:0Glstm_551/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_551/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_551/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_551/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_551/strided_slice_2StridedSlicelstm_551/transpose:y:0'lstm_551/strided_slice_2/stack:output:0)lstm_551/strided_slice_2/stack_1:output:0)lstm_551/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_551/lstm_cell_317/MatMul/ReadVariableOpReadVariableOp5lstm_551_lstm_cell_317_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_551/lstm_cell_317/MatMulMatMul!lstm_551/strided_slice_2:output:04lstm_551/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_551/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp7lstm_551_lstm_cell_317_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_551/lstm_cell_317/MatMul_1MatMullstm_551/zeros:output:06lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_551/lstm_cell_317/addAddV2'lstm_551/lstm_cell_317/MatMul:product:0)lstm_551/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_551/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp6lstm_551_lstm_cell_317_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_551/lstm_cell_317/BiasAddBiasAddlstm_551/lstm_cell_317/add:z:05lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_551/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_551/lstm_cell_317/splitSplit/lstm_551/lstm_cell_317/split/split_dim:output:0'lstm_551/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_551/lstm_cell_317/SigmoidSigmoid%lstm_551/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_551/lstm_cell_317/Sigmoid_1Sigmoid%lstm_551/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_551/lstm_cell_317/mulMul$lstm_551/lstm_cell_317/Sigmoid_1:y:0lstm_551/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_551/lstm_cell_317/ReluRelu%lstm_551/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_551/lstm_cell_317/mul_1Mul"lstm_551/lstm_cell_317/Sigmoid:y:0)lstm_551/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_551/lstm_cell_317/add_1AddV2lstm_551/lstm_cell_317/mul:z:0 lstm_551/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_551/lstm_cell_317/Sigmoid_2Sigmoid%lstm_551/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_551/lstm_cell_317/Relu_1Relu lstm_551/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_551/lstm_cell_317/mul_2Mul$lstm_551/lstm_cell_317/Sigmoid_2:y:0+lstm_551/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_551/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_551/TensorArrayV2_1TensorListReserve/lstm_551/TensorArrayV2_1/element_shape:output:0!lstm_551/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_551/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_551/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_551/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_551/whileWhile$lstm_551/while/loop_counter:output:0*lstm_551/while/maximum_iterations:output:0lstm_551/time:output:0!lstm_551/TensorArrayV2_1:handle:0lstm_551/zeros:output:0lstm_551/zeros_1:output:0!lstm_551/strided_slice_1:output:0@lstm_551/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_551_lstm_cell_317_matmul_readvariableop_resource7lstm_551_lstm_cell_317_matmul_1_readvariableop_resource6lstm_551_lstm_cell_317_biasadd_readvariableop_resource*
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
lstm_551_while_body_1920612*'
condR
lstm_551_while_cond_1920611*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_551/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_551/TensorArrayV2Stack/TensorListStackTensorListStacklstm_551/while:output:3Blstm_551/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_551/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_551/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_551/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_551/strided_slice_3StridedSlice4lstm_551/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_551/strided_slice_3/stack:output:0)lstm_551/strided_slice_3/stack_1:output:0)lstm_551/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_551/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_551/transpose_1	Transpose4lstm_551/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_551/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_551/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_183/MatMul/ReadVariableOpReadVariableOp(dense_183_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_183/MatMulMatMul!lstm_551/strided_slice_3:output:0'dense_183/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_183/BiasAdd/ReadVariableOpReadVariableOp)dense_183_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_183/BiasAddBiasAdddense_183/MatMul:product:0(dense_183/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_183/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_183/BiasAdd/ReadVariableOp ^dense_183/MatMul/ReadVariableOp.^lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp-^lstm_549/lstm_cell_315/MatMul/ReadVariableOp/^lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp^lstm_549/while.^lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp-^lstm_550/lstm_cell_316/MatMul/ReadVariableOp/^lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp^lstm_550/while.^lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp-^lstm_551/lstm_cell_317/MatMul/ReadVariableOp/^lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp^lstm_551/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_183/BiasAdd/ReadVariableOp dense_183/BiasAdd/ReadVariableOp2B
dense_183/MatMul/ReadVariableOpdense_183/MatMul/ReadVariableOp2^
-lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp-lstm_549/lstm_cell_315/BiasAdd/ReadVariableOp2\
,lstm_549/lstm_cell_315/MatMul/ReadVariableOp,lstm_549/lstm_cell_315/MatMul/ReadVariableOp2`
.lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp.lstm_549/lstm_cell_315/MatMul_1/ReadVariableOp2 
lstm_549/whilelstm_549/while2^
-lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp-lstm_550/lstm_cell_316/BiasAdd/ReadVariableOp2\
,lstm_550/lstm_cell_316/MatMul/ReadVariableOp,lstm_550/lstm_cell_316/MatMul/ReadVariableOp2`
.lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp.lstm_550/lstm_cell_316/MatMul_1/ReadVariableOp2 
lstm_550/whilelstm_550/while2^
-lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp-lstm_551/lstm_cell_317/BiasAdd/ReadVariableOp2\
,lstm_551/lstm_cell_317/MatMul/ReadVariableOp,lstm_551/lstm_cell_317/MatMul/ReadVariableOp2`
.lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp.lstm_551/lstm_cell_317/MatMul_1/ReadVariableOp2 
lstm_551/whilelstm_551/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_549_layer_call_and_return_conditional_losses_1920006

inputs?
,lstm_cell_315_matmul_readvariableop_resource:	?A
.lstm_cell_315_matmul_1_readvariableop_resource:	d?<
-lstm_cell_315_biasadd_readvariableop_resource:	?
identity??$lstm_cell_315/BiasAdd/ReadVariableOp?#lstm_cell_315/MatMul/ReadVariableOp?%lstm_cell_315/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_315/MatMul/ReadVariableOpReadVariableOp,lstm_cell_315_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_315/MatMulMatMulstrided_slice_2:output:0+lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_315_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_315/MatMul_1MatMulzeros:output:0-lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_315/addAddV2lstm_cell_315/MatMul:product:0 lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_315/BiasAddBiasAddlstm_cell_315/add:z:0,lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_315/splitSplit&lstm_cell_315/split/split_dim:output:0lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_315/SigmoidSigmoidlstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_1Sigmoidlstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_315/mulMullstm_cell_315/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_315/ReluRelulstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_1Mullstm_cell_315/Sigmoid:y:0 lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_315/add_1AddV2lstm_cell_315/mul:z:0lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_2Sigmoidlstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_315/Relu_1Relulstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_2Mullstm_cell_315/Sigmoid_2:y:0"lstm_cell_315/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_315_matmul_readvariableop_resource.lstm_cell_315_matmul_1_readvariableop_resource-lstm_cell_315_biasadd_readvariableop_resource*
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
while_body_1919922*
condR
while_cond_1919921*K
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
NoOpNoOp%^lstm_cell_315/BiasAdd/ReadVariableOp$^lstm_cell_315/MatMul/ReadVariableOp&^lstm_cell_315/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_315/BiasAdd/ReadVariableOp$lstm_cell_315/BiasAdd/ReadVariableOp2J
#lstm_cell_315/MatMul/ReadVariableOp#lstm_cell_315/MatMul/ReadVariableOp2N
%lstm_cell_315/MatMul_1/ReadVariableOp%lstm_cell_315/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_183_layer_call_and_return_conditional_losses_1919485

inputs#
lstm_549_1919161:	?#
lstm_549_1919163:	d?
lstm_549_1919165:	?#
lstm_550_1919311:	d?#
lstm_550_1919313:	2?
lstm_550_1919315:	?"
lstm_551_1919461:2("
lstm_551_1919463:
(
lstm_551_1919465:(#
dense_183_1919479:

dense_183_1919481:
identity??!dense_183/StatefulPartitionedCall? lstm_549/StatefulPartitionedCall? lstm_550/StatefulPartitionedCall? lstm_551/StatefulPartitionedCall?
 lstm_549/StatefulPartitionedCallStatefulPartitionedCallinputslstm_549_1919161lstm_549_1919163lstm_549_1919165*
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1919160?
 lstm_550/StatefulPartitionedCallStatefulPartitionedCall)lstm_549/StatefulPartitionedCall:output:0lstm_550_1919311lstm_550_1919313lstm_550_1919315*
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1919310?
 lstm_551/StatefulPartitionedCallStatefulPartitionedCall)lstm_550/StatefulPartitionedCall:output:0lstm_551_1919461lstm_551_1919463lstm_551_1919465*
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1919460?
!dense_183/StatefulPartitionedCallStatefulPartitionedCall)lstm_551/StatefulPartitionedCall:output:0dense_183_1919479dense_183_1919481*
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
F__inference_dense_183_layer_call_and_return_conditional_losses_1919478y
IdentityIdentity*dense_183/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_183/StatefulPartitionedCall!^lstm_549/StatefulPartitionedCall!^lstm_550/StatefulPartitionedCall!^lstm_551/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_183/StatefulPartitionedCall!dense_183/StatefulPartitionedCall2D
 lstm_549/StatefulPartitionedCall lstm_549/StatefulPartitionedCall2D
 lstm_550/StatefulPartitionedCall lstm_550/StatefulPartitionedCall2D
 lstm_551/StatefulPartitionedCall lstm_551/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1921991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_316_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_316_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_316_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_316_matmul_readvariableop_resource:	d?G
4while_lstm_cell_316_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_316_biasadd_readvariableop_resource:	???*while/lstm_cell_316/BiasAdd/ReadVariableOp?)while/lstm_cell_316/MatMul/ReadVariableOp?+while/lstm_cell_316/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_316/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_316_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_316/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_316_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_316/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_316/addAddV2$while/lstm_cell_316/MatMul:product:0&while/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_316_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_316/BiasAddBiasAddwhile/lstm_cell_316/add:z:02while/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_316/splitSplit,while/lstm_cell_316/split/split_dim:output:0$while/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_316/SigmoidSigmoid"while/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_1Sigmoid"while/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mulMul!while/lstm_cell_316/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_316/ReluRelu"while/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_1Mulwhile/lstm_cell_316/Sigmoid:y:0&while/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/add_1AddV2while/lstm_cell_316/mul:z:0while/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_2Sigmoid"while/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_316/Relu_1Reluwhile/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_2Mul!while/lstm_cell_316/Sigmoid_2:y:0(while/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_316/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_316/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_316/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_316/BiasAdd/ReadVariableOp*^while/lstm_cell_316/MatMul/ReadVariableOp,^while/lstm_cell_316/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_316_biasadd_readvariableop_resource5while_lstm_cell_316_biasadd_readvariableop_resource_0"n
4while_lstm_cell_316_matmul_1_readvariableop_resource6while_lstm_cell_316_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_316_matmul_readvariableop_resource4while_lstm_cell_316_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_316/BiasAdd/ReadVariableOp*while/lstm_cell_316/BiasAdd/ReadVariableOp2V
)while/lstm_cell_316/MatMul/ReadVariableOp)while/lstm_cell_316/MatMul/ReadVariableOp2Z
+while/lstm_cell_316/MatMul_1/ReadVariableOp+while/lstm_cell_316/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1921660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1921660___redundant_placeholder05
1while_while_cond_1921660___redundant_placeholder15
1while_while_cond_1921660___redundant_placeholder25
1while_while_cond_1921660___redundant_placeholder3
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
while_body_1922893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_317_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_317_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_317_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_317_matmul_readvariableop_resource:2(F
4while_lstm_cell_317_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_317_biasadd_readvariableop_resource:(??*while/lstm_cell_317/BiasAdd/ReadVariableOp?)while/lstm_cell_317/MatMul/ReadVariableOp?+while/lstm_cell_317/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_317/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_317_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_317/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_317_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_317/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_317/addAddV2$while/lstm_cell_317/MatMul:product:0&while/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_317_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_317/BiasAddBiasAddwhile/lstm_cell_317/add:z:02while/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_317/splitSplit,while/lstm_cell_317/split/split_dim:output:0$while/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_317/SigmoidSigmoid"while/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_1Sigmoid"while/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mulMul!while/lstm_cell_317/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_317/ReluRelu"while/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_1Mulwhile/lstm_cell_317/Sigmoid:y:0&while/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/add_1AddV2while/lstm_cell_317/mul:z:0while/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_2Sigmoid"while/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_317/Relu_1Reluwhile/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_2Mul!while/lstm_cell_317/Sigmoid_2:y:0(while/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_317/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_317/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_317/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_317/BiasAdd/ReadVariableOp*^while/lstm_cell_317/MatMul/ReadVariableOp,^while/lstm_cell_317/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_317_biasadd_readvariableop_resource5while_lstm_cell_317_biasadd_readvariableop_resource_0"n
4while_lstm_cell_317_matmul_1_readvariableop_resource6while_lstm_cell_317_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_317_matmul_readvariableop_resource4while_lstm_cell_317_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_317/BiasAdd/ReadVariableOp*while/lstm_cell_317/BiasAdd/ReadVariableOp2V
)while/lstm_cell_317/MatMul/ReadVariableOp)while/lstm_cell_317/MatMul/ReadVariableOp2Z
+while/lstm_cell_317/MatMul_1/ReadVariableOp+while/lstm_cell_317/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1919921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1919921___redundant_placeholder05
1while_while_cond_1919921___redundant_placeholder15
1while_while_cond_1919921___redundant_placeholder25
1while_while_cond_1919921___redundant_placeholder3
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

lstm_549_while_body_1920761.
*lstm_549_while_lstm_549_while_loop_counter4
0lstm_549_while_lstm_549_while_maximum_iterations
lstm_549_while_placeholder 
lstm_549_while_placeholder_1 
lstm_549_while_placeholder_2 
lstm_549_while_placeholder_3-
)lstm_549_while_lstm_549_strided_slice_1_0i
elstm_549_while_tensorarrayv2read_tensorlistgetitem_lstm_549_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_549_while_lstm_cell_315_matmul_readvariableop_resource_0:	?R
?lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource_0:	d?M
>lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource_0:	?
lstm_549_while_identity
lstm_549_while_identity_1
lstm_549_while_identity_2
lstm_549_while_identity_3
lstm_549_while_identity_4
lstm_549_while_identity_5+
'lstm_549_while_lstm_549_strided_slice_1g
clstm_549_while_tensorarrayv2read_tensorlistgetitem_lstm_549_tensorarrayunstack_tensorlistfromtensorN
;lstm_549_while_lstm_cell_315_matmul_readvariableop_resource:	?P
=lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource:	d?K
<lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource:	???3lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp?2lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp?4lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp?
@lstm_549/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_549/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_549_while_tensorarrayv2read_tensorlistgetitem_lstm_549_tensorarrayunstack_tensorlistfromtensor_0lstm_549_while_placeholderIlstm_549/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_549/while/lstm_cell_315/MatMul/ReadVariableOpReadVariableOp=lstm_549_while_lstm_cell_315_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_549/while/lstm_cell_315/MatMulMatMul9lstm_549/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp?lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_549/while/lstm_cell_315/MatMul_1MatMullstm_549_while_placeholder_2<lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_549/while/lstm_cell_315/addAddV2-lstm_549/while/lstm_cell_315/MatMul:product:0/lstm_549/while/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp>lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_549/while/lstm_cell_315/BiasAddBiasAdd$lstm_549/while/lstm_cell_315/add:z:0;lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_549/while/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_549/while/lstm_cell_315/splitSplit5lstm_549/while/lstm_cell_315/split/split_dim:output:0-lstm_549/while/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_549/while/lstm_cell_315/SigmoidSigmoid+lstm_549/while/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_549/while/lstm_cell_315/Sigmoid_1Sigmoid+lstm_549/while/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_549/while/lstm_cell_315/mulMul*lstm_549/while/lstm_cell_315/Sigmoid_1:y:0lstm_549_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_549/while/lstm_cell_315/ReluRelu+lstm_549/while/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_549/while/lstm_cell_315/mul_1Mul(lstm_549/while/lstm_cell_315/Sigmoid:y:0/lstm_549/while/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_549/while/lstm_cell_315/add_1AddV2$lstm_549/while/lstm_cell_315/mul:z:0&lstm_549/while/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_549/while/lstm_cell_315/Sigmoid_2Sigmoid+lstm_549/while/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_549/while/lstm_cell_315/Relu_1Relu&lstm_549/while/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_549/while/lstm_cell_315/mul_2Mul*lstm_549/while/lstm_cell_315/Sigmoid_2:y:01lstm_549/while/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_549/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_549_while_placeholder_1lstm_549_while_placeholder&lstm_549/while/lstm_cell_315/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_549/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_549/while/addAddV2lstm_549_while_placeholderlstm_549/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_549/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_549/while/add_1AddV2*lstm_549_while_lstm_549_while_loop_counterlstm_549/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_549/while/IdentityIdentitylstm_549/while/add_1:z:0^lstm_549/while/NoOp*
T0*
_output_shapes
: ?
lstm_549/while/Identity_1Identity0lstm_549_while_lstm_549_while_maximum_iterations^lstm_549/while/NoOp*
T0*
_output_shapes
: t
lstm_549/while/Identity_2Identitylstm_549/while/add:z:0^lstm_549/while/NoOp*
T0*
_output_shapes
: ?
lstm_549/while/Identity_3IdentityClstm_549/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_549/while/NoOp*
T0*
_output_shapes
: ?
lstm_549/while/Identity_4Identity&lstm_549/while/lstm_cell_315/mul_2:z:0^lstm_549/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_549/while/Identity_5Identity&lstm_549/while/lstm_cell_315/add_1:z:0^lstm_549/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_549/while/NoOpNoOp4^lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp3^lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp5^lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_549_while_identity lstm_549/while/Identity:output:0"?
lstm_549_while_identity_1"lstm_549/while/Identity_1:output:0"?
lstm_549_while_identity_2"lstm_549/while/Identity_2:output:0"?
lstm_549_while_identity_3"lstm_549/while/Identity_3:output:0"?
lstm_549_while_identity_4"lstm_549/while/Identity_4:output:0"?
lstm_549_while_identity_5"lstm_549/while/Identity_5:output:0"T
'lstm_549_while_lstm_549_strided_slice_1)lstm_549_while_lstm_549_strided_slice_1_0"~
<lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource>lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource_0"?
=lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource?lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource_0"|
;lstm_549_while_lstm_cell_315_matmul_readvariableop_resource=lstm_549_while_lstm_cell_315_matmul_readvariableop_resource_0"?
clstm_549_while_tensorarrayv2read_tensorlistgetitem_lstm_549_tensorarrayunstack_tensorlistfromtensorelstm_549_while_tensorarrayv2read_tensorlistgetitem_lstm_549_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp3lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp2h
2lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp2lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp2l
4lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp4lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1919225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1919225___redundant_placeholder05
1while_while_cond_1919225___redundant_placeholder15
1while_while_cond_1919225___redundant_placeholder25
1while_while_cond_1919225___redundant_placeholder3
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
while_body_1922134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_316_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_316_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_316_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_316_matmul_readvariableop_resource:	d?G
4while_lstm_cell_316_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_316_biasadd_readvariableop_resource:	???*while/lstm_cell_316/BiasAdd/ReadVariableOp?)while/lstm_cell_316/MatMul/ReadVariableOp?+while/lstm_cell_316/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_316/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_316_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_316/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_316_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_316/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_316/addAddV2$while/lstm_cell_316/MatMul:product:0&while/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_316_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_316/BiasAddBiasAddwhile/lstm_cell_316/add:z:02while/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_316/splitSplit,while/lstm_cell_316/split/split_dim:output:0$while/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_316/SigmoidSigmoid"while/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_1Sigmoid"while/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mulMul!while/lstm_cell_316/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_316/ReluRelu"while/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_1Mulwhile/lstm_cell_316/Sigmoid:y:0&while/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/add_1AddV2while/lstm_cell_316/mul:z:0while/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_2Sigmoid"while/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_316/Relu_1Reluwhile/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_2Mul!while/lstm_cell_316/Sigmoid_2:y:0(while/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_316/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_316/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_316/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_316/BiasAdd/ReadVariableOp*^while/lstm_cell_316/MatMul/ReadVariableOp,^while/lstm_cell_316/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_316_biasadd_readvariableop_resource5while_lstm_cell_316_biasadd_readvariableop_resource_0"n
4while_lstm_cell_316_matmul_1_readvariableop_resource6while_lstm_cell_316_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_316_matmul_readvariableop_resource4while_lstm_cell_316_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_316/BiasAdd/ReadVariableOp*while/lstm_cell_316/BiasAdd/ReadVariableOp2V
)while/lstm_cell_316/MatMul/ReadVariableOp)while/lstm_cell_316/MatMul/ReadVariableOp2Z
+while/lstm_cell_316/MatMul_1/ReadVariableOp+while/lstm_cell_316/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1918041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1918041___redundant_placeholder05
1while_while_cond_1918041___redundant_placeholder15
1while_while_cond_1918041___redundant_placeholder25
1while_while_cond_1918041___redundant_placeholder3
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
while_cond_1921231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1921231___redundant_placeholder05
1while_while_cond_1921231___redundant_placeholder15
1while_while_cond_1921231___redundant_placeholder25
1while_while_cond_1921231___redundant_placeholder3
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1918378

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

lstm_549_while_body_1920334.
*lstm_549_while_lstm_549_while_loop_counter4
0lstm_549_while_lstm_549_while_maximum_iterations
lstm_549_while_placeholder 
lstm_549_while_placeholder_1 
lstm_549_while_placeholder_2 
lstm_549_while_placeholder_3-
)lstm_549_while_lstm_549_strided_slice_1_0i
elstm_549_while_tensorarrayv2read_tensorlistgetitem_lstm_549_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_549_while_lstm_cell_315_matmul_readvariableop_resource_0:	?R
?lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource_0:	d?M
>lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource_0:	?
lstm_549_while_identity
lstm_549_while_identity_1
lstm_549_while_identity_2
lstm_549_while_identity_3
lstm_549_while_identity_4
lstm_549_while_identity_5+
'lstm_549_while_lstm_549_strided_slice_1g
clstm_549_while_tensorarrayv2read_tensorlistgetitem_lstm_549_tensorarrayunstack_tensorlistfromtensorN
;lstm_549_while_lstm_cell_315_matmul_readvariableop_resource:	?P
=lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource:	d?K
<lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource:	???3lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp?2lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp?4lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp?
@lstm_549/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_549/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_549_while_tensorarrayv2read_tensorlistgetitem_lstm_549_tensorarrayunstack_tensorlistfromtensor_0lstm_549_while_placeholderIlstm_549/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_549/while/lstm_cell_315/MatMul/ReadVariableOpReadVariableOp=lstm_549_while_lstm_cell_315_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_549/while/lstm_cell_315/MatMulMatMul9lstm_549/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp?lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_549/while/lstm_cell_315/MatMul_1MatMullstm_549_while_placeholder_2<lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_549/while/lstm_cell_315/addAddV2-lstm_549/while/lstm_cell_315/MatMul:product:0/lstm_549/while/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp>lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_549/while/lstm_cell_315/BiasAddBiasAdd$lstm_549/while/lstm_cell_315/add:z:0;lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_549/while/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_549/while/lstm_cell_315/splitSplit5lstm_549/while/lstm_cell_315/split/split_dim:output:0-lstm_549/while/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_549/while/lstm_cell_315/SigmoidSigmoid+lstm_549/while/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_549/while/lstm_cell_315/Sigmoid_1Sigmoid+lstm_549/while/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_549/while/lstm_cell_315/mulMul*lstm_549/while/lstm_cell_315/Sigmoid_1:y:0lstm_549_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_549/while/lstm_cell_315/ReluRelu+lstm_549/while/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_549/while/lstm_cell_315/mul_1Mul(lstm_549/while/lstm_cell_315/Sigmoid:y:0/lstm_549/while/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_549/while/lstm_cell_315/add_1AddV2$lstm_549/while/lstm_cell_315/mul:z:0&lstm_549/while/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_549/while/lstm_cell_315/Sigmoid_2Sigmoid+lstm_549/while/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_549/while/lstm_cell_315/Relu_1Relu&lstm_549/while/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_549/while/lstm_cell_315/mul_2Mul*lstm_549/while/lstm_cell_315/Sigmoid_2:y:01lstm_549/while/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_549/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_549_while_placeholder_1lstm_549_while_placeholder&lstm_549/while/lstm_cell_315/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_549/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_549/while/addAddV2lstm_549_while_placeholderlstm_549/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_549/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_549/while/add_1AddV2*lstm_549_while_lstm_549_while_loop_counterlstm_549/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_549/while/IdentityIdentitylstm_549/while/add_1:z:0^lstm_549/while/NoOp*
T0*
_output_shapes
: ?
lstm_549/while/Identity_1Identity0lstm_549_while_lstm_549_while_maximum_iterations^lstm_549/while/NoOp*
T0*
_output_shapes
: t
lstm_549/while/Identity_2Identitylstm_549/while/add:z:0^lstm_549/while/NoOp*
T0*
_output_shapes
: ?
lstm_549/while/Identity_3IdentityClstm_549/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_549/while/NoOp*
T0*
_output_shapes
: ?
lstm_549/while/Identity_4Identity&lstm_549/while/lstm_cell_315/mul_2:z:0^lstm_549/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_549/while/Identity_5Identity&lstm_549/while/lstm_cell_315/add_1:z:0^lstm_549/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_549/while/NoOpNoOp4^lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp3^lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp5^lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_549_while_identity lstm_549/while/Identity:output:0"?
lstm_549_while_identity_1"lstm_549/while/Identity_1:output:0"?
lstm_549_while_identity_2"lstm_549/while/Identity_2:output:0"?
lstm_549_while_identity_3"lstm_549/while/Identity_3:output:0"?
lstm_549_while_identity_4"lstm_549/while/Identity_4:output:0"?
lstm_549_while_identity_5"lstm_549/while/Identity_5:output:0"T
'lstm_549_while_lstm_549_strided_slice_1)lstm_549_while_lstm_549_strided_slice_1_0"~
<lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource>lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource_0"?
=lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource?lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource_0"|
;lstm_549_while_lstm_cell_315_matmul_readvariableop_resource=lstm_549_while_lstm_cell_315_matmul_readvariableop_resource_0"?
clstm_549_while_tensorarrayv2read_tensorlistgetitem_lstm_549_tensorarrayunstack_tensorlistfromtensorelstm_549_while_tensorarrayv2read_tensorlistgetitem_lstm_549_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp3lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp2h
2lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp2lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp2l
4lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp4lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1919075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1919075___redundant_placeholder05
1while_while_cond_1919075___redundant_placeholder15
1while_while_cond_1919075___redundant_placeholder25
1while_while_cond_1919075___redundant_placeholder3
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
while_body_1918933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_317_1918957_0:2(/
while_lstm_cell_317_1918959_0:
(+
while_lstm_cell_317_1918961_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_317_1918957:2(-
while_lstm_cell_317_1918959:
()
while_lstm_cell_317_1918961:(??+while/lstm_cell_317/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_317/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_317_1918957_0while_lstm_cell_317_1918959_0while_lstm_cell_317_1918961_0*
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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1918874?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_317/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_317/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_317/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_317/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_317_1918957while_lstm_cell_317_1918957_0"<
while_lstm_cell_317_1918959while_lstm_cell_317_1918959_0"<
while_lstm_cell_317_1918961while_lstm_cell_317_1918961_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_317/StatefulPartitionedCall+while/lstm_cell_317/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_1923433
file_prefix/
+savev2_dense_183_kernel_read_readvariableop-
)savev2_dense_183_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_549_lstm_cell_549_kernel_read_readvariableopF
Bsavev2_lstm_549_lstm_cell_549_recurrent_kernel_read_readvariableop:
6savev2_lstm_549_lstm_cell_549_bias_read_readvariableop<
8savev2_lstm_550_lstm_cell_550_kernel_read_readvariableopF
Bsavev2_lstm_550_lstm_cell_550_recurrent_kernel_read_readvariableop:
6savev2_lstm_550_lstm_cell_550_bias_read_readvariableop<
8savev2_lstm_551_lstm_cell_551_kernel_read_readvariableopF
Bsavev2_lstm_551_lstm_cell_551_recurrent_kernel_read_readvariableop:
6savev2_lstm_551_lstm_cell_551_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_183_kernel_m_read_readvariableop4
0savev2_adam_dense_183_bias_m_read_readvariableopC
?savev2_adam_lstm_549_lstm_cell_549_kernel_m_read_readvariableopM
Isavev2_adam_lstm_549_lstm_cell_549_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_549_lstm_cell_549_bias_m_read_readvariableopC
?savev2_adam_lstm_550_lstm_cell_550_kernel_m_read_readvariableopM
Isavev2_adam_lstm_550_lstm_cell_550_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_550_lstm_cell_550_bias_m_read_readvariableopC
?savev2_adam_lstm_551_lstm_cell_551_kernel_m_read_readvariableopM
Isavev2_adam_lstm_551_lstm_cell_551_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_551_lstm_cell_551_bias_m_read_readvariableop6
2savev2_adam_dense_183_kernel_v_read_readvariableop4
0savev2_adam_dense_183_bias_v_read_readvariableopC
?savev2_adam_lstm_549_lstm_cell_549_kernel_v_read_readvariableopM
Isavev2_adam_lstm_549_lstm_cell_549_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_549_lstm_cell_549_bias_v_read_readvariableopC
?savev2_adam_lstm_550_lstm_cell_550_kernel_v_read_readvariableopM
Isavev2_adam_lstm_550_lstm_cell_550_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_550_lstm_cell_550_bias_v_read_readvariableopC
?savev2_adam_lstm_551_lstm_cell_551_kernel_v_read_readvariableopM
Isavev2_adam_lstm_551_lstm_cell_551_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_551_lstm_cell_551_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_183_kernel_read_readvariableop)savev2_dense_183_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_549_lstm_cell_549_kernel_read_readvariableopBsavev2_lstm_549_lstm_cell_549_recurrent_kernel_read_readvariableop6savev2_lstm_549_lstm_cell_549_bias_read_readvariableop8savev2_lstm_550_lstm_cell_550_kernel_read_readvariableopBsavev2_lstm_550_lstm_cell_550_recurrent_kernel_read_readvariableop6savev2_lstm_550_lstm_cell_550_bias_read_readvariableop8savev2_lstm_551_lstm_cell_551_kernel_read_readvariableopBsavev2_lstm_551_lstm_cell_551_recurrent_kernel_read_readvariableop6savev2_lstm_551_lstm_cell_551_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_183_kernel_m_read_readvariableop0savev2_adam_dense_183_bias_m_read_readvariableop?savev2_adam_lstm_549_lstm_cell_549_kernel_m_read_readvariableopIsavev2_adam_lstm_549_lstm_cell_549_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_549_lstm_cell_549_bias_m_read_readvariableop?savev2_adam_lstm_550_lstm_cell_550_kernel_m_read_readvariableopIsavev2_adam_lstm_550_lstm_cell_550_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_550_lstm_cell_550_bias_m_read_readvariableop?savev2_adam_lstm_551_lstm_cell_551_kernel_m_read_readvariableopIsavev2_adam_lstm_551_lstm_cell_551_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_551_lstm_cell_551_bias_m_read_readvariableop2savev2_adam_dense_183_kernel_v_read_readvariableop0savev2_adam_dense_183_bias_v_read_readvariableop?savev2_adam_lstm_549_lstm_cell_549_kernel_v_read_readvariableopIsavev2_adam_lstm_549_lstm_cell_549_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_549_lstm_cell_549_bias_v_read_readvariableop?savev2_adam_lstm_550_lstm_cell_550_kernel_v_read_readvariableopIsavev2_adam_lstm_550_lstm_cell_550_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_550_lstm_cell_550_bias_v_read_readvariableop?savev2_adam_lstm_551_lstm_cell_551_kernel_v_read_readvariableopIsavev2_adam_lstm_551_lstm_cell_551_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_551_lstm_cell_551_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

?
lstm_551_while_cond_1920611.
*lstm_551_while_lstm_551_while_loop_counter4
0lstm_551_while_lstm_551_while_maximum_iterations
lstm_551_while_placeholder 
lstm_551_while_placeholder_1 
lstm_551_while_placeholder_2 
lstm_551_while_placeholder_30
,lstm_551_while_less_lstm_551_strided_slice_1G
Clstm_551_while_lstm_551_while_cond_1920611___redundant_placeholder0G
Clstm_551_while_lstm_551_while_cond_1920611___redundant_placeholder1G
Clstm_551_while_lstm_551_while_cond_1920611___redundant_placeholder2G
Clstm_551_while_lstm_551_while_cond_1920611___redundant_placeholder3
lstm_551_while_identity
?
lstm_551/while/LessLesslstm_551_while_placeholder,lstm_551_while_less_lstm_551_strided_slice_1*
T0*
_output_shapes
: ]
lstm_551/while/IdentityIdentitylstm_551/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_551_while_identity lstm_551/while/Identity:output:0*(
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
while_body_1919757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_316_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_316_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_316_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_316_matmul_readvariableop_resource:	d?G
4while_lstm_cell_316_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_316_biasadd_readvariableop_resource:	???*while/lstm_cell_316/BiasAdd/ReadVariableOp?)while/lstm_cell_316/MatMul/ReadVariableOp?+while/lstm_cell_316/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_316/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_316_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_316/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_316_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_316/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_316/addAddV2$while/lstm_cell_316/MatMul:product:0&while/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_316_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_316/BiasAddBiasAddwhile/lstm_cell_316/add:z:02while/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_316/splitSplit,while/lstm_cell_316/split/split_dim:output:0$while/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_316/SigmoidSigmoid"while/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_1Sigmoid"while/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mulMul!while/lstm_cell_316/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_316/ReluRelu"while/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_1Mulwhile/lstm_cell_316/Sigmoid:y:0&while/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/add_1AddV2while/lstm_cell_316/mul:z:0while/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_2Sigmoid"while/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_316/Relu_1Reluwhile/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_2Mul!while/lstm_cell_316/Sigmoid_2:y:0(while/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_316/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_316/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_316/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_316/BiasAdd/ReadVariableOp*^while/lstm_cell_316/MatMul/ReadVariableOp,^while/lstm_cell_316/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_316_biasadd_readvariableop_resource5while_lstm_cell_316_biasadd_readvariableop_resource_0"n
4while_lstm_cell_316_matmul_1_readvariableop_resource6while_lstm_cell_316_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_316_matmul_readvariableop_resource4while_lstm_cell_316_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_316/BiasAdd/ReadVariableOp*while/lstm_cell_316/BiasAdd/ReadVariableOp2V
)while/lstm_cell_316/MatMul/ReadVariableOp)while/lstm_cell_316/MatMul/ReadVariableOp2Z
+while/lstm_cell_316/MatMul_1/ReadVariableOp+while/lstm_cell_316/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_550_while_cond_1920472.
*lstm_550_while_lstm_550_while_loop_counter4
0lstm_550_while_lstm_550_while_maximum_iterations
lstm_550_while_placeholder 
lstm_550_while_placeholder_1 
lstm_550_while_placeholder_2 
lstm_550_while_placeholder_30
,lstm_550_while_less_lstm_550_strided_slice_1G
Clstm_550_while_lstm_550_while_cond_1920472___redundant_placeholder0G
Clstm_550_while_lstm_550_while_cond_1920472___redundant_placeholder1G
Clstm_550_while_lstm_550_while_cond_1920472___redundant_placeholder2G
Clstm_550_while_lstm_550_while_cond_1920472___redundant_placeholder3
lstm_550_while_identity
?
lstm_550/while/LessLesslstm_550_while_placeholder,lstm_550_while_less_lstm_550_strided_slice_1*
T0*
_output_shapes
: ]
lstm_550/while/IdentityIdentitylstm_550/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_550_while_identity lstm_550/while/Identity:output:0*(
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922548
inputs_0>
,lstm_cell_317_matmul_readvariableop_resource:2(@
.lstm_cell_317_matmul_1_readvariableop_resource:
(;
-lstm_cell_317_biasadd_readvariableop_resource:(
identity??$lstm_cell_317/BiasAdd/ReadVariableOp?#lstm_cell_317/MatMul/ReadVariableOp?%lstm_cell_317/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_317/MatMul/ReadVariableOpReadVariableOp,lstm_cell_317_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_317/MatMulMatMulstrided_slice_2:output:0+lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_317_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_317/MatMul_1MatMulzeros:output:0-lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_317/addAddV2lstm_cell_317/MatMul:product:0 lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_317_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_317/BiasAddBiasAddlstm_cell_317/add:z:0,lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_317/splitSplit&lstm_cell_317/split/split_dim:output:0lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_317/SigmoidSigmoidlstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_1Sigmoidlstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_317/mulMullstm_cell_317/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_317/ReluRelulstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_1Mullstm_cell_317/Sigmoid:y:0 lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_317/add_1AddV2lstm_cell_317/mul:z:0lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_2Sigmoidlstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_317/Relu_1Relulstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_2Mullstm_cell_317/Sigmoid_2:y:0"lstm_cell_317/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_317_matmul_readvariableop_resource.lstm_cell_317_matmul_1_readvariableop_resource-lstm_cell_317_biasadd_readvariableop_resource*
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
while_body_1922464*
condR
while_cond_1922463*K
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
NoOpNoOp%^lstm_cell_317/BiasAdd/ReadVariableOp$^lstm_cell_317/MatMul/ReadVariableOp&^lstm_cell_317/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_317/BiasAdd/ReadVariableOp$lstm_cell_317/BiasAdd/ReadVariableOp2J
#lstm_cell_317/MatMul/ReadVariableOp#lstm_cell_317/MatMul/ReadVariableOp2N
%lstm_cell_317/MatMul_1/ReadVariableOp%lstm_cell_317/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1919375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1919375___redundant_placeholder05
1while_while_cond_1919375___redundant_placeholder15
1while_while_cond_1919375___redundant_placeholder25
1while_while_cond_1919375___redundant_placeholder3
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
*__inference_lstm_550_layer_call_fn_1921789

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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1919841s
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1919002

inputs'
lstm_cell_317_1918920:2('
lstm_cell_317_1918922:
(#
lstm_cell_317_1918924:(
identity??%lstm_cell_317/StatefulPartitionedCall?while;
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
%lstm_cell_317/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_317_1918920lstm_cell_317_1918922lstm_cell_317_1918924*
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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1918874n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_317_1918920lstm_cell_317_1918922lstm_cell_317_1918924*
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
while_body_1918933*
condR
while_cond_1918932*K
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
NoOpNoOp&^lstm_cell_317/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_317/StatefulPartitionedCall%lstm_cell_317/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_550_while_body_1920900.
*lstm_550_while_lstm_550_while_loop_counter4
0lstm_550_while_lstm_550_while_maximum_iterations
lstm_550_while_placeholder 
lstm_550_while_placeholder_1 
lstm_550_while_placeholder_2 
lstm_550_while_placeholder_3-
)lstm_550_while_lstm_550_strided_slice_1_0i
elstm_550_while_tensorarrayv2read_tensorlistgetitem_lstm_550_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_550_while_lstm_cell_316_matmul_readvariableop_resource_0:	d?R
?lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource_0:	2?M
>lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource_0:	?
lstm_550_while_identity
lstm_550_while_identity_1
lstm_550_while_identity_2
lstm_550_while_identity_3
lstm_550_while_identity_4
lstm_550_while_identity_5+
'lstm_550_while_lstm_550_strided_slice_1g
clstm_550_while_tensorarrayv2read_tensorlistgetitem_lstm_550_tensorarrayunstack_tensorlistfromtensorN
;lstm_550_while_lstm_cell_316_matmul_readvariableop_resource:	d?P
=lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource:	2?K
<lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource:	???3lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp?2lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp?4lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp?
@lstm_550/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_550/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_550_while_tensorarrayv2read_tensorlistgetitem_lstm_550_tensorarrayunstack_tensorlistfromtensor_0lstm_550_while_placeholderIlstm_550/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_550/while/lstm_cell_316/MatMul/ReadVariableOpReadVariableOp=lstm_550_while_lstm_cell_316_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_550/while/lstm_cell_316/MatMulMatMul9lstm_550/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp?lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_550/while/lstm_cell_316/MatMul_1MatMullstm_550_while_placeholder_2<lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_550/while/lstm_cell_316/addAddV2-lstm_550/while/lstm_cell_316/MatMul:product:0/lstm_550/while/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp>lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_550/while/lstm_cell_316/BiasAddBiasAdd$lstm_550/while/lstm_cell_316/add:z:0;lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_550/while/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_550/while/lstm_cell_316/splitSplit5lstm_550/while/lstm_cell_316/split/split_dim:output:0-lstm_550/while/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_550/while/lstm_cell_316/SigmoidSigmoid+lstm_550/while/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_550/while/lstm_cell_316/Sigmoid_1Sigmoid+lstm_550/while/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_550/while/lstm_cell_316/mulMul*lstm_550/while/lstm_cell_316/Sigmoid_1:y:0lstm_550_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_550/while/lstm_cell_316/ReluRelu+lstm_550/while/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_550/while/lstm_cell_316/mul_1Mul(lstm_550/while/lstm_cell_316/Sigmoid:y:0/lstm_550/while/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_550/while/lstm_cell_316/add_1AddV2$lstm_550/while/lstm_cell_316/mul:z:0&lstm_550/while/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_550/while/lstm_cell_316/Sigmoid_2Sigmoid+lstm_550/while/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_550/while/lstm_cell_316/Relu_1Relu&lstm_550/while/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_550/while/lstm_cell_316/mul_2Mul*lstm_550/while/lstm_cell_316/Sigmoid_2:y:01lstm_550/while/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_550/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_550_while_placeholder_1lstm_550_while_placeholder&lstm_550/while/lstm_cell_316/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_550/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_550/while/addAddV2lstm_550_while_placeholderlstm_550/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_550/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_550/while/add_1AddV2*lstm_550_while_lstm_550_while_loop_counterlstm_550/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_550/while/IdentityIdentitylstm_550/while/add_1:z:0^lstm_550/while/NoOp*
T0*
_output_shapes
: ?
lstm_550/while/Identity_1Identity0lstm_550_while_lstm_550_while_maximum_iterations^lstm_550/while/NoOp*
T0*
_output_shapes
: t
lstm_550/while/Identity_2Identitylstm_550/while/add:z:0^lstm_550/while/NoOp*
T0*
_output_shapes
: ?
lstm_550/while/Identity_3IdentityClstm_550/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_550/while/NoOp*
T0*
_output_shapes
: ?
lstm_550/while/Identity_4Identity&lstm_550/while/lstm_cell_316/mul_2:z:0^lstm_550/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_550/while/Identity_5Identity&lstm_550/while/lstm_cell_316/add_1:z:0^lstm_550/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_550/while/NoOpNoOp4^lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp3^lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp5^lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_550_while_identity lstm_550/while/Identity:output:0"?
lstm_550_while_identity_1"lstm_550/while/Identity_1:output:0"?
lstm_550_while_identity_2"lstm_550/while/Identity_2:output:0"?
lstm_550_while_identity_3"lstm_550/while/Identity_3:output:0"?
lstm_550_while_identity_4"lstm_550/while/Identity_4:output:0"?
lstm_550_while_identity_5"lstm_550/while/Identity_5:output:0"T
'lstm_550_while_lstm_550_strided_slice_1)lstm_550_while_lstm_550_strided_slice_1_0"~
<lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource>lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource_0"?
=lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource?lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource_0"|
;lstm_550_while_lstm_cell_316_matmul_readvariableop_resource=lstm_550_while_lstm_cell_316_matmul_readvariableop_resource_0"?
clstm_550_while_tensorarrayv2read_tensorlistgetitem_lstm_550_tensorarrayunstack_tensorlistfromtensorelstm_550_while_tensorarrayv2read_tensorlistgetitem_lstm_550_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp3lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp2h
2lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp2lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp2l
4lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp4lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1919160

inputs?
,lstm_cell_315_matmul_readvariableop_resource:	?A
.lstm_cell_315_matmul_1_readvariableop_resource:	d?<
-lstm_cell_315_biasadd_readvariableop_resource:	?
identity??$lstm_cell_315/BiasAdd/ReadVariableOp?#lstm_cell_315/MatMul/ReadVariableOp?%lstm_cell_315/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_315/MatMul/ReadVariableOpReadVariableOp,lstm_cell_315_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_315/MatMulMatMulstrided_slice_2:output:0+lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_315_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_315/MatMul_1MatMulzeros:output:0-lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_315/addAddV2lstm_cell_315/MatMul:product:0 lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_315/BiasAddBiasAddlstm_cell_315/add:z:0,lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_315/splitSplit&lstm_cell_315/split/split_dim:output:0lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_315/SigmoidSigmoidlstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_1Sigmoidlstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_315/mulMullstm_cell_315/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_315/ReluRelulstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_1Mullstm_cell_315/Sigmoid:y:0 lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_315/add_1AddV2lstm_cell_315/mul:z:0lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_2Sigmoidlstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_315/Relu_1Relulstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_2Mullstm_cell_315/Sigmoid_2:y:0"lstm_cell_315/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_315_matmul_readvariableop_resource.lstm_cell_315_matmul_1_readvariableop_resource-lstm_cell_315_biasadd_readvariableop_resource*
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
while_body_1919076*
condR
while_cond_1919075*K
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
NoOpNoOp%^lstm_cell_315/BiasAdd/ReadVariableOp$^lstm_cell_315/MatMul/ReadVariableOp&^lstm_cell_315/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_315/BiasAdd/ReadVariableOp$lstm_cell_315/BiasAdd/ReadVariableOp2J
#lstm_cell_315/MatMul/ReadVariableOp#lstm_cell_315/MatMul/ReadVariableOp2N
%lstm_cell_315/MatMul_1/ReadVariableOp%lstm_cell_315/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_551_while_body_1920612.
*lstm_551_while_lstm_551_while_loop_counter4
0lstm_551_while_lstm_551_while_maximum_iterations
lstm_551_while_placeholder 
lstm_551_while_placeholder_1 
lstm_551_while_placeholder_2 
lstm_551_while_placeholder_3-
)lstm_551_while_lstm_551_strided_slice_1_0i
elstm_551_while_tensorarrayv2read_tensorlistgetitem_lstm_551_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_551_while_lstm_cell_317_matmul_readvariableop_resource_0:2(Q
?lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource_0:
(L
>lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource_0:(
lstm_551_while_identity
lstm_551_while_identity_1
lstm_551_while_identity_2
lstm_551_while_identity_3
lstm_551_while_identity_4
lstm_551_while_identity_5+
'lstm_551_while_lstm_551_strided_slice_1g
clstm_551_while_tensorarrayv2read_tensorlistgetitem_lstm_551_tensorarrayunstack_tensorlistfromtensorM
;lstm_551_while_lstm_cell_317_matmul_readvariableop_resource:2(O
=lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource:
(J
<lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource:(??3lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp?2lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp?4lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp?
@lstm_551/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_551/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_551_while_tensorarrayv2read_tensorlistgetitem_lstm_551_tensorarrayunstack_tensorlistfromtensor_0lstm_551_while_placeholderIlstm_551/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_551/while/lstm_cell_317/MatMul/ReadVariableOpReadVariableOp=lstm_551_while_lstm_cell_317_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_551/while/lstm_cell_317/MatMulMatMul9lstm_551/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp?lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_551/while/lstm_cell_317/MatMul_1MatMullstm_551_while_placeholder_2<lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_551/while/lstm_cell_317/addAddV2-lstm_551/while/lstm_cell_317/MatMul:product:0/lstm_551/while/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp>lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_551/while/lstm_cell_317/BiasAddBiasAdd$lstm_551/while/lstm_cell_317/add:z:0;lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_551/while/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_551/while/lstm_cell_317/splitSplit5lstm_551/while/lstm_cell_317/split/split_dim:output:0-lstm_551/while/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_551/while/lstm_cell_317/SigmoidSigmoid+lstm_551/while/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_551/while/lstm_cell_317/Sigmoid_1Sigmoid+lstm_551/while/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_551/while/lstm_cell_317/mulMul*lstm_551/while/lstm_cell_317/Sigmoid_1:y:0lstm_551_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_551/while/lstm_cell_317/ReluRelu+lstm_551/while/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_551/while/lstm_cell_317/mul_1Mul(lstm_551/while/lstm_cell_317/Sigmoid:y:0/lstm_551/while/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_551/while/lstm_cell_317/add_1AddV2$lstm_551/while/lstm_cell_317/mul:z:0&lstm_551/while/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_551/while/lstm_cell_317/Sigmoid_2Sigmoid+lstm_551/while/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_551/while/lstm_cell_317/Relu_1Relu&lstm_551/while/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_551/while/lstm_cell_317/mul_2Mul*lstm_551/while/lstm_cell_317/Sigmoid_2:y:01lstm_551/while/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_551/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_551_while_placeholder_1lstm_551_while_placeholder&lstm_551/while/lstm_cell_317/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_551/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_551/while/addAddV2lstm_551_while_placeholderlstm_551/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_551/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_551/while/add_1AddV2*lstm_551_while_lstm_551_while_loop_counterlstm_551/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_551/while/IdentityIdentitylstm_551/while/add_1:z:0^lstm_551/while/NoOp*
T0*
_output_shapes
: ?
lstm_551/while/Identity_1Identity0lstm_551_while_lstm_551_while_maximum_iterations^lstm_551/while/NoOp*
T0*
_output_shapes
: t
lstm_551/while/Identity_2Identitylstm_551/while/add:z:0^lstm_551/while/NoOp*
T0*
_output_shapes
: ?
lstm_551/while/Identity_3IdentityClstm_551/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_551/while/NoOp*
T0*
_output_shapes
: ?
lstm_551/while/Identity_4Identity&lstm_551/while/lstm_cell_317/mul_2:z:0^lstm_551/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_551/while/Identity_5Identity&lstm_551/while/lstm_cell_317/add_1:z:0^lstm_551/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_551/while/NoOpNoOp4^lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp3^lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp5^lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_551_while_identity lstm_551/while/Identity:output:0"?
lstm_551_while_identity_1"lstm_551/while/Identity_1:output:0"?
lstm_551_while_identity_2"lstm_551/while/Identity_2:output:0"?
lstm_551_while_identity_3"lstm_551/while/Identity_3:output:0"?
lstm_551_while_identity_4"lstm_551/while/Identity_4:output:0"?
lstm_551_while_identity_5"lstm_551/while/Identity_5:output:0"T
'lstm_551_while_lstm_551_strided_slice_1)lstm_551_while_lstm_551_strided_slice_1_0"~
<lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource>lstm_551_while_lstm_cell_317_biasadd_readvariableop_resource_0"?
=lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource?lstm_551_while_lstm_cell_317_matmul_1_readvariableop_resource_0"|
;lstm_551_while_lstm_cell_317_matmul_readvariableop_resource=lstm_551_while_lstm_cell_317_matmul_readvariableop_resource_0"?
clstm_551_while_tensorarrayv2read_tensorlistgetitem_lstm_551_tensorarrayunstack_tensorlistfromtensorelstm_551_while_tensorarrayv2read_tensorlistgetitem_lstm_551_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp3lstm_551/while/lstm_cell_317/BiasAdd/ReadVariableOp2h
2lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp2lstm_551/while/lstm_cell_317/MatMul/ReadVariableOp2l
4lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp4lstm_551/while/lstm_cell_317/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1923094

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
?
E__inference_lstm_550_layer_call_and_return_conditional_losses_1918461

inputs(
lstm_cell_316_1918379:	d?(
lstm_cell_316_1918381:	2?$
lstm_cell_316_1918383:	?
identity??%lstm_cell_316/StatefulPartitionedCall?while;
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
%lstm_cell_316/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_316_1918379lstm_cell_316_1918381lstm_cell_316_1918383*
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1918378n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_316_1918379lstm_cell_316_1918381lstm_cell_316_1918383*
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
while_body_1918392*
condR
while_cond_1918391*K
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
NoOpNoOp&^lstm_cell_316/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_316/StatefulPartitionedCall%lstm_cell_316/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_551_while_cond_1921038.
*lstm_551_while_lstm_551_while_loop_counter4
0lstm_551_while_lstm_551_while_maximum_iterations
lstm_551_while_placeholder 
lstm_551_while_placeholder_1 
lstm_551_while_placeholder_2 
lstm_551_while_placeholder_30
,lstm_551_while_less_lstm_551_strided_slice_1G
Clstm_551_while_lstm_551_while_cond_1921038___redundant_placeholder0G
Clstm_551_while_lstm_551_while_cond_1921038___redundant_placeholder1G
Clstm_551_while_lstm_551_while_cond_1921038___redundant_placeholder2G
Clstm_551_while_lstm_551_while_cond_1921038___redundant_placeholder3
lstm_551_while_identity
?
lstm_551/while/LessLesslstm_551_while_placeholder,lstm_551_while_less_lstm_551_strided_slice_1*
T0*
_output_shapes
: ]
lstm_551/while/IdentityIdentitylstm_551/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_551_while_identity lstm_551/while/Identity:output:0*(
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
while_cond_1921847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1921847___redundant_placeholder05
1while_while_cond_1921847___redundant_placeholder15
1while_while_cond_1921847___redundant_placeholder25
1while_while_cond_1921847___redundant_placeholder3
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
?
E__inference_lstm_549_layer_call_and_return_conditional_losses_1918302

inputs(
lstm_cell_315_1918220:	?(
lstm_cell_315_1918222:	d?$
lstm_cell_315_1918224:	?
identity??%lstm_cell_315/StatefulPartitionedCall?while;
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
%lstm_cell_315/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_315_1918220lstm_cell_315_1918222lstm_cell_315_1918224*
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1918174n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_315_1918220lstm_cell_315_1918222lstm_cell_315_1918224*
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
while_body_1918233*
condR
while_cond_1918232*K
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
NoOpNoOp&^lstm_cell_315/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_315/StatefulPartitionedCall%lstm_cell_315/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_550_while_body_1920473.
*lstm_550_while_lstm_550_while_loop_counter4
0lstm_550_while_lstm_550_while_maximum_iterations
lstm_550_while_placeholder 
lstm_550_while_placeholder_1 
lstm_550_while_placeholder_2 
lstm_550_while_placeholder_3-
)lstm_550_while_lstm_550_strided_slice_1_0i
elstm_550_while_tensorarrayv2read_tensorlistgetitem_lstm_550_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_550_while_lstm_cell_316_matmul_readvariableop_resource_0:	d?R
?lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource_0:	2?M
>lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource_0:	?
lstm_550_while_identity
lstm_550_while_identity_1
lstm_550_while_identity_2
lstm_550_while_identity_3
lstm_550_while_identity_4
lstm_550_while_identity_5+
'lstm_550_while_lstm_550_strided_slice_1g
clstm_550_while_tensorarrayv2read_tensorlistgetitem_lstm_550_tensorarrayunstack_tensorlistfromtensorN
;lstm_550_while_lstm_cell_316_matmul_readvariableop_resource:	d?P
=lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource:	2?K
<lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource:	???3lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp?2lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp?4lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp?
@lstm_550/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_550/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_550_while_tensorarrayv2read_tensorlistgetitem_lstm_550_tensorarrayunstack_tensorlistfromtensor_0lstm_550_while_placeholderIlstm_550/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_550/while/lstm_cell_316/MatMul/ReadVariableOpReadVariableOp=lstm_550_while_lstm_cell_316_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_550/while/lstm_cell_316/MatMulMatMul9lstm_550/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp?lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_550/while/lstm_cell_316/MatMul_1MatMullstm_550_while_placeholder_2<lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_550/while/lstm_cell_316/addAddV2-lstm_550/while/lstm_cell_316/MatMul:product:0/lstm_550/while/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp>lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_550/while/lstm_cell_316/BiasAddBiasAdd$lstm_550/while/lstm_cell_316/add:z:0;lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_550/while/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_550/while/lstm_cell_316/splitSplit5lstm_550/while/lstm_cell_316/split/split_dim:output:0-lstm_550/while/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_550/while/lstm_cell_316/SigmoidSigmoid+lstm_550/while/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_550/while/lstm_cell_316/Sigmoid_1Sigmoid+lstm_550/while/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_550/while/lstm_cell_316/mulMul*lstm_550/while/lstm_cell_316/Sigmoid_1:y:0lstm_550_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_550/while/lstm_cell_316/ReluRelu+lstm_550/while/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_550/while/lstm_cell_316/mul_1Mul(lstm_550/while/lstm_cell_316/Sigmoid:y:0/lstm_550/while/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_550/while/lstm_cell_316/add_1AddV2$lstm_550/while/lstm_cell_316/mul:z:0&lstm_550/while/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_550/while/lstm_cell_316/Sigmoid_2Sigmoid+lstm_550/while/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_550/while/lstm_cell_316/Relu_1Relu&lstm_550/while/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_550/while/lstm_cell_316/mul_2Mul*lstm_550/while/lstm_cell_316/Sigmoid_2:y:01lstm_550/while/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_550/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_550_while_placeholder_1lstm_550_while_placeholder&lstm_550/while/lstm_cell_316/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_550/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_550/while/addAddV2lstm_550_while_placeholderlstm_550/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_550/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_550/while/add_1AddV2*lstm_550_while_lstm_550_while_loop_counterlstm_550/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_550/while/IdentityIdentitylstm_550/while/add_1:z:0^lstm_550/while/NoOp*
T0*
_output_shapes
: ?
lstm_550/while/Identity_1Identity0lstm_550_while_lstm_550_while_maximum_iterations^lstm_550/while/NoOp*
T0*
_output_shapes
: t
lstm_550/while/Identity_2Identitylstm_550/while/add:z:0^lstm_550/while/NoOp*
T0*
_output_shapes
: ?
lstm_550/while/Identity_3IdentityClstm_550/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_550/while/NoOp*
T0*
_output_shapes
: ?
lstm_550/while/Identity_4Identity&lstm_550/while/lstm_cell_316/mul_2:z:0^lstm_550/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_550/while/Identity_5Identity&lstm_550/while/lstm_cell_316/add_1:z:0^lstm_550/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_550/while/NoOpNoOp4^lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp3^lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp5^lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_550_while_identity lstm_550/while/Identity:output:0"?
lstm_550_while_identity_1"lstm_550/while/Identity_1:output:0"?
lstm_550_while_identity_2"lstm_550/while/Identity_2:output:0"?
lstm_550_while_identity_3"lstm_550/while/Identity_3:output:0"?
lstm_550_while_identity_4"lstm_550/while/Identity_4:output:0"?
lstm_550_while_identity_5"lstm_550/while/Identity_5:output:0"T
'lstm_550_while_lstm_550_strided_slice_1)lstm_550_while_lstm_550_strided_slice_1_0"~
<lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource>lstm_550_while_lstm_cell_316_biasadd_readvariableop_resource_0"?
=lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource?lstm_550_while_lstm_cell_316_matmul_1_readvariableop_resource_0"|
;lstm_550_while_lstm_cell_316_matmul_readvariableop_resource=lstm_550_while_lstm_cell_316_matmul_readvariableop_resource_0"?
clstm_550_while_tensorarrayv2read_tensorlistgetitem_lstm_550_tensorarrayunstack_tensorlistfromtensorelstm_550_while_tensorarrayv2read_tensorlistgetitem_lstm_550_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp3lstm_550/while/lstm_cell_316/BiasAdd/ReadVariableOp2h
2lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp2lstm_550/while/lstm_cell_316/MatMul/ReadVariableOp2l
4lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp4lstm_550/while/lstm_cell_316/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1923192

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
/__inference_lstm_cell_316_layer_call_fn_1923111

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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1918378o
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
while_cond_1918391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1918391___redundant_placeholder05
1while_while_cond_1918391___redundant_placeholder15
1while_while_cond_1918391___redundant_placeholder25
1while_while_cond_1918391___redundant_placeholder3
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
?
E__inference_lstm_550_layer_call_and_return_conditional_losses_1918652

inputs(
lstm_cell_316_1918570:	d?(
lstm_cell_316_1918572:	2?$
lstm_cell_316_1918574:	?
identity??%lstm_cell_316/StatefulPartitionedCall?while;
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
%lstm_cell_316/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_316_1918570lstm_cell_316_1918572lstm_cell_316_1918574*
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1918524n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_316_1918570lstm_cell_316_1918572lstm_cell_316_1918574*
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
while_body_1918583*
condR
while_cond_1918582*K
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
NoOpNoOp&^lstm_cell_316/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_316/StatefulPartitionedCall%lstm_cell_316/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_1918932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1918932___redundant_placeholder05
1while_while_cond_1918932___redundant_placeholder15
1while_while_cond_1918932___redundant_placeholder25
1while_while_cond_1918932___redundant_placeholder3
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1918811

inputs'
lstm_cell_317_1918729:2('
lstm_cell_317_1918731:
(#
lstm_cell_317_1918733:(
identity??%lstm_cell_317/StatefulPartitionedCall?while;
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
%lstm_cell_317/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_317_1918729lstm_cell_317_1918731lstm_cell_317_1918733*
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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1918728n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_317_1918729lstm_cell_317_1918731lstm_cell_317_1918733*
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
while_body_1918742*
condR
while_cond_1918741*K
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
NoOpNoOp&^lstm_cell_317/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_317/StatefulPartitionedCall%lstm_cell_317/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_1922464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_317_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_317_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_317_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_317_matmul_readvariableop_resource:2(F
4while_lstm_cell_317_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_317_biasadd_readvariableop_resource:(??*while/lstm_cell_317/BiasAdd/ReadVariableOp?)while/lstm_cell_317/MatMul/ReadVariableOp?+while/lstm_cell_317/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_317/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_317_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_317/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_317_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_317/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_317/addAddV2$while/lstm_cell_317/MatMul:product:0&while/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_317_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_317/BiasAddBiasAddwhile/lstm_cell_317/add:z:02while/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_317/splitSplit,while/lstm_cell_317/split/split_dim:output:0$while/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_317/SigmoidSigmoid"while/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_1Sigmoid"while/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mulMul!while/lstm_cell_317/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_317/ReluRelu"while/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_1Mulwhile/lstm_cell_317/Sigmoid:y:0&while/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/add_1AddV2while/lstm_cell_317/mul:z:0while/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_2Sigmoid"while/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_317/Relu_1Reluwhile/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_2Mul!while/lstm_cell_317/Sigmoid_2:y:0(while/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_317/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_317/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_317/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_317/BiasAdd/ReadVariableOp*^while/lstm_cell_317/MatMul/ReadVariableOp,^while/lstm_cell_317/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_317_biasadd_readvariableop_resource5while_lstm_cell_317_biasadd_readvariableop_resource_0"n
4while_lstm_cell_317_matmul_1_readvariableop_resource6while_lstm_cell_317_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_317_matmul_readvariableop_resource4while_lstm_cell_317_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_317/BiasAdd/ReadVariableOp*while/lstm_cell_317/BiasAdd/ReadVariableOp2V
)while/lstm_cell_317/MatMul/ReadVariableOp)while/lstm_cell_317/MatMul/ReadVariableOp2Z
+while/lstm_cell_317/MatMul_1/ReadVariableOp+while/lstm_cell_317/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_315_layer_call_fn_1923013

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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1918028o
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1919460

inputs>
,lstm_cell_317_matmul_readvariableop_resource:2(@
.lstm_cell_317_matmul_1_readvariableop_resource:
(;
-lstm_cell_317_biasadd_readvariableop_resource:(
identity??$lstm_cell_317/BiasAdd/ReadVariableOp?#lstm_cell_317/MatMul/ReadVariableOp?%lstm_cell_317/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_317/MatMul/ReadVariableOpReadVariableOp,lstm_cell_317_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_317/MatMulMatMulstrided_slice_2:output:0+lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_317_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_317/MatMul_1MatMulzeros:output:0-lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_317/addAddV2lstm_cell_317/MatMul:product:0 lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_317_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_317/BiasAddBiasAddlstm_cell_317/add:z:0,lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_317/splitSplit&lstm_cell_317/split/split_dim:output:0lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_317/SigmoidSigmoidlstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_1Sigmoidlstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_317/mulMullstm_cell_317/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_317/ReluRelulstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_1Mullstm_cell_317/Sigmoid:y:0 lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_317/add_1AddV2lstm_cell_317/mul:z:0lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_2Sigmoidlstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_317/Relu_1Relulstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_2Mullstm_cell_317/Sigmoid_2:y:0"lstm_cell_317/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_317_matmul_readvariableop_resource.lstm_cell_317_matmul_1_readvariableop_resource-lstm_cell_317_biasadd_readvariableop_resource*
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
while_body_1919376*
condR
while_cond_1919375*K
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
NoOpNoOp%^lstm_cell_317/BiasAdd/ReadVariableOp$^lstm_cell_317/MatMul/ReadVariableOp&^lstm_cell_317/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_317/BiasAdd/ReadVariableOp$lstm_cell_317/BiasAdd/ReadVariableOp2J
#lstm_cell_317/MatMul/ReadVariableOp#lstm_cell_317/MatMul/ReadVariableOp2N
%lstm_cell_317/MatMul_1/ReadVariableOp%lstm_cell_317/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_1918392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_316_1918416_0:	d?0
while_lstm_cell_316_1918418_0:	2?,
while_lstm_cell_316_1918420_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_316_1918416:	d?.
while_lstm_cell_316_1918418:	2?*
while_lstm_cell_316_1918420:	???+while/lstm_cell_316/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_316/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_316_1918416_0while_lstm_cell_316_1918418_0while_lstm_cell_316_1918420_0*
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1918378?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_316/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_316/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_316/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_316/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_316_1918416while_lstm_cell_316_1918416_0"<
while_lstm_cell_316_1918418while_lstm_cell_316_1918418_0"<
while_lstm_cell_316_1918420while_lstm_cell_316_1918420_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_316/StatefulPartitionedCall+while/lstm_cell_316/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1918524

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
?
?
*__inference_lstm_551_layer_call_fn_1922405

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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1919676o
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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1923290

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
while_body_1921375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_315_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_315_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_315_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_315_matmul_readvariableop_resource:	?G
4while_lstm_cell_315_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_315_biasadd_readvariableop_resource:	???*while/lstm_cell_315/BiasAdd/ReadVariableOp?)while/lstm_cell_315/MatMul/ReadVariableOp?+while/lstm_cell_315/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_315/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_315_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_315/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_315_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_315/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_315/addAddV2$while/lstm_cell_315/MatMul:product:0&while/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_315_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_315/BiasAddBiasAddwhile/lstm_cell_315/add:z:02while/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_315/splitSplit,while/lstm_cell_315/split/split_dim:output:0$while/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_315/SigmoidSigmoid"while/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_1Sigmoid"while/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mulMul!while/lstm_cell_315/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_315/ReluRelu"while/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_1Mulwhile/lstm_cell_315/Sigmoid:y:0&while/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/add_1AddV2while/lstm_cell_315/mul:z:0while/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_2Sigmoid"while/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_315/Relu_1Reluwhile/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_2Mul!while/lstm_cell_315/Sigmoid_2:y:0(while/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_315/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_315/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_315/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_315/BiasAdd/ReadVariableOp*^while/lstm_cell_315/MatMul/ReadVariableOp,^while/lstm_cell_315/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_315_biasadd_readvariableop_resource5while_lstm_cell_315_biasadd_readvariableop_resource_0"n
4while_lstm_cell_315_matmul_1_readvariableop_resource6while_lstm_cell_315_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_315_matmul_readvariableop_resource4while_lstm_cell_315_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_315/BiasAdd/ReadVariableOp*while/lstm_cell_315/BiasAdd/ReadVariableOp2V
)while/lstm_cell_315/MatMul/ReadVariableOp)while/lstm_cell_315/MatMul/ReadVariableOp2Z
+while/lstm_cell_315/MatMul_1/ReadVariableOp+while/lstm_cell_315/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1918174

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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1918728

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
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920156
lstm_549_input#
lstm_549_1920129:	?#
lstm_549_1920131:	d?
lstm_549_1920133:	?#
lstm_550_1920136:	d?#
lstm_550_1920138:	2?
lstm_550_1920140:	?"
lstm_551_1920143:2("
lstm_551_1920145:
(
lstm_551_1920147:(#
dense_183_1920150:

dense_183_1920152:
identity??!dense_183/StatefulPartitionedCall? lstm_549/StatefulPartitionedCall? lstm_550/StatefulPartitionedCall? lstm_551/StatefulPartitionedCall?
 lstm_549/StatefulPartitionedCallStatefulPartitionedCalllstm_549_inputlstm_549_1920129lstm_549_1920131lstm_549_1920133*
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1919160?
 lstm_550/StatefulPartitionedCallStatefulPartitionedCall)lstm_549/StatefulPartitionedCall:output:0lstm_550_1920136lstm_550_1920138lstm_550_1920140*
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1919310?
 lstm_551/StatefulPartitionedCallStatefulPartitionedCall)lstm_550/StatefulPartitionedCall:output:0lstm_551_1920143lstm_551_1920145lstm_551_1920147*
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1919460?
!dense_183/StatefulPartitionedCallStatefulPartitionedCall)lstm_551/StatefulPartitionedCall:output:0dense_183_1920150dense_183_1920152*
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
F__inference_dense_183_layer_call_and_return_conditional_losses_1919478y
IdentityIdentity*dense_183/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_183/StatefulPartitionedCall!^lstm_549/StatefulPartitionedCall!^lstm_550/StatefulPartitionedCall!^lstm_551/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_183/StatefulPartitionedCall!dense_183/StatefulPartitionedCall2D
 lstm_549/StatefulPartitionedCall lstm_549/StatefulPartitionedCall2D
 lstm_550/StatefulPartitionedCall lstm_550/StatefulPartitionedCall2D
 lstm_551/StatefulPartitionedCall lstm_551/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_549_input
?8
?
while_body_1919226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_316_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_316_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_316_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_316_matmul_readvariableop_resource:	d?G
4while_lstm_cell_316_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_316_biasadd_readvariableop_resource:	???*while/lstm_cell_316/BiasAdd/ReadVariableOp?)while/lstm_cell_316/MatMul/ReadVariableOp?+while/lstm_cell_316/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_316/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_316_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_316/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_316_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_316/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_316/addAddV2$while/lstm_cell_316/MatMul:product:0&while/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_316_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_316/BiasAddBiasAddwhile/lstm_cell_316/add:z:02while/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_316/splitSplit,while/lstm_cell_316/split/split_dim:output:0$while/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_316/SigmoidSigmoid"while/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_1Sigmoid"while/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mulMul!while/lstm_cell_316/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_316/ReluRelu"while/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_1Mulwhile/lstm_cell_316/Sigmoid:y:0&while/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/add_1AddV2while/lstm_cell_316/mul:z:0while/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_2Sigmoid"while/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_316/Relu_1Reluwhile/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_2Mul!while/lstm_cell_316/Sigmoid_2:y:0(while/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_316/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_316/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_316/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_316/BiasAdd/ReadVariableOp*^while/lstm_cell_316/MatMul/ReadVariableOp,^while/lstm_cell_316/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_316_biasadd_readvariableop_resource5while_lstm_cell_316_biasadd_readvariableop_resource_0"n
4while_lstm_cell_316_matmul_1_readvariableop_resource6while_lstm_cell_316_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_316_matmul_readvariableop_resource4while_lstm_cell_316_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_316/BiasAdd/ReadVariableOp*while/lstm_cell_316/BiasAdd/ReadVariableOp2V
)while/lstm_cell_316/MatMul/ReadVariableOp)while/lstm_cell_316/MatMul/ReadVariableOp2Z
+while/lstm_cell_316/MatMul_1/ReadVariableOp+while/lstm_cell_316/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_183_layer_call_fn_1919510
lstm_549_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_549_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_183_layer_call_and_return_conditional_losses_1919485o
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
_user_specified_namelstm_549_input
?8
?
while_body_1922750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_317_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_317_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_317_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_317_matmul_readvariableop_resource:2(F
4while_lstm_cell_317_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_317_biasadd_readvariableop_resource:(??*while/lstm_cell_317/BiasAdd/ReadVariableOp?)while/lstm_cell_317/MatMul/ReadVariableOp?+while/lstm_cell_317/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_317/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_317_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_317/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_317_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_317/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_317/addAddV2$while/lstm_cell_317/MatMul:product:0&while/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_317_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_317/BiasAddBiasAddwhile/lstm_cell_317/add:z:02while/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_317/splitSplit,while/lstm_cell_317/split/split_dim:output:0$while/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_317/SigmoidSigmoid"while/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_1Sigmoid"while/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mulMul!while/lstm_cell_317/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_317/ReluRelu"while/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_1Mulwhile/lstm_cell_317/Sigmoid:y:0&while/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/add_1AddV2while/lstm_cell_317/mul:z:0while/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_2Sigmoid"while/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_317/Relu_1Reluwhile/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_2Mul!while/lstm_cell_317/Sigmoid_2:y:0(while/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_317/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_317/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_317/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_317/BiasAdd/ReadVariableOp*^while/lstm_cell_317/MatMul/ReadVariableOp,^while/lstm_cell_317/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_317_biasadd_readvariableop_resource5while_lstm_cell_317_biasadd_readvariableop_resource_0"n
4while_lstm_cell_317_matmul_1_readvariableop_resource6while_lstm_cell_317_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_317_matmul_readvariableop_resource4while_lstm_cell_317_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_317/BiasAdd/ReadVariableOp*while/lstm_cell_317/BiasAdd/ReadVariableOp2V
)while/lstm_cell_317/MatMul/ReadVariableOp)while/lstm_cell_317/MatMul/ReadVariableOp2Z
+while/lstm_cell_317/MatMul_1/ReadVariableOp+while/lstm_cell_317/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_1923563
file_prefix3
!assignvariableop_dense_183_kernel:
/
!assignvariableop_1_dense_183_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_549_lstm_cell_549_kernel:	?M
:assignvariableop_8_lstm_549_lstm_cell_549_recurrent_kernel:	d?=
.assignvariableop_9_lstm_549_lstm_cell_549_bias:	?D
1assignvariableop_10_lstm_550_lstm_cell_550_kernel:	d?N
;assignvariableop_11_lstm_550_lstm_cell_550_recurrent_kernel:	2?>
/assignvariableop_12_lstm_550_lstm_cell_550_bias:	?C
1assignvariableop_13_lstm_551_lstm_cell_551_kernel:2(M
;assignvariableop_14_lstm_551_lstm_cell_551_recurrent_kernel:
(=
/assignvariableop_15_lstm_551_lstm_cell_551_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_183_kernel_m:
7
)assignvariableop_19_adam_dense_183_bias_m:K
8assignvariableop_20_adam_lstm_549_lstm_cell_549_kernel_m:	?U
Bassignvariableop_21_adam_lstm_549_lstm_cell_549_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_549_lstm_cell_549_bias_m:	?K
8assignvariableop_23_adam_lstm_550_lstm_cell_550_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_550_lstm_cell_550_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_550_lstm_cell_550_bias_m:	?J
8assignvariableop_26_adam_lstm_551_lstm_cell_551_kernel_m:2(T
Bassignvariableop_27_adam_lstm_551_lstm_cell_551_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_551_lstm_cell_551_bias_m:(=
+assignvariableop_29_adam_dense_183_kernel_v:
7
)assignvariableop_30_adam_dense_183_bias_v:K
8assignvariableop_31_adam_lstm_549_lstm_cell_549_kernel_v:	?U
Bassignvariableop_32_adam_lstm_549_lstm_cell_549_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_549_lstm_cell_549_bias_v:	?K
8assignvariableop_34_adam_lstm_550_lstm_cell_550_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_550_lstm_cell_550_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_550_lstm_cell_550_bias_v:	?J
8assignvariableop_37_adam_lstm_551_lstm_cell_551_kernel_v:2(T
Bassignvariableop_38_adam_lstm_551_lstm_cell_551_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_551_lstm_cell_551_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_183_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_183_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_549_lstm_cell_549_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_549_lstm_cell_549_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_549_lstm_cell_549_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_550_lstm_cell_550_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_550_lstm_cell_550_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_550_lstm_cell_550_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_551_lstm_cell_551_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_551_lstm_cell_551_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_551_lstm_cell_551_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_183_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_183_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_549_lstm_cell_549_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_549_lstm_cell_549_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_549_lstm_cell_549_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_550_lstm_cell_550_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_550_lstm_cell_550_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_550_lstm_cell_550_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_551_lstm_cell_551_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_551_lstm_cell_551_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_551_lstm_cell_551_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_183_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_183_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_549_lstm_cell_549_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_549_lstm_cell_549_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_549_lstm_cell_549_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_550_lstm_cell_550_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_550_lstm_cell_550_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_550_lstm_cell_550_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_551_lstm_cell_551_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_551_lstm_cell_551_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_551_lstm_cell_551_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
*__inference_lstm_549_layer_call_fn_1921140
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1918111|
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
lstm_550_while_cond_1920899.
*lstm_550_while_lstm_550_while_loop_counter4
0lstm_550_while_lstm_550_while_maximum_iterations
lstm_550_while_placeholder 
lstm_550_while_placeholder_1 
lstm_550_while_placeholder_2 
lstm_550_while_placeholder_30
,lstm_550_while_less_lstm_550_strided_slice_1G
Clstm_550_while_lstm_550_while_cond_1920899___redundant_placeholder0G
Clstm_550_while_lstm_550_while_cond_1920899___redundant_placeholder1G
Clstm_550_while_lstm_550_while_cond_1920899___redundant_placeholder2G
Clstm_550_while_lstm_550_while_cond_1920899___redundant_placeholder3
lstm_550_while_identity
?
lstm_550/while/LessLesslstm_550_while_placeholder,lstm_550_while_less_lstm_550_strided_slice_1*
T0*
_output_shapes
: ]
lstm_550/while/IdentityIdentitylstm_550/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_550_while_identity lstm_550/while/Identity:output:0*(
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1923160

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
*__inference_lstm_549_layer_call_fn_1921173

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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1920006s
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1922361

inputs?
,lstm_cell_316_matmul_readvariableop_resource:	d?A
.lstm_cell_316_matmul_1_readvariableop_resource:	2?<
-lstm_cell_316_biasadd_readvariableop_resource:	?
identity??$lstm_cell_316/BiasAdd/ReadVariableOp?#lstm_cell_316/MatMul/ReadVariableOp?%lstm_cell_316/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_316/MatMul/ReadVariableOpReadVariableOp,lstm_cell_316_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_316/MatMulMatMulstrided_slice_2:output:0+lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_316_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_316/MatMul_1MatMulzeros:output:0-lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_316/addAddV2lstm_cell_316/MatMul:product:0 lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_316/BiasAddBiasAddlstm_cell_316/add:z:0,lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_316/splitSplit&lstm_cell_316/split/split_dim:output:0lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_316/SigmoidSigmoidlstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_1Sigmoidlstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_316/mulMullstm_cell_316/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_316/ReluRelulstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_1Mullstm_cell_316/Sigmoid:y:0 lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_316/add_1AddV2lstm_cell_316/mul:z:0lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_2Sigmoidlstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_316/Relu_1Relulstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_2Mullstm_cell_316/Sigmoid_2:y:0"lstm_cell_316/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_316_matmul_readvariableop_resource.lstm_cell_316_matmul_1_readvariableop_resource-lstm_cell_316_biasadd_readvariableop_resource*
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
while_body_1922277*
condR
while_cond_1922276*K
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
NoOpNoOp%^lstm_cell_316/BiasAdd/ReadVariableOp$^lstm_cell_316/MatMul/ReadVariableOp&^lstm_cell_316/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_316/BiasAdd/ReadVariableOp$lstm_cell_316/BiasAdd/ReadVariableOp2J
#lstm_cell_316/MatMul/ReadVariableOp#lstm_cell_316/MatMul/ReadVariableOp2N
%lstm_cell_316/MatMul_1/ReadVariableOp%lstm_cell_316/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_315_layer_call_fn_1923030

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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1918174o
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
?
?
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920186
lstm_549_input#
lstm_549_1920159:	?#
lstm_549_1920161:	d?
lstm_549_1920163:	?#
lstm_550_1920166:	d?#
lstm_550_1920168:	2?
lstm_550_1920170:	?"
lstm_551_1920173:2("
lstm_551_1920175:
(
lstm_551_1920177:(#
dense_183_1920180:

dense_183_1920182:
identity??!dense_183/StatefulPartitionedCall? lstm_549/StatefulPartitionedCall? lstm_550/StatefulPartitionedCall? lstm_551/StatefulPartitionedCall?
 lstm_549/StatefulPartitionedCallStatefulPartitionedCalllstm_549_inputlstm_549_1920159lstm_549_1920161lstm_549_1920163*
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1920006?
 lstm_550/StatefulPartitionedCallStatefulPartitionedCall)lstm_549/StatefulPartitionedCall:output:0lstm_550_1920166lstm_550_1920168lstm_550_1920170*
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1919841?
 lstm_551/StatefulPartitionedCallStatefulPartitionedCall)lstm_550/StatefulPartitionedCall:output:0lstm_551_1920173lstm_551_1920175lstm_551_1920177*
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1919676?
!dense_183/StatefulPartitionedCallStatefulPartitionedCall)lstm_551/StatefulPartitionedCall:output:0dense_183_1920180dense_183_1920182*
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
F__inference_dense_183_layer_call_and_return_conditional_losses_1919478y
IdentityIdentity*dense_183/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_183/StatefulPartitionedCall!^lstm_549/StatefulPartitionedCall!^lstm_550/StatefulPartitionedCall!^lstm_551/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_183/StatefulPartitionedCall!dense_183/StatefulPartitionedCall2D
 lstm_549/StatefulPartitionedCall lstm_549/StatefulPartitionedCall2D
 lstm_550/StatefulPartitionedCall lstm_550/StatefulPartitionedCall2D
 lstm_551/StatefulPartitionedCall lstm_551/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_549_input
?J
?
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921602

inputs?
,lstm_cell_315_matmul_readvariableop_resource:	?A
.lstm_cell_315_matmul_1_readvariableop_resource:	d?<
-lstm_cell_315_biasadd_readvariableop_resource:	?
identity??$lstm_cell_315/BiasAdd/ReadVariableOp?#lstm_cell_315/MatMul/ReadVariableOp?%lstm_cell_315/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_315/MatMul/ReadVariableOpReadVariableOp,lstm_cell_315_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_315/MatMulMatMulstrided_slice_2:output:0+lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_315_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_315/MatMul_1MatMulzeros:output:0-lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_315/addAddV2lstm_cell_315/MatMul:product:0 lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_315_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_315/BiasAddBiasAddlstm_cell_315/add:z:0,lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_315/splitSplit&lstm_cell_315/split/split_dim:output:0lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_315/SigmoidSigmoidlstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_1Sigmoidlstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_315/mulMullstm_cell_315/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_315/ReluRelulstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_1Mullstm_cell_315/Sigmoid:y:0 lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_315/add_1AddV2lstm_cell_315/mul:z:0lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_315/Sigmoid_2Sigmoidlstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_315/Relu_1Relulstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_315/mul_2Mullstm_cell_315/Sigmoid_2:y:0"lstm_cell_315/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_315_matmul_readvariableop_resource.lstm_cell_315_matmul_1_readvariableop_resource-lstm_cell_315_biasadd_readvariableop_resource*
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
while_body_1921518*
condR
while_cond_1921517*K
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
NoOpNoOp%^lstm_cell_315/BiasAdd/ReadVariableOp$^lstm_cell_315/MatMul/ReadVariableOp&^lstm_cell_315/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_315/BiasAdd/ReadVariableOp$lstm_cell_315/BiasAdd/ReadVariableOp2J
#lstm_cell_315/MatMul/ReadVariableOp#lstm_cell_315/MatMul/ReadVariableOp2N
%lstm_cell_315/MatMul_1/ReadVariableOp%lstm_cell_315/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1919076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_315_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_315_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_315_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_315_matmul_readvariableop_resource:	?G
4while_lstm_cell_315_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_315_biasadd_readvariableop_resource:	???*while/lstm_cell_315/BiasAdd/ReadVariableOp?)while/lstm_cell_315/MatMul/ReadVariableOp?+while/lstm_cell_315/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_315/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_315_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_315/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_315_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_315/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_315/addAddV2$while/lstm_cell_315/MatMul:product:0&while/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_315_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_315/BiasAddBiasAddwhile/lstm_cell_315/add:z:02while/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_315/splitSplit,while/lstm_cell_315/split/split_dim:output:0$while/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_315/SigmoidSigmoid"while/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_1Sigmoid"while/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mulMul!while/lstm_cell_315/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_315/ReluRelu"while/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_1Mulwhile/lstm_cell_315/Sigmoid:y:0&while/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/add_1AddV2while/lstm_cell_315/mul:z:0while/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_315/Sigmoid_2Sigmoid"while/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_315/Relu_1Reluwhile/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_315/mul_2Mul!while/lstm_cell_315/Sigmoid_2:y:0(while/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_315/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_315/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_315/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_315/BiasAdd/ReadVariableOp*^while/lstm_cell_315/MatMul/ReadVariableOp,^while/lstm_cell_315/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_315_biasadd_readvariableop_resource5while_lstm_cell_315_biasadd_readvariableop_resource_0"n
4while_lstm_cell_315_matmul_1_readvariableop_resource6while_lstm_cell_315_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_315_matmul_readvariableop_resource4while_lstm_cell_315_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_315/BiasAdd/ReadVariableOp*while/lstm_cell_315/BiasAdd/ReadVariableOp2V
)while/lstm_cell_315/MatMul/ReadVariableOp)while/lstm_cell_315/MatMul/ReadVariableOp2Z
+while/lstm_cell_315/MatMul_1/ReadVariableOp+while/lstm_cell_315/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_183_layer_call_fn_1922986

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
F__inference_dense_183_layer_call_and_return_conditional_losses_1919478o
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922834

inputs>
,lstm_cell_317_matmul_readvariableop_resource:2(@
.lstm_cell_317_matmul_1_readvariableop_resource:
(;
-lstm_cell_317_biasadd_readvariableop_resource:(
identity??$lstm_cell_317/BiasAdd/ReadVariableOp?#lstm_cell_317/MatMul/ReadVariableOp?%lstm_cell_317/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_317/MatMul/ReadVariableOpReadVariableOp,lstm_cell_317_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_317/MatMulMatMulstrided_slice_2:output:0+lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_317_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_317/MatMul_1MatMulzeros:output:0-lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_317/addAddV2lstm_cell_317/MatMul:product:0 lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_317_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_317/BiasAddBiasAddlstm_cell_317/add:z:0,lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_317/splitSplit&lstm_cell_317/split/split_dim:output:0lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_317/SigmoidSigmoidlstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_1Sigmoidlstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_317/mulMullstm_cell_317/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_317/ReluRelulstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_1Mullstm_cell_317/Sigmoid:y:0 lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_317/add_1AddV2lstm_cell_317/mul:z:0lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_317/Sigmoid_2Sigmoidlstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_317/Relu_1Relulstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_317/mul_2Mullstm_cell_317/Sigmoid_2:y:0"lstm_cell_317/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_317_matmul_readvariableop_resource.lstm_cell_317_matmul_1_readvariableop_resource-lstm_cell_317_biasadd_readvariableop_resource*
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
while_body_1922750*
condR
while_cond_1922749*K
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
NoOpNoOp%^lstm_cell_317/BiasAdd/ReadVariableOp$^lstm_cell_317/MatMul/ReadVariableOp&^lstm_cell_317/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_317/BiasAdd/ReadVariableOp$lstm_cell_317/BiasAdd/ReadVariableOp2J
#lstm_cell_317/MatMul/ReadVariableOp#lstm_cell_317/MatMul/ReadVariableOp2N
%lstm_cell_317/MatMul_1/ReadVariableOp%lstm_cell_317/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_183_layer_call_fn_1920275

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
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920074o
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
?T
?
*sequential_183_lstm_549_while_body_1917593L
Hsequential_183_lstm_549_while_sequential_183_lstm_549_while_loop_counterR
Nsequential_183_lstm_549_while_sequential_183_lstm_549_while_maximum_iterations-
)sequential_183_lstm_549_while_placeholder/
+sequential_183_lstm_549_while_placeholder_1/
+sequential_183_lstm_549_while_placeholder_2/
+sequential_183_lstm_549_while_placeholder_3K
Gsequential_183_lstm_549_while_sequential_183_lstm_549_strided_slice_1_0?
?sequential_183_lstm_549_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_549_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_183_lstm_549_while_lstm_cell_315_matmul_readvariableop_resource_0:	?a
Nsequential_183_lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource_0:	d?\
Msequential_183_lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource_0:	?*
&sequential_183_lstm_549_while_identity,
(sequential_183_lstm_549_while_identity_1,
(sequential_183_lstm_549_while_identity_2,
(sequential_183_lstm_549_while_identity_3,
(sequential_183_lstm_549_while_identity_4,
(sequential_183_lstm_549_while_identity_5I
Esequential_183_lstm_549_while_sequential_183_lstm_549_strided_slice_1?
?sequential_183_lstm_549_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_549_tensorarrayunstack_tensorlistfromtensor]
Jsequential_183_lstm_549_while_lstm_cell_315_matmul_readvariableop_resource:	?_
Lsequential_183_lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource:	d?Z
Ksequential_183_lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource:	???Bsequential_183/lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp?Asequential_183/lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp?Csequential_183/lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp?
Osequential_183/lstm_549/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_183/lstm_549/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_183_lstm_549_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_549_tensorarrayunstack_tensorlistfromtensor_0)sequential_183_lstm_549_while_placeholderXsequential_183/lstm_549/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_183/lstm_549/while/lstm_cell_315/MatMul/ReadVariableOpReadVariableOpLsequential_183_lstm_549_while_lstm_cell_315_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_183/lstm_549/while/lstm_cell_315/MatMulMatMulHsequential_183/lstm_549/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_183/lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_183/lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOpReadVariableOpNsequential_183_lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_183/lstm_549/while/lstm_cell_315/MatMul_1MatMul+sequential_183_lstm_549_while_placeholder_2Ksequential_183/lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_183/lstm_549/while/lstm_cell_315/addAddV2<sequential_183/lstm_549/while/lstm_cell_315/MatMul:product:0>sequential_183/lstm_549/while/lstm_cell_315/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_183/lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOpReadVariableOpMsequential_183_lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_183/lstm_549/while/lstm_cell_315/BiasAddBiasAdd3sequential_183/lstm_549/while/lstm_cell_315/add:z:0Jsequential_183/lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_183/lstm_549/while/lstm_cell_315/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_183/lstm_549/while/lstm_cell_315/splitSplitDsequential_183/lstm_549/while/lstm_cell_315/split/split_dim:output:0<sequential_183/lstm_549/while/lstm_cell_315/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_183/lstm_549/while/lstm_cell_315/SigmoidSigmoid:sequential_183/lstm_549/while/lstm_cell_315/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_183/lstm_549/while/lstm_cell_315/Sigmoid_1Sigmoid:sequential_183/lstm_549/while/lstm_cell_315/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_183/lstm_549/while/lstm_cell_315/mulMul9sequential_183/lstm_549/while/lstm_cell_315/Sigmoid_1:y:0+sequential_183_lstm_549_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_183/lstm_549/while/lstm_cell_315/ReluRelu:sequential_183/lstm_549/while/lstm_cell_315/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_183/lstm_549/while/lstm_cell_315/mul_1Mul7sequential_183/lstm_549/while/lstm_cell_315/Sigmoid:y:0>sequential_183/lstm_549/while/lstm_cell_315/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_183/lstm_549/while/lstm_cell_315/add_1AddV23sequential_183/lstm_549/while/lstm_cell_315/mul:z:05sequential_183/lstm_549/while/lstm_cell_315/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_183/lstm_549/while/lstm_cell_315/Sigmoid_2Sigmoid:sequential_183/lstm_549/while/lstm_cell_315/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_183/lstm_549/while/lstm_cell_315/Relu_1Relu5sequential_183/lstm_549/while/lstm_cell_315/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_183/lstm_549/while/lstm_cell_315/mul_2Mul9sequential_183/lstm_549/while/lstm_cell_315/Sigmoid_2:y:0@sequential_183/lstm_549/while/lstm_cell_315/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_183/lstm_549/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_183_lstm_549_while_placeholder_1)sequential_183_lstm_549_while_placeholder5sequential_183/lstm_549/while/lstm_cell_315/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_183/lstm_549/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_183/lstm_549/while/addAddV2)sequential_183_lstm_549_while_placeholder,sequential_183/lstm_549/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_183/lstm_549/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_183/lstm_549/while/add_1AddV2Hsequential_183_lstm_549_while_sequential_183_lstm_549_while_loop_counter.sequential_183/lstm_549/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_183/lstm_549/while/IdentityIdentity'sequential_183/lstm_549/while/add_1:z:0#^sequential_183/lstm_549/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_549/while/Identity_1IdentityNsequential_183_lstm_549_while_sequential_183_lstm_549_while_maximum_iterations#^sequential_183/lstm_549/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_549/while/Identity_2Identity%sequential_183/lstm_549/while/add:z:0#^sequential_183/lstm_549/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_549/while/Identity_3IdentityRsequential_183/lstm_549/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_183/lstm_549/while/NoOp*
T0*
_output_shapes
: ?
(sequential_183/lstm_549/while/Identity_4Identity5sequential_183/lstm_549/while/lstm_cell_315/mul_2:z:0#^sequential_183/lstm_549/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_183/lstm_549/while/Identity_5Identity5sequential_183/lstm_549/while/lstm_cell_315/add_1:z:0#^sequential_183/lstm_549/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_183/lstm_549/while/NoOpNoOpC^sequential_183/lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOpB^sequential_183/lstm_549/while/lstm_cell_315/MatMul/ReadVariableOpD^sequential_183/lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_183_lstm_549_while_identity/sequential_183/lstm_549/while/Identity:output:0"]
(sequential_183_lstm_549_while_identity_11sequential_183/lstm_549/while/Identity_1:output:0"]
(sequential_183_lstm_549_while_identity_21sequential_183/lstm_549/while/Identity_2:output:0"]
(sequential_183_lstm_549_while_identity_31sequential_183/lstm_549/while/Identity_3:output:0"]
(sequential_183_lstm_549_while_identity_41sequential_183/lstm_549/while/Identity_4:output:0"]
(sequential_183_lstm_549_while_identity_51sequential_183/lstm_549/while/Identity_5:output:0"?
Ksequential_183_lstm_549_while_lstm_cell_315_biasadd_readvariableop_resourceMsequential_183_lstm_549_while_lstm_cell_315_biasadd_readvariableop_resource_0"?
Lsequential_183_lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resourceNsequential_183_lstm_549_while_lstm_cell_315_matmul_1_readvariableop_resource_0"?
Jsequential_183_lstm_549_while_lstm_cell_315_matmul_readvariableop_resourceLsequential_183_lstm_549_while_lstm_cell_315_matmul_readvariableop_resource_0"?
Esequential_183_lstm_549_while_sequential_183_lstm_549_strided_slice_1Gsequential_183_lstm_549_while_sequential_183_lstm_549_strided_slice_1_0"?
?sequential_183_lstm_549_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_549_tensorarrayunstack_tensorlistfromtensor?sequential_183_lstm_549_while_tensorarrayv2read_tensorlistgetitem_sequential_183_lstm_549_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_183/lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOpBsequential_183/lstm_549/while/lstm_cell_315/BiasAdd/ReadVariableOp2?
Asequential_183/lstm_549/while/lstm_cell_315/MatMul/ReadVariableOpAsequential_183/lstm_549/while/lstm_cell_315/MatMul/ReadVariableOp2?
Csequential_183/lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOpCsequential_183/lstm_549/while/lstm_cell_315/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_549_layer_call_fn_1921151
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1918302|
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
F__inference_dense_183_layer_call_and_return_conditional_losses_1919478

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
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920074

inputs#
lstm_549_1920047:	?#
lstm_549_1920049:	d?
lstm_549_1920051:	?#
lstm_550_1920054:	d?#
lstm_550_1920056:	2?
lstm_550_1920058:	?"
lstm_551_1920061:2("
lstm_551_1920063:
(
lstm_551_1920065:(#
dense_183_1920068:

dense_183_1920070:
identity??!dense_183/StatefulPartitionedCall? lstm_549/StatefulPartitionedCall? lstm_550/StatefulPartitionedCall? lstm_551/StatefulPartitionedCall?
 lstm_549/StatefulPartitionedCallStatefulPartitionedCallinputslstm_549_1920047lstm_549_1920049lstm_549_1920051*
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1920006?
 lstm_550/StatefulPartitionedCallStatefulPartitionedCall)lstm_549/StatefulPartitionedCall:output:0lstm_550_1920054lstm_550_1920056lstm_550_1920058*
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1919841?
 lstm_551/StatefulPartitionedCallStatefulPartitionedCall)lstm_550/StatefulPartitionedCall:output:0lstm_551_1920061lstm_551_1920063lstm_551_1920065*
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1919676?
!dense_183/StatefulPartitionedCallStatefulPartitionedCall)lstm_551/StatefulPartitionedCall:output:0dense_183_1920068dense_183_1920070*
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
F__inference_dense_183_layer_call_and_return_conditional_losses_1919478y
IdentityIdentity*dense_183/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_183/StatefulPartitionedCall!^lstm_549/StatefulPartitionedCall!^lstm_550/StatefulPartitionedCall!^lstm_551/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_183/StatefulPartitionedCall!dense_183/StatefulPartitionedCall2D
 lstm_549/StatefulPartitionedCall lstm_549/StatefulPartitionedCall2D
 lstm_550/StatefulPartitionedCall lstm_550/StatefulPartitionedCall2D
 lstm_551/StatefulPartitionedCall lstm_551/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_183_layer_call_fn_1920126
lstm_549_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_549_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920074o
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
_user_specified_namelstm_549_input
?8
?
while_body_1919592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_317_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_317_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_317_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_317_matmul_readvariableop_resource:2(F
4while_lstm_cell_317_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_317_biasadd_readvariableop_resource:(??*while/lstm_cell_317/BiasAdd/ReadVariableOp?)while/lstm_cell_317/MatMul/ReadVariableOp?+while/lstm_cell_317/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_317/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_317_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_317/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_317_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_317/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_317/addAddV2$while/lstm_cell_317/MatMul:product:0&while/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_317_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_317/BiasAddBiasAddwhile/lstm_cell_317/add:z:02while/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_317/splitSplit,while/lstm_cell_317/split/split_dim:output:0$while/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_317/SigmoidSigmoid"while/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_1Sigmoid"while/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mulMul!while/lstm_cell_317/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_317/ReluRelu"while/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_1Mulwhile/lstm_cell_317/Sigmoid:y:0&while/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/add_1AddV2while/lstm_cell_317/mul:z:0while/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_2Sigmoid"while/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_317/Relu_1Reluwhile/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_2Mul!while/lstm_cell_317/Sigmoid_2:y:0(while/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_317/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_317/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_317/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_317/BiasAdd/ReadVariableOp*^while/lstm_cell_317/MatMul/ReadVariableOp,^while/lstm_cell_317/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_317_biasadd_readvariableop_resource5while_lstm_cell_317_biasadd_readvariableop_resource_0"n
4while_lstm_cell_317_matmul_1_readvariableop_resource6while_lstm_cell_317_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_317_matmul_readvariableop_resource4while_lstm_cell_317_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_317/BiasAdd/ReadVariableOp*while/lstm_cell_317/BiasAdd/ReadVariableOp2V
)while/lstm_cell_317/MatMul/ReadVariableOp)while/lstm_cell_317/MatMul/ReadVariableOp2Z
+while/lstm_cell_317/MatMul_1/ReadVariableOp+while/lstm_cell_317/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1922607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_317_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_317_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_317_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_317_matmul_readvariableop_resource:2(F
4while_lstm_cell_317_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_317_biasadd_readvariableop_resource:(??*while/lstm_cell_317/BiasAdd/ReadVariableOp?)while/lstm_cell_317/MatMul/ReadVariableOp?+while/lstm_cell_317/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_317/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_317_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_317/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_317/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_317/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_317_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_317/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_317/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_317/addAddV2$while/lstm_cell_317/MatMul:product:0&while/lstm_cell_317/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_317/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_317_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_317/BiasAddBiasAddwhile/lstm_cell_317/add:z:02while/lstm_cell_317/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_317/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_317/splitSplit,while/lstm_cell_317/split/split_dim:output:0$while/lstm_cell_317/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_317/SigmoidSigmoid"while/lstm_cell_317/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_1Sigmoid"while/lstm_cell_317/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mulMul!while/lstm_cell_317/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_317/ReluRelu"while/lstm_cell_317/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_1Mulwhile/lstm_cell_317/Sigmoid:y:0&while/lstm_cell_317/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/add_1AddV2while/lstm_cell_317/mul:z:0while/lstm_cell_317/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_317/Sigmoid_2Sigmoid"while/lstm_cell_317/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_317/Relu_1Reluwhile/lstm_cell_317/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_317/mul_2Mul!while/lstm_cell_317/Sigmoid_2:y:0(while/lstm_cell_317/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_317/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_317/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_317/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_317/BiasAdd/ReadVariableOp*^while/lstm_cell_317/MatMul/ReadVariableOp,^while/lstm_cell_317/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_317_biasadd_readvariableop_resource5while_lstm_cell_317_biasadd_readvariableop_resource_0"n
4while_lstm_cell_317_matmul_1_readvariableop_resource6while_lstm_cell_317_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_317_matmul_readvariableop_resource4while_lstm_cell_317_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_317/BiasAdd/ReadVariableOp*while/lstm_cell_317/BiasAdd/ReadVariableOp2V
)while/lstm_cell_317/MatMul/ReadVariableOp)while/lstm_cell_317/MatMul/ReadVariableOp2Z
+while/lstm_cell_317/MatMul_1/ReadVariableOp+while/lstm_cell_317/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1922276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1922276___redundant_placeholder05
1while_while_cond_1922276___redundant_placeholder15
1while_while_cond_1922276___redundant_placeholder25
1while_while_cond_1922276___redundant_placeholder3
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1918028

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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1919841

inputs?
,lstm_cell_316_matmul_readvariableop_resource:	d?A
.lstm_cell_316_matmul_1_readvariableop_resource:	2?<
-lstm_cell_316_biasadd_readvariableop_resource:	?
identity??$lstm_cell_316/BiasAdd/ReadVariableOp?#lstm_cell_316/MatMul/ReadVariableOp?%lstm_cell_316/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_316/MatMul/ReadVariableOpReadVariableOp,lstm_cell_316_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_316/MatMulMatMulstrided_slice_2:output:0+lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_316_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_316/MatMul_1MatMulzeros:output:0-lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_316/addAddV2lstm_cell_316/MatMul:product:0 lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_316/BiasAddBiasAddlstm_cell_316/add:z:0,lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_316/splitSplit&lstm_cell_316/split/split_dim:output:0lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_316/SigmoidSigmoidlstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_1Sigmoidlstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_316/mulMullstm_cell_316/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_316/ReluRelulstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_1Mullstm_cell_316/Sigmoid:y:0 lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_316/add_1AddV2lstm_cell_316/mul:z:0lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_2Sigmoidlstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_316/Relu_1Relulstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_2Mullstm_cell_316/Sigmoid_2:y:0"lstm_cell_316/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_316_matmul_readvariableop_resource.lstm_cell_316_matmul_1_readvariableop_resource-lstm_cell_316_biasadd_readvariableop_resource*
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
while_body_1919757*
condR
while_cond_1919756*K
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
NoOpNoOp%^lstm_cell_316/BiasAdd/ReadVariableOp$^lstm_cell_316/MatMul/ReadVariableOp&^lstm_cell_316/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_316/BiasAdd/ReadVariableOp$lstm_cell_316/BiasAdd/ReadVariableOp2J
#lstm_cell_316/MatMul/ReadVariableOp#lstm_cell_316/MatMul/ReadVariableOp2N
%lstm_cell_316/MatMul_1/ReadVariableOp%lstm_cell_316/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_317_layer_call_fn_1923209

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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1918728o
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
?
*__inference_lstm_551_layer_call_fn_1922383
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1919002o
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1921932
inputs_0?
,lstm_cell_316_matmul_readvariableop_resource:	d?A
.lstm_cell_316_matmul_1_readvariableop_resource:	2?<
-lstm_cell_316_biasadd_readvariableop_resource:	?
identity??$lstm_cell_316/BiasAdd/ReadVariableOp?#lstm_cell_316/MatMul/ReadVariableOp?%lstm_cell_316/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_316/MatMul/ReadVariableOpReadVariableOp,lstm_cell_316_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_316/MatMulMatMulstrided_slice_2:output:0+lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_316_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_316/MatMul_1MatMulzeros:output:0-lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_316/addAddV2lstm_cell_316/MatMul:product:0 lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_316_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_316/BiasAddBiasAddlstm_cell_316/add:z:0,lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_316/splitSplit&lstm_cell_316/split/split_dim:output:0lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_316/SigmoidSigmoidlstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_1Sigmoidlstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_316/mulMullstm_cell_316/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_316/ReluRelulstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_1Mullstm_cell_316/Sigmoid:y:0 lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_316/add_1AddV2lstm_cell_316/mul:z:0lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_316/Sigmoid_2Sigmoidlstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_316/Relu_1Relulstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_316/mul_2Mullstm_cell_316/Sigmoid_2:y:0"lstm_cell_316/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_316_matmul_readvariableop_resource.lstm_cell_316_matmul_1_readvariableop_resource-lstm_cell_316_biasadd_readvariableop_resource*
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
while_body_1921848*
condR
while_cond_1921847*K
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
NoOpNoOp%^lstm_cell_316/BiasAdd/ReadVariableOp$^lstm_cell_316/MatMul/ReadVariableOp&^lstm_cell_316/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_316/BiasAdd/ReadVariableOp$lstm_cell_316/BiasAdd/ReadVariableOp2J
#lstm_cell_316/MatMul/ReadVariableOp#lstm_cell_316/MatMul/ReadVariableOp2N
%lstm_cell_316/MatMul_1/ReadVariableOp%lstm_cell_316/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_1922277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_316_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_316_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_316_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_316_matmul_readvariableop_resource:	d?G
4while_lstm_cell_316_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_316_biasadd_readvariableop_resource:	???*while/lstm_cell_316/BiasAdd/ReadVariableOp?)while/lstm_cell_316/MatMul/ReadVariableOp?+while/lstm_cell_316/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_316/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_316_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_316/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_316/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_316/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_316_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_316/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_316/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_316/addAddV2$while/lstm_cell_316/MatMul:product:0&while/lstm_cell_316/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_316/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_316_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_316/BiasAddBiasAddwhile/lstm_cell_316/add:z:02while/lstm_cell_316/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_316/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_316/splitSplit,while/lstm_cell_316/split/split_dim:output:0$while/lstm_cell_316/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_316/SigmoidSigmoid"while/lstm_cell_316/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_1Sigmoid"while/lstm_cell_316/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mulMul!while/lstm_cell_316/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_316/ReluRelu"while/lstm_cell_316/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_1Mulwhile/lstm_cell_316/Sigmoid:y:0&while/lstm_cell_316/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/add_1AddV2while/lstm_cell_316/mul:z:0while/lstm_cell_316/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_316/Sigmoid_2Sigmoid"while/lstm_cell_316/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_316/Relu_1Reluwhile/lstm_cell_316/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_316/mul_2Mul!while/lstm_cell_316/Sigmoid_2:y:0(while/lstm_cell_316/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_316/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_316/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_316/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_316/BiasAdd/ReadVariableOp*^while/lstm_cell_316/MatMul/ReadVariableOp,^while/lstm_cell_316/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_316_biasadd_readvariableop_resource5while_lstm_cell_316_biasadd_readvariableop_resource_0"n
4while_lstm_cell_316_matmul_1_readvariableop_resource6while_lstm_cell_316_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_316_matmul_readvariableop_resource4while_lstm_cell_316_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_316/BiasAdd/ReadVariableOp*while/lstm_cell_316/BiasAdd/ReadVariableOp2V
)while/lstm_cell_316/MatMul/ReadVariableOp)while/lstm_cell_316/MatMul/ReadVariableOp2Z
+while/lstm_cell_316/MatMul_1/ReadVariableOp+while/lstm_cell_316/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1921374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1921374___redundant_placeholder05
1while_while_cond_1921374___redundant_placeholder15
1while_while_cond_1921374___redundant_placeholder25
1while_while_cond_1921374___redundant_placeholder3
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
while_body_1918583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_316_1918607_0:	d?0
while_lstm_cell_316_1918609_0:	2?,
while_lstm_cell_316_1918611_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_316_1918607:	d?.
while_lstm_cell_316_1918609:	2?*
while_lstm_cell_316_1918611:	???+while/lstm_cell_316/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_316/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_316_1918607_0while_lstm_cell_316_1918609_0while_lstm_cell_316_1918611_0*
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1918524?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_316/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_316/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_316/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_316/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_316_1918607while_lstm_cell_316_1918607_0"<
while_lstm_cell_316_1918609while_lstm_cell_316_1918609_0"<
while_lstm_cell_316_1918611while_lstm_cell_316_1918611_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_316/StatefulPartitionedCall+while/lstm_cell_316/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_549_input;
 serving_default_lstm_549_input:0?????????=
	dense_1830
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
2dense_183/kernel
:2dense_183/bias
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
0:.	?2lstm_549/lstm_cell_549/kernel
::8	d?2'lstm_549/lstm_cell_549/recurrent_kernel
*:(?2lstm_549/lstm_cell_549/bias
0:.	d?2lstm_550/lstm_cell_550/kernel
::8	2?2'lstm_550/lstm_cell_550/recurrent_kernel
*:(?2lstm_550/lstm_cell_550/bias
/:-2(2lstm_551/lstm_cell_551/kernel
9:7
(2'lstm_551/lstm_cell_551/recurrent_kernel
):'(2lstm_551/lstm_cell_551/bias
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
2Adam/dense_183/kernel/m
!:2Adam/dense_183/bias/m
5:3	?2$Adam/lstm_549/lstm_cell_549/kernel/m
?:=	d?2.Adam/lstm_549/lstm_cell_549/recurrent_kernel/m
/:-?2"Adam/lstm_549/lstm_cell_549/bias/m
5:3	d?2$Adam/lstm_550/lstm_cell_550/kernel/m
?:=	2?2.Adam/lstm_550/lstm_cell_550/recurrent_kernel/m
/:-?2"Adam/lstm_550/lstm_cell_550/bias/m
4:22(2$Adam/lstm_551/lstm_cell_551/kernel/m
>:<
(2.Adam/lstm_551/lstm_cell_551/recurrent_kernel/m
.:,(2"Adam/lstm_551/lstm_cell_551/bias/m
':%
2Adam/dense_183/kernel/v
!:2Adam/dense_183/bias/v
5:3	?2$Adam/lstm_549/lstm_cell_549/kernel/v
?:=	d?2.Adam/lstm_549/lstm_cell_549/recurrent_kernel/v
/:-?2"Adam/lstm_549/lstm_cell_549/bias/v
5:3	d?2$Adam/lstm_550/lstm_cell_550/kernel/v
?:=	2?2.Adam/lstm_550/lstm_cell_550/recurrent_kernel/v
/:-?2"Adam/lstm_550/lstm_cell_550/bias/v
4:22(2$Adam/lstm_551/lstm_cell_551/kernel/v
>:<
(2.Adam/lstm_551/lstm_cell_551/recurrent_kernel/v
.:,(2"Adam/lstm_551/lstm_cell_551/bias/v
?2?
0__inference_sequential_183_layer_call_fn_1919510
0__inference_sequential_183_layer_call_fn_1920248
0__inference_sequential_183_layer_call_fn_1920275
0__inference_sequential_183_layer_call_fn_1920126?
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
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920702
K__inference_sequential_183_layer_call_and_return_conditional_losses_1921129
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920156
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920186?
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
"__inference__wrapped_model_1917961lstm_549_input"?
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
*__inference_lstm_549_layer_call_fn_1921140
*__inference_lstm_549_layer_call_fn_1921151
*__inference_lstm_549_layer_call_fn_1921162
*__inference_lstm_549_layer_call_fn_1921173?
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921316
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921459
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921602
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921745?
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
*__inference_lstm_550_layer_call_fn_1921756
*__inference_lstm_550_layer_call_fn_1921767
*__inference_lstm_550_layer_call_fn_1921778
*__inference_lstm_550_layer_call_fn_1921789?
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1921932
E__inference_lstm_550_layer_call_and_return_conditional_losses_1922075
E__inference_lstm_550_layer_call_and_return_conditional_losses_1922218
E__inference_lstm_550_layer_call_and_return_conditional_losses_1922361?
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
*__inference_lstm_551_layer_call_fn_1922372
*__inference_lstm_551_layer_call_fn_1922383
*__inference_lstm_551_layer_call_fn_1922394
*__inference_lstm_551_layer_call_fn_1922405?
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922548
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922691
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922834
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922977?
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
+__inference_dense_183_layer_call_fn_1922986?
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
F__inference_dense_183_layer_call_and_return_conditional_losses_1922996?
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
%__inference_signature_wrapper_1920221lstm_549_input"?
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
/__inference_lstm_cell_315_layer_call_fn_1923013
/__inference_lstm_cell_315_layer_call_fn_1923030?
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1923062
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1923094?
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
/__inference_lstm_cell_316_layer_call_fn_1923111
/__inference_lstm_cell_316_layer_call_fn_1923128?
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1923160
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1923192?
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
/__inference_lstm_cell_317_layer_call_fn_1923209
/__inference_lstm_cell_317_layer_call_fn_1923226?
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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1923258
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1923290?
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
"__inference__wrapped_model_1917961?-./012345!";?8
1?.
,?)
lstm_549_input?????????
? "5?2
0
	dense_183#? 
	dense_183??????????
F__inference_dense_183_layer_call_and_return_conditional_losses_1922996\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_183_layer_call_fn_1922986O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921316?-./O?L
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921459?-./O?L
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921602q-./??<
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
E__inference_lstm_549_layer_call_and_return_conditional_losses_1921745q-./??<
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
*__inference_lstm_549_layer_call_fn_1921140}-./O?L
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
*__inference_lstm_549_layer_call_fn_1921151}-./O?L
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
*__inference_lstm_549_layer_call_fn_1921162d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_549_layer_call_fn_1921173d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_550_layer_call_and_return_conditional_losses_1921932?012O?L
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1922075?012O?L
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1922218q012??<
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
E__inference_lstm_550_layer_call_and_return_conditional_losses_1922361q012??<
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
*__inference_lstm_550_layer_call_fn_1921756}012O?L
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
*__inference_lstm_550_layer_call_fn_1921767}012O?L
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
*__inference_lstm_550_layer_call_fn_1921778d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_550_layer_call_fn_1921789d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922548}345O?L
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922691}345O?L
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922834m345??<
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
E__inference_lstm_551_layer_call_and_return_conditional_losses_1922977m345??<
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
*__inference_lstm_551_layer_call_fn_1922372p345O?L
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
*__inference_lstm_551_layer_call_fn_1922383p345O?L
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
*__inference_lstm_551_layer_call_fn_1922394`345??<
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
*__inference_lstm_551_layer_call_fn_1922405`345??<
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1923062?-./??}
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
J__inference_lstm_cell_315_layer_call_and_return_conditional_losses_1923094?-./??}
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
/__inference_lstm_cell_315_layer_call_fn_1923013?-./??}
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
/__inference_lstm_cell_315_layer_call_fn_1923030?-./??}
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1923160?012??}
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
J__inference_lstm_cell_316_layer_call_and_return_conditional_losses_1923192?012??}
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
/__inference_lstm_cell_316_layer_call_fn_1923111?012??}
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
/__inference_lstm_cell_316_layer_call_fn_1923128?012??}
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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1923258?345??}
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
J__inference_lstm_cell_317_layer_call_and_return_conditional_losses_1923290?345??}
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
/__inference_lstm_cell_317_layer_call_fn_1923209?345??}
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
/__inference_lstm_cell_317_layer_call_fn_1923226?345??}
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
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920156y-./012345!"C?@
9?6
,?)
lstm_549_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920186y-./012345!"C?@
9?6
,?)
lstm_549_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_183_layer_call_and_return_conditional_losses_1920702q-./012345!";?8
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
K__inference_sequential_183_layer_call_and_return_conditional_losses_1921129q-./012345!";?8
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
0__inference_sequential_183_layer_call_fn_1919510l-./012345!"C?@
9?6
,?)
lstm_549_input?????????
p 

 
? "???????????
0__inference_sequential_183_layer_call_fn_1920126l-./012345!"C?@
9?6
,?)
lstm_549_input?????????
p

 
? "???????????
0__inference_sequential_183_layer_call_fn_1920248d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_183_layer_call_fn_1920275d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1920221?-./012345!"M?J
? 
C?@
>
lstm_549_input,?)
lstm_549_input?????????"5?2
0
	dense_183#? 
	dense_183?????????