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
dense_264/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_264/kernel
u
$dense_264/kernel/Read/ReadVariableOpReadVariableOpdense_264/kernel*
_output_shapes

:
*
dtype0
t
dense_264/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_264/bias
m
"dense_264/bias/Read/ReadVariableOpReadVariableOpdense_264/bias*
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
lstm_792/lstm_cell_792/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_792/lstm_cell_792/kernel
?
1lstm_792/lstm_cell_792/kernel/Read/ReadVariableOpReadVariableOplstm_792/lstm_cell_792/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_792/lstm_cell_792/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_792/lstm_cell_792/recurrent_kernel
?
;lstm_792/lstm_cell_792/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_792/lstm_cell_792/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_792/lstm_cell_792/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_792/lstm_cell_792/bias
?
/lstm_792/lstm_cell_792/bias/Read/ReadVariableOpReadVariableOplstm_792/lstm_cell_792/bias*
_output_shapes	
:?*
dtype0
?
lstm_793/lstm_cell_793/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_793/lstm_cell_793/kernel
?
1lstm_793/lstm_cell_793/kernel/Read/ReadVariableOpReadVariableOplstm_793/lstm_cell_793/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_793/lstm_cell_793/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_793/lstm_cell_793/recurrent_kernel
?
;lstm_793/lstm_cell_793/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_793/lstm_cell_793/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_793/lstm_cell_793/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_793/lstm_cell_793/bias
?
/lstm_793/lstm_cell_793/bias/Read/ReadVariableOpReadVariableOplstm_793/lstm_cell_793/bias*
_output_shapes	
:?*
dtype0
?
lstm_794/lstm_cell_794/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_794/lstm_cell_794/kernel
?
1lstm_794/lstm_cell_794/kernel/Read/ReadVariableOpReadVariableOplstm_794/lstm_cell_794/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_794/lstm_cell_794/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_794/lstm_cell_794/recurrent_kernel
?
;lstm_794/lstm_cell_794/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_794/lstm_cell_794/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_794/lstm_cell_794/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_794/lstm_cell_794/bias
?
/lstm_794/lstm_cell_794/bias/Read/ReadVariableOpReadVariableOplstm_794/lstm_cell_794/bias*
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
Adam/dense_264/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_264/kernel/m
?
+Adam/dense_264/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_264/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_264/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_264/bias/m
{
)Adam/dense_264/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_264/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_792/lstm_cell_792/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_792/lstm_cell_792/kernel/m
?
8Adam/lstm_792/lstm_cell_792/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_792/lstm_cell_792/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_792/lstm_cell_792/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_792/lstm_cell_792/recurrent_kernel/m
?
BAdam/lstm_792/lstm_cell_792/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_792/lstm_cell_792/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_792/lstm_cell_792/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_792/lstm_cell_792/bias/m
?
6Adam/lstm_792/lstm_cell_792/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_792/lstm_cell_792/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_793/lstm_cell_793/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_793/lstm_cell_793/kernel/m
?
8Adam/lstm_793/lstm_cell_793/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_793/lstm_cell_793/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_793/lstm_cell_793/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_793/lstm_cell_793/recurrent_kernel/m
?
BAdam/lstm_793/lstm_cell_793/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_793/lstm_cell_793/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_793/lstm_cell_793/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_793/lstm_cell_793/bias/m
?
6Adam/lstm_793/lstm_cell_793/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_793/lstm_cell_793/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_794/lstm_cell_794/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_794/lstm_cell_794/kernel/m
?
8Adam/lstm_794/lstm_cell_794/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_794/lstm_cell_794/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_794/lstm_cell_794/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_794/lstm_cell_794/recurrent_kernel/m
?
BAdam/lstm_794/lstm_cell_794/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_794/lstm_cell_794/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_794/lstm_cell_794/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_794/lstm_cell_794/bias/m
?
6Adam/lstm_794/lstm_cell_794/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_794/lstm_cell_794/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_264/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_264/kernel/v
?
+Adam/dense_264/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_264/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_264/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_264/bias/v
{
)Adam/dense_264/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_264/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_792/lstm_cell_792/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_792/lstm_cell_792/kernel/v
?
8Adam/lstm_792/lstm_cell_792/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_792/lstm_cell_792/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_792/lstm_cell_792/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_792/lstm_cell_792/recurrent_kernel/v
?
BAdam/lstm_792/lstm_cell_792/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_792/lstm_cell_792/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_792/lstm_cell_792/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_792/lstm_cell_792/bias/v
?
6Adam/lstm_792/lstm_cell_792/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_792/lstm_cell_792/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_793/lstm_cell_793/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_793/lstm_cell_793/kernel/v
?
8Adam/lstm_793/lstm_cell_793/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_793/lstm_cell_793/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_793/lstm_cell_793/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_793/lstm_cell_793/recurrent_kernel/v
?
BAdam/lstm_793/lstm_cell_793/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_793/lstm_cell_793/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_793/lstm_cell_793/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_793/lstm_cell_793/bias/v
?
6Adam/lstm_793/lstm_cell_793/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_793/lstm_cell_793/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_794/lstm_cell_794/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_794/lstm_cell_794/kernel/v
?
8Adam/lstm_794/lstm_cell_794/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_794/lstm_cell_794/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_794/lstm_cell_794/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_794/lstm_cell_794/recurrent_kernel/v
?
BAdam/lstm_794/lstm_cell_794/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_794/lstm_cell_794/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_794/lstm_cell_794/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_794/lstm_cell_794/bias/v
?
6Adam/lstm_794/lstm_cell_794/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_794/lstm_cell_794/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?>
value?>B?> B?>
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
	variables
trainable_variables
regularization_losses
		keras_api


signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
?
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+v?,v?-v?.v?/v?0v?
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
 
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
 
?
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
 

(0
)1
*2

(0
)1
*2
 
?

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
?
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
 

+0
,1
-2

+0
,1
-2
 
?

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
?
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
 

.0
/1
02

.0
/1
02
 
?

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_264/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_264/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
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
VARIABLE_VALUElstm_792/lstm_cell_792/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_792/lstm_cell_792/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_792/lstm_cell_792/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_793/lstm_cell_793/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_793/lstm_cell_793/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_793/lstm_cell_793/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_794/lstm_cell_794/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_794/lstm_cell_794/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_794/lstm_cell_794/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

\0
 
 
 

(0
)1
*2

(0
)1
*2
 
?
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
 

0
 
 
 
 

+0
,1
-2

+0
,1
-2
 
?
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
 
 

0
 
 
 
 

.0
/1
02

.0
/1
02
 
?
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ltotal
	mcount
n	variables
o	keras_api
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
l0
m1

n	variables
}
VARIABLE_VALUEAdam/dense_264/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_264/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_792/lstm_cell_792/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_792/lstm_cell_792/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_792/lstm_cell_792/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_793/lstm_cell_793/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_793/lstm_cell_793/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_793/lstm_cell_793/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_794/lstm_cell_794/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_794/lstm_cell_794/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_794/lstm_cell_794/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_264/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_264/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_792/lstm_cell_792/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_792/lstm_cell_792/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_792/lstm_cell_792/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_793/lstm_cell_793/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_793/lstm_cell_793/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_793/lstm_cell_793/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_794/lstm_cell_794/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_794/lstm_cell_794/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_794/lstm_cell_794/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_792_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_792_inputlstm_792/lstm_cell_792/kernel'lstm_792/lstm_cell_792/recurrent_kernellstm_792/lstm_cell_792/biaslstm_793/lstm_cell_793/kernel'lstm_793/lstm_cell_793/recurrent_kernellstm_793/lstm_cell_793/biaslstm_794/lstm_cell_794/kernel'lstm_794/lstm_cell_794/recurrent_kernellstm_794/lstm_cell_794/biasdense_264/kerneldense_264/bias*
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
%__inference_signature_wrapper_4835833
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_264/kernel/Read/ReadVariableOp"dense_264/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_792/lstm_cell_792/kernel/Read/ReadVariableOp;lstm_792/lstm_cell_792/recurrent_kernel/Read/ReadVariableOp/lstm_792/lstm_cell_792/bias/Read/ReadVariableOp1lstm_793/lstm_cell_793/kernel/Read/ReadVariableOp;lstm_793/lstm_cell_793/recurrent_kernel/Read/ReadVariableOp/lstm_793/lstm_cell_793/bias/Read/ReadVariableOp1lstm_794/lstm_cell_794/kernel/Read/ReadVariableOp;lstm_794/lstm_cell_794/recurrent_kernel/Read/ReadVariableOp/lstm_794/lstm_cell_794/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_264/kernel/m/Read/ReadVariableOp)Adam/dense_264/bias/m/Read/ReadVariableOp8Adam/lstm_792/lstm_cell_792/kernel/m/Read/ReadVariableOpBAdam/lstm_792/lstm_cell_792/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_792/lstm_cell_792/bias/m/Read/ReadVariableOp8Adam/lstm_793/lstm_cell_793/kernel/m/Read/ReadVariableOpBAdam/lstm_793/lstm_cell_793/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_793/lstm_cell_793/bias/m/Read/ReadVariableOp8Adam/lstm_794/lstm_cell_794/kernel/m/Read/ReadVariableOpBAdam/lstm_794/lstm_cell_794/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_794/lstm_cell_794/bias/m/Read/ReadVariableOp+Adam/dense_264/kernel/v/Read/ReadVariableOp)Adam/dense_264/bias/v/Read/ReadVariableOp8Adam/lstm_792/lstm_cell_792/kernel/v/Read/ReadVariableOpBAdam/lstm_792/lstm_cell_792/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_792/lstm_cell_792/bias/v/Read/ReadVariableOp8Adam/lstm_793/lstm_cell_793/kernel/v/Read/ReadVariableOpBAdam/lstm_793/lstm_cell_793/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_793/lstm_cell_793/bias/v/Read/ReadVariableOp8Adam/lstm_794/lstm_cell_794/kernel/v/Read/ReadVariableOpBAdam/lstm_794/lstm_cell_794/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_794/lstm_cell_794/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4839045
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_264/kerneldense_264/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_792/lstm_cell_792/kernel'lstm_792/lstm_cell_792/recurrent_kernellstm_792/lstm_cell_792/biaslstm_793/lstm_cell_793/kernel'lstm_793/lstm_cell_793/recurrent_kernellstm_793/lstm_cell_793/biaslstm_794/lstm_cell_794/kernel'lstm_794/lstm_cell_794/recurrent_kernellstm_794/lstm_cell_794/biastotalcountAdam/dense_264/kernel/mAdam/dense_264/bias/m$Adam/lstm_792/lstm_cell_792/kernel/m.Adam/lstm_792/lstm_cell_792/recurrent_kernel/m"Adam/lstm_792/lstm_cell_792/bias/m$Adam/lstm_793/lstm_cell_793/kernel/m.Adam/lstm_793/lstm_cell_793/recurrent_kernel/m"Adam/lstm_793/lstm_cell_793/bias/m$Adam/lstm_794/lstm_cell_794/kernel/m.Adam/lstm_794/lstm_cell_794/recurrent_kernel/m"Adam/lstm_794/lstm_cell_794/bias/mAdam/dense_264/kernel/vAdam/dense_264/bias/v$Adam/lstm_792/lstm_cell_792/kernel/v.Adam/lstm_792/lstm_cell_792/recurrent_kernel/v"Adam/lstm_792/lstm_cell_792/bias/v$Adam/lstm_793/lstm_cell_793/kernel/v.Adam/lstm_793/lstm_cell_793/recurrent_kernel/v"Adam/lstm_793/lstm_cell_793/bias/v$Adam/lstm_794/lstm_cell_794/kernel/v.Adam/lstm_794/lstm_cell_794/recurrent_kernel/v"Adam/lstm_794/lstm_cell_794/bias/v*4
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
#__inference__traced_restore_4839175??+
?C
?

lstm_792_while_body_4835946.
*lstm_792_while_lstm_792_while_loop_counter4
0lstm_792_while_lstm_792_while_maximum_iterations
lstm_792_while_placeholder 
lstm_792_while_placeholder_1 
lstm_792_while_placeholder_2 
lstm_792_while_placeholder_3-
)lstm_792_while_lstm_792_strided_slice_1_0i
elstm_792_while_tensorarrayv2read_tensorlistgetitem_lstm_792_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_792_while_lstm_cell_792_matmul_readvariableop_resource_0:	?R
?lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource_0:	d?M
>lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource_0:	?
lstm_792_while_identity
lstm_792_while_identity_1
lstm_792_while_identity_2
lstm_792_while_identity_3
lstm_792_while_identity_4
lstm_792_while_identity_5+
'lstm_792_while_lstm_792_strided_slice_1g
clstm_792_while_tensorarrayv2read_tensorlistgetitem_lstm_792_tensorarrayunstack_tensorlistfromtensorN
;lstm_792_while_lstm_cell_792_matmul_readvariableop_resource:	?P
=lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource:	d?K
<lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource:	???3lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp?2lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp?4lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp?
@lstm_792/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_792/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_792_while_tensorarrayv2read_tensorlistgetitem_lstm_792_tensorarrayunstack_tensorlistfromtensor_0lstm_792_while_placeholderIlstm_792/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_792/while/lstm_cell_792/MatMul/ReadVariableOpReadVariableOp=lstm_792_while_lstm_cell_792_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_792/while/lstm_cell_792/MatMulMatMul9lstm_792/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp?lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_792/while/lstm_cell_792/MatMul_1MatMullstm_792_while_placeholder_2<lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_792/while/lstm_cell_792/addAddV2-lstm_792/while/lstm_cell_792/MatMul:product:0/lstm_792/while/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp>lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_792/while/lstm_cell_792/BiasAddBiasAdd$lstm_792/while/lstm_cell_792/add:z:0;lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_792/while/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_792/while/lstm_cell_792/splitSplit5lstm_792/while/lstm_cell_792/split/split_dim:output:0-lstm_792/while/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_792/while/lstm_cell_792/SigmoidSigmoid+lstm_792/while/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_792/while/lstm_cell_792/Sigmoid_1Sigmoid+lstm_792/while/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_792/while/lstm_cell_792/mulMul*lstm_792/while/lstm_cell_792/Sigmoid_1:y:0lstm_792_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_792/while/lstm_cell_792/ReluRelu+lstm_792/while/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_792/while/lstm_cell_792/mul_1Mul(lstm_792/while/lstm_cell_792/Sigmoid:y:0/lstm_792/while/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_792/while/lstm_cell_792/add_1AddV2$lstm_792/while/lstm_cell_792/mul:z:0&lstm_792/while/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_792/while/lstm_cell_792/Sigmoid_2Sigmoid+lstm_792/while/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_792/while/lstm_cell_792/Relu_1Relu&lstm_792/while/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_792/while/lstm_cell_792/mul_2Mul*lstm_792/while/lstm_cell_792/Sigmoid_2:y:01lstm_792/while/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_792/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_792_while_placeholder_1lstm_792_while_placeholder&lstm_792/while/lstm_cell_792/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_792/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_792/while/addAddV2lstm_792_while_placeholderlstm_792/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_792/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_792/while/add_1AddV2*lstm_792_while_lstm_792_while_loop_counterlstm_792/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_792/while/IdentityIdentitylstm_792/while/add_1:z:0^lstm_792/while/NoOp*
T0*
_output_shapes
: ?
lstm_792/while/Identity_1Identity0lstm_792_while_lstm_792_while_maximum_iterations^lstm_792/while/NoOp*
T0*
_output_shapes
: t
lstm_792/while/Identity_2Identitylstm_792/while/add:z:0^lstm_792/while/NoOp*
T0*
_output_shapes
: ?
lstm_792/while/Identity_3IdentityClstm_792/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_792/while/NoOp*
T0*
_output_shapes
: ?
lstm_792/while/Identity_4Identity&lstm_792/while/lstm_cell_792/mul_2:z:0^lstm_792/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_792/while/Identity_5Identity&lstm_792/while/lstm_cell_792/add_1:z:0^lstm_792/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_792/while/NoOpNoOp4^lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp3^lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp5^lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_792_while_identity lstm_792/while/Identity:output:0"?
lstm_792_while_identity_1"lstm_792/while/Identity_1:output:0"?
lstm_792_while_identity_2"lstm_792/while/Identity_2:output:0"?
lstm_792_while_identity_3"lstm_792/while/Identity_3:output:0"?
lstm_792_while_identity_4"lstm_792/while/Identity_4:output:0"?
lstm_792_while_identity_5"lstm_792/while/Identity_5:output:0"T
'lstm_792_while_lstm_792_strided_slice_1)lstm_792_while_lstm_792_strided_slice_1_0"~
<lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource>lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource_0"?
=lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource?lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource_0"|
;lstm_792_while_lstm_cell_792_matmul_readvariableop_resource=lstm_792_while_lstm_cell_792_matmul_readvariableop_resource_0"?
clstm_792_while_tensorarrayv2read_tensorlistgetitem_lstm_792_tensorarrayunstack_tensorlistfromtensorelstm_792_while_tensorarrayv2read_tensorlistgetitem_lstm_792_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp3lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp2h
2lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp2lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp2l
4lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp4lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4833653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4833653___redundant_placeholder05
1while_while_cond_4833653___redundant_placeholder15
1while_while_cond_4833653___redundant_placeholder25
1while_while_cond_4833653___redundant_placeholder3
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
while_cond_4837602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4837602___redundant_placeholder05
1while_while_cond_4837602___redundant_placeholder15
1while_while_cond_4837602___redundant_placeholder25
1while_while_cond_4837602___redundant_placeholder3
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
0__inference_sequential_264_layer_call_fn_4835122
lstm_792_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_792_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835097o
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
_user_specified_namelstm_792_input
?J
?
E__inference_lstm_794_layer_call_and_return_conditional_losses_4835072

inputs>
,lstm_cell_794_matmul_readvariableop_resource:2(@
.lstm_cell_794_matmul_1_readvariableop_resource:
(;
-lstm_cell_794_biasadd_readvariableop_resource:(
identity??$lstm_cell_794/BiasAdd/ReadVariableOp?#lstm_cell_794/MatMul/ReadVariableOp?%lstm_cell_794/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_794/MatMul/ReadVariableOpReadVariableOp,lstm_cell_794_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_794/MatMulMatMulstrided_slice_2:output:0+lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_794_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_794/MatMul_1MatMulzeros:output:0-lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_794/addAddV2lstm_cell_794/MatMul:product:0 lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_794_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_794/BiasAddBiasAddlstm_cell_794/add:z:0,lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_794/splitSplit&lstm_cell_794/split/split_dim:output:0lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_794/SigmoidSigmoidlstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_1Sigmoidlstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_794/mulMullstm_cell_794/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_794/ReluRelulstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_1Mullstm_cell_794/Sigmoid:y:0 lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_794/add_1AddV2lstm_cell_794/mul:z:0lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_2Sigmoidlstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_794/Relu_1Relulstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_2Mullstm_cell_794/Sigmoid_2:y:0"lstm_cell_794/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_794_matmul_readvariableop_resource.lstm_cell_794_matmul_1_readvariableop_resource-lstm_cell_794_biasadd_readvariableop_resource*
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
while_body_4834988*
condR
while_cond_4834987*K
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
NoOpNoOp%^lstm_cell_794/BiasAdd/ReadVariableOp$^lstm_cell_794/MatMul/ReadVariableOp&^lstm_cell_794/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_794/BiasAdd/ReadVariableOp$lstm_cell_794/BiasAdd/ReadVariableOp2J
#lstm_cell_794/MatMul/ReadVariableOp#lstm_cell_794/MatMul/ReadVariableOp2N
%lstm_cell_794/MatMul_1/ReadVariableOp%lstm_cell_794/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4833640

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
*__inference_lstm_792_layer_call_fn_4836763
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4833914|
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
?
?
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835798
lstm_792_input#
lstm_792_4835771:	?#
lstm_792_4835773:	d?
lstm_792_4835775:	?#
lstm_793_4835778:	d?#
lstm_793_4835780:	2?
lstm_793_4835782:	?"
lstm_794_4835785:2("
lstm_794_4835787:
(
lstm_794_4835789:(#
dense_264_4835792:

dense_264_4835794:
identity??!dense_264/StatefulPartitionedCall? lstm_792/StatefulPartitionedCall? lstm_793/StatefulPartitionedCall? lstm_794/StatefulPartitionedCall?
 lstm_792/StatefulPartitionedCallStatefulPartitionedCalllstm_792_inputlstm_792_4835771lstm_792_4835773lstm_792_4835775*
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4835618?
 lstm_793/StatefulPartitionedCallStatefulPartitionedCall)lstm_792/StatefulPartitionedCall:output:0lstm_793_4835778lstm_793_4835780lstm_793_4835782*
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4835453?
 lstm_794/StatefulPartitionedCallStatefulPartitionedCall)lstm_793/StatefulPartitionedCall:output:0lstm_794_4835785lstm_794_4835787lstm_794_4835789*
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4835288?
!dense_264/StatefulPartitionedCallStatefulPartitionedCall)lstm_794/StatefulPartitionedCall:output:0dense_264_4835792dense_264_4835794*
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
F__inference_dense_264_layer_call_and_return_conditional_losses_4835090y
IdentityIdentity*dense_264/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_264/StatefulPartitionedCall!^lstm_792/StatefulPartitionedCall!^lstm_793/StatefulPartitionedCall!^lstm_794/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_264/StatefulPartitionedCall!dense_264/StatefulPartitionedCall2D
 lstm_792/StatefulPartitionedCall lstm_792/StatefulPartitionedCall2D
 lstm_793/StatefulPartitionedCall lstm_793/StatefulPartitionedCall2D
 lstm_794/StatefulPartitionedCall lstm_794/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_792_input
?T
?
*sequential_264_lstm_794_while_body_4833483L
Hsequential_264_lstm_794_while_sequential_264_lstm_794_while_loop_counterR
Nsequential_264_lstm_794_while_sequential_264_lstm_794_while_maximum_iterations-
)sequential_264_lstm_794_while_placeholder/
+sequential_264_lstm_794_while_placeholder_1/
+sequential_264_lstm_794_while_placeholder_2/
+sequential_264_lstm_794_while_placeholder_3K
Gsequential_264_lstm_794_while_sequential_264_lstm_794_strided_slice_1_0?
?sequential_264_lstm_794_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_794_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_264_lstm_794_while_lstm_cell_794_matmul_readvariableop_resource_0:2(`
Nsequential_264_lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource_0:
([
Msequential_264_lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource_0:(*
&sequential_264_lstm_794_while_identity,
(sequential_264_lstm_794_while_identity_1,
(sequential_264_lstm_794_while_identity_2,
(sequential_264_lstm_794_while_identity_3,
(sequential_264_lstm_794_while_identity_4,
(sequential_264_lstm_794_while_identity_5I
Esequential_264_lstm_794_while_sequential_264_lstm_794_strided_slice_1?
?sequential_264_lstm_794_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_794_tensorarrayunstack_tensorlistfromtensor\
Jsequential_264_lstm_794_while_lstm_cell_794_matmul_readvariableop_resource:2(^
Lsequential_264_lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource:
(Y
Ksequential_264_lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource:(??Bsequential_264/lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp?Asequential_264/lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp?Csequential_264/lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp?
Osequential_264/lstm_794/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_264/lstm_794/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_264_lstm_794_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_794_tensorarrayunstack_tensorlistfromtensor_0)sequential_264_lstm_794_while_placeholderXsequential_264/lstm_794/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_264/lstm_794/while/lstm_cell_794/MatMul/ReadVariableOpReadVariableOpLsequential_264_lstm_794_while_lstm_cell_794_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_264/lstm_794/while/lstm_cell_794/MatMulMatMulHsequential_264/lstm_794/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_264/lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_264/lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOpNsequential_264_lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_264/lstm_794/while/lstm_cell_794/MatMul_1MatMul+sequential_264_lstm_794_while_placeholder_2Ksequential_264/lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_264/lstm_794/while/lstm_cell_794/addAddV2<sequential_264/lstm_794/while/lstm_cell_794/MatMul:product:0>sequential_264/lstm_794/while/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_264/lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOpMsequential_264_lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_264/lstm_794/while/lstm_cell_794/BiasAddBiasAdd3sequential_264/lstm_794/while/lstm_cell_794/add:z:0Jsequential_264/lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_264/lstm_794/while/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_264/lstm_794/while/lstm_cell_794/splitSplitDsequential_264/lstm_794/while/lstm_cell_794/split/split_dim:output:0<sequential_264/lstm_794/while/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_264/lstm_794/while/lstm_cell_794/SigmoidSigmoid:sequential_264/lstm_794/while/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_264/lstm_794/while/lstm_cell_794/Sigmoid_1Sigmoid:sequential_264/lstm_794/while/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_264/lstm_794/while/lstm_cell_794/mulMul9sequential_264/lstm_794/while/lstm_cell_794/Sigmoid_1:y:0+sequential_264_lstm_794_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_264/lstm_794/while/lstm_cell_794/ReluRelu:sequential_264/lstm_794/while/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_264/lstm_794/while/lstm_cell_794/mul_1Mul7sequential_264/lstm_794/while/lstm_cell_794/Sigmoid:y:0>sequential_264/lstm_794/while/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_264/lstm_794/while/lstm_cell_794/add_1AddV23sequential_264/lstm_794/while/lstm_cell_794/mul:z:05sequential_264/lstm_794/while/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_264/lstm_794/while/lstm_cell_794/Sigmoid_2Sigmoid:sequential_264/lstm_794/while/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_264/lstm_794/while/lstm_cell_794/Relu_1Relu5sequential_264/lstm_794/while/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_264/lstm_794/while/lstm_cell_794/mul_2Mul9sequential_264/lstm_794/while/lstm_cell_794/Sigmoid_2:y:0@sequential_264/lstm_794/while/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_264/lstm_794/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_264_lstm_794_while_placeholder_1)sequential_264_lstm_794_while_placeholder5sequential_264/lstm_794/while/lstm_cell_794/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_264/lstm_794/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_264/lstm_794/while/addAddV2)sequential_264_lstm_794_while_placeholder,sequential_264/lstm_794/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_264/lstm_794/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_264/lstm_794/while/add_1AddV2Hsequential_264_lstm_794_while_sequential_264_lstm_794_while_loop_counter.sequential_264/lstm_794/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_264/lstm_794/while/IdentityIdentity'sequential_264/lstm_794/while/add_1:z:0#^sequential_264/lstm_794/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_794/while/Identity_1IdentityNsequential_264_lstm_794_while_sequential_264_lstm_794_while_maximum_iterations#^sequential_264/lstm_794/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_794/while/Identity_2Identity%sequential_264/lstm_794/while/add:z:0#^sequential_264/lstm_794/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_794/while/Identity_3IdentityRsequential_264/lstm_794/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_264/lstm_794/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_794/while/Identity_4Identity5sequential_264/lstm_794/while/lstm_cell_794/mul_2:z:0#^sequential_264/lstm_794/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_264/lstm_794/while/Identity_5Identity5sequential_264/lstm_794/while/lstm_cell_794/add_1:z:0#^sequential_264/lstm_794/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_264/lstm_794/while/NoOpNoOpC^sequential_264/lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOpB^sequential_264/lstm_794/while/lstm_cell_794/MatMul/ReadVariableOpD^sequential_264/lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_264_lstm_794_while_identity/sequential_264/lstm_794/while/Identity:output:0"]
(sequential_264_lstm_794_while_identity_11sequential_264/lstm_794/while/Identity_1:output:0"]
(sequential_264_lstm_794_while_identity_21sequential_264/lstm_794/while/Identity_2:output:0"]
(sequential_264_lstm_794_while_identity_31sequential_264/lstm_794/while/Identity_3:output:0"]
(sequential_264_lstm_794_while_identity_41sequential_264/lstm_794/while/Identity_4:output:0"]
(sequential_264_lstm_794_while_identity_51sequential_264/lstm_794/while/Identity_5:output:0"?
Ksequential_264_lstm_794_while_lstm_cell_794_biasadd_readvariableop_resourceMsequential_264_lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource_0"?
Lsequential_264_lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resourceNsequential_264_lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource_0"?
Jsequential_264_lstm_794_while_lstm_cell_794_matmul_readvariableop_resourceLsequential_264_lstm_794_while_lstm_cell_794_matmul_readvariableop_resource_0"?
Esequential_264_lstm_794_while_sequential_264_lstm_794_strided_slice_1Gsequential_264_lstm_794_while_sequential_264_lstm_794_strided_slice_1_0"?
?sequential_264_lstm_794_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_794_tensorarrayunstack_tensorlistfromtensor?sequential_264_lstm_794_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_794_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_264/lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOpBsequential_264/lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp2?
Asequential_264/lstm_794/while/lstm_cell_794/MatMul/ReadVariableOpAsequential_264/lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp2?
Csequential_264/lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOpCsequential_264/lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837687
inputs_0?
,lstm_cell_793_matmul_readvariableop_resource:	d?A
.lstm_cell_793_matmul_1_readvariableop_resource:	2?<
-lstm_cell_793_biasadd_readvariableop_resource:	?
identity??$lstm_cell_793/BiasAdd/ReadVariableOp?#lstm_cell_793/MatMul/ReadVariableOp?%lstm_cell_793/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_793/MatMul/ReadVariableOpReadVariableOp,lstm_cell_793_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_793/MatMulMatMulstrided_slice_2:output:0+lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_793_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_793/MatMul_1MatMulzeros:output:0-lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_793/addAddV2lstm_cell_793/MatMul:product:0 lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_793_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_793/BiasAddBiasAddlstm_cell_793/add:z:0,lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_793/splitSplit&lstm_cell_793/split/split_dim:output:0lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_793/SigmoidSigmoidlstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_1Sigmoidlstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_793/mulMullstm_cell_793/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_793/ReluRelulstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_1Mullstm_cell_793/Sigmoid:y:0 lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_793/add_1AddV2lstm_cell_793/mul:z:0lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_2Sigmoidlstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_793/Relu_1Relulstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_2Mullstm_cell_793/Sigmoid_2:y:0"lstm_cell_793/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_793_matmul_readvariableop_resource.lstm_cell_793_matmul_1_readvariableop_resource-lstm_cell_793_biasadd_readvariableop_resource*
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
while_body_4837603*
condR
while_cond_4837602*K
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
NoOpNoOp%^lstm_cell_793/BiasAdd/ReadVariableOp$^lstm_cell_793/MatMul/ReadVariableOp&^lstm_cell_793/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_793/BiasAdd/ReadVariableOp$lstm_cell_793/BiasAdd/ReadVariableOp2J
#lstm_cell_793/MatMul/ReadVariableOp#lstm_cell_793/MatMul/ReadVariableOp2N
%lstm_cell_793/MatMul_1/ReadVariableOp%lstm_cell_793/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?	
?
F__inference_dense_264_layer_call_and_return_conditional_losses_4835090

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
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835686

inputs#
lstm_792_4835659:	?#
lstm_792_4835661:	d?
lstm_792_4835663:	?#
lstm_793_4835666:	d?#
lstm_793_4835668:	2?
lstm_793_4835670:	?"
lstm_794_4835673:2("
lstm_794_4835675:
(
lstm_794_4835677:(#
dense_264_4835680:

dense_264_4835682:
identity??!dense_264/StatefulPartitionedCall? lstm_792/StatefulPartitionedCall? lstm_793/StatefulPartitionedCall? lstm_794/StatefulPartitionedCall?
 lstm_792/StatefulPartitionedCallStatefulPartitionedCallinputslstm_792_4835659lstm_792_4835661lstm_792_4835663*
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4835618?
 lstm_793/StatefulPartitionedCallStatefulPartitionedCall)lstm_792/StatefulPartitionedCall:output:0lstm_793_4835666lstm_793_4835668lstm_793_4835670*
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4835453?
 lstm_794/StatefulPartitionedCallStatefulPartitionedCall)lstm_793/StatefulPartitionedCall:output:0lstm_794_4835673lstm_794_4835675lstm_794_4835677*
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4835288?
!dense_264/StatefulPartitionedCallStatefulPartitionedCall)lstm_794/StatefulPartitionedCall:output:0dense_264_4835680dense_264_4835682*
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
F__inference_dense_264_layer_call_and_return_conditional_losses_4835090y
IdentityIdentity*dense_264/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_264/StatefulPartitionedCall!^lstm_792/StatefulPartitionedCall!^lstm_793/StatefulPartitionedCall!^lstm_794/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_264/StatefulPartitionedCall!dense_264/StatefulPartitionedCall2D
 lstm_792/StatefulPartitionedCall lstm_792/StatefulPartitionedCall2D
 lstm_793/StatefulPartitionedCall lstm_793/StatefulPartitionedCall2D
 lstm_794/StatefulPartitionedCall lstm_794/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4838218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4838218___redundant_placeholder05
1while_while_cond_4838218___redundant_placeholder15
1while_while_cond_4838218___redundant_placeholder25
1while_while_cond_4838218___redundant_placeholder3
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
while_cond_4836843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4836843___redundant_placeholder05
1while_while_cond_4836843___redundant_placeholder15
1while_while_cond_4836843___redundant_placeholder25
1while_while_cond_4836843___redundant_placeholder3
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4834264

inputs(
lstm_cell_793_4834182:	d?(
lstm_cell_793_4834184:	2?$
lstm_cell_793_4834186:	?
identity??%lstm_cell_793/StatefulPartitionedCall?while;
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
%lstm_cell_793/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_793_4834182lstm_cell_793_4834184lstm_cell_793_4834186*
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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4834136n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_793_4834182lstm_cell_793_4834184lstm_cell_793_4834186*
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
while_body_4834195*
condR
while_cond_4834194*K
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
NoOpNoOp&^lstm_cell_793/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_793/StatefulPartitionedCall%lstm_cell_793/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_793_layer_call_fn_4838723

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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4833990o
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
?
*__inference_lstm_792_layer_call_fn_4836785

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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4835618s
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
while_cond_4837888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4837888___redundant_placeholder05
1while_while_cond_4837888___redundant_placeholder15
1while_while_cond_4837888___redundant_placeholder25
1while_while_cond_4837888___redundant_placeholder3
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4834614

inputs'
lstm_cell_794_4834532:2('
lstm_cell_794_4834534:
(#
lstm_cell_794_4834536:(
identity??%lstm_cell_794/StatefulPartitionedCall?while;
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
%lstm_cell_794/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_794_4834532lstm_cell_794_4834534lstm_cell_794_4834536*
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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4834486n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_794_4834532lstm_cell_794_4834534lstm_cell_794_4834536*
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
while_body_4834545*
condR
while_cond_4834544*K
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
NoOpNoOp&^lstm_cell_794/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_794/StatefulPartitionedCall%lstm_cell_794/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_4833845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_792_4833869_0:	?0
while_lstm_cell_792_4833871_0:	d?,
while_lstm_cell_792_4833873_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_792_4833869:	?.
while_lstm_cell_792_4833871:	d?*
while_lstm_cell_792_4833873:	???+while/lstm_cell_792/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_792/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_792_4833869_0while_lstm_cell_792_4833871_0while_lstm_cell_792_4833873_0*
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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4833786?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_792/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_792/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_792/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_792/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_792_4833869while_lstm_cell_792_4833869_0"<
while_lstm_cell_792_4833871while_lstm_cell_792_4833871_0"<
while_lstm_cell_792_4833873while_lstm_cell_792_4833873_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_792/StatefulPartitionedCall+while/lstm_cell_792/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_792_while_cond_4835945.
*lstm_792_while_lstm_792_while_loop_counter4
0lstm_792_while_lstm_792_while_maximum_iterations
lstm_792_while_placeholder 
lstm_792_while_placeholder_1 
lstm_792_while_placeholder_2 
lstm_792_while_placeholder_30
,lstm_792_while_less_lstm_792_strided_slice_1G
Clstm_792_while_lstm_792_while_cond_4835945___redundant_placeholder0G
Clstm_792_while_lstm_792_while_cond_4835945___redundant_placeholder1G
Clstm_792_while_lstm_792_while_cond_4835945___redundant_placeholder2G
Clstm_792_while_lstm_792_while_cond_4835945___redundant_placeholder3
lstm_792_while_identity
?
lstm_792/while/LessLesslstm_792_while_placeholder,lstm_792_while_less_lstm_792_strided_slice_1*
T0*
_output_shapes
: ]
lstm_792/while/IdentityIdentitylstm_792/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_792_while_identity lstm_792/while/Identity:output:0*(
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
"__inference__wrapped_model_4833573
lstm_792_inputW
Dsequential_264_lstm_792_lstm_cell_792_matmul_readvariableop_resource:	?Y
Fsequential_264_lstm_792_lstm_cell_792_matmul_1_readvariableop_resource:	d?T
Esequential_264_lstm_792_lstm_cell_792_biasadd_readvariableop_resource:	?W
Dsequential_264_lstm_793_lstm_cell_793_matmul_readvariableop_resource:	d?Y
Fsequential_264_lstm_793_lstm_cell_793_matmul_1_readvariableop_resource:	2?T
Esequential_264_lstm_793_lstm_cell_793_biasadd_readvariableop_resource:	?V
Dsequential_264_lstm_794_lstm_cell_794_matmul_readvariableop_resource:2(X
Fsequential_264_lstm_794_lstm_cell_794_matmul_1_readvariableop_resource:
(S
Esequential_264_lstm_794_lstm_cell_794_biasadd_readvariableop_resource:(I
7sequential_264_dense_264_matmul_readvariableop_resource:
F
8sequential_264_dense_264_biasadd_readvariableop_resource:
identity??/sequential_264/dense_264/BiasAdd/ReadVariableOp?.sequential_264/dense_264/MatMul/ReadVariableOp?<sequential_264/lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp?;sequential_264/lstm_792/lstm_cell_792/MatMul/ReadVariableOp?=sequential_264/lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp?sequential_264/lstm_792/while?<sequential_264/lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp?;sequential_264/lstm_793/lstm_cell_793/MatMul/ReadVariableOp?=sequential_264/lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp?sequential_264/lstm_793/while?<sequential_264/lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp?;sequential_264/lstm_794/lstm_cell_794/MatMul/ReadVariableOp?=sequential_264/lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp?sequential_264/lstm_794/while[
sequential_264/lstm_792/ShapeShapelstm_792_input*
T0*
_output_shapes
:u
+sequential_264/lstm_792/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_264/lstm_792/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_264/lstm_792/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_264/lstm_792/strided_sliceStridedSlice&sequential_264/lstm_792/Shape:output:04sequential_264/lstm_792/strided_slice/stack:output:06sequential_264/lstm_792/strided_slice/stack_1:output:06sequential_264/lstm_792/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_264/lstm_792/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_264/lstm_792/zeros/packedPack.sequential_264/lstm_792/strided_slice:output:0/sequential_264/lstm_792/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_264/lstm_792/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_264/lstm_792/zerosFill-sequential_264/lstm_792/zeros/packed:output:0,sequential_264/lstm_792/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_264/lstm_792/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_264/lstm_792/zeros_1/packedPack.sequential_264/lstm_792/strided_slice:output:01sequential_264/lstm_792/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_264/lstm_792/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_264/lstm_792/zeros_1Fill/sequential_264/lstm_792/zeros_1/packed:output:0.sequential_264/lstm_792/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_264/lstm_792/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_264/lstm_792/transpose	Transposelstm_792_input/sequential_264/lstm_792/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_264/lstm_792/Shape_1Shape%sequential_264/lstm_792/transpose:y:0*
T0*
_output_shapes
:w
-sequential_264/lstm_792/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_264/lstm_792/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_264/lstm_792/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_264/lstm_792/strided_slice_1StridedSlice(sequential_264/lstm_792/Shape_1:output:06sequential_264/lstm_792/strided_slice_1/stack:output:08sequential_264/lstm_792/strided_slice_1/stack_1:output:08sequential_264/lstm_792/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_264/lstm_792/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_264/lstm_792/TensorArrayV2TensorListReserve<sequential_264/lstm_792/TensorArrayV2/element_shape:output:00sequential_264/lstm_792/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_264/lstm_792/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_264/lstm_792/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_264/lstm_792/transpose:y:0Vsequential_264/lstm_792/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_264/lstm_792/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_264/lstm_792/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_264/lstm_792/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_264/lstm_792/strided_slice_2StridedSlice%sequential_264/lstm_792/transpose:y:06sequential_264/lstm_792/strided_slice_2/stack:output:08sequential_264/lstm_792/strided_slice_2/stack_1:output:08sequential_264/lstm_792/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_264/lstm_792/lstm_cell_792/MatMul/ReadVariableOpReadVariableOpDsequential_264_lstm_792_lstm_cell_792_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_264/lstm_792/lstm_cell_792/MatMulMatMul0sequential_264/lstm_792/strided_slice_2:output:0Csequential_264/lstm_792/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_264/lstm_792/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOpFsequential_264_lstm_792_lstm_cell_792_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_264/lstm_792/lstm_cell_792/MatMul_1MatMul&sequential_264/lstm_792/zeros:output:0Esequential_264/lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_264/lstm_792/lstm_cell_792/addAddV26sequential_264/lstm_792/lstm_cell_792/MatMul:product:08sequential_264/lstm_792/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_264/lstm_792/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOpEsequential_264_lstm_792_lstm_cell_792_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_264/lstm_792/lstm_cell_792/BiasAddBiasAdd-sequential_264/lstm_792/lstm_cell_792/add:z:0Dsequential_264/lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_264/lstm_792/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_264/lstm_792/lstm_cell_792/splitSplit>sequential_264/lstm_792/lstm_cell_792/split/split_dim:output:06sequential_264/lstm_792/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_264/lstm_792/lstm_cell_792/SigmoidSigmoid4sequential_264/lstm_792/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_264/lstm_792/lstm_cell_792/Sigmoid_1Sigmoid4sequential_264/lstm_792/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_264/lstm_792/lstm_cell_792/mulMul3sequential_264/lstm_792/lstm_cell_792/Sigmoid_1:y:0(sequential_264/lstm_792/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_264/lstm_792/lstm_cell_792/ReluRelu4sequential_264/lstm_792/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_264/lstm_792/lstm_cell_792/mul_1Mul1sequential_264/lstm_792/lstm_cell_792/Sigmoid:y:08sequential_264/lstm_792/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_264/lstm_792/lstm_cell_792/add_1AddV2-sequential_264/lstm_792/lstm_cell_792/mul:z:0/sequential_264/lstm_792/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_264/lstm_792/lstm_cell_792/Sigmoid_2Sigmoid4sequential_264/lstm_792/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_264/lstm_792/lstm_cell_792/Relu_1Relu/sequential_264/lstm_792/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_264/lstm_792/lstm_cell_792/mul_2Mul3sequential_264/lstm_792/lstm_cell_792/Sigmoid_2:y:0:sequential_264/lstm_792/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_264/lstm_792/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_264/lstm_792/TensorArrayV2_1TensorListReserve>sequential_264/lstm_792/TensorArrayV2_1/element_shape:output:00sequential_264/lstm_792/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_264/lstm_792/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_264/lstm_792/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_264/lstm_792/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_264/lstm_792/whileWhile3sequential_264/lstm_792/while/loop_counter:output:09sequential_264/lstm_792/while/maximum_iterations:output:0%sequential_264/lstm_792/time:output:00sequential_264/lstm_792/TensorArrayV2_1:handle:0&sequential_264/lstm_792/zeros:output:0(sequential_264/lstm_792/zeros_1:output:00sequential_264/lstm_792/strided_slice_1:output:0Osequential_264/lstm_792/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_264_lstm_792_lstm_cell_792_matmul_readvariableop_resourceFsequential_264_lstm_792_lstm_cell_792_matmul_1_readvariableop_resourceEsequential_264_lstm_792_lstm_cell_792_biasadd_readvariableop_resource*
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
*sequential_264_lstm_792_while_body_4833205*6
cond.R,
*sequential_264_lstm_792_while_cond_4833204*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_264/lstm_792/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_264/lstm_792/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_264/lstm_792/while:output:3Qsequential_264/lstm_792/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_264/lstm_792/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_264/lstm_792/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_264/lstm_792/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_264/lstm_792/strided_slice_3StridedSliceCsequential_264/lstm_792/TensorArrayV2Stack/TensorListStack:tensor:06sequential_264/lstm_792/strided_slice_3/stack:output:08sequential_264/lstm_792/strided_slice_3/stack_1:output:08sequential_264/lstm_792/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_264/lstm_792/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_264/lstm_792/transpose_1	TransposeCsequential_264/lstm_792/TensorArrayV2Stack/TensorListStack:tensor:01sequential_264/lstm_792/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_264/lstm_792/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_264/lstm_793/ShapeShape'sequential_264/lstm_792/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_264/lstm_793/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_264/lstm_793/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_264/lstm_793/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_264/lstm_793/strided_sliceStridedSlice&sequential_264/lstm_793/Shape:output:04sequential_264/lstm_793/strided_slice/stack:output:06sequential_264/lstm_793/strided_slice/stack_1:output:06sequential_264/lstm_793/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_264/lstm_793/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_264/lstm_793/zeros/packedPack.sequential_264/lstm_793/strided_slice:output:0/sequential_264/lstm_793/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_264/lstm_793/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_264/lstm_793/zerosFill-sequential_264/lstm_793/zeros/packed:output:0,sequential_264/lstm_793/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_264/lstm_793/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_264/lstm_793/zeros_1/packedPack.sequential_264/lstm_793/strided_slice:output:01sequential_264/lstm_793/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_264/lstm_793/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_264/lstm_793/zeros_1Fill/sequential_264/lstm_793/zeros_1/packed:output:0.sequential_264/lstm_793/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_264/lstm_793/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_264/lstm_793/transpose	Transpose'sequential_264/lstm_792/transpose_1:y:0/sequential_264/lstm_793/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_264/lstm_793/Shape_1Shape%sequential_264/lstm_793/transpose:y:0*
T0*
_output_shapes
:w
-sequential_264/lstm_793/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_264/lstm_793/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_264/lstm_793/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_264/lstm_793/strided_slice_1StridedSlice(sequential_264/lstm_793/Shape_1:output:06sequential_264/lstm_793/strided_slice_1/stack:output:08sequential_264/lstm_793/strided_slice_1/stack_1:output:08sequential_264/lstm_793/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_264/lstm_793/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_264/lstm_793/TensorArrayV2TensorListReserve<sequential_264/lstm_793/TensorArrayV2/element_shape:output:00sequential_264/lstm_793/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_264/lstm_793/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_264/lstm_793/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_264/lstm_793/transpose:y:0Vsequential_264/lstm_793/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_264/lstm_793/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_264/lstm_793/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_264/lstm_793/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_264/lstm_793/strided_slice_2StridedSlice%sequential_264/lstm_793/transpose:y:06sequential_264/lstm_793/strided_slice_2/stack:output:08sequential_264/lstm_793/strided_slice_2/stack_1:output:08sequential_264/lstm_793/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_264/lstm_793/lstm_cell_793/MatMul/ReadVariableOpReadVariableOpDsequential_264_lstm_793_lstm_cell_793_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_264/lstm_793/lstm_cell_793/MatMulMatMul0sequential_264/lstm_793/strided_slice_2:output:0Csequential_264/lstm_793/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_264/lstm_793/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOpFsequential_264_lstm_793_lstm_cell_793_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_264/lstm_793/lstm_cell_793/MatMul_1MatMul&sequential_264/lstm_793/zeros:output:0Esequential_264/lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_264/lstm_793/lstm_cell_793/addAddV26sequential_264/lstm_793/lstm_cell_793/MatMul:product:08sequential_264/lstm_793/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_264/lstm_793/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOpEsequential_264_lstm_793_lstm_cell_793_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_264/lstm_793/lstm_cell_793/BiasAddBiasAdd-sequential_264/lstm_793/lstm_cell_793/add:z:0Dsequential_264/lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_264/lstm_793/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_264/lstm_793/lstm_cell_793/splitSplit>sequential_264/lstm_793/lstm_cell_793/split/split_dim:output:06sequential_264/lstm_793/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_264/lstm_793/lstm_cell_793/SigmoidSigmoid4sequential_264/lstm_793/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_264/lstm_793/lstm_cell_793/Sigmoid_1Sigmoid4sequential_264/lstm_793/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_264/lstm_793/lstm_cell_793/mulMul3sequential_264/lstm_793/lstm_cell_793/Sigmoid_1:y:0(sequential_264/lstm_793/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_264/lstm_793/lstm_cell_793/ReluRelu4sequential_264/lstm_793/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_264/lstm_793/lstm_cell_793/mul_1Mul1sequential_264/lstm_793/lstm_cell_793/Sigmoid:y:08sequential_264/lstm_793/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_264/lstm_793/lstm_cell_793/add_1AddV2-sequential_264/lstm_793/lstm_cell_793/mul:z:0/sequential_264/lstm_793/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_264/lstm_793/lstm_cell_793/Sigmoid_2Sigmoid4sequential_264/lstm_793/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_264/lstm_793/lstm_cell_793/Relu_1Relu/sequential_264/lstm_793/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_264/lstm_793/lstm_cell_793/mul_2Mul3sequential_264/lstm_793/lstm_cell_793/Sigmoid_2:y:0:sequential_264/lstm_793/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_264/lstm_793/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_264/lstm_793/TensorArrayV2_1TensorListReserve>sequential_264/lstm_793/TensorArrayV2_1/element_shape:output:00sequential_264/lstm_793/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_264/lstm_793/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_264/lstm_793/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_264/lstm_793/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_264/lstm_793/whileWhile3sequential_264/lstm_793/while/loop_counter:output:09sequential_264/lstm_793/while/maximum_iterations:output:0%sequential_264/lstm_793/time:output:00sequential_264/lstm_793/TensorArrayV2_1:handle:0&sequential_264/lstm_793/zeros:output:0(sequential_264/lstm_793/zeros_1:output:00sequential_264/lstm_793/strided_slice_1:output:0Osequential_264/lstm_793/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_264_lstm_793_lstm_cell_793_matmul_readvariableop_resourceFsequential_264_lstm_793_lstm_cell_793_matmul_1_readvariableop_resourceEsequential_264_lstm_793_lstm_cell_793_biasadd_readvariableop_resource*
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
*sequential_264_lstm_793_while_body_4833344*6
cond.R,
*sequential_264_lstm_793_while_cond_4833343*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_264/lstm_793/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_264/lstm_793/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_264/lstm_793/while:output:3Qsequential_264/lstm_793/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_264/lstm_793/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_264/lstm_793/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_264/lstm_793/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_264/lstm_793/strided_slice_3StridedSliceCsequential_264/lstm_793/TensorArrayV2Stack/TensorListStack:tensor:06sequential_264/lstm_793/strided_slice_3/stack:output:08sequential_264/lstm_793/strided_slice_3/stack_1:output:08sequential_264/lstm_793/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_264/lstm_793/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_264/lstm_793/transpose_1	TransposeCsequential_264/lstm_793/TensorArrayV2Stack/TensorListStack:tensor:01sequential_264/lstm_793/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_264/lstm_793/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_264/lstm_794/ShapeShape'sequential_264/lstm_793/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_264/lstm_794/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_264/lstm_794/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_264/lstm_794/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_264/lstm_794/strided_sliceStridedSlice&sequential_264/lstm_794/Shape:output:04sequential_264/lstm_794/strided_slice/stack:output:06sequential_264/lstm_794/strided_slice/stack_1:output:06sequential_264/lstm_794/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_264/lstm_794/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_264/lstm_794/zeros/packedPack.sequential_264/lstm_794/strided_slice:output:0/sequential_264/lstm_794/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_264/lstm_794/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_264/lstm_794/zerosFill-sequential_264/lstm_794/zeros/packed:output:0,sequential_264/lstm_794/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_264/lstm_794/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_264/lstm_794/zeros_1/packedPack.sequential_264/lstm_794/strided_slice:output:01sequential_264/lstm_794/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_264/lstm_794/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_264/lstm_794/zeros_1Fill/sequential_264/lstm_794/zeros_1/packed:output:0.sequential_264/lstm_794/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_264/lstm_794/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_264/lstm_794/transpose	Transpose'sequential_264/lstm_793/transpose_1:y:0/sequential_264/lstm_794/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_264/lstm_794/Shape_1Shape%sequential_264/lstm_794/transpose:y:0*
T0*
_output_shapes
:w
-sequential_264/lstm_794/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_264/lstm_794/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_264/lstm_794/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_264/lstm_794/strided_slice_1StridedSlice(sequential_264/lstm_794/Shape_1:output:06sequential_264/lstm_794/strided_slice_1/stack:output:08sequential_264/lstm_794/strided_slice_1/stack_1:output:08sequential_264/lstm_794/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_264/lstm_794/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_264/lstm_794/TensorArrayV2TensorListReserve<sequential_264/lstm_794/TensorArrayV2/element_shape:output:00sequential_264/lstm_794/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_264/lstm_794/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_264/lstm_794/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_264/lstm_794/transpose:y:0Vsequential_264/lstm_794/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_264/lstm_794/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_264/lstm_794/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_264/lstm_794/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_264/lstm_794/strided_slice_2StridedSlice%sequential_264/lstm_794/transpose:y:06sequential_264/lstm_794/strided_slice_2/stack:output:08sequential_264/lstm_794/strided_slice_2/stack_1:output:08sequential_264/lstm_794/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_264/lstm_794/lstm_cell_794/MatMul/ReadVariableOpReadVariableOpDsequential_264_lstm_794_lstm_cell_794_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_264/lstm_794/lstm_cell_794/MatMulMatMul0sequential_264/lstm_794/strided_slice_2:output:0Csequential_264/lstm_794/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_264/lstm_794/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOpFsequential_264_lstm_794_lstm_cell_794_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_264/lstm_794/lstm_cell_794/MatMul_1MatMul&sequential_264/lstm_794/zeros:output:0Esequential_264/lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_264/lstm_794/lstm_cell_794/addAddV26sequential_264/lstm_794/lstm_cell_794/MatMul:product:08sequential_264/lstm_794/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_264/lstm_794/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOpEsequential_264_lstm_794_lstm_cell_794_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_264/lstm_794/lstm_cell_794/BiasAddBiasAdd-sequential_264/lstm_794/lstm_cell_794/add:z:0Dsequential_264/lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_264/lstm_794/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_264/lstm_794/lstm_cell_794/splitSplit>sequential_264/lstm_794/lstm_cell_794/split/split_dim:output:06sequential_264/lstm_794/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_264/lstm_794/lstm_cell_794/SigmoidSigmoid4sequential_264/lstm_794/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_264/lstm_794/lstm_cell_794/Sigmoid_1Sigmoid4sequential_264/lstm_794/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_264/lstm_794/lstm_cell_794/mulMul3sequential_264/lstm_794/lstm_cell_794/Sigmoid_1:y:0(sequential_264/lstm_794/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_264/lstm_794/lstm_cell_794/ReluRelu4sequential_264/lstm_794/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_264/lstm_794/lstm_cell_794/mul_1Mul1sequential_264/lstm_794/lstm_cell_794/Sigmoid:y:08sequential_264/lstm_794/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_264/lstm_794/lstm_cell_794/add_1AddV2-sequential_264/lstm_794/lstm_cell_794/mul:z:0/sequential_264/lstm_794/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_264/lstm_794/lstm_cell_794/Sigmoid_2Sigmoid4sequential_264/lstm_794/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_264/lstm_794/lstm_cell_794/Relu_1Relu/sequential_264/lstm_794/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_264/lstm_794/lstm_cell_794/mul_2Mul3sequential_264/lstm_794/lstm_cell_794/Sigmoid_2:y:0:sequential_264/lstm_794/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_264/lstm_794/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_264/lstm_794/TensorArrayV2_1TensorListReserve>sequential_264/lstm_794/TensorArrayV2_1/element_shape:output:00sequential_264/lstm_794/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_264/lstm_794/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_264/lstm_794/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_264/lstm_794/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_264/lstm_794/whileWhile3sequential_264/lstm_794/while/loop_counter:output:09sequential_264/lstm_794/while/maximum_iterations:output:0%sequential_264/lstm_794/time:output:00sequential_264/lstm_794/TensorArrayV2_1:handle:0&sequential_264/lstm_794/zeros:output:0(sequential_264/lstm_794/zeros_1:output:00sequential_264/lstm_794/strided_slice_1:output:0Osequential_264/lstm_794/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_264_lstm_794_lstm_cell_794_matmul_readvariableop_resourceFsequential_264_lstm_794_lstm_cell_794_matmul_1_readvariableop_resourceEsequential_264_lstm_794_lstm_cell_794_biasadd_readvariableop_resource*
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
*sequential_264_lstm_794_while_body_4833483*6
cond.R,
*sequential_264_lstm_794_while_cond_4833482*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_264/lstm_794/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_264/lstm_794/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_264/lstm_794/while:output:3Qsequential_264/lstm_794/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_264/lstm_794/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_264/lstm_794/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_264/lstm_794/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_264/lstm_794/strided_slice_3StridedSliceCsequential_264/lstm_794/TensorArrayV2Stack/TensorListStack:tensor:06sequential_264/lstm_794/strided_slice_3/stack:output:08sequential_264/lstm_794/strided_slice_3/stack_1:output:08sequential_264/lstm_794/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_264/lstm_794/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_264/lstm_794/transpose_1	TransposeCsequential_264/lstm_794/TensorArrayV2Stack/TensorListStack:tensor:01sequential_264/lstm_794/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_264/lstm_794/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_264/dense_264/MatMul/ReadVariableOpReadVariableOp7sequential_264_dense_264_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_264/dense_264/MatMulMatMul0sequential_264/lstm_794/strided_slice_3:output:06sequential_264/dense_264/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_264/dense_264/BiasAdd/ReadVariableOpReadVariableOp8sequential_264_dense_264_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_264/dense_264/BiasAddBiasAdd)sequential_264/dense_264/MatMul:product:07sequential_264/dense_264/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_264/dense_264/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_264/dense_264/BiasAdd/ReadVariableOp/^sequential_264/dense_264/MatMul/ReadVariableOp=^sequential_264/lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp<^sequential_264/lstm_792/lstm_cell_792/MatMul/ReadVariableOp>^sequential_264/lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp^sequential_264/lstm_792/while=^sequential_264/lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp<^sequential_264/lstm_793/lstm_cell_793/MatMul/ReadVariableOp>^sequential_264/lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp^sequential_264/lstm_793/while=^sequential_264/lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp<^sequential_264/lstm_794/lstm_cell_794/MatMul/ReadVariableOp>^sequential_264/lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp^sequential_264/lstm_794/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_264/dense_264/BiasAdd/ReadVariableOp/sequential_264/dense_264/BiasAdd/ReadVariableOp2`
.sequential_264/dense_264/MatMul/ReadVariableOp.sequential_264/dense_264/MatMul/ReadVariableOp2|
<sequential_264/lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp<sequential_264/lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp2z
;sequential_264/lstm_792/lstm_cell_792/MatMul/ReadVariableOp;sequential_264/lstm_792/lstm_cell_792/MatMul/ReadVariableOp2~
=sequential_264/lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp=sequential_264/lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp2>
sequential_264/lstm_792/whilesequential_264/lstm_792/while2|
<sequential_264/lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp<sequential_264/lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp2z
;sequential_264/lstm_793/lstm_cell_793/MatMul/ReadVariableOp;sequential_264/lstm_793/lstm_cell_793/MatMul/ReadVariableOp2~
=sequential_264/lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp=sequential_264/lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp2>
sequential_264/lstm_793/whilesequential_264/lstm_793/while2|
<sequential_264/lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp<sequential_264/lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp2z
;sequential_264/lstm_794/lstm_cell_794/MatMul/ReadVariableOp;sequential_264/lstm_794/lstm_cell_794/MatMul/ReadVariableOp2~
=sequential_264/lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp=sequential_264/lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp2>
sequential_264/lstm_794/whilesequential_264/lstm_794/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_792_input
?
?
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835097

inputs#
lstm_792_4834773:	?#
lstm_792_4834775:	d?
lstm_792_4834777:	?#
lstm_793_4834923:	d?#
lstm_793_4834925:	2?
lstm_793_4834927:	?"
lstm_794_4835073:2("
lstm_794_4835075:
(
lstm_794_4835077:(#
dense_264_4835091:

dense_264_4835093:
identity??!dense_264/StatefulPartitionedCall? lstm_792/StatefulPartitionedCall? lstm_793/StatefulPartitionedCall? lstm_794/StatefulPartitionedCall?
 lstm_792/StatefulPartitionedCallStatefulPartitionedCallinputslstm_792_4834773lstm_792_4834775lstm_792_4834777*
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4834772?
 lstm_793/StatefulPartitionedCallStatefulPartitionedCall)lstm_792/StatefulPartitionedCall:output:0lstm_793_4834923lstm_793_4834925lstm_793_4834927*
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4834922?
 lstm_794/StatefulPartitionedCallStatefulPartitionedCall)lstm_793/StatefulPartitionedCall:output:0lstm_794_4835073lstm_794_4835075lstm_794_4835077*
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4835072?
!dense_264/StatefulPartitionedCallStatefulPartitionedCall)lstm_794/StatefulPartitionedCall:output:0dense_264_4835091dense_264_4835093*
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
F__inference_dense_264_layer_call_and_return_conditional_losses_4835090y
IdentityIdentity*dense_264/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_264/StatefulPartitionedCall!^lstm_792/StatefulPartitionedCall!^lstm_793/StatefulPartitionedCall!^lstm_794/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_264/StatefulPartitionedCall!dense_264/StatefulPartitionedCall2D
 lstm_792/StatefulPartitionedCall lstm_792/StatefulPartitionedCall2D
 lstm_793/StatefulPartitionedCall lstm_793/StatefulPartitionedCall2D
 lstm_794/StatefulPartitionedCall lstm_794/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4834687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4834687___redundant_placeholder05
1while_while_cond_4834687___redundant_placeholder15
1while_while_cond_4834687___redundant_placeholder25
1while_while_cond_4834687___redundant_placeholder3
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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4834136

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

?
lstm_792_while_cond_4836372.
*lstm_792_while_lstm_792_while_loop_counter4
0lstm_792_while_lstm_792_while_maximum_iterations
lstm_792_while_placeholder 
lstm_792_while_placeholder_1 
lstm_792_while_placeholder_2 
lstm_792_while_placeholder_30
,lstm_792_while_less_lstm_792_strided_slice_1G
Clstm_792_while_lstm_792_while_cond_4836372___redundant_placeholder0G
Clstm_792_while_lstm_792_while_cond_4836372___redundant_placeholder1G
Clstm_792_while_lstm_792_while_cond_4836372___redundant_placeholder2G
Clstm_792_while_lstm_792_while_cond_4836372___redundant_placeholder3
lstm_792_while_identity
?
lstm_792/while/LessLesslstm_792_while_placeholder,lstm_792_while_less_lstm_792_strided_slice_1*
T0*
_output_shapes
: ]
lstm_792/while/IdentityIdentitylstm_792/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_792_while_identity lstm_792/while/Identity:output:0*(
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
while_cond_4833844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4833844___redundant_placeholder05
1while_while_cond_4833844___redundant_placeholder15
1while_while_cond_4833844___redundant_placeholder25
1while_while_cond_4833844___redundant_placeholder3
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4837071
inputs_0?
,lstm_cell_792_matmul_readvariableop_resource:	?A
.lstm_cell_792_matmul_1_readvariableop_resource:	d?<
-lstm_cell_792_biasadd_readvariableop_resource:	?
identity??$lstm_cell_792/BiasAdd/ReadVariableOp?#lstm_cell_792/MatMul/ReadVariableOp?%lstm_cell_792/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_792/MatMul/ReadVariableOpReadVariableOp,lstm_cell_792_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_792/MatMulMatMulstrided_slice_2:output:0+lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_792_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_792/MatMul_1MatMulzeros:output:0-lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_792/addAddV2lstm_cell_792/MatMul:product:0 lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_792_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_792/BiasAddBiasAddlstm_cell_792/add:z:0,lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_792/splitSplit&lstm_cell_792/split/split_dim:output:0lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_792/SigmoidSigmoidlstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_1Sigmoidlstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_792/mulMullstm_cell_792/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_792/ReluRelulstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_1Mullstm_cell_792/Sigmoid:y:0 lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_792/add_1AddV2lstm_cell_792/mul:z:0lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_2Sigmoidlstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_792/Relu_1Relulstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_2Mullstm_cell_792/Sigmoid_2:y:0"lstm_cell_792/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_792_matmul_readvariableop_resource.lstm_cell_792_matmul_1_readvariableop_resource-lstm_cell_792_biasadd_readvariableop_resource*
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
while_body_4836987*
condR
while_cond_4836986*K
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
NoOpNoOp%^lstm_cell_792/BiasAdd/ReadVariableOp$^lstm_cell_792/MatMul/ReadVariableOp&^lstm_cell_792/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_792/BiasAdd/ReadVariableOp$lstm_cell_792/BiasAdd/ReadVariableOp2J
#lstm_cell_792/MatMul/ReadVariableOp#lstm_cell_792/MatMul/ReadVariableOp2N
%lstm_cell_792/MatMul_1/ReadVariableOp%lstm_cell_792/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_793_layer_call_fn_4838740

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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4834136o
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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4838804

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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4834486

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

lstm_794_while_body_4836651.
*lstm_794_while_lstm_794_while_loop_counter4
0lstm_794_while_lstm_794_while_maximum_iterations
lstm_794_while_placeholder 
lstm_794_while_placeholder_1 
lstm_794_while_placeholder_2 
lstm_794_while_placeholder_3-
)lstm_794_while_lstm_794_strided_slice_1_0i
elstm_794_while_tensorarrayv2read_tensorlistgetitem_lstm_794_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_794_while_lstm_cell_794_matmul_readvariableop_resource_0:2(Q
?lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource_0:
(L
>lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource_0:(
lstm_794_while_identity
lstm_794_while_identity_1
lstm_794_while_identity_2
lstm_794_while_identity_3
lstm_794_while_identity_4
lstm_794_while_identity_5+
'lstm_794_while_lstm_794_strided_slice_1g
clstm_794_while_tensorarrayv2read_tensorlistgetitem_lstm_794_tensorarrayunstack_tensorlistfromtensorM
;lstm_794_while_lstm_cell_794_matmul_readvariableop_resource:2(O
=lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource:
(J
<lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource:(??3lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp?2lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp?4lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp?
@lstm_794/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_794/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_794_while_tensorarrayv2read_tensorlistgetitem_lstm_794_tensorarrayunstack_tensorlistfromtensor_0lstm_794_while_placeholderIlstm_794/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_794/while/lstm_cell_794/MatMul/ReadVariableOpReadVariableOp=lstm_794_while_lstm_cell_794_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_794/while/lstm_cell_794/MatMulMatMul9lstm_794/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp?lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_794/while/lstm_cell_794/MatMul_1MatMullstm_794_while_placeholder_2<lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_794/while/lstm_cell_794/addAddV2-lstm_794/while/lstm_cell_794/MatMul:product:0/lstm_794/while/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp>lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_794/while/lstm_cell_794/BiasAddBiasAdd$lstm_794/while/lstm_cell_794/add:z:0;lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_794/while/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_794/while/lstm_cell_794/splitSplit5lstm_794/while/lstm_cell_794/split/split_dim:output:0-lstm_794/while/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_794/while/lstm_cell_794/SigmoidSigmoid+lstm_794/while/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_794/while/lstm_cell_794/Sigmoid_1Sigmoid+lstm_794/while/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_794/while/lstm_cell_794/mulMul*lstm_794/while/lstm_cell_794/Sigmoid_1:y:0lstm_794_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_794/while/lstm_cell_794/ReluRelu+lstm_794/while/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_794/while/lstm_cell_794/mul_1Mul(lstm_794/while/lstm_cell_794/Sigmoid:y:0/lstm_794/while/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_794/while/lstm_cell_794/add_1AddV2$lstm_794/while/lstm_cell_794/mul:z:0&lstm_794/while/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_794/while/lstm_cell_794/Sigmoid_2Sigmoid+lstm_794/while/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_794/while/lstm_cell_794/Relu_1Relu&lstm_794/while/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_794/while/lstm_cell_794/mul_2Mul*lstm_794/while/lstm_cell_794/Sigmoid_2:y:01lstm_794/while/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_794/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_794_while_placeholder_1lstm_794_while_placeholder&lstm_794/while/lstm_cell_794/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_794/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_794/while/addAddV2lstm_794_while_placeholderlstm_794/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_794/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_794/while/add_1AddV2*lstm_794_while_lstm_794_while_loop_counterlstm_794/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_794/while/IdentityIdentitylstm_794/while/add_1:z:0^lstm_794/while/NoOp*
T0*
_output_shapes
: ?
lstm_794/while/Identity_1Identity0lstm_794_while_lstm_794_while_maximum_iterations^lstm_794/while/NoOp*
T0*
_output_shapes
: t
lstm_794/while/Identity_2Identitylstm_794/while/add:z:0^lstm_794/while/NoOp*
T0*
_output_shapes
: ?
lstm_794/while/Identity_3IdentityClstm_794/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_794/while/NoOp*
T0*
_output_shapes
: ?
lstm_794/while/Identity_4Identity&lstm_794/while/lstm_cell_794/mul_2:z:0^lstm_794/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_794/while/Identity_5Identity&lstm_794/while/lstm_cell_794/add_1:z:0^lstm_794/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_794/while/NoOpNoOp4^lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp3^lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp5^lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_794_while_identity lstm_794/while/Identity:output:0"?
lstm_794_while_identity_1"lstm_794/while/Identity_1:output:0"?
lstm_794_while_identity_2"lstm_794/while/Identity_2:output:0"?
lstm_794_while_identity_3"lstm_794/while/Identity_3:output:0"?
lstm_794_while_identity_4"lstm_794/while/Identity_4:output:0"?
lstm_794_while_identity_5"lstm_794/while/Identity_5:output:0"T
'lstm_794_while_lstm_794_strided_slice_1)lstm_794_while_lstm_794_strided_slice_1_0"~
<lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource>lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource_0"?
=lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource?lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource_0"|
;lstm_794_while_lstm_cell_794_matmul_readvariableop_resource=lstm_794_while_lstm_cell_794_matmul_readvariableop_resource_0"?
clstm_794_while_tensorarrayv2read_tensorlistgetitem_lstm_794_tensorarrayunstack_tensorlistfromtensorelstm_794_while_tensorarrayv2read_tensorlistgetitem_lstm_794_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp3lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp2h
2lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp2lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp2l
4lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp4lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_792_layer_call_fn_4836774

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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4834772s
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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4838674

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
%__inference_signature_wrapper_4835833
lstm_792_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_792_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4833573o
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
_user_specified_namelstm_792_input
?C
?

lstm_793_while_body_4836512.
*lstm_793_while_lstm_793_while_loop_counter4
0lstm_793_while_lstm_793_while_maximum_iterations
lstm_793_while_placeholder 
lstm_793_while_placeholder_1 
lstm_793_while_placeholder_2 
lstm_793_while_placeholder_3-
)lstm_793_while_lstm_793_strided_slice_1_0i
elstm_793_while_tensorarrayv2read_tensorlistgetitem_lstm_793_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_793_while_lstm_cell_793_matmul_readvariableop_resource_0:	d?R
?lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource_0:	2?M
>lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource_0:	?
lstm_793_while_identity
lstm_793_while_identity_1
lstm_793_while_identity_2
lstm_793_while_identity_3
lstm_793_while_identity_4
lstm_793_while_identity_5+
'lstm_793_while_lstm_793_strided_slice_1g
clstm_793_while_tensorarrayv2read_tensorlistgetitem_lstm_793_tensorarrayunstack_tensorlistfromtensorN
;lstm_793_while_lstm_cell_793_matmul_readvariableop_resource:	d?P
=lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource:	2?K
<lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource:	???3lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp?2lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp?4lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp?
@lstm_793/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_793/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_793_while_tensorarrayv2read_tensorlistgetitem_lstm_793_tensorarrayunstack_tensorlistfromtensor_0lstm_793_while_placeholderIlstm_793/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_793/while/lstm_cell_793/MatMul/ReadVariableOpReadVariableOp=lstm_793_while_lstm_cell_793_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_793/while/lstm_cell_793/MatMulMatMul9lstm_793/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp?lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_793/while/lstm_cell_793/MatMul_1MatMullstm_793_while_placeholder_2<lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_793/while/lstm_cell_793/addAddV2-lstm_793/while/lstm_cell_793/MatMul:product:0/lstm_793/while/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp>lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_793/while/lstm_cell_793/BiasAddBiasAdd$lstm_793/while/lstm_cell_793/add:z:0;lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_793/while/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_793/while/lstm_cell_793/splitSplit5lstm_793/while/lstm_cell_793/split/split_dim:output:0-lstm_793/while/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_793/while/lstm_cell_793/SigmoidSigmoid+lstm_793/while/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_793/while/lstm_cell_793/Sigmoid_1Sigmoid+lstm_793/while/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_793/while/lstm_cell_793/mulMul*lstm_793/while/lstm_cell_793/Sigmoid_1:y:0lstm_793_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_793/while/lstm_cell_793/ReluRelu+lstm_793/while/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_793/while/lstm_cell_793/mul_1Mul(lstm_793/while/lstm_cell_793/Sigmoid:y:0/lstm_793/while/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_793/while/lstm_cell_793/add_1AddV2$lstm_793/while/lstm_cell_793/mul:z:0&lstm_793/while/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_793/while/lstm_cell_793/Sigmoid_2Sigmoid+lstm_793/while/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_793/while/lstm_cell_793/Relu_1Relu&lstm_793/while/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_793/while/lstm_cell_793/mul_2Mul*lstm_793/while/lstm_cell_793/Sigmoid_2:y:01lstm_793/while/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_793/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_793_while_placeholder_1lstm_793_while_placeholder&lstm_793/while/lstm_cell_793/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_793/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_793/while/addAddV2lstm_793_while_placeholderlstm_793/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_793/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_793/while/add_1AddV2*lstm_793_while_lstm_793_while_loop_counterlstm_793/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_793/while/IdentityIdentitylstm_793/while/add_1:z:0^lstm_793/while/NoOp*
T0*
_output_shapes
: ?
lstm_793/while/Identity_1Identity0lstm_793_while_lstm_793_while_maximum_iterations^lstm_793/while/NoOp*
T0*
_output_shapes
: t
lstm_793/while/Identity_2Identitylstm_793/while/add:z:0^lstm_793/while/NoOp*
T0*
_output_shapes
: ?
lstm_793/while/Identity_3IdentityClstm_793/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_793/while/NoOp*
T0*
_output_shapes
: ?
lstm_793/while/Identity_4Identity&lstm_793/while/lstm_cell_793/mul_2:z:0^lstm_793/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_793/while/Identity_5Identity&lstm_793/while/lstm_cell_793/add_1:z:0^lstm_793/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_793/while/NoOpNoOp4^lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp3^lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp5^lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_793_while_identity lstm_793/while/Identity:output:0"?
lstm_793_while_identity_1"lstm_793/while/Identity_1:output:0"?
lstm_793_while_identity_2"lstm_793/while/Identity_2:output:0"?
lstm_793_while_identity_3"lstm_793/while/Identity_3:output:0"?
lstm_793_while_identity_4"lstm_793/while/Identity_4:output:0"?
lstm_793_while_identity_5"lstm_793/while/Identity_5:output:0"T
'lstm_793_while_lstm_793_strided_slice_1)lstm_793_while_lstm_793_strided_slice_1_0"~
<lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource>lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource_0"?
=lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource?lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource_0"|
;lstm_793_while_lstm_cell_793_matmul_readvariableop_resource=lstm_793_while_lstm_cell_793_matmul_readvariableop_resource_0"?
clstm_793_while_tensorarrayv2read_tensorlistgetitem_lstm_793_tensorarrayunstack_tensorlistfromtensorelstm_793_while_tensorarrayv2read_tensorlistgetitem_lstm_793_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp3lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp2h
2lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp2lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp2l
4lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp4lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4838505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_794_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_794_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_794_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_794_matmul_readvariableop_resource:2(F
4while_lstm_cell_794_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_794_biasadd_readvariableop_resource:(??*while/lstm_cell_794/BiasAdd/ReadVariableOp?)while/lstm_cell_794/MatMul/ReadVariableOp?+while/lstm_cell_794/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_794/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_794_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_794/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_794_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_794/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_794/addAddV2$while/lstm_cell_794/MatMul:product:0&while/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_794_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_794/BiasAddBiasAddwhile/lstm_cell_794/add:z:02while/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_794/splitSplit,while/lstm_cell_794/split/split_dim:output:0$while/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_794/SigmoidSigmoid"while/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_1Sigmoid"while/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mulMul!while/lstm_cell_794/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_794/ReluRelu"while/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_1Mulwhile/lstm_cell_794/Sigmoid:y:0&while/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/add_1AddV2while/lstm_cell_794/mul:z:0while/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_2Sigmoid"while/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_794/Relu_1Reluwhile/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_2Mul!while/lstm_cell_794/Sigmoid_2:y:0(while/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_794/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_794/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_794/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_794/BiasAdd/ReadVariableOp*^while/lstm_cell_794/MatMul/ReadVariableOp,^while/lstm_cell_794/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_794_biasadd_readvariableop_resource5while_lstm_cell_794_biasadd_readvariableop_resource_0"n
4while_lstm_cell_794_matmul_1_readvariableop_resource6while_lstm_cell_794_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_794_matmul_readvariableop_resource4while_lstm_cell_794_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_794/BiasAdd/ReadVariableOp*while/lstm_cell_794/BiasAdd/ReadVariableOp2V
)while/lstm_cell_794/MatMul/ReadVariableOp)while/lstm_cell_794/MatMul/ReadVariableOp2Z
+while/lstm_cell_794/MatMul_1/ReadVariableOp+while/lstm_cell_794/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4835618

inputs?
,lstm_cell_792_matmul_readvariableop_resource:	?A
.lstm_cell_792_matmul_1_readvariableop_resource:	d?<
-lstm_cell_792_biasadd_readvariableop_resource:	?
identity??$lstm_cell_792/BiasAdd/ReadVariableOp?#lstm_cell_792/MatMul/ReadVariableOp?%lstm_cell_792/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_792/MatMul/ReadVariableOpReadVariableOp,lstm_cell_792_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_792/MatMulMatMulstrided_slice_2:output:0+lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_792_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_792/MatMul_1MatMulzeros:output:0-lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_792/addAddV2lstm_cell_792/MatMul:product:0 lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_792_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_792/BiasAddBiasAddlstm_cell_792/add:z:0,lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_792/splitSplit&lstm_cell_792/split/split_dim:output:0lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_792/SigmoidSigmoidlstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_1Sigmoidlstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_792/mulMullstm_cell_792/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_792/ReluRelulstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_1Mullstm_cell_792/Sigmoid:y:0 lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_792/add_1AddV2lstm_cell_792/mul:z:0lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_2Sigmoidlstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_792/Relu_1Relulstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_2Mullstm_cell_792/Sigmoid_2:y:0"lstm_cell_792/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_792_matmul_readvariableop_resource.lstm_cell_792_matmul_1_readvariableop_resource-lstm_cell_792_biasadd_readvariableop_resource*
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
while_body_4835534*
condR
while_cond_4835533*K
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
NoOpNoOp%^lstm_cell_792/BiasAdd/ReadVariableOp$^lstm_cell_792/MatMul/ReadVariableOp&^lstm_cell_792/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_792/BiasAdd/ReadVariableOp$lstm_cell_792/BiasAdd/ReadVariableOp2J
#lstm_cell_792/MatMul/ReadVariableOp#lstm_cell_792/MatMul/ReadVariableOp2N
%lstm_cell_792/MatMul_1/ReadVariableOp%lstm_cell_792/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4836844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_792_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_792_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_792_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_792_matmul_readvariableop_resource:	?G
4while_lstm_cell_792_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_792_biasadd_readvariableop_resource:	???*while/lstm_cell_792/BiasAdd/ReadVariableOp?)while/lstm_cell_792/MatMul/ReadVariableOp?+while/lstm_cell_792/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_792/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_792_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_792/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_792_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_792/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_792/addAddV2$while/lstm_cell_792/MatMul:product:0&while/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_792_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_792/BiasAddBiasAddwhile/lstm_cell_792/add:z:02while/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_792/splitSplit,while/lstm_cell_792/split/split_dim:output:0$while/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_792/SigmoidSigmoid"while/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_1Sigmoid"while/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mulMul!while/lstm_cell_792/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_792/ReluRelu"while/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_1Mulwhile/lstm_cell_792/Sigmoid:y:0&while/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/add_1AddV2while/lstm_cell_792/mul:z:0while/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_2Sigmoid"while/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_792/Relu_1Reluwhile/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_2Mul!while/lstm_cell_792/Sigmoid_2:y:0(while/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_792/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_792/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_792/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_792/BiasAdd/ReadVariableOp*^while/lstm_cell_792/MatMul/ReadVariableOp,^while/lstm_cell_792/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_792_biasadd_readvariableop_resource5while_lstm_cell_792_biasadd_readvariableop_resource_0"n
4while_lstm_cell_792_matmul_1_readvariableop_resource6while_lstm_cell_792_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_792_matmul_readvariableop_resource4while_lstm_cell_792_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_792/BiasAdd/ReadVariableOp*while/lstm_cell_792/BiasAdd/ReadVariableOp2V
)while/lstm_cell_792/MatMul/ReadVariableOp)while/lstm_cell_792/MatMul/ReadVariableOp2Z
+while/lstm_cell_792/MatMul_1/ReadVariableOp+while/lstm_cell_792/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4838504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4838504___redundant_placeholder05
1while_while_cond_4838504___redundant_placeholder15
1while_while_cond_4838504___redundant_placeholder25
1while_while_cond_4838504___redundant_placeholder3
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
while_body_4836987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_792_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_792_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_792_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_792_matmul_readvariableop_resource:	?G
4while_lstm_cell_792_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_792_biasadd_readvariableop_resource:	???*while/lstm_cell_792/BiasAdd/ReadVariableOp?)while/lstm_cell_792/MatMul/ReadVariableOp?+while/lstm_cell_792/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_792/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_792_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_792/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_792_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_792/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_792/addAddV2$while/lstm_cell_792/MatMul:product:0&while/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_792_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_792/BiasAddBiasAddwhile/lstm_cell_792/add:z:02while/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_792/splitSplit,while/lstm_cell_792/split/split_dim:output:0$while/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_792/SigmoidSigmoid"while/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_1Sigmoid"while/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mulMul!while/lstm_cell_792/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_792/ReluRelu"while/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_1Mulwhile/lstm_cell_792/Sigmoid:y:0&while/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/add_1AddV2while/lstm_cell_792/mul:z:0while/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_2Sigmoid"while/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_792/Relu_1Reluwhile/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_2Mul!while/lstm_cell_792/Sigmoid_2:y:0(while/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_792/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_792/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_792/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_792/BiasAdd/ReadVariableOp*^while/lstm_cell_792/MatMul/ReadVariableOp,^while/lstm_cell_792/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_792_biasadd_readvariableop_resource5while_lstm_cell_792_biasadd_readvariableop_resource_0"n
4while_lstm_cell_792_matmul_1_readvariableop_resource6while_lstm_cell_792_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_792_matmul_readvariableop_resource4while_lstm_cell_792_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_792/BiasAdd/ReadVariableOp*while/lstm_cell_792/BiasAdd/ReadVariableOp2V
)while/lstm_cell_792/MatMul/ReadVariableOp)while/lstm_cell_792/MatMul/ReadVariableOp2Z
+while/lstm_cell_792/MatMul_1/ReadVariableOp+while/lstm_cell_792/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4838706

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
while_body_4834988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_794_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_794_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_794_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_794_matmul_readvariableop_resource:2(F
4while_lstm_cell_794_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_794_biasadd_readvariableop_resource:(??*while/lstm_cell_794/BiasAdd/ReadVariableOp?)while/lstm_cell_794/MatMul/ReadVariableOp?+while/lstm_cell_794/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_794/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_794_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_794/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_794_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_794/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_794/addAddV2$while/lstm_cell_794/MatMul:product:0&while/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_794_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_794/BiasAddBiasAddwhile/lstm_cell_794/add:z:02while/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_794/splitSplit,while/lstm_cell_794/split/split_dim:output:0$while/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_794/SigmoidSigmoid"while/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_1Sigmoid"while/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mulMul!while/lstm_cell_794/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_794/ReluRelu"while/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_1Mulwhile/lstm_cell_794/Sigmoid:y:0&while/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/add_1AddV2while/lstm_cell_794/mul:z:0while/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_2Sigmoid"while/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_794/Relu_1Reluwhile/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_2Mul!while/lstm_cell_794/Sigmoid_2:y:0(while/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_794/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_794/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_794/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_794/BiasAdd/ReadVariableOp*^while/lstm_cell_794/MatMul/ReadVariableOp,^while/lstm_cell_794/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_794_biasadd_readvariableop_resource5while_lstm_cell_794_biasadd_readvariableop_resource_0"n
4while_lstm_cell_794_matmul_1_readvariableop_resource6while_lstm_cell_794_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_794_matmul_readvariableop_resource4while_lstm_cell_794_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_794/BiasAdd/ReadVariableOp*while/lstm_cell_794/BiasAdd/ReadVariableOp2V
)while/lstm_cell_794/MatMul/ReadVariableOp)while/lstm_cell_794/MatMul/ReadVariableOp2Z
+while/lstm_cell_794/MatMul_1/ReadVariableOp+while/lstm_cell_794/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_794_layer_call_fn_4838821

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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4834340o
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
while_cond_4834987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4834987___redundant_placeholder05
1while_while_cond_4834987___redundant_placeholder15
1while_while_cond_4834987___redundant_placeholder25
1while_while_cond_4834987___redundant_placeholder3
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
while_body_4834688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_792_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_792_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_792_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_792_matmul_readvariableop_resource:	?G
4while_lstm_cell_792_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_792_biasadd_readvariableop_resource:	???*while/lstm_cell_792/BiasAdd/ReadVariableOp?)while/lstm_cell_792/MatMul/ReadVariableOp?+while/lstm_cell_792/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_792/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_792_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_792/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_792_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_792/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_792/addAddV2$while/lstm_cell_792/MatMul:product:0&while/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_792_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_792/BiasAddBiasAddwhile/lstm_cell_792/add:z:02while/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_792/splitSplit,while/lstm_cell_792/split/split_dim:output:0$while/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_792/SigmoidSigmoid"while/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_1Sigmoid"while/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mulMul!while/lstm_cell_792/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_792/ReluRelu"while/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_1Mulwhile/lstm_cell_792/Sigmoid:y:0&while/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/add_1AddV2while/lstm_cell_792/mul:z:0while/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_2Sigmoid"while/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_792/Relu_1Reluwhile/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_2Mul!while/lstm_cell_792/Sigmoid_2:y:0(while/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_792/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_792/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_792/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_792/BiasAdd/ReadVariableOp*^while/lstm_cell_792/MatMul/ReadVariableOp,^while/lstm_cell_792/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_792_biasadd_readvariableop_resource5while_lstm_cell_792_biasadd_readvariableop_resource_0"n
4while_lstm_cell_792_matmul_1_readvariableop_resource6while_lstm_cell_792_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_792_matmul_readvariableop_resource4while_lstm_cell_792_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_792/BiasAdd/ReadVariableOp*while/lstm_cell_792/BiasAdd/ReadVariableOp2V
)while/lstm_cell_792/MatMul/ReadVariableOp)while/lstm_cell_792/MatMul/ReadVariableOp2Z
+while/lstm_cell_792/MatMul_1/ReadVariableOp+while/lstm_cell_792/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_264_lstm_792_while_cond_4833204L
Hsequential_264_lstm_792_while_sequential_264_lstm_792_while_loop_counterR
Nsequential_264_lstm_792_while_sequential_264_lstm_792_while_maximum_iterations-
)sequential_264_lstm_792_while_placeholder/
+sequential_264_lstm_792_while_placeholder_1/
+sequential_264_lstm_792_while_placeholder_2/
+sequential_264_lstm_792_while_placeholder_3N
Jsequential_264_lstm_792_while_less_sequential_264_lstm_792_strided_slice_1e
asequential_264_lstm_792_while_sequential_264_lstm_792_while_cond_4833204___redundant_placeholder0e
asequential_264_lstm_792_while_sequential_264_lstm_792_while_cond_4833204___redundant_placeholder1e
asequential_264_lstm_792_while_sequential_264_lstm_792_while_cond_4833204___redundant_placeholder2e
asequential_264_lstm_792_while_sequential_264_lstm_792_while_cond_4833204___redundant_placeholder3*
&sequential_264_lstm_792_while_identity
?
"sequential_264/lstm_792/while/LessLess)sequential_264_lstm_792_while_placeholderJsequential_264_lstm_792_while_less_sequential_264_lstm_792_strided_slice_1*
T0*
_output_shapes
: {
&sequential_264/lstm_792/while/IdentityIdentity&sequential_264/lstm_792/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_264_lstm_792_while_identity/sequential_264/lstm_792/while/Identity:output:0*(
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4833914

inputs(
lstm_cell_792_4833832:	?(
lstm_cell_792_4833834:	d?$
lstm_cell_792_4833836:	?
identity??%lstm_cell_792/StatefulPartitionedCall?while;
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
%lstm_cell_792/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_792_4833832lstm_cell_792_4833834lstm_cell_792_4833836*
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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4833786n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_792_4833832lstm_cell_792_4833834lstm_cell_792_4833836*
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
while_body_4833845*
condR
while_cond_4833844*K
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
NoOpNoOp&^lstm_cell_792/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_792/StatefulPartitionedCall%lstm_cell_792/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_4838362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_794_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_794_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_794_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_794_matmul_readvariableop_resource:2(F
4while_lstm_cell_794_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_794_biasadd_readvariableop_resource:(??*while/lstm_cell_794/BiasAdd/ReadVariableOp?)while/lstm_cell_794/MatMul/ReadVariableOp?+while/lstm_cell_794/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_794/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_794_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_794/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_794_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_794/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_794/addAddV2$while/lstm_cell_794/MatMul:product:0&while/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_794_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_794/BiasAddBiasAddwhile/lstm_cell_794/add:z:02while/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_794/splitSplit,while/lstm_cell_794/split/split_dim:output:0$while/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_794/SigmoidSigmoid"while/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_1Sigmoid"while/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mulMul!while/lstm_cell_794/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_794/ReluRelu"while/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_1Mulwhile/lstm_cell_794/Sigmoid:y:0&while/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/add_1AddV2while/lstm_cell_794/mul:z:0while/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_2Sigmoid"while/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_794/Relu_1Reluwhile/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_2Mul!while/lstm_cell_794/Sigmoid_2:y:0(while/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_794/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_794/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_794/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_794/BiasAdd/ReadVariableOp*^while/lstm_cell_794/MatMul/ReadVariableOp,^while/lstm_cell_794/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_794_biasadd_readvariableop_resource5while_lstm_cell_794_biasadd_readvariableop_resource_0"n
4while_lstm_cell_794_matmul_1_readvariableop_resource6while_lstm_cell_794_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_794_matmul_readvariableop_resource4while_lstm_cell_794_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_794/BiasAdd/ReadVariableOp*while/lstm_cell_794/BiasAdd/ReadVariableOp2V
)while/lstm_cell_794/MatMul/ReadVariableOp)while/lstm_cell_794/MatMul/ReadVariableOp2Z
+while/lstm_cell_794/MatMul_1/ReadVariableOp+while/lstm_cell_794/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838303
inputs_0>
,lstm_cell_794_matmul_readvariableop_resource:2(@
.lstm_cell_794_matmul_1_readvariableop_resource:
(;
-lstm_cell_794_biasadd_readvariableop_resource:(
identity??$lstm_cell_794/BiasAdd/ReadVariableOp?#lstm_cell_794/MatMul/ReadVariableOp?%lstm_cell_794/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_794/MatMul/ReadVariableOpReadVariableOp,lstm_cell_794_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_794/MatMulMatMulstrided_slice_2:output:0+lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_794_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_794/MatMul_1MatMulzeros:output:0-lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_794/addAddV2lstm_cell_794/MatMul:product:0 lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_794_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_794/BiasAddBiasAddlstm_cell_794/add:z:0,lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_794/splitSplit&lstm_cell_794/split/split_dim:output:0lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_794/SigmoidSigmoidlstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_1Sigmoidlstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_794/mulMullstm_cell_794/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_794/ReluRelulstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_1Mullstm_cell_794/Sigmoid:y:0 lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_794/add_1AddV2lstm_cell_794/mul:z:0lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_2Sigmoidlstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_794/Relu_1Relulstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_2Mullstm_cell_794/Sigmoid_2:y:0"lstm_cell_794/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_794_matmul_readvariableop_resource.lstm_cell_794_matmul_1_readvariableop_resource-lstm_cell_794_biasadd_readvariableop_resource*
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
while_body_4838219*
condR
while_cond_4838218*K
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
NoOpNoOp%^lstm_cell_794/BiasAdd/ReadVariableOp$^lstm_cell_794/MatMul/ReadVariableOp&^lstm_cell_794/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_794/BiasAdd/ReadVariableOp$lstm_cell_794/BiasAdd/ReadVariableOp2J
#lstm_cell_794/MatMul/ReadVariableOp#lstm_cell_794/MatMul/ReadVariableOp2N
%lstm_cell_794/MatMul_1/ReadVariableOp%lstm_cell_794/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4834340

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
?8
?
while_body_4837130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_792_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_792_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_792_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_792_matmul_readvariableop_resource:	?G
4while_lstm_cell_792_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_792_biasadd_readvariableop_resource:	???*while/lstm_cell_792/BiasAdd/ReadVariableOp?)while/lstm_cell_792/MatMul/ReadVariableOp?+while/lstm_cell_792/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_792/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_792_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_792/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_792_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_792/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_792/addAddV2$while/lstm_cell_792/MatMul:product:0&while/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_792_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_792/BiasAddBiasAddwhile/lstm_cell_792/add:z:02while/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_792/splitSplit,while/lstm_cell_792/split/split_dim:output:0$while/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_792/SigmoidSigmoid"while/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_1Sigmoid"while/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mulMul!while/lstm_cell_792/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_792/ReluRelu"while/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_1Mulwhile/lstm_cell_792/Sigmoid:y:0&while/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/add_1AddV2while/lstm_cell_792/mul:z:0while/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_2Sigmoid"while/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_792/Relu_1Reluwhile/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_2Mul!while/lstm_cell_792/Sigmoid_2:y:0(while/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_792/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_792/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_792/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_792/BiasAdd/ReadVariableOp*^while/lstm_cell_792/MatMul/ReadVariableOp,^while/lstm_cell_792/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_792_biasadd_readvariableop_resource5while_lstm_cell_792_biasadd_readvariableop_resource_0"n
4while_lstm_cell_792_matmul_1_readvariableop_resource6while_lstm_cell_792_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_792_matmul_readvariableop_resource4while_lstm_cell_792_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_792/BiasAdd/ReadVariableOp*while/lstm_cell_792/BiasAdd/ReadVariableOp2V
)while/lstm_cell_792/MatMul/ReadVariableOp)while/lstm_cell_792/MatMul/ReadVariableOp2Z
+while/lstm_cell_792/MatMul_1/ReadVariableOp+while/lstm_cell_792/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_264_layer_call_and_return_conditional_losses_4836741

inputsH
5lstm_792_lstm_cell_792_matmul_readvariableop_resource:	?J
7lstm_792_lstm_cell_792_matmul_1_readvariableop_resource:	d?E
6lstm_792_lstm_cell_792_biasadd_readvariableop_resource:	?H
5lstm_793_lstm_cell_793_matmul_readvariableop_resource:	d?J
7lstm_793_lstm_cell_793_matmul_1_readvariableop_resource:	2?E
6lstm_793_lstm_cell_793_biasadd_readvariableop_resource:	?G
5lstm_794_lstm_cell_794_matmul_readvariableop_resource:2(I
7lstm_794_lstm_cell_794_matmul_1_readvariableop_resource:
(D
6lstm_794_lstm_cell_794_biasadd_readvariableop_resource:(:
(dense_264_matmul_readvariableop_resource:
7
)dense_264_biasadd_readvariableop_resource:
identity?? dense_264/BiasAdd/ReadVariableOp?dense_264/MatMul/ReadVariableOp?-lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp?,lstm_792/lstm_cell_792/MatMul/ReadVariableOp?.lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp?lstm_792/while?-lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp?,lstm_793/lstm_cell_793/MatMul/ReadVariableOp?.lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp?lstm_793/while?-lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp?,lstm_794/lstm_cell_794/MatMul/ReadVariableOp?.lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp?lstm_794/whileD
lstm_792/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_792/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_792/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_792/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_792/strided_sliceStridedSlicelstm_792/Shape:output:0%lstm_792/strided_slice/stack:output:0'lstm_792/strided_slice/stack_1:output:0'lstm_792/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_792/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_792/zeros/packedPacklstm_792/strided_slice:output:0 lstm_792/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_792/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_792/zerosFilllstm_792/zeros/packed:output:0lstm_792/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_792/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_792/zeros_1/packedPacklstm_792/strided_slice:output:0"lstm_792/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_792/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_792/zeros_1Fill lstm_792/zeros_1/packed:output:0lstm_792/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_792/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_792/transpose	Transposeinputs lstm_792/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_792/Shape_1Shapelstm_792/transpose:y:0*
T0*
_output_shapes
:h
lstm_792/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_792/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_792/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_792/strided_slice_1StridedSlicelstm_792/Shape_1:output:0'lstm_792/strided_slice_1/stack:output:0)lstm_792/strided_slice_1/stack_1:output:0)lstm_792/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_792/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_792/TensorArrayV2TensorListReserve-lstm_792/TensorArrayV2/element_shape:output:0!lstm_792/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_792/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_792/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_792/transpose:y:0Glstm_792/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_792/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_792/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_792/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_792/strided_slice_2StridedSlicelstm_792/transpose:y:0'lstm_792/strided_slice_2/stack:output:0)lstm_792/strided_slice_2/stack_1:output:0)lstm_792/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_792/lstm_cell_792/MatMul/ReadVariableOpReadVariableOp5lstm_792_lstm_cell_792_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_792/lstm_cell_792/MatMulMatMul!lstm_792/strided_slice_2:output:04lstm_792/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_792/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp7lstm_792_lstm_cell_792_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_792/lstm_cell_792/MatMul_1MatMullstm_792/zeros:output:06lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_792/lstm_cell_792/addAddV2'lstm_792/lstm_cell_792/MatMul:product:0)lstm_792/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_792/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp6lstm_792_lstm_cell_792_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_792/lstm_cell_792/BiasAddBiasAddlstm_792/lstm_cell_792/add:z:05lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_792/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_792/lstm_cell_792/splitSplit/lstm_792/lstm_cell_792/split/split_dim:output:0'lstm_792/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_792/lstm_cell_792/SigmoidSigmoid%lstm_792/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_792/lstm_cell_792/Sigmoid_1Sigmoid%lstm_792/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_792/lstm_cell_792/mulMul$lstm_792/lstm_cell_792/Sigmoid_1:y:0lstm_792/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_792/lstm_cell_792/ReluRelu%lstm_792/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_792/lstm_cell_792/mul_1Mul"lstm_792/lstm_cell_792/Sigmoid:y:0)lstm_792/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_792/lstm_cell_792/add_1AddV2lstm_792/lstm_cell_792/mul:z:0 lstm_792/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_792/lstm_cell_792/Sigmoid_2Sigmoid%lstm_792/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_792/lstm_cell_792/Relu_1Relu lstm_792/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_792/lstm_cell_792/mul_2Mul$lstm_792/lstm_cell_792/Sigmoid_2:y:0+lstm_792/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_792/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_792/TensorArrayV2_1TensorListReserve/lstm_792/TensorArrayV2_1/element_shape:output:0!lstm_792/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_792/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_792/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_792/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_792/whileWhile$lstm_792/while/loop_counter:output:0*lstm_792/while/maximum_iterations:output:0lstm_792/time:output:0!lstm_792/TensorArrayV2_1:handle:0lstm_792/zeros:output:0lstm_792/zeros_1:output:0!lstm_792/strided_slice_1:output:0@lstm_792/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_792_lstm_cell_792_matmul_readvariableop_resource7lstm_792_lstm_cell_792_matmul_1_readvariableop_resource6lstm_792_lstm_cell_792_biasadd_readvariableop_resource*
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
lstm_792_while_body_4836373*'
condR
lstm_792_while_cond_4836372*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_792/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_792/TensorArrayV2Stack/TensorListStackTensorListStacklstm_792/while:output:3Blstm_792/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_792/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_792/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_792/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_792/strided_slice_3StridedSlice4lstm_792/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_792/strided_slice_3/stack:output:0)lstm_792/strided_slice_3/stack_1:output:0)lstm_792/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_792/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_792/transpose_1	Transpose4lstm_792/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_792/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_792/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_793/ShapeShapelstm_792/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_793/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_793/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_793/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_793/strided_sliceStridedSlicelstm_793/Shape:output:0%lstm_793/strided_slice/stack:output:0'lstm_793/strided_slice/stack_1:output:0'lstm_793/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_793/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_793/zeros/packedPacklstm_793/strided_slice:output:0 lstm_793/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_793/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_793/zerosFilllstm_793/zeros/packed:output:0lstm_793/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_793/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_793/zeros_1/packedPacklstm_793/strided_slice:output:0"lstm_793/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_793/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_793/zeros_1Fill lstm_793/zeros_1/packed:output:0lstm_793/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_793/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_793/transpose	Transposelstm_792/transpose_1:y:0 lstm_793/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_793/Shape_1Shapelstm_793/transpose:y:0*
T0*
_output_shapes
:h
lstm_793/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_793/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_793/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_793/strided_slice_1StridedSlicelstm_793/Shape_1:output:0'lstm_793/strided_slice_1/stack:output:0)lstm_793/strided_slice_1/stack_1:output:0)lstm_793/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_793/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_793/TensorArrayV2TensorListReserve-lstm_793/TensorArrayV2/element_shape:output:0!lstm_793/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_793/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_793/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_793/transpose:y:0Glstm_793/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_793/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_793/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_793/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_793/strided_slice_2StridedSlicelstm_793/transpose:y:0'lstm_793/strided_slice_2/stack:output:0)lstm_793/strided_slice_2/stack_1:output:0)lstm_793/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_793/lstm_cell_793/MatMul/ReadVariableOpReadVariableOp5lstm_793_lstm_cell_793_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_793/lstm_cell_793/MatMulMatMul!lstm_793/strided_slice_2:output:04lstm_793/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_793/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp7lstm_793_lstm_cell_793_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_793/lstm_cell_793/MatMul_1MatMullstm_793/zeros:output:06lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_793/lstm_cell_793/addAddV2'lstm_793/lstm_cell_793/MatMul:product:0)lstm_793/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_793/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp6lstm_793_lstm_cell_793_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_793/lstm_cell_793/BiasAddBiasAddlstm_793/lstm_cell_793/add:z:05lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_793/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_793/lstm_cell_793/splitSplit/lstm_793/lstm_cell_793/split/split_dim:output:0'lstm_793/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_793/lstm_cell_793/SigmoidSigmoid%lstm_793/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_793/lstm_cell_793/Sigmoid_1Sigmoid%lstm_793/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_793/lstm_cell_793/mulMul$lstm_793/lstm_cell_793/Sigmoid_1:y:0lstm_793/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_793/lstm_cell_793/ReluRelu%lstm_793/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_793/lstm_cell_793/mul_1Mul"lstm_793/lstm_cell_793/Sigmoid:y:0)lstm_793/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_793/lstm_cell_793/add_1AddV2lstm_793/lstm_cell_793/mul:z:0 lstm_793/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_793/lstm_cell_793/Sigmoid_2Sigmoid%lstm_793/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_793/lstm_cell_793/Relu_1Relu lstm_793/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_793/lstm_cell_793/mul_2Mul$lstm_793/lstm_cell_793/Sigmoid_2:y:0+lstm_793/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_793/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_793/TensorArrayV2_1TensorListReserve/lstm_793/TensorArrayV2_1/element_shape:output:0!lstm_793/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_793/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_793/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_793/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_793/whileWhile$lstm_793/while/loop_counter:output:0*lstm_793/while/maximum_iterations:output:0lstm_793/time:output:0!lstm_793/TensorArrayV2_1:handle:0lstm_793/zeros:output:0lstm_793/zeros_1:output:0!lstm_793/strided_slice_1:output:0@lstm_793/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_793_lstm_cell_793_matmul_readvariableop_resource7lstm_793_lstm_cell_793_matmul_1_readvariableop_resource6lstm_793_lstm_cell_793_biasadd_readvariableop_resource*
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
lstm_793_while_body_4836512*'
condR
lstm_793_while_cond_4836511*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_793/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_793/TensorArrayV2Stack/TensorListStackTensorListStacklstm_793/while:output:3Blstm_793/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_793/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_793/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_793/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_793/strided_slice_3StridedSlice4lstm_793/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_793/strided_slice_3/stack:output:0)lstm_793/strided_slice_3/stack_1:output:0)lstm_793/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_793/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_793/transpose_1	Transpose4lstm_793/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_793/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_793/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_794/ShapeShapelstm_793/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_794/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_794/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_794/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_794/strided_sliceStridedSlicelstm_794/Shape:output:0%lstm_794/strided_slice/stack:output:0'lstm_794/strided_slice/stack_1:output:0'lstm_794/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_794/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_794/zeros/packedPacklstm_794/strided_slice:output:0 lstm_794/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_794/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_794/zerosFilllstm_794/zeros/packed:output:0lstm_794/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_794/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_794/zeros_1/packedPacklstm_794/strided_slice:output:0"lstm_794/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_794/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_794/zeros_1Fill lstm_794/zeros_1/packed:output:0lstm_794/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_794/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_794/transpose	Transposelstm_793/transpose_1:y:0 lstm_794/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_794/Shape_1Shapelstm_794/transpose:y:0*
T0*
_output_shapes
:h
lstm_794/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_794/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_794/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_794/strided_slice_1StridedSlicelstm_794/Shape_1:output:0'lstm_794/strided_slice_1/stack:output:0)lstm_794/strided_slice_1/stack_1:output:0)lstm_794/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_794/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_794/TensorArrayV2TensorListReserve-lstm_794/TensorArrayV2/element_shape:output:0!lstm_794/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_794/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_794/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_794/transpose:y:0Glstm_794/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_794/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_794/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_794/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_794/strided_slice_2StridedSlicelstm_794/transpose:y:0'lstm_794/strided_slice_2/stack:output:0)lstm_794/strided_slice_2/stack_1:output:0)lstm_794/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_794/lstm_cell_794/MatMul/ReadVariableOpReadVariableOp5lstm_794_lstm_cell_794_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_794/lstm_cell_794/MatMulMatMul!lstm_794/strided_slice_2:output:04lstm_794/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_794/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp7lstm_794_lstm_cell_794_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_794/lstm_cell_794/MatMul_1MatMullstm_794/zeros:output:06lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_794/lstm_cell_794/addAddV2'lstm_794/lstm_cell_794/MatMul:product:0)lstm_794/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_794/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp6lstm_794_lstm_cell_794_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_794/lstm_cell_794/BiasAddBiasAddlstm_794/lstm_cell_794/add:z:05lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_794/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_794/lstm_cell_794/splitSplit/lstm_794/lstm_cell_794/split/split_dim:output:0'lstm_794/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_794/lstm_cell_794/SigmoidSigmoid%lstm_794/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_794/lstm_cell_794/Sigmoid_1Sigmoid%lstm_794/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_794/lstm_cell_794/mulMul$lstm_794/lstm_cell_794/Sigmoid_1:y:0lstm_794/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_794/lstm_cell_794/ReluRelu%lstm_794/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_794/lstm_cell_794/mul_1Mul"lstm_794/lstm_cell_794/Sigmoid:y:0)lstm_794/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_794/lstm_cell_794/add_1AddV2lstm_794/lstm_cell_794/mul:z:0 lstm_794/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_794/lstm_cell_794/Sigmoid_2Sigmoid%lstm_794/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_794/lstm_cell_794/Relu_1Relu lstm_794/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_794/lstm_cell_794/mul_2Mul$lstm_794/lstm_cell_794/Sigmoid_2:y:0+lstm_794/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_794/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_794/TensorArrayV2_1TensorListReserve/lstm_794/TensorArrayV2_1/element_shape:output:0!lstm_794/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_794/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_794/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_794/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_794/whileWhile$lstm_794/while/loop_counter:output:0*lstm_794/while/maximum_iterations:output:0lstm_794/time:output:0!lstm_794/TensorArrayV2_1:handle:0lstm_794/zeros:output:0lstm_794/zeros_1:output:0!lstm_794/strided_slice_1:output:0@lstm_794/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_794_lstm_cell_794_matmul_readvariableop_resource7lstm_794_lstm_cell_794_matmul_1_readvariableop_resource6lstm_794_lstm_cell_794_biasadd_readvariableop_resource*
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
lstm_794_while_body_4836651*'
condR
lstm_794_while_cond_4836650*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_794/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_794/TensorArrayV2Stack/TensorListStackTensorListStacklstm_794/while:output:3Blstm_794/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_794/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_794/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_794/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_794/strided_slice_3StridedSlice4lstm_794/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_794/strided_slice_3/stack:output:0)lstm_794/strided_slice_3/stack_1:output:0)lstm_794/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_794/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_794/transpose_1	Transpose4lstm_794/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_794/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_794/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_264/MatMul/ReadVariableOpReadVariableOp(dense_264_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_264/MatMulMatMul!lstm_794/strided_slice_3:output:0'dense_264/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_264/BiasAdd/ReadVariableOpReadVariableOp)dense_264_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_264/BiasAddBiasAdddense_264/MatMul:product:0(dense_264/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_264/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_264/BiasAdd/ReadVariableOp ^dense_264/MatMul/ReadVariableOp.^lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp-^lstm_792/lstm_cell_792/MatMul/ReadVariableOp/^lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp^lstm_792/while.^lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp-^lstm_793/lstm_cell_793/MatMul/ReadVariableOp/^lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp^lstm_793/while.^lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp-^lstm_794/lstm_cell_794/MatMul/ReadVariableOp/^lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp^lstm_794/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_264/BiasAdd/ReadVariableOp dense_264/BiasAdd/ReadVariableOp2B
dense_264/MatMul/ReadVariableOpdense_264/MatMul/ReadVariableOp2^
-lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp-lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp2\
,lstm_792/lstm_cell_792/MatMul/ReadVariableOp,lstm_792/lstm_cell_792/MatMul/ReadVariableOp2`
.lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp.lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp2 
lstm_792/whilelstm_792/while2^
-lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp-lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp2\
,lstm_793/lstm_cell_793/MatMul/ReadVariableOp,lstm_793/lstm_cell_793/MatMul/ReadVariableOp2`
.lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp.lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp2 
lstm_793/whilelstm_793/while2^
-lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp-lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp2\
,lstm_794/lstm_cell_794/MatMul/ReadVariableOp,lstm_794/lstm_cell_794/MatMul/ReadVariableOp2`
.lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp.lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp2 
lstm_794/whilelstm_794/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4833990

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
+__inference_dense_264_layer_call_fn_4838598

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
F__inference_dense_264_layer_call_and_return_conditional_losses_4835090o
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
?8
?
while_body_4834838
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_793_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_793_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_793_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_793_matmul_readvariableop_resource:	d?G
4while_lstm_cell_793_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_793_biasadd_readvariableop_resource:	???*while/lstm_cell_793/BiasAdd/ReadVariableOp?)while/lstm_cell_793/MatMul/ReadVariableOp?+while/lstm_cell_793/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_793/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_793_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_793/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_793_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_793/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_793/addAddV2$while/lstm_cell_793/MatMul:product:0&while/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_793_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_793/BiasAddBiasAddwhile/lstm_cell_793/add:z:02while/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_793/splitSplit,while/lstm_cell_793/split/split_dim:output:0$while/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_793/SigmoidSigmoid"while/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_1Sigmoid"while/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mulMul!while/lstm_cell_793/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_793/ReluRelu"while/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_1Mulwhile/lstm_cell_793/Sigmoid:y:0&while/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/add_1AddV2while/lstm_cell_793/mul:z:0while/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_2Sigmoid"while/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_793/Relu_1Reluwhile/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_2Mul!while/lstm_cell_793/Sigmoid_2:y:0(while/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_793/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_793/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_793/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_793/BiasAdd/ReadVariableOp*^while/lstm_cell_793/MatMul/ReadVariableOp,^while/lstm_cell_793/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_793_biasadd_readvariableop_resource5while_lstm_cell_793_biasadd_readvariableop_resource_0"n
4while_lstm_cell_793_matmul_1_readvariableop_resource6while_lstm_cell_793_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_793_matmul_readvariableop_resource4while_lstm_cell_793_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_793/BiasAdd/ReadVariableOp*while/lstm_cell_793/BiasAdd/ReadVariableOp2V
)while/lstm_cell_793/MatMul/ReadVariableOp)while/lstm_cell_793/MatMul/ReadVariableOp2Z
+while/lstm_cell_793/MatMul_1/ReadVariableOp+while/lstm_cell_793/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4838075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4838075___redundant_placeholder05
1while_while_cond_4838075___redundant_placeholder15
1while_while_cond_4838075___redundant_placeholder25
1while_while_cond_4838075___redundant_placeholder3
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
?W
?
 __inference__traced_save_4839045
file_prefix/
+savev2_dense_264_kernel_read_readvariableop-
)savev2_dense_264_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_792_lstm_cell_792_kernel_read_readvariableopF
Bsavev2_lstm_792_lstm_cell_792_recurrent_kernel_read_readvariableop:
6savev2_lstm_792_lstm_cell_792_bias_read_readvariableop<
8savev2_lstm_793_lstm_cell_793_kernel_read_readvariableopF
Bsavev2_lstm_793_lstm_cell_793_recurrent_kernel_read_readvariableop:
6savev2_lstm_793_lstm_cell_793_bias_read_readvariableop<
8savev2_lstm_794_lstm_cell_794_kernel_read_readvariableopF
Bsavev2_lstm_794_lstm_cell_794_recurrent_kernel_read_readvariableop:
6savev2_lstm_794_lstm_cell_794_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_264_kernel_m_read_readvariableop4
0savev2_adam_dense_264_bias_m_read_readvariableopC
?savev2_adam_lstm_792_lstm_cell_792_kernel_m_read_readvariableopM
Isavev2_adam_lstm_792_lstm_cell_792_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_792_lstm_cell_792_bias_m_read_readvariableopC
?savev2_adam_lstm_793_lstm_cell_793_kernel_m_read_readvariableopM
Isavev2_adam_lstm_793_lstm_cell_793_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_793_lstm_cell_793_bias_m_read_readvariableopC
?savev2_adam_lstm_794_lstm_cell_794_kernel_m_read_readvariableopM
Isavev2_adam_lstm_794_lstm_cell_794_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_794_lstm_cell_794_bias_m_read_readvariableop6
2savev2_adam_dense_264_kernel_v_read_readvariableop4
0savev2_adam_dense_264_bias_v_read_readvariableopC
?savev2_adam_lstm_792_lstm_cell_792_kernel_v_read_readvariableopM
Isavev2_adam_lstm_792_lstm_cell_792_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_792_lstm_cell_792_bias_v_read_readvariableopC
?savev2_adam_lstm_793_lstm_cell_793_kernel_v_read_readvariableopM
Isavev2_adam_lstm_793_lstm_cell_793_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_793_lstm_cell_793_bias_v_read_readvariableopC
?savev2_adam_lstm_794_lstm_cell_794_kernel_v_read_readvariableopM
Isavev2_adam_lstm_794_lstm_cell_794_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_794_lstm_cell_794_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_264_kernel_read_readvariableop)savev2_dense_264_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_792_lstm_cell_792_kernel_read_readvariableopBsavev2_lstm_792_lstm_cell_792_recurrent_kernel_read_readvariableop6savev2_lstm_792_lstm_cell_792_bias_read_readvariableop8savev2_lstm_793_lstm_cell_793_kernel_read_readvariableopBsavev2_lstm_793_lstm_cell_793_recurrent_kernel_read_readvariableop6savev2_lstm_793_lstm_cell_793_bias_read_readvariableop8savev2_lstm_794_lstm_cell_794_kernel_read_readvariableopBsavev2_lstm_794_lstm_cell_794_recurrent_kernel_read_readvariableop6savev2_lstm_794_lstm_cell_794_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_264_kernel_m_read_readvariableop0savev2_adam_dense_264_bias_m_read_readvariableop?savev2_adam_lstm_792_lstm_cell_792_kernel_m_read_readvariableopIsavev2_adam_lstm_792_lstm_cell_792_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_792_lstm_cell_792_bias_m_read_readvariableop?savev2_adam_lstm_793_lstm_cell_793_kernel_m_read_readvariableopIsavev2_adam_lstm_793_lstm_cell_793_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_793_lstm_cell_793_bias_m_read_readvariableop?savev2_adam_lstm_794_lstm_cell_794_kernel_m_read_readvariableopIsavev2_adam_lstm_794_lstm_cell_794_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_794_lstm_cell_794_bias_m_read_readvariableop2savev2_adam_dense_264_kernel_v_read_readvariableop0savev2_adam_dense_264_bias_v_read_readvariableop?savev2_adam_lstm_792_lstm_cell_792_kernel_v_read_readvariableopIsavev2_adam_lstm_792_lstm_cell_792_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_792_lstm_cell_792_bias_v_read_readvariableop?savev2_adam_lstm_793_lstm_cell_793_kernel_v_read_readvariableopIsavev2_adam_lstm_793_lstm_cell_793_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_793_lstm_cell_793_bias_v_read_readvariableop?savev2_adam_lstm_794_lstm_cell_794_kernel_v_read_readvariableopIsavev2_adam_lstm_794_lstm_cell_794_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_794_lstm_cell_794_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_4834003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4834003___redundant_placeholder05
1while_while_cond_4834003___redundant_placeholder15
1while_while_cond_4834003___redundant_placeholder25
1while_while_cond_4834003___redundant_placeholder3
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

lstm_793_while_body_4836085.
*lstm_793_while_lstm_793_while_loop_counter4
0lstm_793_while_lstm_793_while_maximum_iterations
lstm_793_while_placeholder 
lstm_793_while_placeholder_1 
lstm_793_while_placeholder_2 
lstm_793_while_placeholder_3-
)lstm_793_while_lstm_793_strided_slice_1_0i
elstm_793_while_tensorarrayv2read_tensorlistgetitem_lstm_793_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_793_while_lstm_cell_793_matmul_readvariableop_resource_0:	d?R
?lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource_0:	2?M
>lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource_0:	?
lstm_793_while_identity
lstm_793_while_identity_1
lstm_793_while_identity_2
lstm_793_while_identity_3
lstm_793_while_identity_4
lstm_793_while_identity_5+
'lstm_793_while_lstm_793_strided_slice_1g
clstm_793_while_tensorarrayv2read_tensorlistgetitem_lstm_793_tensorarrayunstack_tensorlistfromtensorN
;lstm_793_while_lstm_cell_793_matmul_readvariableop_resource:	d?P
=lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource:	2?K
<lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource:	???3lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp?2lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp?4lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp?
@lstm_793/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_793/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_793_while_tensorarrayv2read_tensorlistgetitem_lstm_793_tensorarrayunstack_tensorlistfromtensor_0lstm_793_while_placeholderIlstm_793/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_793/while/lstm_cell_793/MatMul/ReadVariableOpReadVariableOp=lstm_793_while_lstm_cell_793_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_793/while/lstm_cell_793/MatMulMatMul9lstm_793/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp?lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_793/while/lstm_cell_793/MatMul_1MatMullstm_793_while_placeholder_2<lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_793/while/lstm_cell_793/addAddV2-lstm_793/while/lstm_cell_793/MatMul:product:0/lstm_793/while/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp>lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_793/while/lstm_cell_793/BiasAddBiasAdd$lstm_793/while/lstm_cell_793/add:z:0;lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_793/while/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_793/while/lstm_cell_793/splitSplit5lstm_793/while/lstm_cell_793/split/split_dim:output:0-lstm_793/while/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_793/while/lstm_cell_793/SigmoidSigmoid+lstm_793/while/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_793/while/lstm_cell_793/Sigmoid_1Sigmoid+lstm_793/while/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_793/while/lstm_cell_793/mulMul*lstm_793/while/lstm_cell_793/Sigmoid_1:y:0lstm_793_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_793/while/lstm_cell_793/ReluRelu+lstm_793/while/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_793/while/lstm_cell_793/mul_1Mul(lstm_793/while/lstm_cell_793/Sigmoid:y:0/lstm_793/while/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_793/while/lstm_cell_793/add_1AddV2$lstm_793/while/lstm_cell_793/mul:z:0&lstm_793/while/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_793/while/lstm_cell_793/Sigmoid_2Sigmoid+lstm_793/while/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_793/while/lstm_cell_793/Relu_1Relu&lstm_793/while/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_793/while/lstm_cell_793/mul_2Mul*lstm_793/while/lstm_cell_793/Sigmoid_2:y:01lstm_793/while/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_793/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_793_while_placeholder_1lstm_793_while_placeholder&lstm_793/while/lstm_cell_793/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_793/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_793/while/addAddV2lstm_793_while_placeholderlstm_793/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_793/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_793/while/add_1AddV2*lstm_793_while_lstm_793_while_loop_counterlstm_793/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_793/while/IdentityIdentitylstm_793/while/add_1:z:0^lstm_793/while/NoOp*
T0*
_output_shapes
: ?
lstm_793/while/Identity_1Identity0lstm_793_while_lstm_793_while_maximum_iterations^lstm_793/while/NoOp*
T0*
_output_shapes
: t
lstm_793/while/Identity_2Identitylstm_793/while/add:z:0^lstm_793/while/NoOp*
T0*
_output_shapes
: ?
lstm_793/while/Identity_3IdentityClstm_793/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_793/while/NoOp*
T0*
_output_shapes
: ?
lstm_793/while/Identity_4Identity&lstm_793/while/lstm_cell_793/mul_2:z:0^lstm_793/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_793/while/Identity_5Identity&lstm_793/while/lstm_cell_793/add_1:z:0^lstm_793/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_793/while/NoOpNoOp4^lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp3^lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp5^lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_793_while_identity lstm_793/while/Identity:output:0"?
lstm_793_while_identity_1"lstm_793/while/Identity_1:output:0"?
lstm_793_while_identity_2"lstm_793/while/Identity_2:output:0"?
lstm_793_while_identity_3"lstm_793/while/Identity_3:output:0"?
lstm_793_while_identity_4"lstm_793/while/Identity_4:output:0"?
lstm_793_while_identity_5"lstm_793/while/Identity_5:output:0"T
'lstm_793_while_lstm_793_strided_slice_1)lstm_793_while_lstm_793_strided_slice_1_0"~
<lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource>lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource_0"?
=lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource?lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource_0"|
;lstm_793_while_lstm_cell_793_matmul_readvariableop_resource=lstm_793_while_lstm_cell_793_matmul_readvariableop_resource_0"?
clstm_793_while_tensorarrayv2read_tensorlistgetitem_lstm_793_tensorarrayunstack_tensorlistfromtensorelstm_793_while_tensorarrayv2read_tensorlistgetitem_lstm_793_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp3lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp2h
2lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp2lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp2l
4lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp4lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4834837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4834837___redundant_placeholder05
1while_while_cond_4834837___redundant_placeholder15
1while_while_cond_4834837___redundant_placeholder25
1while_while_cond_4834837___redundant_placeholder3
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
while_body_4837746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_793_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_793_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_793_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_793_matmul_readvariableop_resource:	d?G
4while_lstm_cell_793_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_793_biasadd_readvariableop_resource:	???*while/lstm_cell_793/BiasAdd/ReadVariableOp?)while/lstm_cell_793/MatMul/ReadVariableOp?+while/lstm_cell_793/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_793/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_793_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_793/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_793_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_793/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_793/addAddV2$while/lstm_cell_793/MatMul:product:0&while/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_793_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_793/BiasAddBiasAddwhile/lstm_cell_793/add:z:02while/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_793/splitSplit,while/lstm_cell_793/split/split_dim:output:0$while/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_793/SigmoidSigmoid"while/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_1Sigmoid"while/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mulMul!while/lstm_cell_793/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_793/ReluRelu"while/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_1Mulwhile/lstm_cell_793/Sigmoid:y:0&while/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/add_1AddV2while/lstm_cell_793/mul:z:0while/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_2Sigmoid"while/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_793/Relu_1Reluwhile/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_2Mul!while/lstm_cell_793/Sigmoid_2:y:0(while/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_793/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_793/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_793/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_793/BiasAdd/ReadVariableOp*^while/lstm_cell_793/MatMul/ReadVariableOp,^while/lstm_cell_793/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_793_biasadd_readvariableop_resource5while_lstm_cell_793_biasadd_readvariableop_resource_0"n
4while_lstm_cell_793_matmul_1_readvariableop_resource6while_lstm_cell_793_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_793_matmul_readvariableop_resource4while_lstm_cell_793_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_793/BiasAdd/ReadVariableOp*while/lstm_cell_793/BiasAdd/ReadVariableOp2V
)while/lstm_cell_793/MatMul/ReadVariableOp)while/lstm_cell_793/MatMul/ReadVariableOp2Z
+while/lstm_cell_793/MatMul_1/ReadVariableOp+while/lstm_cell_793/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4834354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_794_4834378_0:2(/
while_lstm_cell_794_4834380_0:
(+
while_lstm_cell_794_4834382_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_794_4834378:2(-
while_lstm_cell_794_4834380:
()
while_lstm_cell_794_4834382:(??+while/lstm_cell_794/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_794/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_794_4834378_0while_lstm_cell_794_4834380_0while_lstm_cell_794_4834382_0*
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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4834340?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_794/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_794/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_794/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_794/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_794_4834378while_lstm_cell_794_4834378_0"<
while_lstm_cell_794_4834380while_lstm_cell_794_4834380_0"<
while_lstm_cell_794_4834382while_lstm_cell_794_4834382_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_794/StatefulPartitionedCall+while/lstm_cell_794/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_264_layer_call_fn_4835738
lstm_792_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_792_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835686o
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
_user_specified_namelstm_792_input
?
?
while_cond_4835203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4835203___redundant_placeholder05
1while_while_cond_4835203___redundant_placeholder15
1while_while_cond_4835203___redundant_placeholder25
1while_while_cond_4835203___redundant_placeholder3
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
*__inference_lstm_793_layer_call_fn_4837401

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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4835453s
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
while_cond_4836986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4836986___redundant_placeholder05
1while_while_cond_4836986___redundant_placeholder15
1while_while_cond_4836986___redundant_placeholder25
1while_while_cond_4836986___redundant_placeholder3
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
/__inference_lstm_cell_794_layer_call_fn_4838838

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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4834486o
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837544
inputs_0?
,lstm_cell_793_matmul_readvariableop_resource:	d?A
.lstm_cell_793_matmul_1_readvariableop_resource:	2?<
-lstm_cell_793_biasadd_readvariableop_resource:	?
identity??$lstm_cell_793/BiasAdd/ReadVariableOp?#lstm_cell_793/MatMul/ReadVariableOp?%lstm_cell_793/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_793/MatMul/ReadVariableOpReadVariableOp,lstm_cell_793_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_793/MatMulMatMulstrided_slice_2:output:0+lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_793_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_793/MatMul_1MatMulzeros:output:0-lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_793/addAddV2lstm_cell_793/MatMul:product:0 lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_793_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_793/BiasAddBiasAddlstm_cell_793/add:z:0,lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_793/splitSplit&lstm_cell_793/split/split_dim:output:0lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_793/SigmoidSigmoidlstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_1Sigmoidlstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_793/mulMullstm_cell_793/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_793/ReluRelulstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_1Mullstm_cell_793/Sigmoid:y:0 lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_793/add_1AddV2lstm_cell_793/mul:z:0lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_2Sigmoidlstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_793/Relu_1Relulstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_2Mullstm_cell_793/Sigmoid_2:y:0"lstm_cell_793/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_793_matmul_readvariableop_resource.lstm_cell_793_matmul_1_readvariableop_resource-lstm_cell_793_biasadd_readvariableop_resource*
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
while_body_4837460*
condR
while_cond_4837459*K
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
NoOpNoOp%^lstm_cell_793/BiasAdd/ReadVariableOp$^lstm_cell_793/MatMul/ReadVariableOp&^lstm_cell_793/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_793/BiasAdd/ReadVariableOp$lstm_cell_793/BiasAdd/ReadVariableOp2J
#lstm_cell_793/MatMul/ReadVariableOp#lstm_cell_793/MatMul/ReadVariableOp2N
%lstm_cell_793/MatMul_1/ReadVariableOp%lstm_cell_793/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4835368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4835368___redundant_placeholder05
1while_while_cond_4835368___redundant_placeholder15
1while_while_cond_4835368___redundant_placeholder25
1while_while_cond_4835368___redundant_placeholder3
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4833723

inputs(
lstm_cell_792_4833641:	?(
lstm_cell_792_4833643:	d?$
lstm_cell_792_4833645:	?
identity??%lstm_cell_792/StatefulPartitionedCall?while;
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
%lstm_cell_792/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_792_4833641lstm_cell_792_4833643lstm_cell_792_4833645*
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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4833640n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_792_4833641lstm_cell_792_4833643lstm_cell_792_4833645*
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
while_body_4833654*
condR
while_cond_4833653*K
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
NoOpNoOp&^lstm_cell_792/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_792/StatefulPartitionedCall%lstm_cell_792/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_792_layer_call_fn_4838625

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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4833640o
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
while_body_4838076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_794_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_794_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_794_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_794_matmul_readvariableop_resource:2(F
4while_lstm_cell_794_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_794_biasadd_readvariableop_resource:(??*while/lstm_cell_794/BiasAdd/ReadVariableOp?)while/lstm_cell_794/MatMul/ReadVariableOp?+while/lstm_cell_794/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_794/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_794_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_794/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_794_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_794/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_794/addAddV2$while/lstm_cell_794/MatMul:product:0&while/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_794_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_794/BiasAddBiasAddwhile/lstm_cell_794/add:z:02while/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_794/splitSplit,while/lstm_cell_794/split/split_dim:output:0$while/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_794/SigmoidSigmoid"while/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_1Sigmoid"while/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mulMul!while/lstm_cell_794/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_794/ReluRelu"while/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_1Mulwhile/lstm_cell_794/Sigmoid:y:0&while/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/add_1AddV2while/lstm_cell_794/mul:z:0while/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_2Sigmoid"while/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_794/Relu_1Reluwhile/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_2Mul!while/lstm_cell_794/Sigmoid_2:y:0(while/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_794/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_794/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_794/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_794/BiasAdd/ReadVariableOp*^while/lstm_cell_794/MatMul/ReadVariableOp,^while/lstm_cell_794/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_794_biasadd_readvariableop_resource5while_lstm_cell_794_biasadd_readvariableop_resource_0"n
4while_lstm_cell_794_matmul_1_readvariableop_resource6while_lstm_cell_794_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_794_matmul_readvariableop_resource4while_lstm_cell_794_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_794/BiasAdd/ReadVariableOp*while/lstm_cell_794/BiasAdd/ReadVariableOp2V
)while/lstm_cell_794/MatMul/ReadVariableOp)while/lstm_cell_794/MatMul/ReadVariableOp2Z
+while/lstm_cell_794/MatMul_1/ReadVariableOp+while/lstm_cell_794/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4833654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_792_4833678_0:	?0
while_lstm_cell_792_4833680_0:	d?,
while_lstm_cell_792_4833682_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_792_4833678:	?.
while_lstm_cell_792_4833680:	d?*
while_lstm_cell_792_4833682:	???+while/lstm_cell_792/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_792/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_792_4833678_0while_lstm_cell_792_4833680_0while_lstm_cell_792_4833682_0*
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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4833640?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_792/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_792/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_792/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_792/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_792_4833678while_lstm_cell_792_4833678_0"<
while_lstm_cell_792_4833680while_lstm_cell_792_4833680_0"<
while_lstm_cell_792_4833682while_lstm_cell_792_4833682_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_792/StatefulPartitionedCall+while/lstm_cell_792/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_264_lstm_792_while_body_4833205L
Hsequential_264_lstm_792_while_sequential_264_lstm_792_while_loop_counterR
Nsequential_264_lstm_792_while_sequential_264_lstm_792_while_maximum_iterations-
)sequential_264_lstm_792_while_placeholder/
+sequential_264_lstm_792_while_placeholder_1/
+sequential_264_lstm_792_while_placeholder_2/
+sequential_264_lstm_792_while_placeholder_3K
Gsequential_264_lstm_792_while_sequential_264_lstm_792_strided_slice_1_0?
?sequential_264_lstm_792_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_792_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_264_lstm_792_while_lstm_cell_792_matmul_readvariableop_resource_0:	?a
Nsequential_264_lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource_0:	d?\
Msequential_264_lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource_0:	?*
&sequential_264_lstm_792_while_identity,
(sequential_264_lstm_792_while_identity_1,
(sequential_264_lstm_792_while_identity_2,
(sequential_264_lstm_792_while_identity_3,
(sequential_264_lstm_792_while_identity_4,
(sequential_264_lstm_792_while_identity_5I
Esequential_264_lstm_792_while_sequential_264_lstm_792_strided_slice_1?
?sequential_264_lstm_792_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_792_tensorarrayunstack_tensorlistfromtensor]
Jsequential_264_lstm_792_while_lstm_cell_792_matmul_readvariableop_resource:	?_
Lsequential_264_lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource:	d?Z
Ksequential_264_lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource:	???Bsequential_264/lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp?Asequential_264/lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp?Csequential_264/lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp?
Osequential_264/lstm_792/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_264/lstm_792/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_264_lstm_792_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_792_tensorarrayunstack_tensorlistfromtensor_0)sequential_264_lstm_792_while_placeholderXsequential_264/lstm_792/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_264/lstm_792/while/lstm_cell_792/MatMul/ReadVariableOpReadVariableOpLsequential_264_lstm_792_while_lstm_cell_792_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_264/lstm_792/while/lstm_cell_792/MatMulMatMulHsequential_264/lstm_792/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_264/lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_264/lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOpNsequential_264_lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_264/lstm_792/while/lstm_cell_792/MatMul_1MatMul+sequential_264_lstm_792_while_placeholder_2Ksequential_264/lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_264/lstm_792/while/lstm_cell_792/addAddV2<sequential_264/lstm_792/while/lstm_cell_792/MatMul:product:0>sequential_264/lstm_792/while/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_264/lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOpMsequential_264_lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_264/lstm_792/while/lstm_cell_792/BiasAddBiasAdd3sequential_264/lstm_792/while/lstm_cell_792/add:z:0Jsequential_264/lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_264/lstm_792/while/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_264/lstm_792/while/lstm_cell_792/splitSplitDsequential_264/lstm_792/while/lstm_cell_792/split/split_dim:output:0<sequential_264/lstm_792/while/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_264/lstm_792/while/lstm_cell_792/SigmoidSigmoid:sequential_264/lstm_792/while/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_264/lstm_792/while/lstm_cell_792/Sigmoid_1Sigmoid:sequential_264/lstm_792/while/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_264/lstm_792/while/lstm_cell_792/mulMul9sequential_264/lstm_792/while/lstm_cell_792/Sigmoid_1:y:0+sequential_264_lstm_792_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_264/lstm_792/while/lstm_cell_792/ReluRelu:sequential_264/lstm_792/while/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_264/lstm_792/while/lstm_cell_792/mul_1Mul7sequential_264/lstm_792/while/lstm_cell_792/Sigmoid:y:0>sequential_264/lstm_792/while/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_264/lstm_792/while/lstm_cell_792/add_1AddV23sequential_264/lstm_792/while/lstm_cell_792/mul:z:05sequential_264/lstm_792/while/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_264/lstm_792/while/lstm_cell_792/Sigmoid_2Sigmoid:sequential_264/lstm_792/while/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_264/lstm_792/while/lstm_cell_792/Relu_1Relu5sequential_264/lstm_792/while/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_264/lstm_792/while/lstm_cell_792/mul_2Mul9sequential_264/lstm_792/while/lstm_cell_792/Sigmoid_2:y:0@sequential_264/lstm_792/while/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_264/lstm_792/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_264_lstm_792_while_placeholder_1)sequential_264_lstm_792_while_placeholder5sequential_264/lstm_792/while/lstm_cell_792/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_264/lstm_792/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_264/lstm_792/while/addAddV2)sequential_264_lstm_792_while_placeholder,sequential_264/lstm_792/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_264/lstm_792/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_264/lstm_792/while/add_1AddV2Hsequential_264_lstm_792_while_sequential_264_lstm_792_while_loop_counter.sequential_264/lstm_792/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_264/lstm_792/while/IdentityIdentity'sequential_264/lstm_792/while/add_1:z:0#^sequential_264/lstm_792/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_792/while/Identity_1IdentityNsequential_264_lstm_792_while_sequential_264_lstm_792_while_maximum_iterations#^sequential_264/lstm_792/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_792/while/Identity_2Identity%sequential_264/lstm_792/while/add:z:0#^sequential_264/lstm_792/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_792/while/Identity_3IdentityRsequential_264/lstm_792/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_264/lstm_792/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_792/while/Identity_4Identity5sequential_264/lstm_792/while/lstm_cell_792/mul_2:z:0#^sequential_264/lstm_792/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_264/lstm_792/while/Identity_5Identity5sequential_264/lstm_792/while/lstm_cell_792/add_1:z:0#^sequential_264/lstm_792/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_264/lstm_792/while/NoOpNoOpC^sequential_264/lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOpB^sequential_264/lstm_792/while/lstm_cell_792/MatMul/ReadVariableOpD^sequential_264/lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_264_lstm_792_while_identity/sequential_264/lstm_792/while/Identity:output:0"]
(sequential_264_lstm_792_while_identity_11sequential_264/lstm_792/while/Identity_1:output:0"]
(sequential_264_lstm_792_while_identity_21sequential_264/lstm_792/while/Identity_2:output:0"]
(sequential_264_lstm_792_while_identity_31sequential_264/lstm_792/while/Identity_3:output:0"]
(sequential_264_lstm_792_while_identity_41sequential_264/lstm_792/while/Identity_4:output:0"]
(sequential_264_lstm_792_while_identity_51sequential_264/lstm_792/while/Identity_5:output:0"?
Ksequential_264_lstm_792_while_lstm_cell_792_biasadd_readvariableop_resourceMsequential_264_lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource_0"?
Lsequential_264_lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resourceNsequential_264_lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource_0"?
Jsequential_264_lstm_792_while_lstm_cell_792_matmul_readvariableop_resourceLsequential_264_lstm_792_while_lstm_cell_792_matmul_readvariableop_resource_0"?
Esequential_264_lstm_792_while_sequential_264_lstm_792_strided_slice_1Gsequential_264_lstm_792_while_sequential_264_lstm_792_strided_slice_1_0"?
?sequential_264_lstm_792_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_792_tensorarrayunstack_tensorlistfromtensor?sequential_264_lstm_792_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_792_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_264/lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOpBsequential_264/lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp2?
Asequential_264/lstm_792/while/lstm_cell_792/MatMul/ReadVariableOpAsequential_264/lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp2?
Csequential_264/lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOpCsequential_264/lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_793_layer_call_fn_4837379
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4834264|
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
while_cond_4837129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4837129___redundant_placeholder05
1while_while_cond_4837129___redundant_placeholder15
1while_while_cond_4837129___redundant_placeholder25
1while_while_cond_4837129___redundant_placeholder3
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837973

inputs?
,lstm_cell_793_matmul_readvariableop_resource:	d?A
.lstm_cell_793_matmul_1_readvariableop_resource:	2?<
-lstm_cell_793_biasadd_readvariableop_resource:	?
identity??$lstm_cell_793/BiasAdd/ReadVariableOp?#lstm_cell_793/MatMul/ReadVariableOp?%lstm_cell_793/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_793/MatMul/ReadVariableOpReadVariableOp,lstm_cell_793_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_793/MatMulMatMulstrided_slice_2:output:0+lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_793_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_793/MatMul_1MatMulzeros:output:0-lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_793/addAddV2lstm_cell_793/MatMul:product:0 lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_793_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_793/BiasAddBiasAddlstm_cell_793/add:z:0,lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_793/splitSplit&lstm_cell_793/split/split_dim:output:0lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_793/SigmoidSigmoidlstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_1Sigmoidlstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_793/mulMullstm_cell_793/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_793/ReluRelulstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_1Mullstm_cell_793/Sigmoid:y:0 lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_793/add_1AddV2lstm_cell_793/mul:z:0lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_2Sigmoidlstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_793/Relu_1Relulstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_2Mullstm_cell_793/Sigmoid_2:y:0"lstm_cell_793/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_793_matmul_readvariableop_resource.lstm_cell_793_matmul_1_readvariableop_resource-lstm_cell_793_biasadd_readvariableop_resource*
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
while_body_4837889*
condR
while_cond_4837888*K
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
NoOpNoOp%^lstm_cell_793/BiasAdd/ReadVariableOp$^lstm_cell_793/MatMul/ReadVariableOp&^lstm_cell_793/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_793/BiasAdd/ReadVariableOp$lstm_cell_793/BiasAdd/ReadVariableOp2J
#lstm_cell_793/MatMul/ReadVariableOp#lstm_cell_793/MatMul/ReadVariableOp2N
%lstm_cell_793/MatMul_1/ReadVariableOp%lstm_cell_793/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_794_while_cond_4836650.
*lstm_794_while_lstm_794_while_loop_counter4
0lstm_794_while_lstm_794_while_maximum_iterations
lstm_794_while_placeholder 
lstm_794_while_placeholder_1 
lstm_794_while_placeholder_2 
lstm_794_while_placeholder_30
,lstm_794_while_less_lstm_794_strided_slice_1G
Clstm_794_while_lstm_794_while_cond_4836650___redundant_placeholder0G
Clstm_794_while_lstm_794_while_cond_4836650___redundant_placeholder1G
Clstm_794_while_lstm_794_while_cond_4836650___redundant_placeholder2G
Clstm_794_while_lstm_794_while_cond_4836650___redundant_placeholder3
lstm_794_while_identity
?
lstm_794/while/LessLesslstm_794_while_placeholder,lstm_794_while_less_lstm_794_strided_slice_1*
T0*
_output_shapes
: ]
lstm_794/while/IdentityIdentitylstm_794/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_794_while_identity lstm_794/while/Identity:output:0*(
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
*__inference_lstm_793_layer_call_fn_4837390

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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4834922s
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
?
while_body_4837889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_793_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_793_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_793_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_793_matmul_readvariableop_resource:	d?G
4while_lstm_cell_793_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_793_biasadd_readvariableop_resource:	???*while/lstm_cell_793/BiasAdd/ReadVariableOp?)while/lstm_cell_793/MatMul/ReadVariableOp?+while/lstm_cell_793/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_793/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_793_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_793/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_793_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_793/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_793/addAddV2$while/lstm_cell_793/MatMul:product:0&while/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_793_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_793/BiasAddBiasAddwhile/lstm_cell_793/add:z:02while/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_793/splitSplit,while/lstm_cell_793/split/split_dim:output:0$while/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_793/SigmoidSigmoid"while/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_1Sigmoid"while/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mulMul!while/lstm_cell_793/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_793/ReluRelu"while/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_1Mulwhile/lstm_cell_793/Sigmoid:y:0&while/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/add_1AddV2while/lstm_cell_793/mul:z:0while/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_2Sigmoid"while/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_793/Relu_1Reluwhile/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_2Mul!while/lstm_cell_793/Sigmoid_2:y:0(while/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_793/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_793/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_793/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_793/BiasAdd/ReadVariableOp*^while/lstm_cell_793/MatMul/ReadVariableOp,^while/lstm_cell_793/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_793_biasadd_readvariableop_resource5while_lstm_cell_793_biasadd_readvariableop_resource_0"n
4while_lstm_cell_793_matmul_1_readvariableop_resource6while_lstm_cell_793_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_793_matmul_readvariableop_resource4while_lstm_cell_793_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_793/BiasAdd/ReadVariableOp*while/lstm_cell_793/BiasAdd/ReadVariableOp2V
)while/lstm_cell_793/MatMul/ReadVariableOp)while/lstm_cell_793/MatMul/ReadVariableOp2Z
+while/lstm_cell_793/MatMul_1/ReadVariableOp+while/lstm_cell_793/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_793_while_cond_4836084.
*lstm_793_while_lstm_793_while_loop_counter4
0lstm_793_while_lstm_793_while_maximum_iterations
lstm_793_while_placeholder 
lstm_793_while_placeholder_1 
lstm_793_while_placeholder_2 
lstm_793_while_placeholder_30
,lstm_793_while_less_lstm_793_strided_slice_1G
Clstm_793_while_lstm_793_while_cond_4836084___redundant_placeholder0G
Clstm_793_while_lstm_793_while_cond_4836084___redundant_placeholder1G
Clstm_793_while_lstm_793_while_cond_4836084___redundant_placeholder2G
Clstm_793_while_lstm_793_while_cond_4836084___redundant_placeholder3
lstm_793_while_identity
?
lstm_793/while/LessLesslstm_793_while_placeholder,lstm_793_while_less_lstm_793_strided_slice_1*
T0*
_output_shapes
: ]
lstm_793/while/IdentityIdentitylstm_793/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_793_while_identity lstm_793/while/Identity:output:0*(
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
??
?
#__inference__traced_restore_4839175
file_prefix3
!assignvariableop_dense_264_kernel:
/
!assignvariableop_1_dense_264_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_792_lstm_cell_792_kernel:	?M
:assignvariableop_8_lstm_792_lstm_cell_792_recurrent_kernel:	d?=
.assignvariableop_9_lstm_792_lstm_cell_792_bias:	?D
1assignvariableop_10_lstm_793_lstm_cell_793_kernel:	d?N
;assignvariableop_11_lstm_793_lstm_cell_793_recurrent_kernel:	2?>
/assignvariableop_12_lstm_793_lstm_cell_793_bias:	?C
1assignvariableop_13_lstm_794_lstm_cell_794_kernel:2(M
;assignvariableop_14_lstm_794_lstm_cell_794_recurrent_kernel:
(=
/assignvariableop_15_lstm_794_lstm_cell_794_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_264_kernel_m:
7
)assignvariableop_19_adam_dense_264_bias_m:K
8assignvariableop_20_adam_lstm_792_lstm_cell_792_kernel_m:	?U
Bassignvariableop_21_adam_lstm_792_lstm_cell_792_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_792_lstm_cell_792_bias_m:	?K
8assignvariableop_23_adam_lstm_793_lstm_cell_793_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_793_lstm_cell_793_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_793_lstm_cell_793_bias_m:	?J
8assignvariableop_26_adam_lstm_794_lstm_cell_794_kernel_m:2(T
Bassignvariableop_27_adam_lstm_794_lstm_cell_794_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_794_lstm_cell_794_bias_m:(=
+assignvariableop_29_adam_dense_264_kernel_v:
7
)assignvariableop_30_adam_dense_264_bias_v:K
8assignvariableop_31_adam_lstm_792_lstm_cell_792_kernel_v:	?U
Bassignvariableop_32_adam_lstm_792_lstm_cell_792_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_792_lstm_cell_792_bias_v:	?K
8assignvariableop_34_adam_lstm_793_lstm_cell_793_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_793_lstm_cell_793_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_793_lstm_cell_793_bias_v:	?J
8assignvariableop_37_adam_lstm_794_lstm_cell_794_kernel_v:2(T
Bassignvariableop_38_adam_lstm_794_lstm_cell_794_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_794_lstm_cell_794_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_264_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_264_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_792_lstm_cell_792_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_792_lstm_cell_792_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_792_lstm_cell_792_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_793_lstm_cell_793_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_793_lstm_cell_793_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_793_lstm_cell_793_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_794_lstm_cell_794_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_794_lstm_cell_794_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_794_lstm_cell_794_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_264_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_264_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_792_lstm_cell_792_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_792_lstm_cell_792_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_792_lstm_cell_792_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_793_lstm_cell_793_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_793_lstm_cell_793_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_793_lstm_cell_793_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_794_lstm_cell_794_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_794_lstm_cell_794_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_794_lstm_cell_794_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_264_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_264_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_792_lstm_cell_792_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_792_lstm_cell_792_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_792_lstm_cell_792_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_793_lstm_cell_793_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_793_lstm_cell_793_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_793_lstm_cell_793_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_794_lstm_cell_794_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_794_lstm_cell_794_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_794_lstm_cell_794_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_4838219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_794_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_794_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_794_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_794_matmul_readvariableop_resource:2(F
4while_lstm_cell_794_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_794_biasadd_readvariableop_resource:(??*while/lstm_cell_794/BiasAdd/ReadVariableOp?)while/lstm_cell_794/MatMul/ReadVariableOp?+while/lstm_cell_794/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_794/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_794_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_794/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_794_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_794/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_794/addAddV2$while/lstm_cell_794/MatMul:product:0&while/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_794_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_794/BiasAddBiasAddwhile/lstm_cell_794/add:z:02while/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_794/splitSplit,while/lstm_cell_794/split/split_dim:output:0$while/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_794/SigmoidSigmoid"while/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_1Sigmoid"while/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mulMul!while/lstm_cell_794/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_794/ReluRelu"while/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_1Mulwhile/lstm_cell_794/Sigmoid:y:0&while/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/add_1AddV2while/lstm_cell_794/mul:z:0while/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_2Sigmoid"while/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_794/Relu_1Reluwhile/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_2Mul!while/lstm_cell_794/Sigmoid_2:y:0(while/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_794/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_794/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_794/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_794/BiasAdd/ReadVariableOp*^while/lstm_cell_794/MatMul/ReadVariableOp,^while/lstm_cell_794/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_794_biasadd_readvariableop_resource5while_lstm_cell_794_biasadd_readvariableop_resource_0"n
4while_lstm_cell_794_matmul_1_readvariableop_resource6while_lstm_cell_794_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_794_matmul_readvariableop_resource4while_lstm_cell_794_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_794/BiasAdd/ReadVariableOp*while/lstm_cell_794/BiasAdd/ReadVariableOp2V
)while/lstm_cell_794/MatMul/ReadVariableOp)while/lstm_cell_794/MatMul/ReadVariableOp2Z
+while/lstm_cell_794/MatMul_1/ReadVariableOp+while/lstm_cell_794/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4835453

inputs?
,lstm_cell_793_matmul_readvariableop_resource:	d?A
.lstm_cell_793_matmul_1_readvariableop_resource:	2?<
-lstm_cell_793_biasadd_readvariableop_resource:	?
identity??$lstm_cell_793/BiasAdd/ReadVariableOp?#lstm_cell_793/MatMul/ReadVariableOp?%lstm_cell_793/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_793/MatMul/ReadVariableOpReadVariableOp,lstm_cell_793_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_793/MatMulMatMulstrided_slice_2:output:0+lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_793_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_793/MatMul_1MatMulzeros:output:0-lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_793/addAddV2lstm_cell_793/MatMul:product:0 lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_793_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_793/BiasAddBiasAddlstm_cell_793/add:z:0,lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_793/splitSplit&lstm_cell_793/split/split_dim:output:0lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_793/SigmoidSigmoidlstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_1Sigmoidlstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_793/mulMullstm_cell_793/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_793/ReluRelulstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_1Mullstm_cell_793/Sigmoid:y:0 lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_793/add_1AddV2lstm_cell_793/mul:z:0lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_2Sigmoidlstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_793/Relu_1Relulstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_2Mullstm_cell_793/Sigmoid_2:y:0"lstm_cell_793/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_793_matmul_readvariableop_resource.lstm_cell_793_matmul_1_readvariableop_resource-lstm_cell_793_biasadd_readvariableop_resource*
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
while_body_4835369*
condR
while_cond_4835368*K
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
NoOpNoOp%^lstm_cell_793/BiasAdd/ReadVariableOp$^lstm_cell_793/MatMul/ReadVariableOp&^lstm_cell_793/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_793/BiasAdd/ReadVariableOp$lstm_cell_793/BiasAdd/ReadVariableOp2J
#lstm_cell_793/MatMul/ReadVariableOp#lstm_cell_793/MatMul/ReadVariableOp2N
%lstm_cell_793/MatMul_1/ReadVariableOp%lstm_cell_793/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4834544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4834544___redundant_placeholder05
1while_while_cond_4834544___redundant_placeholder15
1while_while_cond_4834544___redundant_placeholder25
1while_while_cond_4834544___redundant_placeholder3
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
/__inference_lstm_cell_792_layer_call_fn_4838642

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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4833786o
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4835288

inputs>
,lstm_cell_794_matmul_readvariableop_resource:2(@
.lstm_cell_794_matmul_1_readvariableop_resource:
(;
-lstm_cell_794_biasadd_readvariableop_resource:(
identity??$lstm_cell_794/BiasAdd/ReadVariableOp?#lstm_cell_794/MatMul/ReadVariableOp?%lstm_cell_794/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_794/MatMul/ReadVariableOpReadVariableOp,lstm_cell_794_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_794/MatMulMatMulstrided_slice_2:output:0+lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_794_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_794/MatMul_1MatMulzeros:output:0-lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_794/addAddV2lstm_cell_794/MatMul:product:0 lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_794_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_794/BiasAddBiasAddlstm_cell_794/add:z:0,lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_794/splitSplit&lstm_cell_794/split/split_dim:output:0lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_794/SigmoidSigmoidlstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_1Sigmoidlstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_794/mulMullstm_cell_794/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_794/ReluRelulstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_1Mullstm_cell_794/Sigmoid:y:0 lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_794/add_1AddV2lstm_cell_794/mul:z:0lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_2Sigmoidlstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_794/Relu_1Relulstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_2Mullstm_cell_794/Sigmoid_2:y:0"lstm_cell_794/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_794_matmul_readvariableop_resource.lstm_cell_794_matmul_1_readvariableop_resource-lstm_cell_794_biasadd_readvariableop_resource*
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
while_body_4835204*
condR
while_cond_4835203*K
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
NoOpNoOp%^lstm_cell_794/BiasAdd/ReadVariableOp$^lstm_cell_794/MatMul/ReadVariableOp&^lstm_cell_794/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_794/BiasAdd/ReadVariableOp$lstm_cell_794/BiasAdd/ReadVariableOp2J
#lstm_cell_794/MatMul/ReadVariableOp#lstm_cell_794/MatMul/ReadVariableOp2N
%lstm_cell_794/MatMul_1/ReadVariableOp%lstm_cell_794/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_792_layer_call_fn_4836752
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4833723|
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
?
*sequential_264_lstm_794_while_cond_4833482L
Hsequential_264_lstm_794_while_sequential_264_lstm_794_while_loop_counterR
Nsequential_264_lstm_794_while_sequential_264_lstm_794_while_maximum_iterations-
)sequential_264_lstm_794_while_placeholder/
+sequential_264_lstm_794_while_placeholder_1/
+sequential_264_lstm_794_while_placeholder_2/
+sequential_264_lstm_794_while_placeholder_3N
Jsequential_264_lstm_794_while_less_sequential_264_lstm_794_strided_slice_1e
asequential_264_lstm_794_while_sequential_264_lstm_794_while_cond_4833482___redundant_placeholder0e
asequential_264_lstm_794_while_sequential_264_lstm_794_while_cond_4833482___redundant_placeholder1e
asequential_264_lstm_794_while_sequential_264_lstm_794_while_cond_4833482___redundant_placeholder2e
asequential_264_lstm_794_while_sequential_264_lstm_794_while_cond_4833482___redundant_placeholder3*
&sequential_264_lstm_794_while_identity
?
"sequential_264/lstm_794/while/LessLess)sequential_264_lstm_794_while_placeholderJsequential_264_lstm_794_while_less_sequential_264_lstm_794_strided_slice_1*
T0*
_output_shapes
: {
&sequential_264/lstm_794/while/IdentityIdentity&sequential_264/lstm_794/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_264_lstm_794_while_identity/sequential_264/lstm_794/while/Identity:output:0*(
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838446

inputs>
,lstm_cell_794_matmul_readvariableop_resource:2(@
.lstm_cell_794_matmul_1_readvariableop_resource:
(;
-lstm_cell_794_biasadd_readvariableop_resource:(
identity??$lstm_cell_794/BiasAdd/ReadVariableOp?#lstm_cell_794/MatMul/ReadVariableOp?%lstm_cell_794/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_794/MatMul/ReadVariableOpReadVariableOp,lstm_cell_794_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_794/MatMulMatMulstrided_slice_2:output:0+lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_794_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_794/MatMul_1MatMulzeros:output:0-lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_794/addAddV2lstm_cell_794/MatMul:product:0 lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_794_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_794/BiasAddBiasAddlstm_cell_794/add:z:0,lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_794/splitSplit&lstm_cell_794/split/split_dim:output:0lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_794/SigmoidSigmoidlstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_1Sigmoidlstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_794/mulMullstm_cell_794/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_794/ReluRelulstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_1Mullstm_cell_794/Sigmoid:y:0 lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_794/add_1AddV2lstm_cell_794/mul:z:0lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_2Sigmoidlstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_794/Relu_1Relulstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_2Mullstm_cell_794/Sigmoid_2:y:0"lstm_cell_794/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_794_matmul_readvariableop_resource.lstm_cell_794_matmul_1_readvariableop_resource-lstm_cell_794_biasadd_readvariableop_resource*
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
while_body_4838362*
condR
while_cond_4838361*K
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
NoOpNoOp%^lstm_cell_794/BiasAdd/ReadVariableOp$^lstm_cell_794/MatMul/ReadVariableOp&^lstm_cell_794/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_794/BiasAdd/ReadVariableOp$lstm_cell_794/BiasAdd/ReadVariableOp2J
#lstm_cell_794/MatMul/ReadVariableOp#lstm_cell_794/MatMul/ReadVariableOp2N
%lstm_cell_794/MatMul_1/ReadVariableOp%lstm_cell_794/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_264_lstm_793_while_body_4833344L
Hsequential_264_lstm_793_while_sequential_264_lstm_793_while_loop_counterR
Nsequential_264_lstm_793_while_sequential_264_lstm_793_while_maximum_iterations-
)sequential_264_lstm_793_while_placeholder/
+sequential_264_lstm_793_while_placeholder_1/
+sequential_264_lstm_793_while_placeholder_2/
+sequential_264_lstm_793_while_placeholder_3K
Gsequential_264_lstm_793_while_sequential_264_lstm_793_strided_slice_1_0?
?sequential_264_lstm_793_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_793_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_264_lstm_793_while_lstm_cell_793_matmul_readvariableop_resource_0:	d?a
Nsequential_264_lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource_0:	2?\
Msequential_264_lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource_0:	?*
&sequential_264_lstm_793_while_identity,
(sequential_264_lstm_793_while_identity_1,
(sequential_264_lstm_793_while_identity_2,
(sequential_264_lstm_793_while_identity_3,
(sequential_264_lstm_793_while_identity_4,
(sequential_264_lstm_793_while_identity_5I
Esequential_264_lstm_793_while_sequential_264_lstm_793_strided_slice_1?
?sequential_264_lstm_793_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_793_tensorarrayunstack_tensorlistfromtensor]
Jsequential_264_lstm_793_while_lstm_cell_793_matmul_readvariableop_resource:	d?_
Lsequential_264_lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource:	2?Z
Ksequential_264_lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource:	???Bsequential_264/lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp?Asequential_264/lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp?Csequential_264/lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp?
Osequential_264/lstm_793/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_264/lstm_793/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_264_lstm_793_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_793_tensorarrayunstack_tensorlistfromtensor_0)sequential_264_lstm_793_while_placeholderXsequential_264/lstm_793/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_264/lstm_793/while/lstm_cell_793/MatMul/ReadVariableOpReadVariableOpLsequential_264_lstm_793_while_lstm_cell_793_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_264/lstm_793/while/lstm_cell_793/MatMulMatMulHsequential_264/lstm_793/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_264/lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_264/lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOpNsequential_264_lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_264/lstm_793/while/lstm_cell_793/MatMul_1MatMul+sequential_264_lstm_793_while_placeholder_2Ksequential_264/lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_264/lstm_793/while/lstm_cell_793/addAddV2<sequential_264/lstm_793/while/lstm_cell_793/MatMul:product:0>sequential_264/lstm_793/while/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_264/lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOpMsequential_264_lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_264/lstm_793/while/lstm_cell_793/BiasAddBiasAdd3sequential_264/lstm_793/while/lstm_cell_793/add:z:0Jsequential_264/lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_264/lstm_793/while/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_264/lstm_793/while/lstm_cell_793/splitSplitDsequential_264/lstm_793/while/lstm_cell_793/split/split_dim:output:0<sequential_264/lstm_793/while/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_264/lstm_793/while/lstm_cell_793/SigmoidSigmoid:sequential_264/lstm_793/while/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_264/lstm_793/while/lstm_cell_793/Sigmoid_1Sigmoid:sequential_264/lstm_793/while/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_264/lstm_793/while/lstm_cell_793/mulMul9sequential_264/lstm_793/while/lstm_cell_793/Sigmoid_1:y:0+sequential_264_lstm_793_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_264/lstm_793/while/lstm_cell_793/ReluRelu:sequential_264/lstm_793/while/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_264/lstm_793/while/lstm_cell_793/mul_1Mul7sequential_264/lstm_793/while/lstm_cell_793/Sigmoid:y:0>sequential_264/lstm_793/while/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_264/lstm_793/while/lstm_cell_793/add_1AddV23sequential_264/lstm_793/while/lstm_cell_793/mul:z:05sequential_264/lstm_793/while/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_264/lstm_793/while/lstm_cell_793/Sigmoid_2Sigmoid:sequential_264/lstm_793/while/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_264/lstm_793/while/lstm_cell_793/Relu_1Relu5sequential_264/lstm_793/while/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_264/lstm_793/while/lstm_cell_793/mul_2Mul9sequential_264/lstm_793/while/lstm_cell_793/Sigmoid_2:y:0@sequential_264/lstm_793/while/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_264/lstm_793/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_264_lstm_793_while_placeholder_1)sequential_264_lstm_793_while_placeholder5sequential_264/lstm_793/while/lstm_cell_793/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_264/lstm_793/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_264/lstm_793/while/addAddV2)sequential_264_lstm_793_while_placeholder,sequential_264/lstm_793/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_264/lstm_793/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_264/lstm_793/while/add_1AddV2Hsequential_264_lstm_793_while_sequential_264_lstm_793_while_loop_counter.sequential_264/lstm_793/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_264/lstm_793/while/IdentityIdentity'sequential_264/lstm_793/while/add_1:z:0#^sequential_264/lstm_793/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_793/while/Identity_1IdentityNsequential_264_lstm_793_while_sequential_264_lstm_793_while_maximum_iterations#^sequential_264/lstm_793/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_793/while/Identity_2Identity%sequential_264/lstm_793/while/add:z:0#^sequential_264/lstm_793/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_793/while/Identity_3IdentityRsequential_264/lstm_793/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_264/lstm_793/while/NoOp*
T0*
_output_shapes
: ?
(sequential_264/lstm_793/while/Identity_4Identity5sequential_264/lstm_793/while/lstm_cell_793/mul_2:z:0#^sequential_264/lstm_793/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_264/lstm_793/while/Identity_5Identity5sequential_264/lstm_793/while/lstm_cell_793/add_1:z:0#^sequential_264/lstm_793/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_264/lstm_793/while/NoOpNoOpC^sequential_264/lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOpB^sequential_264/lstm_793/while/lstm_cell_793/MatMul/ReadVariableOpD^sequential_264/lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_264_lstm_793_while_identity/sequential_264/lstm_793/while/Identity:output:0"]
(sequential_264_lstm_793_while_identity_11sequential_264/lstm_793/while/Identity_1:output:0"]
(sequential_264_lstm_793_while_identity_21sequential_264/lstm_793/while/Identity_2:output:0"]
(sequential_264_lstm_793_while_identity_31sequential_264/lstm_793/while/Identity_3:output:0"]
(sequential_264_lstm_793_while_identity_41sequential_264/lstm_793/while/Identity_4:output:0"]
(sequential_264_lstm_793_while_identity_51sequential_264/lstm_793/while/Identity_5:output:0"?
Ksequential_264_lstm_793_while_lstm_cell_793_biasadd_readvariableop_resourceMsequential_264_lstm_793_while_lstm_cell_793_biasadd_readvariableop_resource_0"?
Lsequential_264_lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resourceNsequential_264_lstm_793_while_lstm_cell_793_matmul_1_readvariableop_resource_0"?
Jsequential_264_lstm_793_while_lstm_cell_793_matmul_readvariableop_resourceLsequential_264_lstm_793_while_lstm_cell_793_matmul_readvariableop_resource_0"?
Esequential_264_lstm_793_while_sequential_264_lstm_793_strided_slice_1Gsequential_264_lstm_793_while_sequential_264_lstm_793_strided_slice_1_0"?
?sequential_264_lstm_793_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_793_tensorarrayunstack_tensorlistfromtensor?sequential_264_lstm_793_while_tensorarrayv2read_tensorlistgetitem_sequential_264_lstm_793_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_264/lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOpBsequential_264/lstm_793/while/lstm_cell_793/BiasAdd/ReadVariableOp2?
Asequential_264/lstm_793/while/lstm_cell_793/MatMul/ReadVariableOpAsequential_264/lstm_793/while/lstm_cell_793/MatMul/ReadVariableOp2?
Csequential_264/lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOpCsequential_264/lstm_793/while/lstm_cell_793/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4833786

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
*__inference_lstm_794_layer_call_fn_4837995
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4834614o
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838160
inputs_0>
,lstm_cell_794_matmul_readvariableop_resource:2(@
.lstm_cell_794_matmul_1_readvariableop_resource:
(;
-lstm_cell_794_biasadd_readvariableop_resource:(
identity??$lstm_cell_794/BiasAdd/ReadVariableOp?#lstm_cell_794/MatMul/ReadVariableOp?%lstm_cell_794/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_794/MatMul/ReadVariableOpReadVariableOp,lstm_cell_794_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_794/MatMulMatMulstrided_slice_2:output:0+lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_794_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_794/MatMul_1MatMulzeros:output:0-lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_794/addAddV2lstm_cell_794/MatMul:product:0 lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_794_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_794/BiasAddBiasAddlstm_cell_794/add:z:0,lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_794/splitSplit&lstm_cell_794/split/split_dim:output:0lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_794/SigmoidSigmoidlstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_1Sigmoidlstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_794/mulMullstm_cell_794/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_794/ReluRelulstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_1Mullstm_cell_794/Sigmoid:y:0 lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_794/add_1AddV2lstm_cell_794/mul:z:0lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_2Sigmoidlstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_794/Relu_1Relulstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_2Mullstm_cell_794/Sigmoid_2:y:0"lstm_cell_794/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_794_matmul_readvariableop_resource.lstm_cell_794_matmul_1_readvariableop_resource-lstm_cell_794_biasadd_readvariableop_resource*
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
while_body_4838076*
condR
while_cond_4838075*K
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
NoOpNoOp%^lstm_cell_794/BiasAdd/ReadVariableOp$^lstm_cell_794/MatMul/ReadVariableOp&^lstm_cell_794/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_794/BiasAdd/ReadVariableOp$lstm_cell_794/BiasAdd/ReadVariableOp2J
#lstm_cell_794/MatMul/ReadVariableOp#lstm_cell_794/MatMul/ReadVariableOp2N
%lstm_cell_794/MatMul_1/ReadVariableOp%lstm_cell_794/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_264_layer_call_fn_4835887

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
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835686o
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
lstm_794_while_cond_4836223.
*lstm_794_while_lstm_794_while_loop_counter4
0lstm_794_while_lstm_794_while_maximum_iterations
lstm_794_while_placeholder 
lstm_794_while_placeholder_1 
lstm_794_while_placeholder_2 
lstm_794_while_placeholder_30
,lstm_794_while_less_lstm_794_strided_slice_1G
Clstm_794_while_lstm_794_while_cond_4836223___redundant_placeholder0G
Clstm_794_while_lstm_794_while_cond_4836223___redundant_placeholder1G
Clstm_794_while_lstm_794_while_cond_4836223___redundant_placeholder2G
Clstm_794_while_lstm_794_while_cond_4836223___redundant_placeholder3
lstm_794_while_identity
?
lstm_794/while/LessLesslstm_794_while_placeholder,lstm_794_while_less_lstm_794_strided_slice_1*
T0*
_output_shapes
: ]
lstm_794/while/IdentityIdentitylstm_794/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_794_while_identity lstm_794/while/Identity:output:0*(
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
*__inference_lstm_794_layer_call_fn_4838006

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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4835072o
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
while_cond_4834194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4834194___redundant_placeholder05
1while_while_cond_4834194___redundant_placeholder15
1while_while_cond_4834194___redundant_placeholder25
1while_while_cond_4834194___redundant_placeholder3
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
while_body_4835204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_794_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_794_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_794_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_794_matmul_readvariableop_resource:2(F
4while_lstm_cell_794_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_794_biasadd_readvariableop_resource:(??*while/lstm_cell_794/BiasAdd/ReadVariableOp?)while/lstm_cell_794/MatMul/ReadVariableOp?+while/lstm_cell_794/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_794/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_794_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_794/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_794_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_794/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_794/addAddV2$while/lstm_cell_794/MatMul:product:0&while/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_794_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_794/BiasAddBiasAddwhile/lstm_cell_794/add:z:02while/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_794/splitSplit,while/lstm_cell_794/split/split_dim:output:0$while/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_794/SigmoidSigmoid"while/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_1Sigmoid"while/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mulMul!while/lstm_cell_794/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_794/ReluRelu"while/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_1Mulwhile/lstm_cell_794/Sigmoid:y:0&while/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/add_1AddV2while/lstm_cell_794/mul:z:0while/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_794/Sigmoid_2Sigmoid"while/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_794/Relu_1Reluwhile/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_794/mul_2Mul!while/lstm_cell_794/Sigmoid_2:y:0(while/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_794/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_794/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_794/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_794/BiasAdd/ReadVariableOp*^while/lstm_cell_794/MatMul/ReadVariableOp,^while/lstm_cell_794/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_794_biasadd_readvariableop_resource5while_lstm_cell_794_biasadd_readvariableop_resource_0"n
4while_lstm_cell_794_matmul_1_readvariableop_resource6while_lstm_cell_794_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_794_matmul_readvariableop_resource4while_lstm_cell_794_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_794/BiasAdd/ReadVariableOp*while/lstm_cell_794/BiasAdd/ReadVariableOp2V
)while/lstm_cell_794/MatMul/ReadVariableOp)while/lstm_cell_794/MatMul/ReadVariableOp2Z
+while/lstm_cell_794/MatMul_1/ReadVariableOp+while/lstm_cell_794/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4837273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_792_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_792_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_792_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_792_matmul_readvariableop_resource:	?G
4while_lstm_cell_792_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_792_biasadd_readvariableop_resource:	???*while/lstm_cell_792/BiasAdd/ReadVariableOp?)while/lstm_cell_792/MatMul/ReadVariableOp?+while/lstm_cell_792/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_792/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_792_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_792/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_792_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_792/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_792/addAddV2$while/lstm_cell_792/MatMul:product:0&while/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_792_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_792/BiasAddBiasAddwhile/lstm_cell_792/add:z:02while/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_792/splitSplit,while/lstm_cell_792/split/split_dim:output:0$while/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_792/SigmoidSigmoid"while/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_1Sigmoid"while/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mulMul!while/lstm_cell_792/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_792/ReluRelu"while/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_1Mulwhile/lstm_cell_792/Sigmoid:y:0&while/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/add_1AddV2while/lstm_cell_792/mul:z:0while/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_2Sigmoid"while/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_792/Relu_1Reluwhile/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_2Mul!while/lstm_cell_792/Sigmoid_2:y:0(while/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_792/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_792/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_792/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_792/BiasAdd/ReadVariableOp*^while/lstm_cell_792/MatMul/ReadVariableOp,^while/lstm_cell_792/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_792_biasadd_readvariableop_resource5while_lstm_cell_792_biasadd_readvariableop_resource_0"n
4while_lstm_cell_792_matmul_1_readvariableop_resource6while_lstm_cell_792_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_792_matmul_readvariableop_resource4while_lstm_cell_792_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_792/BiasAdd/ReadVariableOp*while/lstm_cell_792/BiasAdd/ReadVariableOp2V
)while/lstm_cell_792/MatMul/ReadVariableOp)while/lstm_cell_792/MatMul/ReadVariableOp2Z
+while/lstm_cell_792/MatMul_1/ReadVariableOp+while/lstm_cell_792/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_793_while_cond_4836511.
*lstm_793_while_lstm_793_while_loop_counter4
0lstm_793_while_lstm_793_while_maximum_iterations
lstm_793_while_placeholder 
lstm_793_while_placeholder_1 
lstm_793_while_placeholder_2 
lstm_793_while_placeholder_30
,lstm_793_while_less_lstm_793_strided_slice_1G
Clstm_793_while_lstm_793_while_cond_4836511___redundant_placeholder0G
Clstm_793_while_lstm_793_while_cond_4836511___redundant_placeholder1G
Clstm_793_while_lstm_793_while_cond_4836511___redundant_placeholder2G
Clstm_793_while_lstm_793_while_cond_4836511___redundant_placeholder3
lstm_793_while_identity
?
lstm_793/while/LessLesslstm_793_while_placeholder,lstm_793_while_less_lstm_793_strided_slice_1*
T0*
_output_shapes
: ]
lstm_793/while/IdentityIdentitylstm_793/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_793_while_identity lstm_793/while/Identity:output:0*(
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4834073

inputs(
lstm_cell_793_4833991:	d?(
lstm_cell_793_4833993:	2?$
lstm_cell_793_4833995:	?
identity??%lstm_cell_793/StatefulPartitionedCall?while;
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
%lstm_cell_793/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_793_4833991lstm_cell_793_4833993lstm_cell_793_4833995*
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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4833990n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_793_4833991lstm_cell_793_4833993lstm_cell_793_4833995*
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
while_body_4834004*
condR
while_cond_4834003*K
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
NoOpNoOp&^lstm_cell_793/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_793/StatefulPartitionedCall%lstm_cell_793/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4838772

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
??
?
K__inference_sequential_264_layer_call_and_return_conditional_losses_4836314

inputsH
5lstm_792_lstm_cell_792_matmul_readvariableop_resource:	?J
7lstm_792_lstm_cell_792_matmul_1_readvariableop_resource:	d?E
6lstm_792_lstm_cell_792_biasadd_readvariableop_resource:	?H
5lstm_793_lstm_cell_793_matmul_readvariableop_resource:	d?J
7lstm_793_lstm_cell_793_matmul_1_readvariableop_resource:	2?E
6lstm_793_lstm_cell_793_biasadd_readvariableop_resource:	?G
5lstm_794_lstm_cell_794_matmul_readvariableop_resource:2(I
7lstm_794_lstm_cell_794_matmul_1_readvariableop_resource:
(D
6lstm_794_lstm_cell_794_biasadd_readvariableop_resource:(:
(dense_264_matmul_readvariableop_resource:
7
)dense_264_biasadd_readvariableop_resource:
identity?? dense_264/BiasAdd/ReadVariableOp?dense_264/MatMul/ReadVariableOp?-lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp?,lstm_792/lstm_cell_792/MatMul/ReadVariableOp?.lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp?lstm_792/while?-lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp?,lstm_793/lstm_cell_793/MatMul/ReadVariableOp?.lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp?lstm_793/while?-lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp?,lstm_794/lstm_cell_794/MatMul/ReadVariableOp?.lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp?lstm_794/whileD
lstm_792/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_792/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_792/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_792/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_792/strided_sliceStridedSlicelstm_792/Shape:output:0%lstm_792/strided_slice/stack:output:0'lstm_792/strided_slice/stack_1:output:0'lstm_792/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_792/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_792/zeros/packedPacklstm_792/strided_slice:output:0 lstm_792/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_792/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_792/zerosFilllstm_792/zeros/packed:output:0lstm_792/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_792/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_792/zeros_1/packedPacklstm_792/strided_slice:output:0"lstm_792/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_792/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_792/zeros_1Fill lstm_792/zeros_1/packed:output:0lstm_792/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_792/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_792/transpose	Transposeinputs lstm_792/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_792/Shape_1Shapelstm_792/transpose:y:0*
T0*
_output_shapes
:h
lstm_792/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_792/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_792/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_792/strided_slice_1StridedSlicelstm_792/Shape_1:output:0'lstm_792/strided_slice_1/stack:output:0)lstm_792/strided_slice_1/stack_1:output:0)lstm_792/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_792/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_792/TensorArrayV2TensorListReserve-lstm_792/TensorArrayV2/element_shape:output:0!lstm_792/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_792/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_792/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_792/transpose:y:0Glstm_792/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_792/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_792/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_792/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_792/strided_slice_2StridedSlicelstm_792/transpose:y:0'lstm_792/strided_slice_2/stack:output:0)lstm_792/strided_slice_2/stack_1:output:0)lstm_792/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_792/lstm_cell_792/MatMul/ReadVariableOpReadVariableOp5lstm_792_lstm_cell_792_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_792/lstm_cell_792/MatMulMatMul!lstm_792/strided_slice_2:output:04lstm_792/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_792/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp7lstm_792_lstm_cell_792_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_792/lstm_cell_792/MatMul_1MatMullstm_792/zeros:output:06lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_792/lstm_cell_792/addAddV2'lstm_792/lstm_cell_792/MatMul:product:0)lstm_792/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_792/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp6lstm_792_lstm_cell_792_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_792/lstm_cell_792/BiasAddBiasAddlstm_792/lstm_cell_792/add:z:05lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_792/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_792/lstm_cell_792/splitSplit/lstm_792/lstm_cell_792/split/split_dim:output:0'lstm_792/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_792/lstm_cell_792/SigmoidSigmoid%lstm_792/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_792/lstm_cell_792/Sigmoid_1Sigmoid%lstm_792/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_792/lstm_cell_792/mulMul$lstm_792/lstm_cell_792/Sigmoid_1:y:0lstm_792/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_792/lstm_cell_792/ReluRelu%lstm_792/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_792/lstm_cell_792/mul_1Mul"lstm_792/lstm_cell_792/Sigmoid:y:0)lstm_792/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_792/lstm_cell_792/add_1AddV2lstm_792/lstm_cell_792/mul:z:0 lstm_792/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_792/lstm_cell_792/Sigmoid_2Sigmoid%lstm_792/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_792/lstm_cell_792/Relu_1Relu lstm_792/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_792/lstm_cell_792/mul_2Mul$lstm_792/lstm_cell_792/Sigmoid_2:y:0+lstm_792/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_792/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_792/TensorArrayV2_1TensorListReserve/lstm_792/TensorArrayV2_1/element_shape:output:0!lstm_792/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_792/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_792/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_792/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_792/whileWhile$lstm_792/while/loop_counter:output:0*lstm_792/while/maximum_iterations:output:0lstm_792/time:output:0!lstm_792/TensorArrayV2_1:handle:0lstm_792/zeros:output:0lstm_792/zeros_1:output:0!lstm_792/strided_slice_1:output:0@lstm_792/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_792_lstm_cell_792_matmul_readvariableop_resource7lstm_792_lstm_cell_792_matmul_1_readvariableop_resource6lstm_792_lstm_cell_792_biasadd_readvariableop_resource*
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
lstm_792_while_body_4835946*'
condR
lstm_792_while_cond_4835945*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_792/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_792/TensorArrayV2Stack/TensorListStackTensorListStacklstm_792/while:output:3Blstm_792/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_792/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_792/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_792/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_792/strided_slice_3StridedSlice4lstm_792/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_792/strided_slice_3/stack:output:0)lstm_792/strided_slice_3/stack_1:output:0)lstm_792/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_792/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_792/transpose_1	Transpose4lstm_792/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_792/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_792/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_793/ShapeShapelstm_792/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_793/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_793/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_793/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_793/strided_sliceStridedSlicelstm_793/Shape:output:0%lstm_793/strided_slice/stack:output:0'lstm_793/strided_slice/stack_1:output:0'lstm_793/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_793/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_793/zeros/packedPacklstm_793/strided_slice:output:0 lstm_793/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_793/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_793/zerosFilllstm_793/zeros/packed:output:0lstm_793/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_793/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_793/zeros_1/packedPacklstm_793/strided_slice:output:0"lstm_793/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_793/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_793/zeros_1Fill lstm_793/zeros_1/packed:output:0lstm_793/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_793/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_793/transpose	Transposelstm_792/transpose_1:y:0 lstm_793/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_793/Shape_1Shapelstm_793/transpose:y:0*
T0*
_output_shapes
:h
lstm_793/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_793/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_793/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_793/strided_slice_1StridedSlicelstm_793/Shape_1:output:0'lstm_793/strided_slice_1/stack:output:0)lstm_793/strided_slice_1/stack_1:output:0)lstm_793/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_793/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_793/TensorArrayV2TensorListReserve-lstm_793/TensorArrayV2/element_shape:output:0!lstm_793/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_793/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_793/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_793/transpose:y:0Glstm_793/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_793/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_793/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_793/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_793/strided_slice_2StridedSlicelstm_793/transpose:y:0'lstm_793/strided_slice_2/stack:output:0)lstm_793/strided_slice_2/stack_1:output:0)lstm_793/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_793/lstm_cell_793/MatMul/ReadVariableOpReadVariableOp5lstm_793_lstm_cell_793_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_793/lstm_cell_793/MatMulMatMul!lstm_793/strided_slice_2:output:04lstm_793/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_793/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp7lstm_793_lstm_cell_793_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_793/lstm_cell_793/MatMul_1MatMullstm_793/zeros:output:06lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_793/lstm_cell_793/addAddV2'lstm_793/lstm_cell_793/MatMul:product:0)lstm_793/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_793/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp6lstm_793_lstm_cell_793_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_793/lstm_cell_793/BiasAddBiasAddlstm_793/lstm_cell_793/add:z:05lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_793/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_793/lstm_cell_793/splitSplit/lstm_793/lstm_cell_793/split/split_dim:output:0'lstm_793/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_793/lstm_cell_793/SigmoidSigmoid%lstm_793/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_793/lstm_cell_793/Sigmoid_1Sigmoid%lstm_793/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_793/lstm_cell_793/mulMul$lstm_793/lstm_cell_793/Sigmoid_1:y:0lstm_793/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_793/lstm_cell_793/ReluRelu%lstm_793/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_793/lstm_cell_793/mul_1Mul"lstm_793/lstm_cell_793/Sigmoid:y:0)lstm_793/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_793/lstm_cell_793/add_1AddV2lstm_793/lstm_cell_793/mul:z:0 lstm_793/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_793/lstm_cell_793/Sigmoid_2Sigmoid%lstm_793/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_793/lstm_cell_793/Relu_1Relu lstm_793/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_793/lstm_cell_793/mul_2Mul$lstm_793/lstm_cell_793/Sigmoid_2:y:0+lstm_793/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_793/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_793/TensorArrayV2_1TensorListReserve/lstm_793/TensorArrayV2_1/element_shape:output:0!lstm_793/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_793/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_793/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_793/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_793/whileWhile$lstm_793/while/loop_counter:output:0*lstm_793/while/maximum_iterations:output:0lstm_793/time:output:0!lstm_793/TensorArrayV2_1:handle:0lstm_793/zeros:output:0lstm_793/zeros_1:output:0!lstm_793/strided_slice_1:output:0@lstm_793/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_793_lstm_cell_793_matmul_readvariableop_resource7lstm_793_lstm_cell_793_matmul_1_readvariableop_resource6lstm_793_lstm_cell_793_biasadd_readvariableop_resource*
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
lstm_793_while_body_4836085*'
condR
lstm_793_while_cond_4836084*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_793/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_793/TensorArrayV2Stack/TensorListStackTensorListStacklstm_793/while:output:3Blstm_793/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_793/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_793/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_793/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_793/strided_slice_3StridedSlice4lstm_793/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_793/strided_slice_3/stack:output:0)lstm_793/strided_slice_3/stack_1:output:0)lstm_793/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_793/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_793/transpose_1	Transpose4lstm_793/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_793/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_793/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_794/ShapeShapelstm_793/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_794/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_794/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_794/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_794/strided_sliceStridedSlicelstm_794/Shape:output:0%lstm_794/strided_slice/stack:output:0'lstm_794/strided_slice/stack_1:output:0'lstm_794/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_794/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_794/zeros/packedPacklstm_794/strided_slice:output:0 lstm_794/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_794/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_794/zerosFilllstm_794/zeros/packed:output:0lstm_794/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_794/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_794/zeros_1/packedPacklstm_794/strided_slice:output:0"lstm_794/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_794/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_794/zeros_1Fill lstm_794/zeros_1/packed:output:0lstm_794/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_794/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_794/transpose	Transposelstm_793/transpose_1:y:0 lstm_794/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_794/Shape_1Shapelstm_794/transpose:y:0*
T0*
_output_shapes
:h
lstm_794/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_794/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_794/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_794/strided_slice_1StridedSlicelstm_794/Shape_1:output:0'lstm_794/strided_slice_1/stack:output:0)lstm_794/strided_slice_1/stack_1:output:0)lstm_794/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_794/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_794/TensorArrayV2TensorListReserve-lstm_794/TensorArrayV2/element_shape:output:0!lstm_794/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_794/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_794/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_794/transpose:y:0Glstm_794/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_794/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_794/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_794/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_794/strided_slice_2StridedSlicelstm_794/transpose:y:0'lstm_794/strided_slice_2/stack:output:0)lstm_794/strided_slice_2/stack_1:output:0)lstm_794/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_794/lstm_cell_794/MatMul/ReadVariableOpReadVariableOp5lstm_794_lstm_cell_794_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_794/lstm_cell_794/MatMulMatMul!lstm_794/strided_slice_2:output:04lstm_794/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_794/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp7lstm_794_lstm_cell_794_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_794/lstm_cell_794/MatMul_1MatMullstm_794/zeros:output:06lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_794/lstm_cell_794/addAddV2'lstm_794/lstm_cell_794/MatMul:product:0)lstm_794/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_794/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp6lstm_794_lstm_cell_794_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_794/lstm_cell_794/BiasAddBiasAddlstm_794/lstm_cell_794/add:z:05lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_794/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_794/lstm_cell_794/splitSplit/lstm_794/lstm_cell_794/split/split_dim:output:0'lstm_794/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_794/lstm_cell_794/SigmoidSigmoid%lstm_794/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_794/lstm_cell_794/Sigmoid_1Sigmoid%lstm_794/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_794/lstm_cell_794/mulMul$lstm_794/lstm_cell_794/Sigmoid_1:y:0lstm_794/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_794/lstm_cell_794/ReluRelu%lstm_794/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_794/lstm_cell_794/mul_1Mul"lstm_794/lstm_cell_794/Sigmoid:y:0)lstm_794/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_794/lstm_cell_794/add_1AddV2lstm_794/lstm_cell_794/mul:z:0 lstm_794/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_794/lstm_cell_794/Sigmoid_2Sigmoid%lstm_794/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_794/lstm_cell_794/Relu_1Relu lstm_794/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_794/lstm_cell_794/mul_2Mul$lstm_794/lstm_cell_794/Sigmoid_2:y:0+lstm_794/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_794/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_794/TensorArrayV2_1TensorListReserve/lstm_794/TensorArrayV2_1/element_shape:output:0!lstm_794/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_794/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_794/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_794/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_794/whileWhile$lstm_794/while/loop_counter:output:0*lstm_794/while/maximum_iterations:output:0lstm_794/time:output:0!lstm_794/TensorArrayV2_1:handle:0lstm_794/zeros:output:0lstm_794/zeros_1:output:0!lstm_794/strided_slice_1:output:0@lstm_794/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_794_lstm_cell_794_matmul_readvariableop_resource7lstm_794_lstm_cell_794_matmul_1_readvariableop_resource6lstm_794_lstm_cell_794_biasadd_readvariableop_resource*
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
lstm_794_while_body_4836224*'
condR
lstm_794_while_cond_4836223*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_794/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_794/TensorArrayV2Stack/TensorListStackTensorListStacklstm_794/while:output:3Blstm_794/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_794/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_794/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_794/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_794/strided_slice_3StridedSlice4lstm_794/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_794/strided_slice_3/stack:output:0)lstm_794/strided_slice_3/stack_1:output:0)lstm_794/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_794/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_794/transpose_1	Transpose4lstm_794/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_794/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_794/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_264/MatMul/ReadVariableOpReadVariableOp(dense_264_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_264/MatMulMatMul!lstm_794/strided_slice_3:output:0'dense_264/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_264/BiasAdd/ReadVariableOpReadVariableOp)dense_264_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_264/BiasAddBiasAdddense_264/MatMul:product:0(dense_264/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_264/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_264/BiasAdd/ReadVariableOp ^dense_264/MatMul/ReadVariableOp.^lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp-^lstm_792/lstm_cell_792/MatMul/ReadVariableOp/^lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp^lstm_792/while.^lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp-^lstm_793/lstm_cell_793/MatMul/ReadVariableOp/^lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp^lstm_793/while.^lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp-^lstm_794/lstm_cell_794/MatMul/ReadVariableOp/^lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp^lstm_794/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_264/BiasAdd/ReadVariableOp dense_264/BiasAdd/ReadVariableOp2B
dense_264/MatMul/ReadVariableOpdense_264/MatMul/ReadVariableOp2^
-lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp-lstm_792/lstm_cell_792/BiasAdd/ReadVariableOp2\
,lstm_792/lstm_cell_792/MatMul/ReadVariableOp,lstm_792/lstm_cell_792/MatMul/ReadVariableOp2`
.lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp.lstm_792/lstm_cell_792/MatMul_1/ReadVariableOp2 
lstm_792/whilelstm_792/while2^
-lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp-lstm_793/lstm_cell_793/BiasAdd/ReadVariableOp2\
,lstm_793/lstm_cell_793/MatMul/ReadVariableOp,lstm_793/lstm_cell_793/MatMul/ReadVariableOp2`
.lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp.lstm_793/lstm_cell_793/MatMul_1/ReadVariableOp2 
lstm_793/whilelstm_793/while2^
-lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp-lstm_794/lstm_cell_794/BiasAdd/ReadVariableOp2\
,lstm_794/lstm_cell_794/MatMul/ReadVariableOp,lstm_794/lstm_cell_794/MatMul/ReadVariableOp2`
.lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp.lstm_794/lstm_cell_794/MatMul_1/ReadVariableOp2 
lstm_794/whilelstm_794/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835768
lstm_792_input#
lstm_792_4835741:	?#
lstm_792_4835743:	d?
lstm_792_4835745:	?#
lstm_793_4835748:	d?#
lstm_793_4835750:	2?
lstm_793_4835752:	?"
lstm_794_4835755:2("
lstm_794_4835757:
(
lstm_794_4835759:(#
dense_264_4835762:

dense_264_4835764:
identity??!dense_264/StatefulPartitionedCall? lstm_792/StatefulPartitionedCall? lstm_793/StatefulPartitionedCall? lstm_794/StatefulPartitionedCall?
 lstm_792/StatefulPartitionedCallStatefulPartitionedCalllstm_792_inputlstm_792_4835741lstm_792_4835743lstm_792_4835745*
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4834772?
 lstm_793/StatefulPartitionedCallStatefulPartitionedCall)lstm_792/StatefulPartitionedCall:output:0lstm_793_4835748lstm_793_4835750lstm_793_4835752*
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4834922?
 lstm_794/StatefulPartitionedCallStatefulPartitionedCall)lstm_793/StatefulPartitionedCall:output:0lstm_794_4835755lstm_794_4835757lstm_794_4835759*
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4835072?
!dense_264/StatefulPartitionedCallStatefulPartitionedCall)lstm_794/StatefulPartitionedCall:output:0dense_264_4835762dense_264_4835764*
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
F__inference_dense_264_layer_call_and_return_conditional_losses_4835090y
IdentityIdentity*dense_264/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_264/StatefulPartitionedCall!^lstm_792/StatefulPartitionedCall!^lstm_793/StatefulPartitionedCall!^lstm_794/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_264/StatefulPartitionedCall!dense_264/StatefulPartitionedCall2D
 lstm_792/StatefulPartitionedCall lstm_792/StatefulPartitionedCall2D
 lstm_793/StatefulPartitionedCall lstm_793/StatefulPartitionedCall2D
 lstm_794/StatefulPartitionedCall lstm_794/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_792_input
?
?
*sequential_264_lstm_793_while_cond_4833343L
Hsequential_264_lstm_793_while_sequential_264_lstm_793_while_loop_counterR
Nsequential_264_lstm_793_while_sequential_264_lstm_793_while_maximum_iterations-
)sequential_264_lstm_793_while_placeholder/
+sequential_264_lstm_793_while_placeholder_1/
+sequential_264_lstm_793_while_placeholder_2/
+sequential_264_lstm_793_while_placeholder_3N
Jsequential_264_lstm_793_while_less_sequential_264_lstm_793_strided_slice_1e
asequential_264_lstm_793_while_sequential_264_lstm_793_while_cond_4833343___redundant_placeholder0e
asequential_264_lstm_793_while_sequential_264_lstm_793_while_cond_4833343___redundant_placeholder1e
asequential_264_lstm_793_while_sequential_264_lstm_793_while_cond_4833343___redundant_placeholder2e
asequential_264_lstm_793_while_sequential_264_lstm_793_while_cond_4833343___redundant_placeholder3*
&sequential_264_lstm_793_while_identity
?
"sequential_264/lstm_793/while/LessLess)sequential_264_lstm_793_while_placeholderJsequential_264_lstm_793_while_less_sequential_264_lstm_793_strided_slice_1*
T0*
_output_shapes
: {
&sequential_264/lstm_793/while/IdentityIdentity&sequential_264/lstm_793/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_264_lstm_793_while_identity/sequential_264/lstm_793/while/Identity:output:0*(
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
*__inference_lstm_794_layer_call_fn_4837984
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4834423o
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
F__inference_dense_264_layer_call_and_return_conditional_losses_4838608

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

lstm_794_while_body_4836224.
*lstm_794_while_lstm_794_while_loop_counter4
0lstm_794_while_lstm_794_while_maximum_iterations
lstm_794_while_placeholder 
lstm_794_while_placeholder_1 
lstm_794_while_placeholder_2 
lstm_794_while_placeholder_3-
)lstm_794_while_lstm_794_strided_slice_1_0i
elstm_794_while_tensorarrayv2read_tensorlistgetitem_lstm_794_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_794_while_lstm_cell_794_matmul_readvariableop_resource_0:2(Q
?lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource_0:
(L
>lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource_0:(
lstm_794_while_identity
lstm_794_while_identity_1
lstm_794_while_identity_2
lstm_794_while_identity_3
lstm_794_while_identity_4
lstm_794_while_identity_5+
'lstm_794_while_lstm_794_strided_slice_1g
clstm_794_while_tensorarrayv2read_tensorlistgetitem_lstm_794_tensorarrayunstack_tensorlistfromtensorM
;lstm_794_while_lstm_cell_794_matmul_readvariableop_resource:2(O
=lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource:
(J
<lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource:(??3lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp?2lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp?4lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp?
@lstm_794/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_794/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_794_while_tensorarrayv2read_tensorlistgetitem_lstm_794_tensorarrayunstack_tensorlistfromtensor_0lstm_794_while_placeholderIlstm_794/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_794/while/lstm_cell_794/MatMul/ReadVariableOpReadVariableOp=lstm_794_while_lstm_cell_794_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_794/while/lstm_cell_794/MatMulMatMul9lstm_794/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp?lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_794/while/lstm_cell_794/MatMul_1MatMullstm_794_while_placeholder_2<lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_794/while/lstm_cell_794/addAddV2-lstm_794/while/lstm_cell_794/MatMul:product:0/lstm_794/while/lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp>lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_794/while/lstm_cell_794/BiasAddBiasAdd$lstm_794/while/lstm_cell_794/add:z:0;lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_794/while/lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_794/while/lstm_cell_794/splitSplit5lstm_794/while/lstm_cell_794/split/split_dim:output:0-lstm_794/while/lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_794/while/lstm_cell_794/SigmoidSigmoid+lstm_794/while/lstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_794/while/lstm_cell_794/Sigmoid_1Sigmoid+lstm_794/while/lstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_794/while/lstm_cell_794/mulMul*lstm_794/while/lstm_cell_794/Sigmoid_1:y:0lstm_794_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_794/while/lstm_cell_794/ReluRelu+lstm_794/while/lstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_794/while/lstm_cell_794/mul_1Mul(lstm_794/while/lstm_cell_794/Sigmoid:y:0/lstm_794/while/lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_794/while/lstm_cell_794/add_1AddV2$lstm_794/while/lstm_cell_794/mul:z:0&lstm_794/while/lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_794/while/lstm_cell_794/Sigmoid_2Sigmoid+lstm_794/while/lstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_794/while/lstm_cell_794/Relu_1Relu&lstm_794/while/lstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_794/while/lstm_cell_794/mul_2Mul*lstm_794/while/lstm_cell_794/Sigmoid_2:y:01lstm_794/while/lstm_cell_794/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_794/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_794_while_placeholder_1lstm_794_while_placeholder&lstm_794/while/lstm_cell_794/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_794/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_794/while/addAddV2lstm_794_while_placeholderlstm_794/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_794/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_794/while/add_1AddV2*lstm_794_while_lstm_794_while_loop_counterlstm_794/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_794/while/IdentityIdentitylstm_794/while/add_1:z:0^lstm_794/while/NoOp*
T0*
_output_shapes
: ?
lstm_794/while/Identity_1Identity0lstm_794_while_lstm_794_while_maximum_iterations^lstm_794/while/NoOp*
T0*
_output_shapes
: t
lstm_794/while/Identity_2Identitylstm_794/while/add:z:0^lstm_794/while/NoOp*
T0*
_output_shapes
: ?
lstm_794/while/Identity_3IdentityClstm_794/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_794/while/NoOp*
T0*
_output_shapes
: ?
lstm_794/while/Identity_4Identity&lstm_794/while/lstm_cell_794/mul_2:z:0^lstm_794/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_794/while/Identity_5Identity&lstm_794/while/lstm_cell_794/add_1:z:0^lstm_794/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_794/while/NoOpNoOp4^lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp3^lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp5^lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_794_while_identity lstm_794/while/Identity:output:0"?
lstm_794_while_identity_1"lstm_794/while/Identity_1:output:0"?
lstm_794_while_identity_2"lstm_794/while/Identity_2:output:0"?
lstm_794_while_identity_3"lstm_794/while/Identity_3:output:0"?
lstm_794_while_identity_4"lstm_794/while/Identity_4:output:0"?
lstm_794_while_identity_5"lstm_794/while/Identity_5:output:0"T
'lstm_794_while_lstm_794_strided_slice_1)lstm_794_while_lstm_794_strided_slice_1_0"~
<lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource>lstm_794_while_lstm_cell_794_biasadd_readvariableop_resource_0"?
=lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource?lstm_794_while_lstm_cell_794_matmul_1_readvariableop_resource_0"|
;lstm_794_while_lstm_cell_794_matmul_readvariableop_resource=lstm_794_while_lstm_cell_794_matmul_readvariableop_resource_0"?
clstm_794_while_tensorarrayv2read_tensorlistgetitem_lstm_794_tensorarrayunstack_tensorlistfromtensorelstm_794_while_tensorarrayv2read_tensorlistgetitem_lstm_794_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp3lstm_794/while/lstm_cell_794/BiasAdd/ReadVariableOp2h
2lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp2lstm_794/while/lstm_cell_794/MatMul/ReadVariableOp2l
4lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp4lstm_794/while/lstm_cell_794/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837830

inputs?
,lstm_cell_793_matmul_readvariableop_resource:	d?A
.lstm_cell_793_matmul_1_readvariableop_resource:	2?<
-lstm_cell_793_biasadd_readvariableop_resource:	?
identity??$lstm_cell_793/BiasAdd/ReadVariableOp?#lstm_cell_793/MatMul/ReadVariableOp?%lstm_cell_793/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_793/MatMul/ReadVariableOpReadVariableOp,lstm_cell_793_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_793/MatMulMatMulstrided_slice_2:output:0+lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_793_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_793/MatMul_1MatMulzeros:output:0-lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_793/addAddV2lstm_cell_793/MatMul:product:0 lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_793_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_793/BiasAddBiasAddlstm_cell_793/add:z:0,lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_793/splitSplit&lstm_cell_793/split/split_dim:output:0lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_793/SigmoidSigmoidlstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_1Sigmoidlstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_793/mulMullstm_cell_793/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_793/ReluRelulstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_1Mullstm_cell_793/Sigmoid:y:0 lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_793/add_1AddV2lstm_cell_793/mul:z:0lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_2Sigmoidlstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_793/Relu_1Relulstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_2Mullstm_cell_793/Sigmoid_2:y:0"lstm_cell_793/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_793_matmul_readvariableop_resource.lstm_cell_793_matmul_1_readvariableop_resource-lstm_cell_793_biasadd_readvariableop_resource*
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
while_body_4837746*
condR
while_cond_4837745*K
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
NoOpNoOp%^lstm_cell_793/BiasAdd/ReadVariableOp$^lstm_cell_793/MatMul/ReadVariableOp&^lstm_cell_793/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_793/BiasAdd/ReadVariableOp$lstm_cell_793/BiasAdd/ReadVariableOp2J
#lstm_cell_793/MatMul/ReadVariableOp#lstm_cell_793/MatMul/ReadVariableOp2N
%lstm_cell_793/MatMul_1/ReadVariableOp%lstm_cell_793/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_793_layer_call_and_return_conditional_losses_4834922

inputs?
,lstm_cell_793_matmul_readvariableop_resource:	d?A
.lstm_cell_793_matmul_1_readvariableop_resource:	2?<
-lstm_cell_793_biasadd_readvariableop_resource:	?
identity??$lstm_cell_793/BiasAdd/ReadVariableOp?#lstm_cell_793/MatMul/ReadVariableOp?%lstm_cell_793/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_793/MatMul/ReadVariableOpReadVariableOp,lstm_cell_793_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_793/MatMulMatMulstrided_slice_2:output:0+lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_793_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_793/MatMul_1MatMulzeros:output:0-lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_793/addAddV2lstm_cell_793/MatMul:product:0 lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_793_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_793/BiasAddBiasAddlstm_cell_793/add:z:0,lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_793/splitSplit&lstm_cell_793/split/split_dim:output:0lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_793/SigmoidSigmoidlstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_1Sigmoidlstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_793/mulMullstm_cell_793/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_793/ReluRelulstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_1Mullstm_cell_793/Sigmoid:y:0 lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_793/add_1AddV2lstm_cell_793/mul:z:0lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_793/Sigmoid_2Sigmoidlstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_793/Relu_1Relulstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_793/mul_2Mullstm_cell_793/Sigmoid_2:y:0"lstm_cell_793/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_793_matmul_readvariableop_resource.lstm_cell_793_matmul_1_readvariableop_resource-lstm_cell_793_biasadd_readvariableop_resource*
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
while_body_4834838*
condR
while_cond_4834837*K
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
NoOpNoOp%^lstm_cell_793/BiasAdd/ReadVariableOp$^lstm_cell_793/MatMul/ReadVariableOp&^lstm_cell_793/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_793/BiasAdd/ReadVariableOp$lstm_cell_793/BiasAdd/ReadVariableOp2J
#lstm_cell_793/MatMul/ReadVariableOp#lstm_cell_793/MatMul/ReadVariableOp2N
%lstm_cell_793/MatMul_1/ReadVariableOp%lstm_cell_793/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4838870

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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4837357

inputs?
,lstm_cell_792_matmul_readvariableop_resource:	?A
.lstm_cell_792_matmul_1_readvariableop_resource:	d?<
-lstm_cell_792_biasadd_readvariableop_resource:	?
identity??$lstm_cell_792/BiasAdd/ReadVariableOp?#lstm_cell_792/MatMul/ReadVariableOp?%lstm_cell_792/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_792/MatMul/ReadVariableOpReadVariableOp,lstm_cell_792_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_792/MatMulMatMulstrided_slice_2:output:0+lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_792_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_792/MatMul_1MatMulzeros:output:0-lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_792/addAddV2lstm_cell_792/MatMul:product:0 lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_792_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_792/BiasAddBiasAddlstm_cell_792/add:z:0,lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_792/splitSplit&lstm_cell_792/split/split_dim:output:0lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_792/SigmoidSigmoidlstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_1Sigmoidlstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_792/mulMullstm_cell_792/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_792/ReluRelulstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_1Mullstm_cell_792/Sigmoid:y:0 lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_792/add_1AddV2lstm_cell_792/mul:z:0lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_2Sigmoidlstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_792/Relu_1Relulstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_2Mullstm_cell_792/Sigmoid_2:y:0"lstm_cell_792/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_792_matmul_readvariableop_resource.lstm_cell_792_matmul_1_readvariableop_resource-lstm_cell_792_biasadd_readvariableop_resource*
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
while_body_4837273*
condR
while_cond_4837272*K
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
NoOpNoOp%^lstm_cell_792/BiasAdd/ReadVariableOp$^lstm_cell_792/MatMul/ReadVariableOp&^lstm_cell_792/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_792/BiasAdd/ReadVariableOp$lstm_cell_792/BiasAdd/ReadVariableOp2J
#lstm_cell_792/MatMul/ReadVariableOp#lstm_cell_792/MatMul/ReadVariableOp2N
%lstm_cell_792/MatMul_1/ReadVariableOp%lstm_cell_792/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4835534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_792_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_792_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_792_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_792_matmul_readvariableop_resource:	?G
4while_lstm_cell_792_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_792_biasadd_readvariableop_resource:	???*while/lstm_cell_792/BiasAdd/ReadVariableOp?)while/lstm_cell_792/MatMul/ReadVariableOp?+while/lstm_cell_792/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_792/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_792_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_792/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_792_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_792/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_792/addAddV2$while/lstm_cell_792/MatMul:product:0&while/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_792_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_792/BiasAddBiasAddwhile/lstm_cell_792/add:z:02while/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_792/splitSplit,while/lstm_cell_792/split/split_dim:output:0$while/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_792/SigmoidSigmoid"while/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_1Sigmoid"while/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mulMul!while/lstm_cell_792/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_792/ReluRelu"while/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_1Mulwhile/lstm_cell_792/Sigmoid:y:0&while/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/add_1AddV2while/lstm_cell_792/mul:z:0while/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_792/Sigmoid_2Sigmoid"while/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_792/Relu_1Reluwhile/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_792/mul_2Mul!while/lstm_cell_792/Sigmoid_2:y:0(while/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_792/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_792/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_792/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_792/BiasAdd/ReadVariableOp*^while/lstm_cell_792/MatMul/ReadVariableOp,^while/lstm_cell_792/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_792_biasadd_readvariableop_resource5while_lstm_cell_792_biasadd_readvariableop_resource_0"n
4while_lstm_cell_792_matmul_1_readvariableop_resource6while_lstm_cell_792_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_792_matmul_readvariableop_resource4while_lstm_cell_792_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_792/BiasAdd/ReadVariableOp*while/lstm_cell_792/BiasAdd/ReadVariableOp2V
)while/lstm_cell_792/MatMul/ReadVariableOp)while/lstm_cell_792/MatMul/ReadVariableOp2Z
+while/lstm_cell_792/MatMul_1/ReadVariableOp+while/lstm_cell_792/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4837272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4837272___redundant_placeholder05
1while_while_cond_4837272___redundant_placeholder15
1while_while_cond_4837272___redundant_placeholder25
1while_while_cond_4837272___redundant_placeholder3
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
while_cond_4837459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4837459___redundant_placeholder05
1while_while_cond_4837459___redundant_placeholder15
1while_while_cond_4837459___redundant_placeholder25
1while_while_cond_4837459___redundant_placeholder3
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838589

inputs>
,lstm_cell_794_matmul_readvariableop_resource:2(@
.lstm_cell_794_matmul_1_readvariableop_resource:
(;
-lstm_cell_794_biasadd_readvariableop_resource:(
identity??$lstm_cell_794/BiasAdd/ReadVariableOp?#lstm_cell_794/MatMul/ReadVariableOp?%lstm_cell_794/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_794/MatMul/ReadVariableOpReadVariableOp,lstm_cell_794_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_794/MatMulMatMulstrided_slice_2:output:0+lstm_cell_794/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_794/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_794_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_794/MatMul_1MatMulzeros:output:0-lstm_cell_794/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_794/addAddV2lstm_cell_794/MatMul:product:0 lstm_cell_794/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_794/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_794_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_794/BiasAddBiasAddlstm_cell_794/add:z:0,lstm_cell_794/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_794/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_794/splitSplit&lstm_cell_794/split/split_dim:output:0lstm_cell_794/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_794/SigmoidSigmoidlstm_cell_794/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_1Sigmoidlstm_cell_794/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_794/mulMullstm_cell_794/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_794/ReluRelulstm_cell_794/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_1Mullstm_cell_794/Sigmoid:y:0 lstm_cell_794/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_794/add_1AddV2lstm_cell_794/mul:z:0lstm_cell_794/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_794/Sigmoid_2Sigmoidlstm_cell_794/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_794/Relu_1Relulstm_cell_794/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_794/mul_2Mullstm_cell_794/Sigmoid_2:y:0"lstm_cell_794/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_794_matmul_readvariableop_resource.lstm_cell_794_matmul_1_readvariableop_resource-lstm_cell_794_biasadd_readvariableop_resource*
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
while_body_4838505*
condR
while_cond_4838504*K
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
NoOpNoOp%^lstm_cell_794/BiasAdd/ReadVariableOp$^lstm_cell_794/MatMul/ReadVariableOp&^lstm_cell_794/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_794/BiasAdd/ReadVariableOp$lstm_cell_794/BiasAdd/ReadVariableOp2J
#lstm_cell_794/MatMul/ReadVariableOp#lstm_cell_794/MatMul/ReadVariableOp2N
%lstm_cell_794/MatMul_1/ReadVariableOp%lstm_cell_794/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4834353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4834353___redundant_placeholder05
1while_while_cond_4834353___redundant_placeholder15
1while_while_cond_4834353___redundant_placeholder25
1while_while_cond_4834353___redundant_placeholder3
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
while_body_4837460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_793_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_793_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_793_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_793_matmul_readvariableop_resource:	d?G
4while_lstm_cell_793_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_793_biasadd_readvariableop_resource:	???*while/lstm_cell_793/BiasAdd/ReadVariableOp?)while/lstm_cell_793/MatMul/ReadVariableOp?+while/lstm_cell_793/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_793/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_793_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_793/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_793_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_793/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_793/addAddV2$while/lstm_cell_793/MatMul:product:0&while/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_793_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_793/BiasAddBiasAddwhile/lstm_cell_793/add:z:02while/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_793/splitSplit,while/lstm_cell_793/split/split_dim:output:0$while/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_793/SigmoidSigmoid"while/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_1Sigmoid"while/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mulMul!while/lstm_cell_793/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_793/ReluRelu"while/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_1Mulwhile/lstm_cell_793/Sigmoid:y:0&while/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/add_1AddV2while/lstm_cell_793/mul:z:0while/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_2Sigmoid"while/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_793/Relu_1Reluwhile/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_2Mul!while/lstm_cell_793/Sigmoid_2:y:0(while/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_793/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_793/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_793/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_793/BiasAdd/ReadVariableOp*^while/lstm_cell_793/MatMul/ReadVariableOp,^while/lstm_cell_793/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_793_biasadd_readvariableop_resource5while_lstm_cell_793_biasadd_readvariableop_resource_0"n
4while_lstm_cell_793_matmul_1_readvariableop_resource6while_lstm_cell_793_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_793_matmul_readvariableop_resource4while_lstm_cell_793_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_793/BiasAdd/ReadVariableOp*while/lstm_cell_793/BiasAdd/ReadVariableOp2V
)while/lstm_cell_793/MatMul/ReadVariableOp)while/lstm_cell_793/MatMul/ReadVariableOp2Z
+while/lstm_cell_793/MatMul_1/ReadVariableOp+while/lstm_cell_793/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4838361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4838361___redundant_placeholder05
1while_while_cond_4838361___redundant_placeholder15
1while_while_cond_4838361___redundant_placeholder25
1while_while_cond_4838361___redundant_placeholder3
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
while_cond_4835533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4835533___redundant_placeholder05
1while_while_cond_4835533___redundant_placeholder15
1while_while_cond_4835533___redundant_placeholder25
1while_while_cond_4835533___redundant_placeholder3
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
while_body_4835369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_793_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_793_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_793_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_793_matmul_readvariableop_resource:	d?G
4while_lstm_cell_793_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_793_biasadd_readvariableop_resource:	???*while/lstm_cell_793/BiasAdd/ReadVariableOp?)while/lstm_cell_793/MatMul/ReadVariableOp?+while/lstm_cell_793/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_793/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_793_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_793/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_793_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_793/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_793/addAddV2$while/lstm_cell_793/MatMul:product:0&while/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_793_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_793/BiasAddBiasAddwhile/lstm_cell_793/add:z:02while/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_793/splitSplit,while/lstm_cell_793/split/split_dim:output:0$while/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_793/SigmoidSigmoid"while/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_1Sigmoid"while/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mulMul!while/lstm_cell_793/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_793/ReluRelu"while/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_1Mulwhile/lstm_cell_793/Sigmoid:y:0&while/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/add_1AddV2while/lstm_cell_793/mul:z:0while/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_2Sigmoid"while/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_793/Relu_1Reluwhile/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_2Mul!while/lstm_cell_793/Sigmoid_2:y:0(while/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_793/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_793/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_793/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_793/BiasAdd/ReadVariableOp*^while/lstm_cell_793/MatMul/ReadVariableOp,^while/lstm_cell_793/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_793_biasadd_readvariableop_resource5while_lstm_cell_793_biasadd_readvariableop_resource_0"n
4while_lstm_cell_793_matmul_1_readvariableop_resource6while_lstm_cell_793_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_793_matmul_readvariableop_resource4while_lstm_cell_793_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_793/BiasAdd/ReadVariableOp*while/lstm_cell_793/BiasAdd/ReadVariableOp2V
)while/lstm_cell_793/MatMul/ReadVariableOp)while/lstm_cell_793/MatMul/ReadVariableOp2Z
+while/lstm_cell_793/MatMul_1/ReadVariableOp+while/lstm_cell_793/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
*__inference_lstm_794_layer_call_fn_4838017

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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4835288o
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

lstm_792_while_body_4836373.
*lstm_792_while_lstm_792_while_loop_counter4
0lstm_792_while_lstm_792_while_maximum_iterations
lstm_792_while_placeholder 
lstm_792_while_placeholder_1 
lstm_792_while_placeholder_2 
lstm_792_while_placeholder_3-
)lstm_792_while_lstm_792_strided_slice_1_0i
elstm_792_while_tensorarrayv2read_tensorlistgetitem_lstm_792_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_792_while_lstm_cell_792_matmul_readvariableop_resource_0:	?R
?lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource_0:	d?M
>lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource_0:	?
lstm_792_while_identity
lstm_792_while_identity_1
lstm_792_while_identity_2
lstm_792_while_identity_3
lstm_792_while_identity_4
lstm_792_while_identity_5+
'lstm_792_while_lstm_792_strided_slice_1g
clstm_792_while_tensorarrayv2read_tensorlistgetitem_lstm_792_tensorarrayunstack_tensorlistfromtensorN
;lstm_792_while_lstm_cell_792_matmul_readvariableop_resource:	?P
=lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource:	d?K
<lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource:	???3lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp?2lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp?4lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp?
@lstm_792/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_792/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_792_while_tensorarrayv2read_tensorlistgetitem_lstm_792_tensorarrayunstack_tensorlistfromtensor_0lstm_792_while_placeholderIlstm_792/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_792/while/lstm_cell_792/MatMul/ReadVariableOpReadVariableOp=lstm_792_while_lstm_cell_792_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_792/while/lstm_cell_792/MatMulMatMul9lstm_792/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp?lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_792/while/lstm_cell_792/MatMul_1MatMullstm_792_while_placeholder_2<lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_792/while/lstm_cell_792/addAddV2-lstm_792/while/lstm_cell_792/MatMul:product:0/lstm_792/while/lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp>lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_792/while/lstm_cell_792/BiasAddBiasAdd$lstm_792/while/lstm_cell_792/add:z:0;lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_792/while/lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_792/while/lstm_cell_792/splitSplit5lstm_792/while/lstm_cell_792/split/split_dim:output:0-lstm_792/while/lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_792/while/lstm_cell_792/SigmoidSigmoid+lstm_792/while/lstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_792/while/lstm_cell_792/Sigmoid_1Sigmoid+lstm_792/while/lstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_792/while/lstm_cell_792/mulMul*lstm_792/while/lstm_cell_792/Sigmoid_1:y:0lstm_792_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_792/while/lstm_cell_792/ReluRelu+lstm_792/while/lstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_792/while/lstm_cell_792/mul_1Mul(lstm_792/while/lstm_cell_792/Sigmoid:y:0/lstm_792/while/lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_792/while/lstm_cell_792/add_1AddV2$lstm_792/while/lstm_cell_792/mul:z:0&lstm_792/while/lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_792/while/lstm_cell_792/Sigmoid_2Sigmoid+lstm_792/while/lstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_792/while/lstm_cell_792/Relu_1Relu&lstm_792/while/lstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_792/while/lstm_cell_792/mul_2Mul*lstm_792/while/lstm_cell_792/Sigmoid_2:y:01lstm_792/while/lstm_cell_792/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_792/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_792_while_placeholder_1lstm_792_while_placeholder&lstm_792/while/lstm_cell_792/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_792/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_792/while/addAddV2lstm_792_while_placeholderlstm_792/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_792/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_792/while/add_1AddV2*lstm_792_while_lstm_792_while_loop_counterlstm_792/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_792/while/IdentityIdentitylstm_792/while/add_1:z:0^lstm_792/while/NoOp*
T0*
_output_shapes
: ?
lstm_792/while/Identity_1Identity0lstm_792_while_lstm_792_while_maximum_iterations^lstm_792/while/NoOp*
T0*
_output_shapes
: t
lstm_792/while/Identity_2Identitylstm_792/while/add:z:0^lstm_792/while/NoOp*
T0*
_output_shapes
: ?
lstm_792/while/Identity_3IdentityClstm_792/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_792/while/NoOp*
T0*
_output_shapes
: ?
lstm_792/while/Identity_4Identity&lstm_792/while/lstm_cell_792/mul_2:z:0^lstm_792/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_792/while/Identity_5Identity&lstm_792/while/lstm_cell_792/add_1:z:0^lstm_792/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_792/while/NoOpNoOp4^lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp3^lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp5^lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_792_while_identity lstm_792/while/Identity:output:0"?
lstm_792_while_identity_1"lstm_792/while/Identity_1:output:0"?
lstm_792_while_identity_2"lstm_792/while/Identity_2:output:0"?
lstm_792_while_identity_3"lstm_792/while/Identity_3:output:0"?
lstm_792_while_identity_4"lstm_792/while/Identity_4:output:0"?
lstm_792_while_identity_5"lstm_792/while/Identity_5:output:0"T
'lstm_792_while_lstm_792_strided_slice_1)lstm_792_while_lstm_792_strided_slice_1_0"~
<lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource>lstm_792_while_lstm_cell_792_biasadd_readvariableop_resource_0"?
=lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource?lstm_792_while_lstm_cell_792_matmul_1_readvariableop_resource_0"|
;lstm_792_while_lstm_cell_792_matmul_readvariableop_resource=lstm_792_while_lstm_cell_792_matmul_readvariableop_resource_0"?
clstm_792_while_tensorarrayv2read_tensorlistgetitem_lstm_792_tensorarrayunstack_tensorlistfromtensorelstm_792_while_tensorarrayv2read_tensorlistgetitem_lstm_792_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp3lstm_792/while/lstm_cell_792/BiasAdd/ReadVariableOp2h
2lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp2lstm_792/while/lstm_cell_792/MatMul/ReadVariableOp2l
4lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp4lstm_792/while/lstm_cell_792/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_264_layer_call_fn_4835860

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
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835097o
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
?#
?
while_body_4834195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_793_4834219_0:	d?0
while_lstm_cell_793_4834221_0:	2?,
while_lstm_cell_793_4834223_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_793_4834219:	d?.
while_lstm_cell_793_4834221:	2?*
while_lstm_cell_793_4834223:	???+while/lstm_cell_793/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_793/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_793_4834219_0while_lstm_cell_793_4834221_0while_lstm_cell_793_4834223_0*
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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4834136?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_793/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_793/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_793/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_793/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_793_4834219while_lstm_cell_793_4834219_0"<
while_lstm_cell_793_4834221while_lstm_cell_793_4834221_0"<
while_lstm_cell_793_4834223while_lstm_cell_793_4834223_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_793/StatefulPartitionedCall+while/lstm_cell_793/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4834545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_794_4834569_0:2(/
while_lstm_cell_794_4834571_0:
(+
while_lstm_cell_794_4834573_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_794_4834569:2(-
while_lstm_cell_794_4834571:
()
while_lstm_cell_794_4834573:(??+while/lstm_cell_794/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_794/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_794_4834569_0while_lstm_cell_794_4834571_0while_lstm_cell_794_4834573_0*
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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4834486?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_794/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_794/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_794/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_794/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_794_4834569while_lstm_cell_794_4834569_0"<
while_lstm_cell_794_4834571while_lstm_cell_794_4834571_0"<
while_lstm_cell_794_4834573while_lstm_cell_794_4834573_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_794/StatefulPartitionedCall+while/lstm_cell_794/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4838902

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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4837214

inputs?
,lstm_cell_792_matmul_readvariableop_resource:	?A
.lstm_cell_792_matmul_1_readvariableop_resource:	d?<
-lstm_cell_792_biasadd_readvariableop_resource:	?
identity??$lstm_cell_792/BiasAdd/ReadVariableOp?#lstm_cell_792/MatMul/ReadVariableOp?%lstm_cell_792/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_792/MatMul/ReadVariableOpReadVariableOp,lstm_cell_792_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_792/MatMulMatMulstrided_slice_2:output:0+lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_792_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_792/MatMul_1MatMulzeros:output:0-lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_792/addAddV2lstm_cell_792/MatMul:product:0 lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_792_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_792/BiasAddBiasAddlstm_cell_792/add:z:0,lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_792/splitSplit&lstm_cell_792/split/split_dim:output:0lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_792/SigmoidSigmoidlstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_1Sigmoidlstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_792/mulMullstm_cell_792/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_792/ReluRelulstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_1Mullstm_cell_792/Sigmoid:y:0 lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_792/add_1AddV2lstm_cell_792/mul:z:0lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_2Sigmoidlstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_792/Relu_1Relulstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_2Mullstm_cell_792/Sigmoid_2:y:0"lstm_cell_792/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_792_matmul_readvariableop_resource.lstm_cell_792_matmul_1_readvariableop_resource-lstm_cell_792_biasadd_readvariableop_resource*
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
while_body_4837130*
condR
while_cond_4837129*K
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
NoOpNoOp%^lstm_cell_792/BiasAdd/ReadVariableOp$^lstm_cell_792/MatMul/ReadVariableOp&^lstm_cell_792/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_792/BiasAdd/ReadVariableOp$lstm_cell_792/BiasAdd/ReadVariableOp2J
#lstm_cell_792/MatMul/ReadVariableOp#lstm_cell_792/MatMul/ReadVariableOp2N
%lstm_cell_792/MatMul_1/ReadVariableOp%lstm_cell_792/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4837745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4837745___redundant_placeholder05
1while_while_cond_4837745___redundant_placeholder15
1while_while_cond_4837745___redundant_placeholder25
1while_while_cond_4837745___redundant_placeholder3
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4834423

inputs'
lstm_cell_794_4834341:2('
lstm_cell_794_4834343:
(#
lstm_cell_794_4834345:(
identity??%lstm_cell_794/StatefulPartitionedCall?while;
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
%lstm_cell_794/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_794_4834341lstm_cell_794_4834343lstm_cell_794_4834345*
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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4834340n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_794_4834341lstm_cell_794_4834343lstm_cell_794_4834345*
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
while_body_4834354*
condR
while_cond_4834353*K
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
NoOpNoOp&^lstm_cell_794/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_794/StatefulPartitionedCall%lstm_cell_794/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_792_layer_call_and_return_conditional_losses_4834772

inputs?
,lstm_cell_792_matmul_readvariableop_resource:	?A
.lstm_cell_792_matmul_1_readvariableop_resource:	d?<
-lstm_cell_792_biasadd_readvariableop_resource:	?
identity??$lstm_cell_792/BiasAdd/ReadVariableOp?#lstm_cell_792/MatMul/ReadVariableOp?%lstm_cell_792/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_792/MatMul/ReadVariableOpReadVariableOp,lstm_cell_792_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_792/MatMulMatMulstrided_slice_2:output:0+lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_792_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_792/MatMul_1MatMulzeros:output:0-lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_792/addAddV2lstm_cell_792/MatMul:product:0 lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_792_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_792/BiasAddBiasAddlstm_cell_792/add:z:0,lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_792/splitSplit&lstm_cell_792/split/split_dim:output:0lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_792/SigmoidSigmoidlstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_1Sigmoidlstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_792/mulMullstm_cell_792/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_792/ReluRelulstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_1Mullstm_cell_792/Sigmoid:y:0 lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_792/add_1AddV2lstm_cell_792/mul:z:0lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_2Sigmoidlstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_792/Relu_1Relulstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_2Mullstm_cell_792/Sigmoid_2:y:0"lstm_cell_792/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_792_matmul_readvariableop_resource.lstm_cell_792_matmul_1_readvariableop_resource-lstm_cell_792_biasadd_readvariableop_resource*
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
while_body_4834688*
condR
while_cond_4834687*K
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
NoOpNoOp%^lstm_cell_792/BiasAdd/ReadVariableOp$^lstm_cell_792/MatMul/ReadVariableOp&^lstm_cell_792/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_792/BiasAdd/ReadVariableOp$lstm_cell_792/BiasAdd/ReadVariableOp2J
#lstm_cell_792/MatMul/ReadVariableOp#lstm_cell_792/MatMul/ReadVariableOp2N
%lstm_cell_792/MatMul_1/ReadVariableOp%lstm_cell_792/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4834004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_793_4834028_0:	d?0
while_lstm_cell_793_4834030_0:	2?,
while_lstm_cell_793_4834032_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_793_4834028:	d?.
while_lstm_cell_793_4834030:	2?*
while_lstm_cell_793_4834032:	???+while/lstm_cell_793/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_793/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_793_4834028_0while_lstm_cell_793_4834030_0while_lstm_cell_793_4834032_0*
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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4833990?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_793/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_793/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_793/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_793/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_793_4834028while_lstm_cell_793_4834028_0"<
while_lstm_cell_793_4834030while_lstm_cell_793_4834030_0"<
while_lstm_cell_793_4834032while_lstm_cell_793_4834032_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_793/StatefulPartitionedCall+while/lstm_cell_793/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4837603
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_793_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_793_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_793_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_793_matmul_readvariableop_resource:	d?G
4while_lstm_cell_793_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_793_biasadd_readvariableop_resource:	???*while/lstm_cell_793/BiasAdd/ReadVariableOp?)while/lstm_cell_793/MatMul/ReadVariableOp?+while/lstm_cell_793/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_793/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_793_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_793/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_793/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_793/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_793_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_793/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_793/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_793/addAddV2$while/lstm_cell_793/MatMul:product:0&while/lstm_cell_793/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_793/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_793_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_793/BiasAddBiasAddwhile/lstm_cell_793/add:z:02while/lstm_cell_793/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_793/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_793/splitSplit,while/lstm_cell_793/split/split_dim:output:0$while/lstm_cell_793/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_793/SigmoidSigmoid"while/lstm_cell_793/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_1Sigmoid"while/lstm_cell_793/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mulMul!while/lstm_cell_793/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_793/ReluRelu"while/lstm_cell_793/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_1Mulwhile/lstm_cell_793/Sigmoid:y:0&while/lstm_cell_793/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/add_1AddV2while/lstm_cell_793/mul:z:0while/lstm_cell_793/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_793/Sigmoid_2Sigmoid"while/lstm_cell_793/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_793/Relu_1Reluwhile/lstm_cell_793/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_793/mul_2Mul!while/lstm_cell_793/Sigmoid_2:y:0(while/lstm_cell_793/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_793/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_793/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_793/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_793/BiasAdd/ReadVariableOp*^while/lstm_cell_793/MatMul/ReadVariableOp,^while/lstm_cell_793/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_793_biasadd_readvariableop_resource5while_lstm_cell_793_biasadd_readvariableop_resource_0"n
4while_lstm_cell_793_matmul_1_readvariableop_resource6while_lstm_cell_793_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_793_matmul_readvariableop_resource4while_lstm_cell_793_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_793/BiasAdd/ReadVariableOp*while/lstm_cell_793/BiasAdd/ReadVariableOp2V
)while/lstm_cell_793/MatMul/ReadVariableOp)while/lstm_cell_793/MatMul/ReadVariableOp2Z
+while/lstm_cell_793/MatMul_1/ReadVariableOp+while/lstm_cell_793/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_793_layer_call_fn_4837368
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4834073|
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4836928
inputs_0?
,lstm_cell_792_matmul_readvariableop_resource:	?A
.lstm_cell_792_matmul_1_readvariableop_resource:	d?<
-lstm_cell_792_biasadd_readvariableop_resource:	?
identity??$lstm_cell_792/BiasAdd/ReadVariableOp?#lstm_cell_792/MatMul/ReadVariableOp?%lstm_cell_792/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_792/MatMul/ReadVariableOpReadVariableOp,lstm_cell_792_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_792/MatMulMatMulstrided_slice_2:output:0+lstm_cell_792/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_792/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_792_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_792/MatMul_1MatMulzeros:output:0-lstm_cell_792/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_792/addAddV2lstm_cell_792/MatMul:product:0 lstm_cell_792/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_792/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_792_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_792/BiasAddBiasAddlstm_cell_792/add:z:0,lstm_cell_792/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_792/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_792/splitSplit&lstm_cell_792/split/split_dim:output:0lstm_cell_792/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_792/SigmoidSigmoidlstm_cell_792/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_1Sigmoidlstm_cell_792/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_792/mulMullstm_cell_792/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_792/ReluRelulstm_cell_792/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_1Mullstm_cell_792/Sigmoid:y:0 lstm_cell_792/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_792/add_1AddV2lstm_cell_792/mul:z:0lstm_cell_792/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_792/Sigmoid_2Sigmoidlstm_cell_792/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_792/Relu_1Relulstm_cell_792/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_792/mul_2Mullstm_cell_792/Sigmoid_2:y:0"lstm_cell_792/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_792_matmul_readvariableop_resource.lstm_cell_792_matmul_1_readvariableop_resource-lstm_cell_792_biasadd_readvariableop_resource*
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
while_body_4836844*
condR
while_cond_4836843*K
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
NoOpNoOp%^lstm_cell_792/BiasAdd/ReadVariableOp$^lstm_cell_792/MatMul/ReadVariableOp&^lstm_cell_792/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_792/BiasAdd/ReadVariableOp$lstm_cell_792/BiasAdd/ReadVariableOp2J
#lstm_cell_792/MatMul/ReadVariableOp#lstm_cell_792/MatMul/ReadVariableOp2N
%lstm_cell_792/MatMul_1/ReadVariableOp%lstm_cell_792/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_792_input;
 serving_default_lstm_792_input:0?????????=
	dense_2640
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
	variables
trainable_variables
regularization_losses
		keras_api


signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+v?,v?-v?.v?/v?0v?"
	optimizer
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_264/kernel
:2dense_264/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
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
0:.	?2lstm_792/lstm_cell_792/kernel
::8	d?2'lstm_792/lstm_cell_792/recurrent_kernel
*:(?2lstm_792/lstm_cell_792/bias
0:.	d?2lstm_793/lstm_cell_793/kernel
::8	2?2'lstm_793/lstm_cell_793/recurrent_kernel
*:(?2lstm_793/lstm_cell_793/bias
/:-2(2lstm_794/lstm_cell_794/kernel
9:7
(2'lstm_794/lstm_cell_794/recurrent_kernel
):'(2lstm_794/lstm_cell_794/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
?
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	ltotal
	mcount
n	variables
o	keras_api"
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
l0
m1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
':%
2Adam/dense_264/kernel/m
!:2Adam/dense_264/bias/m
5:3	?2$Adam/lstm_792/lstm_cell_792/kernel/m
?:=	d?2.Adam/lstm_792/lstm_cell_792/recurrent_kernel/m
/:-?2"Adam/lstm_792/lstm_cell_792/bias/m
5:3	d?2$Adam/lstm_793/lstm_cell_793/kernel/m
?:=	2?2.Adam/lstm_793/lstm_cell_793/recurrent_kernel/m
/:-?2"Adam/lstm_793/lstm_cell_793/bias/m
4:22(2$Adam/lstm_794/lstm_cell_794/kernel/m
>:<
(2.Adam/lstm_794/lstm_cell_794/recurrent_kernel/m
.:,(2"Adam/lstm_794/lstm_cell_794/bias/m
':%
2Adam/dense_264/kernel/v
!:2Adam/dense_264/bias/v
5:3	?2$Adam/lstm_792/lstm_cell_792/kernel/v
?:=	d?2.Adam/lstm_792/lstm_cell_792/recurrent_kernel/v
/:-?2"Adam/lstm_792/lstm_cell_792/bias/v
5:3	d?2$Adam/lstm_793/lstm_cell_793/kernel/v
?:=	2?2.Adam/lstm_793/lstm_cell_793/recurrent_kernel/v
/:-?2"Adam/lstm_793/lstm_cell_793/bias/v
4:22(2$Adam/lstm_794/lstm_cell_794/kernel/v
>:<
(2.Adam/lstm_794/lstm_cell_794/recurrent_kernel/v
.:,(2"Adam/lstm_794/lstm_cell_794/bias/v
?2?
0__inference_sequential_264_layer_call_fn_4835122
0__inference_sequential_264_layer_call_fn_4835860
0__inference_sequential_264_layer_call_fn_4835887
0__inference_sequential_264_layer_call_fn_4835738?
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
K__inference_sequential_264_layer_call_and_return_conditional_losses_4836314
K__inference_sequential_264_layer_call_and_return_conditional_losses_4836741
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835768
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835798?
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
"__inference__wrapped_model_4833573lstm_792_input"?
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
*__inference_lstm_792_layer_call_fn_4836752
*__inference_lstm_792_layer_call_fn_4836763
*__inference_lstm_792_layer_call_fn_4836774
*__inference_lstm_792_layer_call_fn_4836785?
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4836928
E__inference_lstm_792_layer_call_and_return_conditional_losses_4837071
E__inference_lstm_792_layer_call_and_return_conditional_losses_4837214
E__inference_lstm_792_layer_call_and_return_conditional_losses_4837357?
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
*__inference_lstm_793_layer_call_fn_4837368
*__inference_lstm_793_layer_call_fn_4837379
*__inference_lstm_793_layer_call_fn_4837390
*__inference_lstm_793_layer_call_fn_4837401?
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837544
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837687
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837830
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837973?
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
*__inference_lstm_794_layer_call_fn_4837984
*__inference_lstm_794_layer_call_fn_4837995
*__inference_lstm_794_layer_call_fn_4838006
*__inference_lstm_794_layer_call_fn_4838017?
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838160
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838303
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838446
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838589?
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
+__inference_dense_264_layer_call_fn_4838598?
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
F__inference_dense_264_layer_call_and_return_conditional_losses_4838608?
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
%__inference_signature_wrapper_4835833lstm_792_input"?
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
/__inference_lstm_cell_792_layer_call_fn_4838625
/__inference_lstm_cell_792_layer_call_fn_4838642?
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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4838674
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4838706?
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
/__inference_lstm_cell_793_layer_call_fn_4838723
/__inference_lstm_cell_793_layer_call_fn_4838740?
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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4838772
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4838804?
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
/__inference_lstm_cell_794_layer_call_fn_4838821
/__inference_lstm_cell_794_layer_call_fn_4838838?
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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4838870
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4838902?
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
"__inference__wrapped_model_4833573?()*+,-./0;?8
1?.
,?)
lstm_792_input?????????
? "5?2
0
	dense_264#? 
	dense_264??????????
F__inference_dense_264_layer_call_and_return_conditional_losses_4838608\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_264_layer_call_fn_4838598O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_792_layer_call_and_return_conditional_losses_4836928?()*O?L
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4837071?()*O?L
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4837214q()*??<
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
E__inference_lstm_792_layer_call_and_return_conditional_losses_4837357q()*??<
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
*__inference_lstm_792_layer_call_fn_4836752}()*O?L
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
*__inference_lstm_792_layer_call_fn_4836763}()*O?L
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
*__inference_lstm_792_layer_call_fn_4836774d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_792_layer_call_fn_4836785d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837544?+,-O?L
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837687?+,-O?L
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837830q+,-??<
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
E__inference_lstm_793_layer_call_and_return_conditional_losses_4837973q+,-??<
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
*__inference_lstm_793_layer_call_fn_4837368}+,-O?L
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
*__inference_lstm_793_layer_call_fn_4837379}+,-O?L
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
*__inference_lstm_793_layer_call_fn_4837390d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_793_layer_call_fn_4837401d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838160}./0O?L
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838303}./0O?L
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838446m./0??<
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
E__inference_lstm_794_layer_call_and_return_conditional_losses_4838589m./0??<
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
*__inference_lstm_794_layer_call_fn_4837984p./0O?L
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
*__inference_lstm_794_layer_call_fn_4837995p./0O?L
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
*__inference_lstm_794_layer_call_fn_4838006`./0??<
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
*__inference_lstm_794_layer_call_fn_4838017`./0??<
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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4838674?()*??}
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
J__inference_lstm_cell_792_layer_call_and_return_conditional_losses_4838706?()*??}
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
/__inference_lstm_cell_792_layer_call_fn_4838625?()*??}
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
/__inference_lstm_cell_792_layer_call_fn_4838642?()*??}
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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4838772?+,-??}
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
J__inference_lstm_cell_793_layer_call_and_return_conditional_losses_4838804?+,-??}
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
/__inference_lstm_cell_793_layer_call_fn_4838723?+,-??}
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
/__inference_lstm_cell_793_layer_call_fn_4838740?+,-??}
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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4838870?./0??}
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
J__inference_lstm_cell_794_layer_call_and_return_conditional_losses_4838902?./0??}
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
/__inference_lstm_cell_794_layer_call_fn_4838821?./0??}
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
/__inference_lstm_cell_794_layer_call_fn_4838838?./0??}
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
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835768y()*+,-./0C?@
9?6
,?)
lstm_792_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_264_layer_call_and_return_conditional_losses_4835798y()*+,-./0C?@
9?6
,?)
lstm_792_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_264_layer_call_and_return_conditional_losses_4836314q()*+,-./0;?8
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
K__inference_sequential_264_layer_call_and_return_conditional_losses_4836741q()*+,-./0;?8
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
0__inference_sequential_264_layer_call_fn_4835122l()*+,-./0C?@
9?6
,?)
lstm_792_input?????????
p 

 
? "???????????
0__inference_sequential_264_layer_call_fn_4835738l()*+,-./0C?@
9?6
,?)
lstm_792_input?????????
p

 
? "???????????
0__inference_sequential_264_layer_call_fn_4835860d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_264_layer_call_fn_4835887d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4835833?()*+,-./0M?J
? 
C?@
>
lstm_792_input,?)
lstm_792_input?????????"5?2
0
	dense_264#? 
	dense_264?????????