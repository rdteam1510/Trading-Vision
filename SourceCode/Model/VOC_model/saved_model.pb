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
dense_296/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_296/kernel
u
$dense_296/kernel/Read/ReadVariableOpReadVariableOpdense_296/kernel*
_output_shapes

:
*
dtype0
t
dense_296/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_296/bias
m
"dense_296/bias/Read/ReadVariableOpReadVariableOpdense_296/bias*
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
lstm_888/lstm_cell_888/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_888/lstm_cell_888/kernel
?
1lstm_888/lstm_cell_888/kernel/Read/ReadVariableOpReadVariableOplstm_888/lstm_cell_888/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_888/lstm_cell_888/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_888/lstm_cell_888/recurrent_kernel
?
;lstm_888/lstm_cell_888/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_888/lstm_cell_888/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_888/lstm_cell_888/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_888/lstm_cell_888/bias
?
/lstm_888/lstm_cell_888/bias/Read/ReadVariableOpReadVariableOplstm_888/lstm_cell_888/bias*
_output_shapes	
:?*
dtype0
?
lstm_889/lstm_cell_889/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_889/lstm_cell_889/kernel
?
1lstm_889/lstm_cell_889/kernel/Read/ReadVariableOpReadVariableOplstm_889/lstm_cell_889/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_889/lstm_cell_889/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_889/lstm_cell_889/recurrent_kernel
?
;lstm_889/lstm_cell_889/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_889/lstm_cell_889/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_889/lstm_cell_889/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_889/lstm_cell_889/bias
?
/lstm_889/lstm_cell_889/bias/Read/ReadVariableOpReadVariableOplstm_889/lstm_cell_889/bias*
_output_shapes	
:?*
dtype0
?
lstm_890/lstm_cell_890/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_890/lstm_cell_890/kernel
?
1lstm_890/lstm_cell_890/kernel/Read/ReadVariableOpReadVariableOplstm_890/lstm_cell_890/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_890/lstm_cell_890/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_890/lstm_cell_890/recurrent_kernel
?
;lstm_890/lstm_cell_890/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_890/lstm_cell_890/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_890/lstm_cell_890/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_890/lstm_cell_890/bias
?
/lstm_890/lstm_cell_890/bias/Read/ReadVariableOpReadVariableOplstm_890/lstm_cell_890/bias*
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
Adam/dense_296/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_296/kernel/m
?
+Adam/dense_296/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_296/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_296/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_296/bias/m
{
)Adam/dense_296/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_296/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_888/lstm_cell_888/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_888/lstm_cell_888/kernel/m
?
8Adam/lstm_888/lstm_cell_888/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_888/lstm_cell_888/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_888/lstm_cell_888/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_888/lstm_cell_888/recurrent_kernel/m
?
BAdam/lstm_888/lstm_cell_888/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_888/lstm_cell_888/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_888/lstm_cell_888/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_888/lstm_cell_888/bias/m
?
6Adam/lstm_888/lstm_cell_888/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_888/lstm_cell_888/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_889/lstm_cell_889/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_889/lstm_cell_889/kernel/m
?
8Adam/lstm_889/lstm_cell_889/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_889/lstm_cell_889/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_889/lstm_cell_889/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_889/lstm_cell_889/recurrent_kernel/m
?
BAdam/lstm_889/lstm_cell_889/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_889/lstm_cell_889/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_889/lstm_cell_889/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_889/lstm_cell_889/bias/m
?
6Adam/lstm_889/lstm_cell_889/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_889/lstm_cell_889/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_890/lstm_cell_890/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_890/lstm_cell_890/kernel/m
?
8Adam/lstm_890/lstm_cell_890/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_890/lstm_cell_890/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_890/lstm_cell_890/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_890/lstm_cell_890/recurrent_kernel/m
?
BAdam/lstm_890/lstm_cell_890/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_890/lstm_cell_890/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_890/lstm_cell_890/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_890/lstm_cell_890/bias/m
?
6Adam/lstm_890/lstm_cell_890/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_890/lstm_cell_890/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_296/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_296/kernel/v
?
+Adam/dense_296/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_296/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_296/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_296/bias/v
{
)Adam/dense_296/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_296/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_888/lstm_cell_888/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_888/lstm_cell_888/kernel/v
?
8Adam/lstm_888/lstm_cell_888/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_888/lstm_cell_888/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_888/lstm_cell_888/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_888/lstm_cell_888/recurrent_kernel/v
?
BAdam/lstm_888/lstm_cell_888/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_888/lstm_cell_888/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_888/lstm_cell_888/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_888/lstm_cell_888/bias/v
?
6Adam/lstm_888/lstm_cell_888/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_888/lstm_cell_888/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_889/lstm_cell_889/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_889/lstm_cell_889/kernel/v
?
8Adam/lstm_889/lstm_cell_889/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_889/lstm_cell_889/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_889/lstm_cell_889/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_889/lstm_cell_889/recurrent_kernel/v
?
BAdam/lstm_889/lstm_cell_889/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_889/lstm_cell_889/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_889/lstm_cell_889/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_889/lstm_cell_889/bias/v
?
6Adam/lstm_889/lstm_cell_889/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_889/lstm_cell_889/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_890/lstm_cell_890/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_890/lstm_cell_890/kernel/v
?
8Adam/lstm_890/lstm_cell_890/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_890/lstm_cell_890/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_890/lstm_cell_890/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_890/lstm_cell_890/recurrent_kernel/v
?
BAdam/lstm_890/lstm_cell_890/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_890/lstm_cell_890/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_890/lstm_cell_890/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_890/lstm_cell_890/bias/v
?
6Adam/lstm_890/lstm_cell_890/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_890/lstm_cell_890/bias/v*
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
VARIABLE_VALUEdense_296/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_296/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_888/lstm_cell_888/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_888/lstm_cell_888/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_888/lstm_cell_888/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_889/lstm_cell_889/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_889/lstm_cell_889/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_889/lstm_cell_889/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_890/lstm_cell_890/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_890/lstm_cell_890/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_890/lstm_cell_890/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_296/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_296/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_888/lstm_cell_888/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_888/lstm_cell_888/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_888/lstm_cell_888/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_889/lstm_cell_889/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_889/lstm_cell_889/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_889/lstm_cell_889/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_890/lstm_cell_890/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_890/lstm_cell_890/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_890/lstm_cell_890/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_296/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_296/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_888/lstm_cell_888/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_888/lstm_cell_888/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_888/lstm_cell_888/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_889/lstm_cell_889/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_889/lstm_cell_889/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_889/lstm_cell_889/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_890/lstm_cell_890/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_890/lstm_cell_890/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_890/lstm_cell_890/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_888_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_888_inputlstm_888/lstm_cell_888/kernel'lstm_888/lstm_cell_888/recurrent_kernellstm_888/lstm_cell_888/biaslstm_889/lstm_cell_889/kernel'lstm_889/lstm_cell_889/recurrent_kernellstm_889/lstm_cell_889/biaslstm_890/lstm_cell_890/kernel'lstm_890/lstm_cell_890/recurrent_kernellstm_890/lstm_cell_890/biasdense_296/kerneldense_296/bias*
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
%__inference_signature_wrapper_5294577
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_296/kernel/Read/ReadVariableOp"dense_296/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_888/lstm_cell_888/kernel/Read/ReadVariableOp;lstm_888/lstm_cell_888/recurrent_kernel/Read/ReadVariableOp/lstm_888/lstm_cell_888/bias/Read/ReadVariableOp1lstm_889/lstm_cell_889/kernel/Read/ReadVariableOp;lstm_889/lstm_cell_889/recurrent_kernel/Read/ReadVariableOp/lstm_889/lstm_cell_889/bias/Read/ReadVariableOp1lstm_890/lstm_cell_890/kernel/Read/ReadVariableOp;lstm_890/lstm_cell_890/recurrent_kernel/Read/ReadVariableOp/lstm_890/lstm_cell_890/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_296/kernel/m/Read/ReadVariableOp)Adam/dense_296/bias/m/Read/ReadVariableOp8Adam/lstm_888/lstm_cell_888/kernel/m/Read/ReadVariableOpBAdam/lstm_888/lstm_cell_888/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_888/lstm_cell_888/bias/m/Read/ReadVariableOp8Adam/lstm_889/lstm_cell_889/kernel/m/Read/ReadVariableOpBAdam/lstm_889/lstm_cell_889/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_889/lstm_cell_889/bias/m/Read/ReadVariableOp8Adam/lstm_890/lstm_cell_890/kernel/m/Read/ReadVariableOpBAdam/lstm_890/lstm_cell_890/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_890/lstm_cell_890/bias/m/Read/ReadVariableOp+Adam/dense_296/kernel/v/Read/ReadVariableOp)Adam/dense_296/bias/v/Read/ReadVariableOp8Adam/lstm_888/lstm_cell_888/kernel/v/Read/ReadVariableOpBAdam/lstm_888/lstm_cell_888/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_888/lstm_cell_888/bias/v/Read/ReadVariableOp8Adam/lstm_889/lstm_cell_889/kernel/v/Read/ReadVariableOpBAdam/lstm_889/lstm_cell_889/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_889/lstm_cell_889/bias/v/Read/ReadVariableOp8Adam/lstm_890/lstm_cell_890/kernel/v/Read/ReadVariableOpBAdam/lstm_890/lstm_cell_890/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_890/lstm_cell_890/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5297789
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_296/kerneldense_296/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_888/lstm_cell_888/kernel'lstm_888/lstm_cell_888/recurrent_kernellstm_888/lstm_cell_888/biaslstm_889/lstm_cell_889/kernel'lstm_889/lstm_cell_889/recurrent_kernellstm_889/lstm_cell_889/biaslstm_890/lstm_cell_890/kernel'lstm_890/lstm_cell_890/recurrent_kernellstm_890/lstm_cell_890/biastotalcountAdam/dense_296/kernel/mAdam/dense_296/bias/m$Adam/lstm_888/lstm_cell_888/kernel/m.Adam/lstm_888/lstm_cell_888/recurrent_kernel/m"Adam/lstm_888/lstm_cell_888/bias/m$Adam/lstm_889/lstm_cell_889/kernel/m.Adam/lstm_889/lstm_cell_889/recurrent_kernel/m"Adam/lstm_889/lstm_cell_889/bias/m$Adam/lstm_890/lstm_cell_890/kernel/m.Adam/lstm_890/lstm_cell_890/recurrent_kernel/m"Adam/lstm_890/lstm_cell_890/bias/mAdam/dense_296/kernel/vAdam/dense_296/bias/v$Adam/lstm_888/lstm_cell_888/kernel/v.Adam/lstm_888/lstm_cell_888/recurrent_kernel/v"Adam/lstm_888/lstm_cell_888/bias/v$Adam/lstm_889/lstm_cell_889/kernel/v.Adam/lstm_889/lstm_cell_889/recurrent_kernel/v"Adam/lstm_889/lstm_cell_889/bias/v$Adam/lstm_890/lstm_cell_890/kernel/v.Adam/lstm_890/lstm_cell_890/recurrent_kernel/v"Adam/lstm_890/lstm_cell_890/bias/v*4
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
#__inference__traced_restore_5297919??+
?K
?
E__inference_lstm_888_layer_call_and_return_conditional_losses_5295672
inputs_0?
,lstm_cell_888_matmul_readvariableop_resource:	?A
.lstm_cell_888_matmul_1_readvariableop_resource:	d?<
-lstm_cell_888_biasadd_readvariableop_resource:	?
identity??$lstm_cell_888/BiasAdd/ReadVariableOp?#lstm_cell_888/MatMul/ReadVariableOp?%lstm_cell_888/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_888/MatMul/ReadVariableOpReadVariableOp,lstm_cell_888_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_888/MatMulMatMulstrided_slice_2:output:0+lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_888_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_888/MatMul_1MatMulzeros:output:0-lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_888/addAddV2lstm_cell_888/MatMul:product:0 lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_888_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_888/BiasAddBiasAddlstm_cell_888/add:z:0,lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_888/splitSplit&lstm_cell_888/split/split_dim:output:0lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_888/SigmoidSigmoidlstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_1Sigmoidlstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_888/mulMullstm_cell_888/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_888/ReluRelulstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_1Mullstm_cell_888/Sigmoid:y:0 lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_888/add_1AddV2lstm_cell_888/mul:z:0lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_2Sigmoidlstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_888/Relu_1Relulstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_2Mullstm_cell_888/Sigmoid_2:y:0"lstm_cell_888/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_888_matmul_readvariableop_resource.lstm_cell_888_matmul_1_readvariableop_resource-lstm_cell_888_biasadd_readvariableop_resource*
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
while_body_5295588*
condR
while_cond_5295587*K
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
NoOpNoOp%^lstm_cell_888/BiasAdd/ReadVariableOp$^lstm_cell_888/MatMul/ReadVariableOp&^lstm_cell_888/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_888/BiasAdd/ReadVariableOp$lstm_cell_888/BiasAdd/ReadVariableOp2J
#lstm_cell_888/MatMul/ReadVariableOp#lstm_cell_888/MatMul/ReadVariableOp2N
%lstm_cell_888/MatMul_1/ReadVariableOp%lstm_cell_888/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_5292938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5292938___redundant_placeholder05
1while_while_cond_5292938___redundant_placeholder15
1while_while_cond_5292938___redundant_placeholder25
1while_while_cond_5292938___redundant_placeholder3
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
0__inference_sequential_296_layer_call_fn_5294631

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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5294430o
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
while_body_5294278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_888_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_888_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_888_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_888_matmul_readvariableop_resource:	?G
4while_lstm_cell_888_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_888_biasadd_readvariableop_resource:	???*while/lstm_cell_888/BiasAdd/ReadVariableOp?)while/lstm_cell_888/MatMul/ReadVariableOp?+while/lstm_cell_888/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_888/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_888_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_888/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_888_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_888/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_888/addAddV2$while/lstm_cell_888/MatMul:product:0&while/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_888_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_888/BiasAddBiasAddwhile/lstm_cell_888/add:z:02while/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_888/splitSplit,while/lstm_cell_888/split/split_dim:output:0$while/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_888/SigmoidSigmoid"while/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_1Sigmoid"while/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mulMul!while/lstm_cell_888/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_888/ReluRelu"while/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_1Mulwhile/lstm_cell_888/Sigmoid:y:0&while/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/add_1AddV2while/lstm_cell_888/mul:z:0while/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_2Sigmoid"while/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_888/Relu_1Reluwhile/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_2Mul!while/lstm_cell_888/Sigmoid_2:y:0(while/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_888/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_888/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_888/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_888/BiasAdd/ReadVariableOp*^while/lstm_cell_888/MatMul/ReadVariableOp,^while/lstm_cell_888/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_888_biasadd_readvariableop_resource5while_lstm_cell_888_biasadd_readvariableop_resource_0"n
4while_lstm_cell_888_matmul_1_readvariableop_resource6while_lstm_cell_888_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_888_matmul_readvariableop_resource4while_lstm_cell_888_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_888/BiasAdd/ReadVariableOp*while/lstm_cell_888/BiasAdd/ReadVariableOp2V
)while/lstm_cell_888/MatMul/ReadVariableOp)while/lstm_cell_888/MatMul/ReadVariableOp2Z
+while/lstm_cell_888/MatMul_1/ReadVariableOp+while/lstm_cell_888/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_889_layer_call_fn_5296145

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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5294197s
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

lstm_888_while_body_5295117.
*lstm_888_while_lstm_888_while_loop_counter4
0lstm_888_while_lstm_888_while_maximum_iterations
lstm_888_while_placeholder 
lstm_888_while_placeholder_1 
lstm_888_while_placeholder_2 
lstm_888_while_placeholder_3-
)lstm_888_while_lstm_888_strided_slice_1_0i
elstm_888_while_tensorarrayv2read_tensorlistgetitem_lstm_888_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_888_while_lstm_cell_888_matmul_readvariableop_resource_0:	?R
?lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource_0:	d?M
>lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource_0:	?
lstm_888_while_identity
lstm_888_while_identity_1
lstm_888_while_identity_2
lstm_888_while_identity_3
lstm_888_while_identity_4
lstm_888_while_identity_5+
'lstm_888_while_lstm_888_strided_slice_1g
clstm_888_while_tensorarrayv2read_tensorlistgetitem_lstm_888_tensorarrayunstack_tensorlistfromtensorN
;lstm_888_while_lstm_cell_888_matmul_readvariableop_resource:	?P
=lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource:	d?K
<lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource:	???3lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp?2lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp?4lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp?
@lstm_888/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_888/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_888_while_tensorarrayv2read_tensorlistgetitem_lstm_888_tensorarrayunstack_tensorlistfromtensor_0lstm_888_while_placeholderIlstm_888/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_888/while/lstm_cell_888/MatMul/ReadVariableOpReadVariableOp=lstm_888_while_lstm_cell_888_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_888/while/lstm_cell_888/MatMulMatMul9lstm_888/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp?lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_888/while/lstm_cell_888/MatMul_1MatMullstm_888_while_placeholder_2<lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_888/while/lstm_cell_888/addAddV2-lstm_888/while/lstm_cell_888/MatMul:product:0/lstm_888/while/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp>lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_888/while/lstm_cell_888/BiasAddBiasAdd$lstm_888/while/lstm_cell_888/add:z:0;lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_888/while/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_888/while/lstm_cell_888/splitSplit5lstm_888/while/lstm_cell_888/split/split_dim:output:0-lstm_888/while/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_888/while/lstm_cell_888/SigmoidSigmoid+lstm_888/while/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_888/while/lstm_cell_888/Sigmoid_1Sigmoid+lstm_888/while/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_888/while/lstm_cell_888/mulMul*lstm_888/while/lstm_cell_888/Sigmoid_1:y:0lstm_888_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_888/while/lstm_cell_888/ReluRelu+lstm_888/while/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_888/while/lstm_cell_888/mul_1Mul(lstm_888/while/lstm_cell_888/Sigmoid:y:0/lstm_888/while/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_888/while/lstm_cell_888/add_1AddV2$lstm_888/while/lstm_cell_888/mul:z:0&lstm_888/while/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_888/while/lstm_cell_888/Sigmoid_2Sigmoid+lstm_888/while/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_888/while/lstm_cell_888/Relu_1Relu&lstm_888/while/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_888/while/lstm_cell_888/mul_2Mul*lstm_888/while/lstm_cell_888/Sigmoid_2:y:01lstm_888/while/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_888/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_888_while_placeholder_1lstm_888_while_placeholder&lstm_888/while/lstm_cell_888/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_888/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_888/while/addAddV2lstm_888_while_placeholderlstm_888/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_888/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_888/while/add_1AddV2*lstm_888_while_lstm_888_while_loop_counterlstm_888/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_888/while/IdentityIdentitylstm_888/while/add_1:z:0^lstm_888/while/NoOp*
T0*
_output_shapes
: ?
lstm_888/while/Identity_1Identity0lstm_888_while_lstm_888_while_maximum_iterations^lstm_888/while/NoOp*
T0*
_output_shapes
: t
lstm_888/while/Identity_2Identitylstm_888/while/add:z:0^lstm_888/while/NoOp*
T0*
_output_shapes
: ?
lstm_888/while/Identity_3IdentityClstm_888/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_888/while/NoOp*
T0*
_output_shapes
: ?
lstm_888/while/Identity_4Identity&lstm_888/while/lstm_cell_888/mul_2:z:0^lstm_888/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_888/while/Identity_5Identity&lstm_888/while/lstm_cell_888/add_1:z:0^lstm_888/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_888/while/NoOpNoOp4^lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp3^lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp5^lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_888_while_identity lstm_888/while/Identity:output:0"?
lstm_888_while_identity_1"lstm_888/while/Identity_1:output:0"?
lstm_888_while_identity_2"lstm_888/while/Identity_2:output:0"?
lstm_888_while_identity_3"lstm_888/while/Identity_3:output:0"?
lstm_888_while_identity_4"lstm_888/while/Identity_4:output:0"?
lstm_888_while_identity_5"lstm_888/while/Identity_5:output:0"T
'lstm_888_while_lstm_888_strided_slice_1)lstm_888_while_lstm_888_strided_slice_1_0"~
<lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource>lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource_0"?
=lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource?lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource_0"|
;lstm_888_while_lstm_cell_888_matmul_readvariableop_resource=lstm_888_while_lstm_cell_888_matmul_readvariableop_resource_0"?
clstm_888_while_tensorarrayv2read_tensorlistgetitem_lstm_888_tensorarrayunstack_tensorlistfromtensorelstm_888_while_tensorarrayv2read_tensorlistgetitem_lstm_888_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp3lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp2h
2lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp2lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp2l
4lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp4lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_890_layer_call_fn_5297582

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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5293230o
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5293167

inputs'
lstm_cell_890_5293085:2('
lstm_cell_890_5293087:
(#
lstm_cell_890_5293089:(
identity??%lstm_cell_890/StatefulPartitionedCall?while;
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
%lstm_cell_890/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_890_5293085lstm_cell_890_5293087lstm_cell_890_5293089*
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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5293084n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_890_5293085lstm_cell_890_5293087lstm_cell_890_5293089*
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
while_body_5293098*
condR
while_cond_5293097*K
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
NoOpNoOp&^lstm_cell_890/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_890/StatefulPartitionedCall%lstm_cell_890/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_5296819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5296819___redundant_placeholder05
1while_while_cond_5296819___redundant_placeholder15
1while_while_cond_5296819___redundant_placeholder25
1while_while_cond_5296819___redundant_placeholder3
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
/__inference_lstm_cell_889_layer_call_fn_5297484

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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5292880o
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
?
K__inference_sequential_296_layer_call_and_return_conditional_losses_5294542
lstm_888_input#
lstm_888_5294515:	?#
lstm_888_5294517:	d?
lstm_888_5294519:	?#
lstm_889_5294522:	d?#
lstm_889_5294524:	2?
lstm_889_5294526:	?"
lstm_890_5294529:2("
lstm_890_5294531:
(
lstm_890_5294533:(#
dense_296_5294536:

dense_296_5294538:
identity??!dense_296/StatefulPartitionedCall? lstm_888/StatefulPartitionedCall? lstm_889/StatefulPartitionedCall? lstm_890/StatefulPartitionedCall?
 lstm_888/StatefulPartitionedCallStatefulPartitionedCalllstm_888_inputlstm_888_5294515lstm_888_5294517lstm_888_5294519*
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5294362?
 lstm_889/StatefulPartitionedCallStatefulPartitionedCall)lstm_888/StatefulPartitionedCall:output:0lstm_889_5294522lstm_889_5294524lstm_889_5294526*
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5294197?
 lstm_890/StatefulPartitionedCallStatefulPartitionedCall)lstm_889/StatefulPartitionedCall:output:0lstm_890_5294529lstm_890_5294531lstm_890_5294533*
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5294032?
!dense_296/StatefulPartitionedCallStatefulPartitionedCall)lstm_890/StatefulPartitionedCall:output:0dense_296_5294536dense_296_5294538*
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
F__inference_dense_296_layer_call_and_return_conditional_losses_5293834y
IdentityIdentity*dense_296/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_296/StatefulPartitionedCall!^lstm_888/StatefulPartitionedCall!^lstm_889/StatefulPartitionedCall!^lstm_890/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_296/StatefulPartitionedCall!dense_296/StatefulPartitionedCall2D
 lstm_888/StatefulPartitionedCall lstm_888/StatefulPartitionedCall2D
 lstm_889/StatefulPartitionedCall lstm_889/StatefulPartitionedCall2D
 lstm_890/StatefulPartitionedCall lstm_890/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_888_input
?
?
while_cond_5296632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5296632___redundant_placeholder05
1while_while_cond_5296632___redundant_placeholder15
1while_while_cond_5296632___redundant_placeholder25
1while_while_cond_5296632___redundant_placeholder3
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
%__inference_signature_wrapper_5294577
lstm_888_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_888_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_5292317o
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
_user_specified_namelstm_888_input
?
?
/__inference_lstm_cell_888_layer_call_fn_5297369

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
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5292384o
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
??
?
#__inference__traced_restore_5297919
file_prefix3
!assignvariableop_dense_296_kernel:
/
!assignvariableop_1_dense_296_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_888_lstm_cell_888_kernel:	?M
:assignvariableop_8_lstm_888_lstm_cell_888_recurrent_kernel:	d?=
.assignvariableop_9_lstm_888_lstm_cell_888_bias:	?D
1assignvariableop_10_lstm_889_lstm_cell_889_kernel:	d?N
;assignvariableop_11_lstm_889_lstm_cell_889_recurrent_kernel:	2?>
/assignvariableop_12_lstm_889_lstm_cell_889_bias:	?C
1assignvariableop_13_lstm_890_lstm_cell_890_kernel:2(M
;assignvariableop_14_lstm_890_lstm_cell_890_recurrent_kernel:
(=
/assignvariableop_15_lstm_890_lstm_cell_890_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_296_kernel_m:
7
)assignvariableop_19_adam_dense_296_bias_m:K
8assignvariableop_20_adam_lstm_888_lstm_cell_888_kernel_m:	?U
Bassignvariableop_21_adam_lstm_888_lstm_cell_888_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_888_lstm_cell_888_bias_m:	?K
8assignvariableop_23_adam_lstm_889_lstm_cell_889_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_889_lstm_cell_889_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_889_lstm_cell_889_bias_m:	?J
8assignvariableop_26_adam_lstm_890_lstm_cell_890_kernel_m:2(T
Bassignvariableop_27_adam_lstm_890_lstm_cell_890_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_890_lstm_cell_890_bias_m:(=
+assignvariableop_29_adam_dense_296_kernel_v:
7
)assignvariableop_30_adam_dense_296_bias_v:K
8assignvariableop_31_adam_lstm_888_lstm_cell_888_kernel_v:	?U
Bassignvariableop_32_adam_lstm_888_lstm_cell_888_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_888_lstm_cell_888_bias_v:	?K
8assignvariableop_34_adam_lstm_889_lstm_cell_889_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_889_lstm_cell_889_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_889_lstm_cell_889_bias_v:	?J
8assignvariableop_37_adam_lstm_890_lstm_cell_890_kernel_v:2(T
Bassignvariableop_38_adam_lstm_890_lstm_cell_890_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_890_lstm_cell_890_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_296_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_296_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_888_lstm_cell_888_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_888_lstm_cell_888_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_888_lstm_cell_888_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_889_lstm_cell_889_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_889_lstm_cell_889_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_889_lstm_cell_889_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_890_lstm_cell_890_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_890_lstm_cell_890_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_890_lstm_cell_890_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_296_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_296_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_888_lstm_cell_888_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_888_lstm_cell_888_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_888_lstm_cell_888_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_889_lstm_cell_889_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_889_lstm_cell_889_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_889_lstm_cell_889_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_890_lstm_cell_890_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_890_lstm_cell_890_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_890_lstm_cell_890_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_296_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_296_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_888_lstm_cell_888_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_888_lstm_cell_888_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_888_lstm_cell_888_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_889_lstm_cell_889_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_889_lstm_cell_889_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_889_lstm_cell_889_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_890_lstm_cell_890_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_890_lstm_cell_890_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_890_lstm_cell_890_bias_vIdentity_39:output:0"/device:CPU:0*
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
?C
?

lstm_888_while_body_5294690.
*lstm_888_while_lstm_888_while_loop_counter4
0lstm_888_while_lstm_888_while_maximum_iterations
lstm_888_while_placeholder 
lstm_888_while_placeholder_1 
lstm_888_while_placeholder_2 
lstm_888_while_placeholder_3-
)lstm_888_while_lstm_888_strided_slice_1_0i
elstm_888_while_tensorarrayv2read_tensorlistgetitem_lstm_888_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_888_while_lstm_cell_888_matmul_readvariableop_resource_0:	?R
?lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource_0:	d?M
>lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource_0:	?
lstm_888_while_identity
lstm_888_while_identity_1
lstm_888_while_identity_2
lstm_888_while_identity_3
lstm_888_while_identity_4
lstm_888_while_identity_5+
'lstm_888_while_lstm_888_strided_slice_1g
clstm_888_while_tensorarrayv2read_tensorlistgetitem_lstm_888_tensorarrayunstack_tensorlistfromtensorN
;lstm_888_while_lstm_cell_888_matmul_readvariableop_resource:	?P
=lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource:	d?K
<lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource:	???3lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp?2lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp?4lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp?
@lstm_888/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_888/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_888_while_tensorarrayv2read_tensorlistgetitem_lstm_888_tensorarrayunstack_tensorlistfromtensor_0lstm_888_while_placeholderIlstm_888/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_888/while/lstm_cell_888/MatMul/ReadVariableOpReadVariableOp=lstm_888_while_lstm_cell_888_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_888/while/lstm_cell_888/MatMulMatMul9lstm_888/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp?lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_888/while/lstm_cell_888/MatMul_1MatMullstm_888_while_placeholder_2<lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_888/while/lstm_cell_888/addAddV2-lstm_888/while/lstm_cell_888/MatMul:product:0/lstm_888/while/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp>lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_888/while/lstm_cell_888/BiasAddBiasAdd$lstm_888/while/lstm_cell_888/add:z:0;lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_888/while/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_888/while/lstm_cell_888/splitSplit5lstm_888/while/lstm_cell_888/split/split_dim:output:0-lstm_888/while/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_888/while/lstm_cell_888/SigmoidSigmoid+lstm_888/while/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_888/while/lstm_cell_888/Sigmoid_1Sigmoid+lstm_888/while/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_888/while/lstm_cell_888/mulMul*lstm_888/while/lstm_cell_888/Sigmoid_1:y:0lstm_888_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_888/while/lstm_cell_888/ReluRelu+lstm_888/while/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_888/while/lstm_cell_888/mul_1Mul(lstm_888/while/lstm_cell_888/Sigmoid:y:0/lstm_888/while/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_888/while/lstm_cell_888/add_1AddV2$lstm_888/while/lstm_cell_888/mul:z:0&lstm_888/while/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_888/while/lstm_cell_888/Sigmoid_2Sigmoid+lstm_888/while/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_888/while/lstm_cell_888/Relu_1Relu&lstm_888/while/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_888/while/lstm_cell_888/mul_2Mul*lstm_888/while/lstm_cell_888/Sigmoid_2:y:01lstm_888/while/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_888/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_888_while_placeholder_1lstm_888_while_placeholder&lstm_888/while/lstm_cell_888/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_888/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_888/while/addAddV2lstm_888_while_placeholderlstm_888/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_888/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_888/while/add_1AddV2*lstm_888_while_lstm_888_while_loop_counterlstm_888/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_888/while/IdentityIdentitylstm_888/while/add_1:z:0^lstm_888/while/NoOp*
T0*
_output_shapes
: ?
lstm_888/while/Identity_1Identity0lstm_888_while_lstm_888_while_maximum_iterations^lstm_888/while/NoOp*
T0*
_output_shapes
: t
lstm_888/while/Identity_2Identitylstm_888/while/add:z:0^lstm_888/while/NoOp*
T0*
_output_shapes
: ?
lstm_888/while/Identity_3IdentityClstm_888/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_888/while/NoOp*
T0*
_output_shapes
: ?
lstm_888/while/Identity_4Identity&lstm_888/while/lstm_cell_888/mul_2:z:0^lstm_888/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_888/while/Identity_5Identity&lstm_888/while/lstm_cell_888/add_1:z:0^lstm_888/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_888/while/NoOpNoOp4^lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp3^lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp5^lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_888_while_identity lstm_888/while/Identity:output:0"?
lstm_888_while_identity_1"lstm_888/while/Identity_1:output:0"?
lstm_888_while_identity_2"lstm_888/while/Identity_2:output:0"?
lstm_888_while_identity_3"lstm_888/while/Identity_3:output:0"?
lstm_888_while_identity_4"lstm_888/while/Identity_4:output:0"?
lstm_888_while_identity_5"lstm_888/while/Identity_5:output:0"T
'lstm_888_while_lstm_888_strided_slice_1)lstm_888_while_lstm_888_strided_slice_1_0"~
<lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource>lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource_0"?
=lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource?lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource_0"|
;lstm_888_while_lstm_cell_888_matmul_readvariableop_resource=lstm_888_while_lstm_cell_888_matmul_readvariableop_resource_0"?
clstm_888_while_tensorarrayv2read_tensorlistgetitem_lstm_888_tensorarrayunstack_tensorlistfromtensorelstm_888_while_tensorarrayv2read_tensorlistgetitem_lstm_888_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp3lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp2h
2lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp2lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp2l
4lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp4lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5295058

inputsH
5lstm_888_lstm_cell_888_matmul_readvariableop_resource:	?J
7lstm_888_lstm_cell_888_matmul_1_readvariableop_resource:	d?E
6lstm_888_lstm_cell_888_biasadd_readvariableop_resource:	?H
5lstm_889_lstm_cell_889_matmul_readvariableop_resource:	d?J
7lstm_889_lstm_cell_889_matmul_1_readvariableop_resource:	2?E
6lstm_889_lstm_cell_889_biasadd_readvariableop_resource:	?G
5lstm_890_lstm_cell_890_matmul_readvariableop_resource:2(I
7lstm_890_lstm_cell_890_matmul_1_readvariableop_resource:
(D
6lstm_890_lstm_cell_890_biasadd_readvariableop_resource:(:
(dense_296_matmul_readvariableop_resource:
7
)dense_296_biasadd_readvariableop_resource:
identity?? dense_296/BiasAdd/ReadVariableOp?dense_296/MatMul/ReadVariableOp?-lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp?,lstm_888/lstm_cell_888/MatMul/ReadVariableOp?.lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp?lstm_888/while?-lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp?,lstm_889/lstm_cell_889/MatMul/ReadVariableOp?.lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp?lstm_889/while?-lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp?,lstm_890/lstm_cell_890/MatMul/ReadVariableOp?.lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp?lstm_890/whileD
lstm_888/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_888/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_888/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_888/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_888/strided_sliceStridedSlicelstm_888/Shape:output:0%lstm_888/strided_slice/stack:output:0'lstm_888/strided_slice/stack_1:output:0'lstm_888/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_888/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_888/zeros/packedPacklstm_888/strided_slice:output:0 lstm_888/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_888/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_888/zerosFilllstm_888/zeros/packed:output:0lstm_888/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_888/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_888/zeros_1/packedPacklstm_888/strided_slice:output:0"lstm_888/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_888/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_888/zeros_1Fill lstm_888/zeros_1/packed:output:0lstm_888/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_888/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_888/transpose	Transposeinputs lstm_888/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_888/Shape_1Shapelstm_888/transpose:y:0*
T0*
_output_shapes
:h
lstm_888/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_888/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_888/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_888/strided_slice_1StridedSlicelstm_888/Shape_1:output:0'lstm_888/strided_slice_1/stack:output:0)lstm_888/strided_slice_1/stack_1:output:0)lstm_888/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_888/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_888/TensorArrayV2TensorListReserve-lstm_888/TensorArrayV2/element_shape:output:0!lstm_888/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_888/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_888/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_888/transpose:y:0Glstm_888/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_888/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_888/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_888/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_888/strided_slice_2StridedSlicelstm_888/transpose:y:0'lstm_888/strided_slice_2/stack:output:0)lstm_888/strided_slice_2/stack_1:output:0)lstm_888/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_888/lstm_cell_888/MatMul/ReadVariableOpReadVariableOp5lstm_888_lstm_cell_888_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_888/lstm_cell_888/MatMulMatMul!lstm_888/strided_slice_2:output:04lstm_888/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_888/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp7lstm_888_lstm_cell_888_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_888/lstm_cell_888/MatMul_1MatMullstm_888/zeros:output:06lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_888/lstm_cell_888/addAddV2'lstm_888/lstm_cell_888/MatMul:product:0)lstm_888/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_888/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp6lstm_888_lstm_cell_888_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_888/lstm_cell_888/BiasAddBiasAddlstm_888/lstm_cell_888/add:z:05lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_888/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_888/lstm_cell_888/splitSplit/lstm_888/lstm_cell_888/split/split_dim:output:0'lstm_888/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_888/lstm_cell_888/SigmoidSigmoid%lstm_888/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_888/lstm_cell_888/Sigmoid_1Sigmoid%lstm_888/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_888/lstm_cell_888/mulMul$lstm_888/lstm_cell_888/Sigmoid_1:y:0lstm_888/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_888/lstm_cell_888/ReluRelu%lstm_888/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_888/lstm_cell_888/mul_1Mul"lstm_888/lstm_cell_888/Sigmoid:y:0)lstm_888/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_888/lstm_cell_888/add_1AddV2lstm_888/lstm_cell_888/mul:z:0 lstm_888/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_888/lstm_cell_888/Sigmoid_2Sigmoid%lstm_888/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_888/lstm_cell_888/Relu_1Relu lstm_888/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_888/lstm_cell_888/mul_2Mul$lstm_888/lstm_cell_888/Sigmoid_2:y:0+lstm_888/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_888/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_888/TensorArrayV2_1TensorListReserve/lstm_888/TensorArrayV2_1/element_shape:output:0!lstm_888/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_888/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_888/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_888/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_888/whileWhile$lstm_888/while/loop_counter:output:0*lstm_888/while/maximum_iterations:output:0lstm_888/time:output:0!lstm_888/TensorArrayV2_1:handle:0lstm_888/zeros:output:0lstm_888/zeros_1:output:0!lstm_888/strided_slice_1:output:0@lstm_888/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_888_lstm_cell_888_matmul_readvariableop_resource7lstm_888_lstm_cell_888_matmul_1_readvariableop_resource6lstm_888_lstm_cell_888_biasadd_readvariableop_resource*
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
lstm_888_while_body_5294690*'
condR
lstm_888_while_cond_5294689*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_888/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_888/TensorArrayV2Stack/TensorListStackTensorListStacklstm_888/while:output:3Blstm_888/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_888/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_888/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_888/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_888/strided_slice_3StridedSlice4lstm_888/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_888/strided_slice_3/stack:output:0)lstm_888/strided_slice_3/stack_1:output:0)lstm_888/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_888/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_888/transpose_1	Transpose4lstm_888/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_888/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_888/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_889/ShapeShapelstm_888/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_889/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_889/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_889/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_889/strided_sliceStridedSlicelstm_889/Shape:output:0%lstm_889/strided_slice/stack:output:0'lstm_889/strided_slice/stack_1:output:0'lstm_889/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_889/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_889/zeros/packedPacklstm_889/strided_slice:output:0 lstm_889/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_889/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_889/zerosFilllstm_889/zeros/packed:output:0lstm_889/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_889/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_889/zeros_1/packedPacklstm_889/strided_slice:output:0"lstm_889/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_889/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_889/zeros_1Fill lstm_889/zeros_1/packed:output:0lstm_889/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_889/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_889/transpose	Transposelstm_888/transpose_1:y:0 lstm_889/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_889/Shape_1Shapelstm_889/transpose:y:0*
T0*
_output_shapes
:h
lstm_889/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_889/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_889/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_889/strided_slice_1StridedSlicelstm_889/Shape_1:output:0'lstm_889/strided_slice_1/stack:output:0)lstm_889/strided_slice_1/stack_1:output:0)lstm_889/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_889/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_889/TensorArrayV2TensorListReserve-lstm_889/TensorArrayV2/element_shape:output:0!lstm_889/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_889/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_889/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_889/transpose:y:0Glstm_889/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_889/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_889/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_889/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_889/strided_slice_2StridedSlicelstm_889/transpose:y:0'lstm_889/strided_slice_2/stack:output:0)lstm_889/strided_slice_2/stack_1:output:0)lstm_889/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_889/lstm_cell_889/MatMul/ReadVariableOpReadVariableOp5lstm_889_lstm_cell_889_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_889/lstm_cell_889/MatMulMatMul!lstm_889/strided_slice_2:output:04lstm_889/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_889/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp7lstm_889_lstm_cell_889_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_889/lstm_cell_889/MatMul_1MatMullstm_889/zeros:output:06lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_889/lstm_cell_889/addAddV2'lstm_889/lstm_cell_889/MatMul:product:0)lstm_889/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_889/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp6lstm_889_lstm_cell_889_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_889/lstm_cell_889/BiasAddBiasAddlstm_889/lstm_cell_889/add:z:05lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_889/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_889/lstm_cell_889/splitSplit/lstm_889/lstm_cell_889/split/split_dim:output:0'lstm_889/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_889/lstm_cell_889/SigmoidSigmoid%lstm_889/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_889/lstm_cell_889/Sigmoid_1Sigmoid%lstm_889/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_889/lstm_cell_889/mulMul$lstm_889/lstm_cell_889/Sigmoid_1:y:0lstm_889/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_889/lstm_cell_889/ReluRelu%lstm_889/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_889/lstm_cell_889/mul_1Mul"lstm_889/lstm_cell_889/Sigmoid:y:0)lstm_889/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_889/lstm_cell_889/add_1AddV2lstm_889/lstm_cell_889/mul:z:0 lstm_889/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_889/lstm_cell_889/Sigmoid_2Sigmoid%lstm_889/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_889/lstm_cell_889/Relu_1Relu lstm_889/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_889/lstm_cell_889/mul_2Mul$lstm_889/lstm_cell_889/Sigmoid_2:y:0+lstm_889/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_889/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_889/TensorArrayV2_1TensorListReserve/lstm_889/TensorArrayV2_1/element_shape:output:0!lstm_889/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_889/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_889/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_889/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_889/whileWhile$lstm_889/while/loop_counter:output:0*lstm_889/while/maximum_iterations:output:0lstm_889/time:output:0!lstm_889/TensorArrayV2_1:handle:0lstm_889/zeros:output:0lstm_889/zeros_1:output:0!lstm_889/strided_slice_1:output:0@lstm_889/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_889_lstm_cell_889_matmul_readvariableop_resource7lstm_889_lstm_cell_889_matmul_1_readvariableop_resource6lstm_889_lstm_cell_889_biasadd_readvariableop_resource*
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
lstm_889_while_body_5294829*'
condR
lstm_889_while_cond_5294828*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_889/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_889/TensorArrayV2Stack/TensorListStackTensorListStacklstm_889/while:output:3Blstm_889/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_889/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_889/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_889/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_889/strided_slice_3StridedSlice4lstm_889/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_889/strided_slice_3/stack:output:0)lstm_889/strided_slice_3/stack_1:output:0)lstm_889/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_889/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_889/transpose_1	Transpose4lstm_889/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_889/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_889/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_890/ShapeShapelstm_889/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_890/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_890/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_890/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_890/strided_sliceStridedSlicelstm_890/Shape:output:0%lstm_890/strided_slice/stack:output:0'lstm_890/strided_slice/stack_1:output:0'lstm_890/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_890/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_890/zeros/packedPacklstm_890/strided_slice:output:0 lstm_890/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_890/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_890/zerosFilllstm_890/zeros/packed:output:0lstm_890/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_890/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_890/zeros_1/packedPacklstm_890/strided_slice:output:0"lstm_890/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_890/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_890/zeros_1Fill lstm_890/zeros_1/packed:output:0lstm_890/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_890/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_890/transpose	Transposelstm_889/transpose_1:y:0 lstm_890/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_890/Shape_1Shapelstm_890/transpose:y:0*
T0*
_output_shapes
:h
lstm_890/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_890/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_890/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_890/strided_slice_1StridedSlicelstm_890/Shape_1:output:0'lstm_890/strided_slice_1/stack:output:0)lstm_890/strided_slice_1/stack_1:output:0)lstm_890/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_890/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_890/TensorArrayV2TensorListReserve-lstm_890/TensorArrayV2/element_shape:output:0!lstm_890/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_890/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_890/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_890/transpose:y:0Glstm_890/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_890/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_890/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_890/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_890/strided_slice_2StridedSlicelstm_890/transpose:y:0'lstm_890/strided_slice_2/stack:output:0)lstm_890/strided_slice_2/stack_1:output:0)lstm_890/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_890/lstm_cell_890/MatMul/ReadVariableOpReadVariableOp5lstm_890_lstm_cell_890_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_890/lstm_cell_890/MatMulMatMul!lstm_890/strided_slice_2:output:04lstm_890/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_890/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp7lstm_890_lstm_cell_890_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_890/lstm_cell_890/MatMul_1MatMullstm_890/zeros:output:06lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_890/lstm_cell_890/addAddV2'lstm_890/lstm_cell_890/MatMul:product:0)lstm_890/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_890/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp6lstm_890_lstm_cell_890_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_890/lstm_cell_890/BiasAddBiasAddlstm_890/lstm_cell_890/add:z:05lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_890/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_890/lstm_cell_890/splitSplit/lstm_890/lstm_cell_890/split/split_dim:output:0'lstm_890/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_890/lstm_cell_890/SigmoidSigmoid%lstm_890/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_890/lstm_cell_890/Sigmoid_1Sigmoid%lstm_890/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_890/lstm_cell_890/mulMul$lstm_890/lstm_cell_890/Sigmoid_1:y:0lstm_890/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_890/lstm_cell_890/ReluRelu%lstm_890/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_890/lstm_cell_890/mul_1Mul"lstm_890/lstm_cell_890/Sigmoid:y:0)lstm_890/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_890/lstm_cell_890/add_1AddV2lstm_890/lstm_cell_890/mul:z:0 lstm_890/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_890/lstm_cell_890/Sigmoid_2Sigmoid%lstm_890/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_890/lstm_cell_890/Relu_1Relu lstm_890/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_890/lstm_cell_890/mul_2Mul$lstm_890/lstm_cell_890/Sigmoid_2:y:0+lstm_890/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_890/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_890/TensorArrayV2_1TensorListReserve/lstm_890/TensorArrayV2_1/element_shape:output:0!lstm_890/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_890/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_890/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_890/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_890/whileWhile$lstm_890/while/loop_counter:output:0*lstm_890/while/maximum_iterations:output:0lstm_890/time:output:0!lstm_890/TensorArrayV2_1:handle:0lstm_890/zeros:output:0lstm_890/zeros_1:output:0!lstm_890/strided_slice_1:output:0@lstm_890/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_890_lstm_cell_890_matmul_readvariableop_resource7lstm_890_lstm_cell_890_matmul_1_readvariableop_resource6lstm_890_lstm_cell_890_biasadd_readvariableop_resource*
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
lstm_890_while_body_5294968*'
condR
lstm_890_while_cond_5294967*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_890/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_890/TensorArrayV2Stack/TensorListStackTensorListStacklstm_890/while:output:3Blstm_890/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_890/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_890/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_890/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_890/strided_slice_3StridedSlice4lstm_890/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_890/strided_slice_3/stack:output:0)lstm_890/strided_slice_3/stack_1:output:0)lstm_890/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_890/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_890/transpose_1	Transpose4lstm_890/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_890/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_890/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_296/MatMul/ReadVariableOpReadVariableOp(dense_296_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_296/MatMulMatMul!lstm_890/strided_slice_3:output:0'dense_296/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_296/BiasAdd/ReadVariableOpReadVariableOp)dense_296_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_296/BiasAddBiasAdddense_296/MatMul:product:0(dense_296/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_296/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_296/BiasAdd/ReadVariableOp ^dense_296/MatMul/ReadVariableOp.^lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp-^lstm_888/lstm_cell_888/MatMul/ReadVariableOp/^lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp^lstm_888/while.^lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp-^lstm_889/lstm_cell_889/MatMul/ReadVariableOp/^lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp^lstm_889/while.^lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp-^lstm_890/lstm_cell_890/MatMul/ReadVariableOp/^lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp^lstm_890/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_296/BiasAdd/ReadVariableOp dense_296/BiasAdd/ReadVariableOp2B
dense_296/MatMul/ReadVariableOpdense_296/MatMul/ReadVariableOp2^
-lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp-lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp2\
,lstm_888/lstm_cell_888/MatMul/ReadVariableOp,lstm_888/lstm_cell_888/MatMul/ReadVariableOp2`
.lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp.lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp2 
lstm_888/whilelstm_888/while2^
-lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp-lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp2\
,lstm_889/lstm_cell_889/MatMul/ReadVariableOp,lstm_889/lstm_cell_889/MatMul/ReadVariableOp2`
.lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp.lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp2 
lstm_889/whilelstm_889/while2^
-lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp-lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp2\
,lstm_890/lstm_cell_890/MatMul/ReadVariableOp,lstm_890/lstm_cell_890/MatMul/ReadVariableOp2`
.lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp.lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp2 
lstm_890/whilelstm_890/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_296_layer_call_and_return_conditional_losses_5297352

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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5293008

inputs(
lstm_cell_889_5292926:	d?(
lstm_cell_889_5292928:	2?$
lstm_cell_889_5292930:	?
identity??%lstm_cell_889/StatefulPartitionedCall?while;
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
%lstm_cell_889/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_889_5292926lstm_cell_889_5292928lstm_cell_889_5292930*
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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5292880n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_889_5292926lstm_cell_889_5292928lstm_cell_889_5292930*
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
while_body_5292939*
condR
while_cond_5292938*K
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
NoOpNoOp&^lstm_cell_889/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_889/StatefulPartitionedCall%lstm_cell_889/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_888_while_cond_5294689.
*lstm_888_while_lstm_888_while_loop_counter4
0lstm_888_while_lstm_888_while_maximum_iterations
lstm_888_while_placeholder 
lstm_888_while_placeholder_1 
lstm_888_while_placeholder_2 
lstm_888_while_placeholder_30
,lstm_888_while_less_lstm_888_strided_slice_1G
Clstm_888_while_lstm_888_while_cond_5294689___redundant_placeholder0G
Clstm_888_while_lstm_888_while_cond_5294689___redundant_placeholder1G
Clstm_888_while_lstm_888_while_cond_5294689___redundant_placeholder2G
Clstm_888_while_lstm_888_while_cond_5294689___redundant_placeholder3
lstm_888_while_identity
?
lstm_888/while/LessLesslstm_888_while_placeholder,lstm_888_while_less_lstm_888_strided_slice_1*
T0*
_output_shapes
: ]
lstm_888/while/IdentityIdentitylstm_888/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_888_while_identity lstm_888/while/Identity:output:0*(
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
*__inference_lstm_889_layer_call_fn_5296134

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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5293666s
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5297333

inputs>
,lstm_cell_890_matmul_readvariableop_resource:2(@
.lstm_cell_890_matmul_1_readvariableop_resource:
(;
-lstm_cell_890_biasadd_readvariableop_resource:(
identity??$lstm_cell_890/BiasAdd/ReadVariableOp?#lstm_cell_890/MatMul/ReadVariableOp?%lstm_cell_890/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_890/MatMul/ReadVariableOpReadVariableOp,lstm_cell_890_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_890/MatMulMatMulstrided_slice_2:output:0+lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_890_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_890/MatMul_1MatMulzeros:output:0-lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_890/addAddV2lstm_cell_890/MatMul:product:0 lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_890_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_890/BiasAddBiasAddlstm_cell_890/add:z:0,lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_890/splitSplit&lstm_cell_890/split/split_dim:output:0lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_890/SigmoidSigmoidlstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_1Sigmoidlstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_890/mulMullstm_cell_890/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_890/ReluRelulstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_1Mullstm_cell_890/Sigmoid:y:0 lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_890/add_1AddV2lstm_cell_890/mul:z:0lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_2Sigmoidlstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_890/Relu_1Relulstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_2Mullstm_cell_890/Sigmoid_2:y:0"lstm_cell_890/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_890_matmul_readvariableop_resource.lstm_cell_890_matmul_1_readvariableop_resource-lstm_cell_890_biasadd_readvariableop_resource*
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
while_body_5297249*
condR
while_cond_5297248*K
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
NoOpNoOp%^lstm_cell_890/BiasAdd/ReadVariableOp$^lstm_cell_890/MatMul/ReadVariableOp&^lstm_cell_890/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_890/BiasAdd/ReadVariableOp$lstm_cell_890/BiasAdd/ReadVariableOp2J
#lstm_cell_890/MatMul/ReadVariableOp#lstm_cell_890/MatMul/ReadVariableOp2N
%lstm_cell_890/MatMul_1/ReadVariableOp%lstm_cell_890/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5297450

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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296717

inputs?
,lstm_cell_889_matmul_readvariableop_resource:	d?A
.lstm_cell_889_matmul_1_readvariableop_resource:	2?<
-lstm_cell_889_biasadd_readvariableop_resource:	?
identity??$lstm_cell_889/BiasAdd/ReadVariableOp?#lstm_cell_889/MatMul/ReadVariableOp?%lstm_cell_889/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_889/MatMul/ReadVariableOpReadVariableOp,lstm_cell_889_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_889/MatMulMatMulstrided_slice_2:output:0+lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_889_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_889/MatMul_1MatMulzeros:output:0-lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_889/addAddV2lstm_cell_889/MatMul:product:0 lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_889_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_889/BiasAddBiasAddlstm_cell_889/add:z:0,lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_889/splitSplit&lstm_cell_889/split/split_dim:output:0lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_889/SigmoidSigmoidlstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_1Sigmoidlstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_889/mulMullstm_cell_889/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_889/ReluRelulstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_1Mullstm_cell_889/Sigmoid:y:0 lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_889/add_1AddV2lstm_cell_889/mul:z:0lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_2Sigmoidlstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_889/Relu_1Relulstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_2Mullstm_cell_889/Sigmoid_2:y:0"lstm_cell_889/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_889_matmul_readvariableop_resource.lstm_cell_889_matmul_1_readvariableop_resource-lstm_cell_889_biasadd_readvariableop_resource*
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
while_body_5296633*
condR
while_cond_5296632*K
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
NoOpNoOp%^lstm_cell_889/BiasAdd/ReadVariableOp$^lstm_cell_889/MatMul/ReadVariableOp&^lstm_cell_889/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_889/BiasAdd/ReadVariableOp$lstm_cell_889/BiasAdd/ReadVariableOp2J
#lstm_cell_889/MatMul/ReadVariableOp#lstm_cell_889/MatMul/ReadVariableOp2N
%lstm_cell_889/MatMul_1/ReadVariableOp%lstm_cell_889/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_5292748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_889_5292772_0:	d?0
while_lstm_cell_889_5292774_0:	2?,
while_lstm_cell_889_5292776_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_889_5292772:	d?.
while_lstm_cell_889_5292774:	2?*
while_lstm_cell_889_5292776:	???+while/lstm_cell_889/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_889/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_889_5292772_0while_lstm_cell_889_5292774_0while_lstm_cell_889_5292776_0*
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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5292734?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_889/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_889/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_889/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_889/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_889_5292772while_lstm_cell_889_5292772_0"<
while_lstm_cell_889_5292774while_lstm_cell_889_5292774_0"<
while_lstm_cell_889_5292776while_lstm_cell_889_5292776_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_889/StatefulPartitionedCall+while/lstm_cell_889/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_888_layer_call_fn_5295496
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5292467|
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
?
?
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5297614

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
0__inference_sequential_296_layer_call_fn_5294482
lstm_888_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_888_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5294430o
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
_user_specified_namelstm_888_input
?8
?
while_body_5294113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_889_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_889_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_889_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_889_matmul_readvariableop_resource:	d?G
4while_lstm_cell_889_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_889_biasadd_readvariableop_resource:	???*while/lstm_cell_889/BiasAdd/ReadVariableOp?)while/lstm_cell_889/MatMul/ReadVariableOp?+while/lstm_cell_889/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_889/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_889_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_889/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_889_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_889/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_889/addAddV2$while/lstm_cell_889/MatMul:product:0&while/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_889_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_889/BiasAddBiasAddwhile/lstm_cell_889/add:z:02while/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_889/splitSplit,while/lstm_cell_889/split/split_dim:output:0$while/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_889/SigmoidSigmoid"while/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_1Sigmoid"while/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mulMul!while/lstm_cell_889/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_889/ReluRelu"while/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_1Mulwhile/lstm_cell_889/Sigmoid:y:0&while/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/add_1AddV2while/lstm_cell_889/mul:z:0while/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_2Sigmoid"while/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_889/Relu_1Reluwhile/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_2Mul!while/lstm_cell_889/Sigmoid_2:y:0(while/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_889/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_889/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_889/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_889/BiasAdd/ReadVariableOp*^while/lstm_cell_889/MatMul/ReadVariableOp,^while/lstm_cell_889/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_889_biasadd_readvariableop_resource5while_lstm_cell_889_biasadd_readvariableop_resource_0"n
4while_lstm_cell_889_matmul_1_readvariableop_resource6while_lstm_cell_889_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_889_matmul_readvariableop_resource4while_lstm_cell_889_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_889/BiasAdd/ReadVariableOp*while/lstm_cell_889/BiasAdd/ReadVariableOp2V
)while/lstm_cell_889/MatMul/ReadVariableOp)while/lstm_cell_889/MatMul/ReadVariableOp2Z
+while/lstm_cell_889/MatMul_1/ReadVariableOp+while/lstm_cell_889/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5297105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5297105___redundant_placeholder05
1while_while_cond_5297105___redundant_placeholder15
1while_while_cond_5297105___redundant_placeholder25
1while_while_cond_5297105___redundant_placeholder3
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
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5297418

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

?
lstm_889_while_cond_5295255.
*lstm_889_while_lstm_889_while_loop_counter4
0lstm_889_while_lstm_889_while_maximum_iterations
lstm_889_while_placeholder 
lstm_889_while_placeholder_1 
lstm_889_while_placeholder_2 
lstm_889_while_placeholder_30
,lstm_889_while_less_lstm_889_strided_slice_1G
Clstm_889_while_lstm_889_while_cond_5295255___redundant_placeholder0G
Clstm_889_while_lstm_889_while_cond_5295255___redundant_placeholder1G
Clstm_889_while_lstm_889_while_cond_5295255___redundant_placeholder2G
Clstm_889_while_lstm_889_while_cond_5295255___redundant_placeholder3
lstm_889_while_identity
?
lstm_889/while/LessLesslstm_889_while_placeholder,lstm_889_while_less_lstm_889_strided_slice_1*
T0*
_output_shapes
: ]
lstm_889/while/IdentityIdentitylstm_889/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_889_while_identity lstm_889/while/Identity:output:0*(
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
*sequential_296_lstm_890_while_cond_5292226L
Hsequential_296_lstm_890_while_sequential_296_lstm_890_while_loop_counterR
Nsequential_296_lstm_890_while_sequential_296_lstm_890_while_maximum_iterations-
)sequential_296_lstm_890_while_placeholder/
+sequential_296_lstm_890_while_placeholder_1/
+sequential_296_lstm_890_while_placeholder_2/
+sequential_296_lstm_890_while_placeholder_3N
Jsequential_296_lstm_890_while_less_sequential_296_lstm_890_strided_slice_1e
asequential_296_lstm_890_while_sequential_296_lstm_890_while_cond_5292226___redundant_placeholder0e
asequential_296_lstm_890_while_sequential_296_lstm_890_while_cond_5292226___redundant_placeholder1e
asequential_296_lstm_890_while_sequential_296_lstm_890_while_cond_5292226___redundant_placeholder2e
asequential_296_lstm_890_while_sequential_296_lstm_890_while_cond_5292226___redundant_placeholder3*
&sequential_296_lstm_890_while_identity
?
"sequential_296/lstm_890/while/LessLess)sequential_296_lstm_890_while_placeholderJsequential_296_lstm_890_while_less_sequential_296_lstm_890_strided_slice_1*
T0*
_output_shapes
: {
&sequential_296/lstm_890/while/IdentityIdentity&sequential_296/lstm_890/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_296_lstm_890_while_identity/sequential_296/lstm_890/while/Identity:output:0*(
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
0__inference_sequential_296_layer_call_fn_5293866
lstm_888_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_888_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5293841o
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
_user_specified_namelstm_888_input
?8
?
while_body_5296820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_890_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_890_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_890_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_890_matmul_readvariableop_resource:2(F
4while_lstm_cell_890_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_890_biasadd_readvariableop_resource:(??*while/lstm_cell_890/BiasAdd/ReadVariableOp?)while/lstm_cell_890/MatMul/ReadVariableOp?+while/lstm_cell_890/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_890/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_890_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_890/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_890_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_890/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_890/addAddV2$while/lstm_cell_890/MatMul:product:0&while/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_890_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_890/BiasAddBiasAddwhile/lstm_cell_890/add:z:02while/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_890/splitSplit,while/lstm_cell_890/split/split_dim:output:0$while/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_890/SigmoidSigmoid"while/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_1Sigmoid"while/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mulMul!while/lstm_cell_890/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_890/ReluRelu"while/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_1Mulwhile/lstm_cell_890/Sigmoid:y:0&while/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/add_1AddV2while/lstm_cell_890/mul:z:0while/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_2Sigmoid"while/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_890/Relu_1Reluwhile/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_2Mul!while/lstm_cell_890/Sigmoid_2:y:0(while/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_890/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_890/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_890/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_890/BiasAdd/ReadVariableOp*^while/lstm_cell_890/MatMul/ReadVariableOp,^while/lstm_cell_890/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_890_biasadd_readvariableop_resource5while_lstm_cell_890_biasadd_readvariableop_resource_0"n
4while_lstm_cell_890_matmul_1_readvariableop_resource6while_lstm_cell_890_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_890_matmul_readvariableop_resource4while_lstm_cell_890_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_890/BiasAdd/ReadVariableOp*while/lstm_cell_890/BiasAdd/ReadVariableOp2V
)while/lstm_cell_890/MatMul/ReadVariableOp)while/lstm_cell_890/MatMul/ReadVariableOp2Z
+while/lstm_cell_890/MatMul_1/ReadVariableOp+while/lstm_cell_890/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5293666

inputs?
,lstm_cell_889_matmul_readvariableop_resource:	d?A
.lstm_cell_889_matmul_1_readvariableop_resource:	2?<
-lstm_cell_889_biasadd_readvariableop_resource:	?
identity??$lstm_cell_889/BiasAdd/ReadVariableOp?#lstm_cell_889/MatMul/ReadVariableOp?%lstm_cell_889/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_889/MatMul/ReadVariableOpReadVariableOp,lstm_cell_889_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_889/MatMulMatMulstrided_slice_2:output:0+lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_889_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_889/MatMul_1MatMulzeros:output:0-lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_889/addAddV2lstm_cell_889/MatMul:product:0 lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_889_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_889/BiasAddBiasAddlstm_cell_889/add:z:0,lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_889/splitSplit&lstm_cell_889/split/split_dim:output:0lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_889/SigmoidSigmoidlstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_1Sigmoidlstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_889/mulMullstm_cell_889/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_889/ReluRelulstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_1Mullstm_cell_889/Sigmoid:y:0 lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_889/add_1AddV2lstm_cell_889/mul:z:0lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_2Sigmoidlstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_889/Relu_1Relulstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_2Mullstm_cell_889/Sigmoid_2:y:0"lstm_cell_889/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_889_matmul_readvariableop_resource.lstm_cell_889_matmul_1_readvariableop_resource-lstm_cell_889_biasadd_readvariableop_resource*
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
while_body_5293582*
condR
while_cond_5293581*K
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
NoOpNoOp%^lstm_cell_889/BiasAdd/ReadVariableOp$^lstm_cell_889/MatMul/ReadVariableOp&^lstm_cell_889/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_889/BiasAdd/ReadVariableOp$lstm_cell_889/BiasAdd/ReadVariableOp2J
#lstm_cell_889/MatMul/ReadVariableOp#lstm_cell_889/MatMul/ReadVariableOp2N
%lstm_cell_889/MatMul_1/ReadVariableOp%lstm_cell_889/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_890_while_cond_5295394.
*lstm_890_while_lstm_890_while_loop_counter4
0lstm_890_while_lstm_890_while_maximum_iterations
lstm_890_while_placeholder 
lstm_890_while_placeholder_1 
lstm_890_while_placeholder_2 
lstm_890_while_placeholder_30
,lstm_890_while_less_lstm_890_strided_slice_1G
Clstm_890_while_lstm_890_while_cond_5295394___redundant_placeholder0G
Clstm_890_while_lstm_890_while_cond_5295394___redundant_placeholder1G
Clstm_890_while_lstm_890_while_cond_5295394___redundant_placeholder2G
Clstm_890_while_lstm_890_while_cond_5295394___redundant_placeholder3
lstm_890_while_identity
?
lstm_890/while/LessLesslstm_890_while_placeholder,lstm_890_while_less_lstm_890_strided_slice_1*
T0*
_output_shapes
: ]
lstm_890/while/IdentityIdentitylstm_890/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_890_while_identity lstm_890/while/Identity:output:0*(
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
*__inference_lstm_888_layer_call_fn_5295507
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5292658|
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
?
?
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5292880

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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5292658

inputs(
lstm_cell_888_5292576:	?(
lstm_cell_888_5292578:	d?$
lstm_cell_888_5292580:	?
identity??%lstm_cell_888/StatefulPartitionedCall?while;
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
%lstm_cell_888/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_888_5292576lstm_cell_888_5292578lstm_cell_888_5292580*
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
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5292530n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_888_5292576lstm_cell_888_5292578lstm_cell_888_5292580*
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
while_body_5292589*
condR
while_cond_5292588*K
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
NoOpNoOp&^lstm_cell_888/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_888/StatefulPartitionedCall%lstm_cell_888/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_889_layer_call_fn_5296112
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5292817|
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
while_body_5292398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_888_5292422_0:	?0
while_lstm_cell_888_5292424_0:	d?,
while_lstm_cell_888_5292426_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_888_5292422:	?.
while_lstm_cell_888_5292424:	d?*
while_lstm_cell_888_5292426:	???+while/lstm_cell_888/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_888/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_888_5292422_0while_lstm_cell_888_5292424_0while_lstm_cell_888_5292426_0*
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
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5292384?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_888/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_888/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_888/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_888/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_888_5292422while_lstm_cell_888_5292422_0"<
while_lstm_cell_888_5292424while_lstm_cell_888_5292424_0"<
while_lstm_cell_888_5292426while_lstm_cell_888_5292426_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_888/StatefulPartitionedCall+while/lstm_cell_888/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_890_layer_call_fn_5296761

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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5294032o
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

lstm_889_while_body_5295256.
*lstm_889_while_lstm_889_while_loop_counter4
0lstm_889_while_lstm_889_while_maximum_iterations
lstm_889_while_placeholder 
lstm_889_while_placeholder_1 
lstm_889_while_placeholder_2 
lstm_889_while_placeholder_3-
)lstm_889_while_lstm_889_strided_slice_1_0i
elstm_889_while_tensorarrayv2read_tensorlistgetitem_lstm_889_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_889_while_lstm_cell_889_matmul_readvariableop_resource_0:	d?R
?lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource_0:	2?M
>lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource_0:	?
lstm_889_while_identity
lstm_889_while_identity_1
lstm_889_while_identity_2
lstm_889_while_identity_3
lstm_889_while_identity_4
lstm_889_while_identity_5+
'lstm_889_while_lstm_889_strided_slice_1g
clstm_889_while_tensorarrayv2read_tensorlistgetitem_lstm_889_tensorarrayunstack_tensorlistfromtensorN
;lstm_889_while_lstm_cell_889_matmul_readvariableop_resource:	d?P
=lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource:	2?K
<lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource:	???3lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp?2lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp?4lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp?
@lstm_889/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_889/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_889_while_tensorarrayv2read_tensorlistgetitem_lstm_889_tensorarrayunstack_tensorlistfromtensor_0lstm_889_while_placeholderIlstm_889/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_889/while/lstm_cell_889/MatMul/ReadVariableOpReadVariableOp=lstm_889_while_lstm_cell_889_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_889/while/lstm_cell_889/MatMulMatMul9lstm_889/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp?lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_889/while/lstm_cell_889/MatMul_1MatMullstm_889_while_placeholder_2<lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_889/while/lstm_cell_889/addAddV2-lstm_889/while/lstm_cell_889/MatMul:product:0/lstm_889/while/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp>lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_889/while/lstm_cell_889/BiasAddBiasAdd$lstm_889/while/lstm_cell_889/add:z:0;lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_889/while/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_889/while/lstm_cell_889/splitSplit5lstm_889/while/lstm_cell_889/split/split_dim:output:0-lstm_889/while/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_889/while/lstm_cell_889/SigmoidSigmoid+lstm_889/while/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_889/while/lstm_cell_889/Sigmoid_1Sigmoid+lstm_889/while/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_889/while/lstm_cell_889/mulMul*lstm_889/while/lstm_cell_889/Sigmoid_1:y:0lstm_889_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_889/while/lstm_cell_889/ReluRelu+lstm_889/while/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_889/while/lstm_cell_889/mul_1Mul(lstm_889/while/lstm_cell_889/Sigmoid:y:0/lstm_889/while/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_889/while/lstm_cell_889/add_1AddV2$lstm_889/while/lstm_cell_889/mul:z:0&lstm_889/while/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_889/while/lstm_cell_889/Sigmoid_2Sigmoid+lstm_889/while/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_889/while/lstm_cell_889/Relu_1Relu&lstm_889/while/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_889/while/lstm_cell_889/mul_2Mul*lstm_889/while/lstm_cell_889/Sigmoid_2:y:01lstm_889/while/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_889/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_889_while_placeholder_1lstm_889_while_placeholder&lstm_889/while/lstm_cell_889/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_889/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_889/while/addAddV2lstm_889_while_placeholderlstm_889/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_889/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_889/while/add_1AddV2*lstm_889_while_lstm_889_while_loop_counterlstm_889/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_889/while/IdentityIdentitylstm_889/while/add_1:z:0^lstm_889/while/NoOp*
T0*
_output_shapes
: ?
lstm_889/while/Identity_1Identity0lstm_889_while_lstm_889_while_maximum_iterations^lstm_889/while/NoOp*
T0*
_output_shapes
: t
lstm_889/while/Identity_2Identitylstm_889/while/add:z:0^lstm_889/while/NoOp*
T0*
_output_shapes
: ?
lstm_889/while/Identity_3IdentityClstm_889/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_889/while/NoOp*
T0*
_output_shapes
: ?
lstm_889/while/Identity_4Identity&lstm_889/while/lstm_cell_889/mul_2:z:0^lstm_889/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_889/while/Identity_5Identity&lstm_889/while/lstm_cell_889/add_1:z:0^lstm_889/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_889/while/NoOpNoOp4^lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp3^lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp5^lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_889_while_identity lstm_889/while/Identity:output:0"?
lstm_889_while_identity_1"lstm_889/while/Identity_1:output:0"?
lstm_889_while_identity_2"lstm_889/while/Identity_2:output:0"?
lstm_889_while_identity_3"lstm_889/while/Identity_3:output:0"?
lstm_889_while_identity_4"lstm_889/while/Identity_4:output:0"?
lstm_889_while_identity_5"lstm_889/while/Identity_5:output:0"T
'lstm_889_while_lstm_889_strided_slice_1)lstm_889_while_lstm_889_strided_slice_1_0"~
<lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource>lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource_0"?
=lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource?lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource_0"|
;lstm_889_while_lstm_cell_889_matmul_readvariableop_resource=lstm_889_while_lstm_cell_889_matmul_readvariableop_resource_0"?
clstm_889_while_tensorarrayv2read_tensorlistgetitem_lstm_889_tensorarrayunstack_tensorlistfromtensorelstm_889_while_tensorarrayv2read_tensorlistgetitem_lstm_889_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp3lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp2h
2lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp2lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp2l
4lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp4lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5295731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_888_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_888_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_888_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_888_matmul_readvariableop_resource:	?G
4while_lstm_cell_888_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_888_biasadd_readvariableop_resource:	???*while/lstm_cell_888/BiasAdd/ReadVariableOp?)while/lstm_cell_888/MatMul/ReadVariableOp?+while/lstm_cell_888/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_888/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_888_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_888/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_888_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_888/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_888/addAddV2$while/lstm_cell_888/MatMul:product:0&while/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_888_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_888/BiasAddBiasAddwhile/lstm_cell_888/add:z:02while/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_888/splitSplit,while/lstm_cell_888/split/split_dim:output:0$while/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_888/SigmoidSigmoid"while/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_1Sigmoid"while/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mulMul!while/lstm_cell_888/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_888/ReluRelu"while/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_1Mulwhile/lstm_cell_888/Sigmoid:y:0&while/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/add_1AddV2while/lstm_cell_888/mul:z:0while/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_2Sigmoid"while/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_888/Relu_1Reluwhile/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_2Mul!while/lstm_cell_888/Sigmoid_2:y:0(while/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_888/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_888/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_888/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_888/BiasAdd/ReadVariableOp*^while/lstm_cell_888/MatMul/ReadVariableOp,^while/lstm_cell_888/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_888_biasadd_readvariableop_resource5while_lstm_cell_888_biasadd_readvariableop_resource_0"n
4while_lstm_cell_888_matmul_1_readvariableop_resource6while_lstm_cell_888_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_888_matmul_readvariableop_resource4while_lstm_cell_888_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_888/BiasAdd/ReadVariableOp*while/lstm_cell_888/BiasAdd/ReadVariableOp2V
)while/lstm_cell_888/MatMul/ReadVariableOp)while/lstm_cell_888/MatMul/ReadVariableOp2Z
+while/lstm_cell_888/MatMul_1/ReadVariableOp+while/lstm_cell_888/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5292939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_889_5292963_0:	d?0
while_lstm_cell_889_5292965_0:	2?,
while_lstm_cell_889_5292967_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_889_5292963:	d?.
while_lstm_cell_889_5292965:	2?*
while_lstm_cell_889_5292967:	???+while/lstm_cell_889/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_889/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_889_5292963_0while_lstm_cell_889_5292965_0while_lstm_cell_889_5292967_0*
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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5292880?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_889/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_889/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_889/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_889/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_889_5292963while_lstm_cell_889_5292963_0"<
while_lstm_cell_889_5292965while_lstm_cell_889_5292965_0"<
while_lstm_cell_889_5292967while_lstm_cell_889_5292967_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_889/StatefulPartitionedCall+while/lstm_cell_889/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5293816

inputs>
,lstm_cell_890_matmul_readvariableop_resource:2(@
.lstm_cell_890_matmul_1_readvariableop_resource:
(;
-lstm_cell_890_biasadd_readvariableop_resource:(
identity??$lstm_cell_890/BiasAdd/ReadVariableOp?#lstm_cell_890/MatMul/ReadVariableOp?%lstm_cell_890/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_890/MatMul/ReadVariableOpReadVariableOp,lstm_cell_890_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_890/MatMulMatMulstrided_slice_2:output:0+lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_890_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_890/MatMul_1MatMulzeros:output:0-lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_890/addAddV2lstm_cell_890/MatMul:product:0 lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_890_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_890/BiasAddBiasAddlstm_cell_890/add:z:0,lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_890/splitSplit&lstm_cell_890/split/split_dim:output:0lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_890/SigmoidSigmoidlstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_1Sigmoidlstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_890/mulMullstm_cell_890/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_890/ReluRelulstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_1Mullstm_cell_890/Sigmoid:y:0 lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_890/add_1AddV2lstm_cell_890/mul:z:0lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_2Sigmoidlstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_890/Relu_1Relulstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_2Mullstm_cell_890/Sigmoid_2:y:0"lstm_cell_890/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_890_matmul_readvariableop_resource.lstm_cell_890_matmul_1_readvariableop_resource-lstm_cell_890_biasadd_readvariableop_resource*
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
while_body_5293732*
condR
while_cond_5293731*K
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
NoOpNoOp%^lstm_cell_890/BiasAdd/ReadVariableOp$^lstm_cell_890/MatMul/ReadVariableOp&^lstm_cell_890/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_890/BiasAdd/ReadVariableOp$lstm_cell_890/BiasAdd/ReadVariableOp2J
#lstm_cell_890/MatMul/ReadVariableOp#lstm_cell_890/MatMul/ReadVariableOp2N
%lstm_cell_890/MatMul_1/ReadVariableOp%lstm_cell_890/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_890_layer_call_and_return_conditional_losses_5294032

inputs>
,lstm_cell_890_matmul_readvariableop_resource:2(@
.lstm_cell_890_matmul_1_readvariableop_resource:
(;
-lstm_cell_890_biasadd_readvariableop_resource:(
identity??$lstm_cell_890/BiasAdd/ReadVariableOp?#lstm_cell_890/MatMul/ReadVariableOp?%lstm_cell_890/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_890/MatMul/ReadVariableOpReadVariableOp,lstm_cell_890_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_890/MatMulMatMulstrided_slice_2:output:0+lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_890_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_890/MatMul_1MatMulzeros:output:0-lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_890/addAddV2lstm_cell_890/MatMul:product:0 lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_890_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_890/BiasAddBiasAddlstm_cell_890/add:z:0,lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_890/splitSplit&lstm_cell_890/split/split_dim:output:0lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_890/SigmoidSigmoidlstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_1Sigmoidlstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_890/mulMullstm_cell_890/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_890/ReluRelulstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_1Mullstm_cell_890/Sigmoid:y:0 lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_890/add_1AddV2lstm_cell_890/mul:z:0lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_2Sigmoidlstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_890/Relu_1Relulstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_2Mullstm_cell_890/Sigmoid_2:y:0"lstm_cell_890/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_890_matmul_readvariableop_resource.lstm_cell_890_matmul_1_readvariableop_resource-lstm_cell_890_biasadd_readvariableop_resource*
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
while_body_5293948*
condR
while_cond_5293947*K
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
NoOpNoOp%^lstm_cell_890/BiasAdd/ReadVariableOp$^lstm_cell_890/MatMul/ReadVariableOp&^lstm_cell_890/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_890/BiasAdd/ReadVariableOp$lstm_cell_890/BiasAdd/ReadVariableOp2J
#lstm_cell_890/MatMul/ReadVariableOp#lstm_cell_890/MatMul/ReadVariableOp2N
%lstm_cell_890/MatMul_1/ReadVariableOp%lstm_cell_890/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_5294112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5294112___redundant_placeholder05
1while_while_cond_5294112___redundant_placeholder15
1while_while_cond_5294112___redundant_placeholder25
1while_while_cond_5294112___redundant_placeholder3
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
while_cond_5293731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5293731___redundant_placeholder05
1while_while_cond_5293731___redundant_placeholder15
1while_while_cond_5293731___redundant_placeholder25
1while_while_cond_5293731___redundant_placeholder3
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
*sequential_296_lstm_890_while_body_5292227L
Hsequential_296_lstm_890_while_sequential_296_lstm_890_while_loop_counterR
Nsequential_296_lstm_890_while_sequential_296_lstm_890_while_maximum_iterations-
)sequential_296_lstm_890_while_placeholder/
+sequential_296_lstm_890_while_placeholder_1/
+sequential_296_lstm_890_while_placeholder_2/
+sequential_296_lstm_890_while_placeholder_3K
Gsequential_296_lstm_890_while_sequential_296_lstm_890_strided_slice_1_0?
?sequential_296_lstm_890_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_890_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_296_lstm_890_while_lstm_cell_890_matmul_readvariableop_resource_0:2(`
Nsequential_296_lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource_0:
([
Msequential_296_lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource_0:(*
&sequential_296_lstm_890_while_identity,
(sequential_296_lstm_890_while_identity_1,
(sequential_296_lstm_890_while_identity_2,
(sequential_296_lstm_890_while_identity_3,
(sequential_296_lstm_890_while_identity_4,
(sequential_296_lstm_890_while_identity_5I
Esequential_296_lstm_890_while_sequential_296_lstm_890_strided_slice_1?
?sequential_296_lstm_890_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_890_tensorarrayunstack_tensorlistfromtensor\
Jsequential_296_lstm_890_while_lstm_cell_890_matmul_readvariableop_resource:2(^
Lsequential_296_lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource:
(Y
Ksequential_296_lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource:(??Bsequential_296/lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp?Asequential_296/lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp?Csequential_296/lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp?
Osequential_296/lstm_890/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_296/lstm_890/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_296_lstm_890_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_890_tensorarrayunstack_tensorlistfromtensor_0)sequential_296_lstm_890_while_placeholderXsequential_296/lstm_890/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_296/lstm_890/while/lstm_cell_890/MatMul/ReadVariableOpReadVariableOpLsequential_296_lstm_890_while_lstm_cell_890_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_296/lstm_890/while/lstm_cell_890/MatMulMatMulHsequential_296/lstm_890/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_296/lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_296/lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOpNsequential_296_lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_296/lstm_890/while/lstm_cell_890/MatMul_1MatMul+sequential_296_lstm_890_while_placeholder_2Ksequential_296/lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_296/lstm_890/while/lstm_cell_890/addAddV2<sequential_296/lstm_890/while/lstm_cell_890/MatMul:product:0>sequential_296/lstm_890/while/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_296/lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOpMsequential_296_lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_296/lstm_890/while/lstm_cell_890/BiasAddBiasAdd3sequential_296/lstm_890/while/lstm_cell_890/add:z:0Jsequential_296/lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_296/lstm_890/while/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_296/lstm_890/while/lstm_cell_890/splitSplitDsequential_296/lstm_890/while/lstm_cell_890/split/split_dim:output:0<sequential_296/lstm_890/while/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_296/lstm_890/while/lstm_cell_890/SigmoidSigmoid:sequential_296/lstm_890/while/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_296/lstm_890/while/lstm_cell_890/Sigmoid_1Sigmoid:sequential_296/lstm_890/while/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_296/lstm_890/while/lstm_cell_890/mulMul9sequential_296/lstm_890/while/lstm_cell_890/Sigmoid_1:y:0+sequential_296_lstm_890_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_296/lstm_890/while/lstm_cell_890/ReluRelu:sequential_296/lstm_890/while/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_296/lstm_890/while/lstm_cell_890/mul_1Mul7sequential_296/lstm_890/while/lstm_cell_890/Sigmoid:y:0>sequential_296/lstm_890/while/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_296/lstm_890/while/lstm_cell_890/add_1AddV23sequential_296/lstm_890/while/lstm_cell_890/mul:z:05sequential_296/lstm_890/while/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_296/lstm_890/while/lstm_cell_890/Sigmoid_2Sigmoid:sequential_296/lstm_890/while/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_296/lstm_890/while/lstm_cell_890/Relu_1Relu5sequential_296/lstm_890/while/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_296/lstm_890/while/lstm_cell_890/mul_2Mul9sequential_296/lstm_890/while/lstm_cell_890/Sigmoid_2:y:0@sequential_296/lstm_890/while/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_296/lstm_890/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_296_lstm_890_while_placeholder_1)sequential_296_lstm_890_while_placeholder5sequential_296/lstm_890/while/lstm_cell_890/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_296/lstm_890/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_296/lstm_890/while/addAddV2)sequential_296_lstm_890_while_placeholder,sequential_296/lstm_890/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_296/lstm_890/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_296/lstm_890/while/add_1AddV2Hsequential_296_lstm_890_while_sequential_296_lstm_890_while_loop_counter.sequential_296/lstm_890/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_296/lstm_890/while/IdentityIdentity'sequential_296/lstm_890/while/add_1:z:0#^sequential_296/lstm_890/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_890/while/Identity_1IdentityNsequential_296_lstm_890_while_sequential_296_lstm_890_while_maximum_iterations#^sequential_296/lstm_890/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_890/while/Identity_2Identity%sequential_296/lstm_890/while/add:z:0#^sequential_296/lstm_890/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_890/while/Identity_3IdentityRsequential_296/lstm_890/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_296/lstm_890/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_890/while/Identity_4Identity5sequential_296/lstm_890/while/lstm_cell_890/mul_2:z:0#^sequential_296/lstm_890/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_296/lstm_890/while/Identity_5Identity5sequential_296/lstm_890/while/lstm_cell_890/add_1:z:0#^sequential_296/lstm_890/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_296/lstm_890/while/NoOpNoOpC^sequential_296/lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOpB^sequential_296/lstm_890/while/lstm_cell_890/MatMul/ReadVariableOpD^sequential_296/lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_296_lstm_890_while_identity/sequential_296/lstm_890/while/Identity:output:0"]
(sequential_296_lstm_890_while_identity_11sequential_296/lstm_890/while/Identity_1:output:0"]
(sequential_296_lstm_890_while_identity_21sequential_296/lstm_890/while/Identity_2:output:0"]
(sequential_296_lstm_890_while_identity_31sequential_296/lstm_890/while/Identity_3:output:0"]
(sequential_296_lstm_890_while_identity_41sequential_296/lstm_890/while/Identity_4:output:0"]
(sequential_296_lstm_890_while_identity_51sequential_296/lstm_890/while/Identity_5:output:0"?
Ksequential_296_lstm_890_while_lstm_cell_890_biasadd_readvariableop_resourceMsequential_296_lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource_0"?
Lsequential_296_lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resourceNsequential_296_lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource_0"?
Jsequential_296_lstm_890_while_lstm_cell_890_matmul_readvariableop_resourceLsequential_296_lstm_890_while_lstm_cell_890_matmul_readvariableop_resource_0"?
Esequential_296_lstm_890_while_sequential_296_lstm_890_strided_slice_1Gsequential_296_lstm_890_while_sequential_296_lstm_890_strided_slice_1_0"?
?sequential_296_lstm_890_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_890_tensorarrayunstack_tensorlistfromtensor?sequential_296_lstm_890_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_890_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_296/lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOpBsequential_296/lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp2?
Asequential_296/lstm_890/while/lstm_cell_890/MatMul/ReadVariableOpAsequential_296/lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp2?
Csequential_296/lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOpCsequential_296/lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5297047
inputs_0>
,lstm_cell_890_matmul_readvariableop_resource:2(@
.lstm_cell_890_matmul_1_readvariableop_resource:
(;
-lstm_cell_890_biasadd_readvariableop_resource:(
identity??$lstm_cell_890/BiasAdd/ReadVariableOp?#lstm_cell_890/MatMul/ReadVariableOp?%lstm_cell_890/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_890/MatMul/ReadVariableOpReadVariableOp,lstm_cell_890_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_890/MatMulMatMulstrided_slice_2:output:0+lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_890_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_890/MatMul_1MatMulzeros:output:0-lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_890/addAddV2lstm_cell_890/MatMul:product:0 lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_890_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_890/BiasAddBiasAddlstm_cell_890/add:z:0,lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_890/splitSplit&lstm_cell_890/split/split_dim:output:0lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_890/SigmoidSigmoidlstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_1Sigmoidlstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_890/mulMullstm_cell_890/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_890/ReluRelulstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_1Mullstm_cell_890/Sigmoid:y:0 lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_890/add_1AddV2lstm_cell_890/mul:z:0lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_2Sigmoidlstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_890/Relu_1Relulstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_2Mullstm_cell_890/Sigmoid_2:y:0"lstm_cell_890/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_890_matmul_readvariableop_resource.lstm_cell_890_matmul_1_readvariableop_resource-lstm_cell_890_biasadd_readvariableop_resource*
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
while_body_5296963*
condR
while_cond_5296962*K
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
NoOpNoOp%^lstm_cell_890/BiasAdd/ReadVariableOp$^lstm_cell_890/MatMul/ReadVariableOp&^lstm_cell_890/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_890/BiasAdd/ReadVariableOp$lstm_cell_890/BiasAdd/ReadVariableOp2J
#lstm_cell_890/MatMul/ReadVariableOp#lstm_cell_890/MatMul/ReadVariableOp2N
%lstm_cell_890/MatMul_1/ReadVariableOp%lstm_cell_890/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_888_layer_call_and_return_conditional_losses_5296101

inputs?
,lstm_cell_888_matmul_readvariableop_resource:	?A
.lstm_cell_888_matmul_1_readvariableop_resource:	d?<
-lstm_cell_888_biasadd_readvariableop_resource:	?
identity??$lstm_cell_888/BiasAdd/ReadVariableOp?#lstm_cell_888/MatMul/ReadVariableOp?%lstm_cell_888/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_888/MatMul/ReadVariableOpReadVariableOp,lstm_cell_888_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_888/MatMulMatMulstrided_slice_2:output:0+lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_888_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_888/MatMul_1MatMulzeros:output:0-lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_888/addAddV2lstm_cell_888/MatMul:product:0 lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_888_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_888/BiasAddBiasAddlstm_cell_888/add:z:0,lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_888/splitSplit&lstm_cell_888/split/split_dim:output:0lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_888/SigmoidSigmoidlstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_1Sigmoidlstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_888/mulMullstm_cell_888/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_888/ReluRelulstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_1Mullstm_cell_888/Sigmoid:y:0 lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_888/add_1AddV2lstm_cell_888/mul:z:0lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_2Sigmoidlstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_888/Relu_1Relulstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_2Mullstm_cell_888/Sigmoid_2:y:0"lstm_cell_888/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_888_matmul_readvariableop_resource.lstm_cell_888_matmul_1_readvariableop_resource-lstm_cell_888_biasadd_readvariableop_resource*
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
while_body_5296017*
condR
while_cond_5296016*K
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
NoOpNoOp%^lstm_cell_888/BiasAdd/ReadVariableOp$^lstm_cell_888/MatMul/ReadVariableOp&^lstm_cell_888/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_888/BiasAdd/ReadVariableOp$lstm_cell_888/BiasAdd/ReadVariableOp2J
#lstm_cell_888/MatMul/ReadVariableOp#lstm_cell_888/MatMul/ReadVariableOp2N
%lstm_cell_888/MatMul_1/ReadVariableOp%lstm_cell_888/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5292397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5292397___redundant_placeholder05
1while_while_cond_5292397___redundant_placeholder15
1while_while_cond_5292397___redundant_placeholder25
1while_while_cond_5292397___redundant_placeholder3
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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5293230

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
?W
?
 __inference__traced_save_5297789
file_prefix/
+savev2_dense_296_kernel_read_readvariableop-
)savev2_dense_296_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_888_lstm_cell_888_kernel_read_readvariableopF
Bsavev2_lstm_888_lstm_cell_888_recurrent_kernel_read_readvariableop:
6savev2_lstm_888_lstm_cell_888_bias_read_readvariableop<
8savev2_lstm_889_lstm_cell_889_kernel_read_readvariableopF
Bsavev2_lstm_889_lstm_cell_889_recurrent_kernel_read_readvariableop:
6savev2_lstm_889_lstm_cell_889_bias_read_readvariableop<
8savev2_lstm_890_lstm_cell_890_kernel_read_readvariableopF
Bsavev2_lstm_890_lstm_cell_890_recurrent_kernel_read_readvariableop:
6savev2_lstm_890_lstm_cell_890_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_296_kernel_m_read_readvariableop4
0savev2_adam_dense_296_bias_m_read_readvariableopC
?savev2_adam_lstm_888_lstm_cell_888_kernel_m_read_readvariableopM
Isavev2_adam_lstm_888_lstm_cell_888_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_888_lstm_cell_888_bias_m_read_readvariableopC
?savev2_adam_lstm_889_lstm_cell_889_kernel_m_read_readvariableopM
Isavev2_adam_lstm_889_lstm_cell_889_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_889_lstm_cell_889_bias_m_read_readvariableopC
?savev2_adam_lstm_890_lstm_cell_890_kernel_m_read_readvariableopM
Isavev2_adam_lstm_890_lstm_cell_890_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_890_lstm_cell_890_bias_m_read_readvariableop6
2savev2_adam_dense_296_kernel_v_read_readvariableop4
0savev2_adam_dense_296_bias_v_read_readvariableopC
?savev2_adam_lstm_888_lstm_cell_888_kernel_v_read_readvariableopM
Isavev2_adam_lstm_888_lstm_cell_888_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_888_lstm_cell_888_bias_v_read_readvariableopC
?savev2_adam_lstm_889_lstm_cell_889_kernel_v_read_readvariableopM
Isavev2_adam_lstm_889_lstm_cell_889_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_889_lstm_cell_889_bias_v_read_readvariableopC
?savev2_adam_lstm_890_lstm_cell_890_kernel_v_read_readvariableopM
Isavev2_adam_lstm_890_lstm_cell_890_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_890_lstm_cell_890_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_296_kernel_read_readvariableop)savev2_dense_296_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_888_lstm_cell_888_kernel_read_readvariableopBsavev2_lstm_888_lstm_cell_888_recurrent_kernel_read_readvariableop6savev2_lstm_888_lstm_cell_888_bias_read_readvariableop8savev2_lstm_889_lstm_cell_889_kernel_read_readvariableopBsavev2_lstm_889_lstm_cell_889_recurrent_kernel_read_readvariableop6savev2_lstm_889_lstm_cell_889_bias_read_readvariableop8savev2_lstm_890_lstm_cell_890_kernel_read_readvariableopBsavev2_lstm_890_lstm_cell_890_recurrent_kernel_read_readvariableop6savev2_lstm_890_lstm_cell_890_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_296_kernel_m_read_readvariableop0savev2_adam_dense_296_bias_m_read_readvariableop?savev2_adam_lstm_888_lstm_cell_888_kernel_m_read_readvariableopIsavev2_adam_lstm_888_lstm_cell_888_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_888_lstm_cell_888_bias_m_read_readvariableop?savev2_adam_lstm_889_lstm_cell_889_kernel_m_read_readvariableopIsavev2_adam_lstm_889_lstm_cell_889_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_889_lstm_cell_889_bias_m_read_readvariableop?savev2_adam_lstm_890_lstm_cell_890_kernel_m_read_readvariableopIsavev2_adam_lstm_890_lstm_cell_890_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_890_lstm_cell_890_bias_m_read_readvariableop2savev2_adam_dense_296_kernel_v_read_readvariableop0savev2_adam_dense_296_bias_v_read_readvariableop?savev2_adam_lstm_888_lstm_cell_888_kernel_v_read_readvariableopIsavev2_adam_lstm_888_lstm_cell_888_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_888_lstm_cell_888_bias_v_read_readvariableop?savev2_adam_lstm_889_lstm_cell_889_kernel_v_read_readvariableopIsavev2_adam_lstm_889_lstm_cell_889_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_889_lstm_cell_889_bias_v_read_readvariableop?savev2_adam_lstm_890_lstm_cell_890_kernel_v_read_readvariableopIsavev2_adam_lstm_890_lstm_cell_890_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_890_lstm_cell_890_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_5293947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5293947___redundant_placeholder05
1while_while_cond_5293947___redundant_placeholder15
1while_while_cond_5293947___redundant_placeholder25
1while_while_cond_5293947___redundant_placeholder3
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
while_body_5293582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_889_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_889_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_889_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_889_matmul_readvariableop_resource:	d?G
4while_lstm_cell_889_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_889_biasadd_readvariableop_resource:	???*while/lstm_cell_889/BiasAdd/ReadVariableOp?)while/lstm_cell_889/MatMul/ReadVariableOp?+while/lstm_cell_889/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_889/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_889_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_889/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_889_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_889/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_889/addAddV2$while/lstm_cell_889/MatMul:product:0&while/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_889_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_889/BiasAddBiasAddwhile/lstm_cell_889/add:z:02while/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_889/splitSplit,while/lstm_cell_889/split/split_dim:output:0$while/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_889/SigmoidSigmoid"while/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_1Sigmoid"while/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mulMul!while/lstm_cell_889/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_889/ReluRelu"while/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_1Mulwhile/lstm_cell_889/Sigmoid:y:0&while/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/add_1AddV2while/lstm_cell_889/mul:z:0while/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_2Sigmoid"while/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_889/Relu_1Reluwhile/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_2Mul!while/lstm_cell_889/Sigmoid_2:y:0(while/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_889/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_889/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_889/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_889/BiasAdd/ReadVariableOp*^while/lstm_cell_889/MatMul/ReadVariableOp,^while/lstm_cell_889/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_889_biasadd_readvariableop_resource5while_lstm_cell_889_biasadd_readvariableop_resource_0"n
4while_lstm_cell_889_matmul_1_readvariableop_resource6while_lstm_cell_889_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_889_matmul_readvariableop_resource4while_lstm_cell_889_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_889/BiasAdd/ReadVariableOp*while/lstm_cell_889/BiasAdd/ReadVariableOp2V
)while/lstm_cell_889/MatMul/ReadVariableOp)while/lstm_cell_889/MatMul/ReadVariableOp2Z
+while/lstm_cell_889/MatMul_1/ReadVariableOp+while/lstm_cell_889/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_888_layer_call_fn_5295529

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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5294362s
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
/__inference_lstm_cell_888_layer_call_fn_5297386

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
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5292530o
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

lstm_889_while_body_5294829.
*lstm_889_while_lstm_889_while_loop_counter4
0lstm_889_while_lstm_889_while_maximum_iterations
lstm_889_while_placeholder 
lstm_889_while_placeholder_1 
lstm_889_while_placeholder_2 
lstm_889_while_placeholder_3-
)lstm_889_while_lstm_889_strided_slice_1_0i
elstm_889_while_tensorarrayv2read_tensorlistgetitem_lstm_889_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_889_while_lstm_cell_889_matmul_readvariableop_resource_0:	d?R
?lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource_0:	2?M
>lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource_0:	?
lstm_889_while_identity
lstm_889_while_identity_1
lstm_889_while_identity_2
lstm_889_while_identity_3
lstm_889_while_identity_4
lstm_889_while_identity_5+
'lstm_889_while_lstm_889_strided_slice_1g
clstm_889_while_tensorarrayv2read_tensorlistgetitem_lstm_889_tensorarrayunstack_tensorlistfromtensorN
;lstm_889_while_lstm_cell_889_matmul_readvariableop_resource:	d?P
=lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource:	2?K
<lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource:	???3lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp?2lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp?4lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp?
@lstm_889/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_889/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_889_while_tensorarrayv2read_tensorlistgetitem_lstm_889_tensorarrayunstack_tensorlistfromtensor_0lstm_889_while_placeholderIlstm_889/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_889/while/lstm_cell_889/MatMul/ReadVariableOpReadVariableOp=lstm_889_while_lstm_cell_889_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_889/while/lstm_cell_889/MatMulMatMul9lstm_889/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp?lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_889/while/lstm_cell_889/MatMul_1MatMullstm_889_while_placeholder_2<lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_889/while/lstm_cell_889/addAddV2-lstm_889/while/lstm_cell_889/MatMul:product:0/lstm_889/while/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp>lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_889/while/lstm_cell_889/BiasAddBiasAdd$lstm_889/while/lstm_cell_889/add:z:0;lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_889/while/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_889/while/lstm_cell_889/splitSplit5lstm_889/while/lstm_cell_889/split/split_dim:output:0-lstm_889/while/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_889/while/lstm_cell_889/SigmoidSigmoid+lstm_889/while/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_889/while/lstm_cell_889/Sigmoid_1Sigmoid+lstm_889/while/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_889/while/lstm_cell_889/mulMul*lstm_889/while/lstm_cell_889/Sigmoid_1:y:0lstm_889_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_889/while/lstm_cell_889/ReluRelu+lstm_889/while/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_889/while/lstm_cell_889/mul_1Mul(lstm_889/while/lstm_cell_889/Sigmoid:y:0/lstm_889/while/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_889/while/lstm_cell_889/add_1AddV2$lstm_889/while/lstm_cell_889/mul:z:0&lstm_889/while/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_889/while/lstm_cell_889/Sigmoid_2Sigmoid+lstm_889/while/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_889/while/lstm_cell_889/Relu_1Relu&lstm_889/while/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_889/while/lstm_cell_889/mul_2Mul*lstm_889/while/lstm_cell_889/Sigmoid_2:y:01lstm_889/while/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_889/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_889_while_placeholder_1lstm_889_while_placeholder&lstm_889/while/lstm_cell_889/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_889/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_889/while/addAddV2lstm_889_while_placeholderlstm_889/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_889/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_889/while/add_1AddV2*lstm_889_while_lstm_889_while_loop_counterlstm_889/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_889/while/IdentityIdentitylstm_889/while/add_1:z:0^lstm_889/while/NoOp*
T0*
_output_shapes
: ?
lstm_889/while/Identity_1Identity0lstm_889_while_lstm_889_while_maximum_iterations^lstm_889/while/NoOp*
T0*
_output_shapes
: t
lstm_889/while/Identity_2Identitylstm_889/while/add:z:0^lstm_889/while/NoOp*
T0*
_output_shapes
: ?
lstm_889/while/Identity_3IdentityClstm_889/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_889/while/NoOp*
T0*
_output_shapes
: ?
lstm_889/while/Identity_4Identity&lstm_889/while/lstm_cell_889/mul_2:z:0^lstm_889/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_889/while/Identity_5Identity&lstm_889/while/lstm_cell_889/add_1:z:0^lstm_889/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_889/while/NoOpNoOp4^lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp3^lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp5^lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_889_while_identity lstm_889/while/Identity:output:0"?
lstm_889_while_identity_1"lstm_889/while/Identity_1:output:0"?
lstm_889_while_identity_2"lstm_889/while/Identity_2:output:0"?
lstm_889_while_identity_3"lstm_889/while/Identity_3:output:0"?
lstm_889_while_identity_4"lstm_889/while/Identity_4:output:0"?
lstm_889_while_identity_5"lstm_889/while/Identity_5:output:0"T
'lstm_889_while_lstm_889_strided_slice_1)lstm_889_while_lstm_889_strided_slice_1_0"~
<lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource>lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource_0"?
=lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource?lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource_0"|
;lstm_889_while_lstm_cell_889_matmul_readvariableop_resource=lstm_889_while_lstm_cell_889_matmul_readvariableop_resource_0"?
clstm_889_while_tensorarrayv2read_tensorlistgetitem_lstm_889_tensorarrayunstack_tensorlistfromtensorelstm_889_while_tensorarrayv2read_tensorlistgetitem_lstm_889_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp3lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp2h
2lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp2lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp2l
4lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp4lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5296490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_889_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_889_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_889_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_889_matmul_readvariableop_resource:	d?G
4while_lstm_cell_889_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_889_biasadd_readvariableop_resource:	???*while/lstm_cell_889/BiasAdd/ReadVariableOp?)while/lstm_cell_889/MatMul/ReadVariableOp?+while/lstm_cell_889/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_889/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_889_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_889/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_889_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_889/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_889/addAddV2$while/lstm_cell_889/MatMul:product:0&while/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_889_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_889/BiasAddBiasAddwhile/lstm_cell_889/add:z:02while/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_889/splitSplit,while/lstm_cell_889/split/split_dim:output:0$while/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_889/SigmoidSigmoid"while/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_1Sigmoid"while/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mulMul!while/lstm_cell_889/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_889/ReluRelu"while/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_1Mulwhile/lstm_cell_889/Sigmoid:y:0&while/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/add_1AddV2while/lstm_cell_889/mul:z:0while/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_2Sigmoid"while/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_889/Relu_1Reluwhile/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_2Mul!while/lstm_cell_889/Sigmoid_2:y:0(while/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_889/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_889/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_889/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_889/BiasAdd/ReadVariableOp*^while/lstm_cell_889/MatMul/ReadVariableOp,^while/lstm_cell_889/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_889_biasadd_readvariableop_resource5while_lstm_cell_889_biasadd_readvariableop_resource_0"n
4while_lstm_cell_889_matmul_1_readvariableop_resource6while_lstm_cell_889_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_889_matmul_readvariableop_resource4while_lstm_cell_889_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_889/BiasAdd/ReadVariableOp*while/lstm_cell_889/BiasAdd/ReadVariableOp2V
)while/lstm_cell_889/MatMul/ReadVariableOp)while/lstm_cell_889/MatMul/ReadVariableOp2Z
+while/lstm_cell_889/MatMul_1/ReadVariableOp+while/lstm_cell_889/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5295874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_888_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_888_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_888_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_888_matmul_readvariableop_resource:	?G
4while_lstm_cell_888_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_888_biasadd_readvariableop_resource:	???*while/lstm_cell_888/BiasAdd/ReadVariableOp?)while/lstm_cell_888/MatMul/ReadVariableOp?+while/lstm_cell_888/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_888/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_888_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_888/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_888_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_888/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_888/addAddV2$while/lstm_cell_888/MatMul:product:0&while/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_888_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_888/BiasAddBiasAddwhile/lstm_cell_888/add:z:02while/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_888/splitSplit,while/lstm_cell_888/split/split_dim:output:0$while/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_888/SigmoidSigmoid"while/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_1Sigmoid"while/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mulMul!while/lstm_cell_888/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_888/ReluRelu"while/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_1Mulwhile/lstm_cell_888/Sigmoid:y:0&while/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/add_1AddV2while/lstm_cell_888/mul:z:0while/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_2Sigmoid"while/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_888/Relu_1Reluwhile/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_2Mul!while/lstm_cell_888/Sigmoid_2:y:0(while/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_888/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_888/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_888/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_888/BiasAdd/ReadVariableOp*^while/lstm_cell_888/MatMul/ReadVariableOp,^while/lstm_cell_888/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_888_biasadd_readvariableop_resource5while_lstm_cell_888_biasadd_readvariableop_resource_0"n
4while_lstm_cell_888_matmul_1_readvariableop_resource6while_lstm_cell_888_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_888_matmul_readvariableop_resource4while_lstm_cell_888_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_888/BiasAdd/ReadVariableOp*while/lstm_cell_888/BiasAdd/ReadVariableOp2V
)while/lstm_cell_888/MatMul/ReadVariableOp)while/lstm_cell_888/MatMul/ReadVariableOp2Z
+while/lstm_cell_888/MatMul_1/ReadVariableOp+while/lstm_cell_888/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5293841

inputs#
lstm_888_5293517:	?#
lstm_888_5293519:	d?
lstm_888_5293521:	?#
lstm_889_5293667:	d?#
lstm_889_5293669:	2?
lstm_889_5293671:	?"
lstm_890_5293817:2("
lstm_890_5293819:
(
lstm_890_5293821:(#
dense_296_5293835:

dense_296_5293837:
identity??!dense_296/StatefulPartitionedCall? lstm_888/StatefulPartitionedCall? lstm_889/StatefulPartitionedCall? lstm_890/StatefulPartitionedCall?
 lstm_888/StatefulPartitionedCallStatefulPartitionedCallinputslstm_888_5293517lstm_888_5293519lstm_888_5293521*
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5293516?
 lstm_889/StatefulPartitionedCallStatefulPartitionedCall)lstm_888/StatefulPartitionedCall:output:0lstm_889_5293667lstm_889_5293669lstm_889_5293671*
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5293666?
 lstm_890/StatefulPartitionedCallStatefulPartitionedCall)lstm_889/StatefulPartitionedCall:output:0lstm_890_5293817lstm_890_5293819lstm_890_5293821*
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5293816?
!dense_296/StatefulPartitionedCallStatefulPartitionedCall)lstm_890/StatefulPartitionedCall:output:0dense_296_5293835dense_296_5293837*
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
F__inference_dense_296_layer_call_and_return_conditional_losses_5293834y
IdentityIdentity*dense_296/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_296/StatefulPartitionedCall!^lstm_888/StatefulPartitionedCall!^lstm_889/StatefulPartitionedCall!^lstm_890/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_296/StatefulPartitionedCall!dense_296/StatefulPartitionedCall2D
 lstm_888/StatefulPartitionedCall lstm_888/StatefulPartitionedCall2D
 lstm_889/StatefulPartitionedCall lstm_889/StatefulPartitionedCall2D
 lstm_890/StatefulPartitionedCall lstm_890/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5293097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5293097___redundant_placeholder05
1while_while_cond_5293097___redundant_placeholder15
1while_while_cond_5293097___redundant_placeholder25
1while_while_cond_5293097___redundant_placeholder3
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5294197

inputs?
,lstm_cell_889_matmul_readvariableop_resource:	d?A
.lstm_cell_889_matmul_1_readvariableop_resource:	2?<
-lstm_cell_889_biasadd_readvariableop_resource:	?
identity??$lstm_cell_889/BiasAdd/ReadVariableOp?#lstm_cell_889/MatMul/ReadVariableOp?%lstm_cell_889/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_889/MatMul/ReadVariableOpReadVariableOp,lstm_cell_889_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_889/MatMulMatMulstrided_slice_2:output:0+lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_889_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_889/MatMul_1MatMulzeros:output:0-lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_889/addAddV2lstm_cell_889/MatMul:product:0 lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_889_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_889/BiasAddBiasAddlstm_cell_889/add:z:0,lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_889/splitSplit&lstm_cell_889/split/split_dim:output:0lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_889/SigmoidSigmoidlstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_1Sigmoidlstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_889/mulMullstm_cell_889/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_889/ReluRelulstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_1Mullstm_cell_889/Sigmoid:y:0 lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_889/add_1AddV2lstm_cell_889/mul:z:0lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_2Sigmoidlstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_889/Relu_1Relulstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_2Mullstm_cell_889/Sigmoid_2:y:0"lstm_cell_889/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_889_matmul_readvariableop_resource.lstm_cell_889_matmul_1_readvariableop_resource-lstm_cell_889_biasadd_readvariableop_resource*
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
while_body_5294113*
condR
while_cond_5294112*K
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
NoOpNoOp%^lstm_cell_889/BiasAdd/ReadVariableOp$^lstm_cell_889/MatMul/ReadVariableOp&^lstm_cell_889/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_889/BiasAdd/ReadVariableOp$lstm_cell_889/BiasAdd/ReadVariableOp2J
#lstm_cell_889/MatMul/ReadVariableOp#lstm_cell_889/MatMul/ReadVariableOp2N
%lstm_cell_889/MatMul_1/ReadVariableOp%lstm_cell_889/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_5297248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5297248___redundant_placeholder05
1while_while_cond_5297248___redundant_placeholder15
1while_while_cond_5297248___redundant_placeholder25
1while_while_cond_5297248___redundant_placeholder3
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
while_body_5296633
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_889_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_889_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_889_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_889_matmul_readvariableop_resource:	d?G
4while_lstm_cell_889_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_889_biasadd_readvariableop_resource:	???*while/lstm_cell_889/BiasAdd/ReadVariableOp?)while/lstm_cell_889/MatMul/ReadVariableOp?+while/lstm_cell_889/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_889/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_889_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_889/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_889_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_889/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_889/addAddV2$while/lstm_cell_889/MatMul:product:0&while/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_889_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_889/BiasAddBiasAddwhile/lstm_cell_889/add:z:02while/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_889/splitSplit,while/lstm_cell_889/split/split_dim:output:0$while/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_889/SigmoidSigmoid"while/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_1Sigmoid"while/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mulMul!while/lstm_cell_889/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_889/ReluRelu"while/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_1Mulwhile/lstm_cell_889/Sigmoid:y:0&while/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/add_1AddV2while/lstm_cell_889/mul:z:0while/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_2Sigmoid"while/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_889/Relu_1Reluwhile/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_2Mul!while/lstm_cell_889/Sigmoid_2:y:0(while/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_889/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_889/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_889/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_889/BiasAdd/ReadVariableOp*^while/lstm_cell_889/MatMul/ReadVariableOp,^while/lstm_cell_889/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_889_biasadd_readvariableop_resource5while_lstm_cell_889_biasadd_readvariableop_resource_0"n
4while_lstm_cell_889_matmul_1_readvariableop_resource6while_lstm_cell_889_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_889_matmul_readvariableop_resource4while_lstm_cell_889_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_889/BiasAdd/ReadVariableOp*while/lstm_cell_889/BiasAdd/ReadVariableOp2V
)while/lstm_cell_889/MatMul/ReadVariableOp)while/lstm_cell_889/MatMul/ReadVariableOp2Z
+while/lstm_cell_889/MatMul_1/ReadVariableOp+while/lstm_cell_889/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_890_while_cond_5294967.
*lstm_890_while_lstm_890_while_loop_counter4
0lstm_890_while_lstm_890_while_maximum_iterations
lstm_890_while_placeholder 
lstm_890_while_placeholder_1 
lstm_890_while_placeholder_2 
lstm_890_while_placeholder_30
,lstm_890_while_less_lstm_890_strided_slice_1G
Clstm_890_while_lstm_890_while_cond_5294967___redundant_placeholder0G
Clstm_890_while_lstm_890_while_cond_5294967___redundant_placeholder1G
Clstm_890_while_lstm_890_while_cond_5294967___redundant_placeholder2G
Clstm_890_while_lstm_890_while_cond_5294967___redundant_placeholder3
lstm_890_while_identity
?
lstm_890/while/LessLesslstm_890_while_placeholder,lstm_890_while_less_lstm_890_strided_slice_1*
T0*
_output_shapes
: ]
lstm_890/while/IdentityIdentitylstm_890/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_890_while_identity lstm_890/while/Identity:output:0*(
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5295815
inputs_0?
,lstm_cell_888_matmul_readvariableop_resource:	?A
.lstm_cell_888_matmul_1_readvariableop_resource:	d?<
-lstm_cell_888_biasadd_readvariableop_resource:	?
identity??$lstm_cell_888/BiasAdd/ReadVariableOp?#lstm_cell_888/MatMul/ReadVariableOp?%lstm_cell_888/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_888/MatMul/ReadVariableOpReadVariableOp,lstm_cell_888_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_888/MatMulMatMulstrided_slice_2:output:0+lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_888_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_888/MatMul_1MatMulzeros:output:0-lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_888/addAddV2lstm_cell_888/MatMul:product:0 lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_888_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_888/BiasAddBiasAddlstm_cell_888/add:z:0,lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_888/splitSplit&lstm_cell_888/split/split_dim:output:0lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_888/SigmoidSigmoidlstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_1Sigmoidlstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_888/mulMullstm_cell_888/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_888/ReluRelulstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_1Mullstm_cell_888/Sigmoid:y:0 lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_888/add_1AddV2lstm_cell_888/mul:z:0lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_2Sigmoidlstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_888/Relu_1Relulstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_2Mullstm_cell_888/Sigmoid_2:y:0"lstm_cell_888/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_888_matmul_readvariableop_resource.lstm_cell_888_matmul_1_readvariableop_resource-lstm_cell_888_biasadd_readvariableop_resource*
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
while_body_5295731*
condR
while_cond_5295730*K
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
NoOpNoOp%^lstm_cell_888/BiasAdd/ReadVariableOp$^lstm_cell_888/MatMul/ReadVariableOp&^lstm_cell_888/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_888/BiasAdd/ReadVariableOp$lstm_cell_888/BiasAdd/ReadVariableOp2J
#lstm_cell_888/MatMul/ReadVariableOp#lstm_cell_888/MatMul/ReadVariableOp2N
%lstm_cell_888/MatMul_1/ReadVariableOp%lstm_cell_888/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_5296489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5296489___redundant_placeholder05
1while_while_cond_5296489___redundant_placeholder15
1while_while_cond_5296489___redundant_placeholder25
1while_while_cond_5296489___redundant_placeholder3
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5295958

inputs?
,lstm_cell_888_matmul_readvariableop_resource:	?A
.lstm_cell_888_matmul_1_readvariableop_resource:	d?<
-lstm_cell_888_biasadd_readvariableop_resource:	?
identity??$lstm_cell_888/BiasAdd/ReadVariableOp?#lstm_cell_888/MatMul/ReadVariableOp?%lstm_cell_888/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_888/MatMul/ReadVariableOpReadVariableOp,lstm_cell_888_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_888/MatMulMatMulstrided_slice_2:output:0+lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_888_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_888/MatMul_1MatMulzeros:output:0-lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_888/addAddV2lstm_cell_888/MatMul:product:0 lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_888_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_888/BiasAddBiasAddlstm_cell_888/add:z:0,lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_888/splitSplit&lstm_cell_888/split/split_dim:output:0lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_888/SigmoidSigmoidlstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_1Sigmoidlstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_888/mulMullstm_cell_888/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_888/ReluRelulstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_1Mullstm_cell_888/Sigmoid:y:0 lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_888/add_1AddV2lstm_cell_888/mul:z:0lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_2Sigmoidlstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_888/Relu_1Relulstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_2Mullstm_cell_888/Sigmoid_2:y:0"lstm_cell_888/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_888_matmul_readvariableop_resource.lstm_cell_888_matmul_1_readvariableop_resource-lstm_cell_888_biasadd_readvariableop_resource*
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
while_body_5295874*
condR
while_cond_5295873*K
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
NoOpNoOp%^lstm_cell_888/BiasAdd/ReadVariableOp$^lstm_cell_888/MatMul/ReadVariableOp&^lstm_cell_888/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_888/BiasAdd/ReadVariableOp$lstm_cell_888/BiasAdd/ReadVariableOp2J
#lstm_cell_888/MatMul/ReadVariableOp#lstm_cell_888/MatMul/ReadVariableOp2N
%lstm_cell_888/MatMul_1/ReadVariableOp%lstm_cell_888/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_890_while_body_5294968.
*lstm_890_while_lstm_890_while_loop_counter4
0lstm_890_while_lstm_890_while_maximum_iterations
lstm_890_while_placeholder 
lstm_890_while_placeholder_1 
lstm_890_while_placeholder_2 
lstm_890_while_placeholder_3-
)lstm_890_while_lstm_890_strided_slice_1_0i
elstm_890_while_tensorarrayv2read_tensorlistgetitem_lstm_890_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_890_while_lstm_cell_890_matmul_readvariableop_resource_0:2(Q
?lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource_0:
(L
>lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource_0:(
lstm_890_while_identity
lstm_890_while_identity_1
lstm_890_while_identity_2
lstm_890_while_identity_3
lstm_890_while_identity_4
lstm_890_while_identity_5+
'lstm_890_while_lstm_890_strided_slice_1g
clstm_890_while_tensorarrayv2read_tensorlistgetitem_lstm_890_tensorarrayunstack_tensorlistfromtensorM
;lstm_890_while_lstm_cell_890_matmul_readvariableop_resource:2(O
=lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource:
(J
<lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource:(??3lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp?2lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp?4lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp?
@lstm_890/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_890/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_890_while_tensorarrayv2read_tensorlistgetitem_lstm_890_tensorarrayunstack_tensorlistfromtensor_0lstm_890_while_placeholderIlstm_890/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_890/while/lstm_cell_890/MatMul/ReadVariableOpReadVariableOp=lstm_890_while_lstm_cell_890_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_890/while/lstm_cell_890/MatMulMatMul9lstm_890/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp?lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_890/while/lstm_cell_890/MatMul_1MatMullstm_890_while_placeholder_2<lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_890/while/lstm_cell_890/addAddV2-lstm_890/while/lstm_cell_890/MatMul:product:0/lstm_890/while/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp>lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_890/while/lstm_cell_890/BiasAddBiasAdd$lstm_890/while/lstm_cell_890/add:z:0;lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_890/while/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_890/while/lstm_cell_890/splitSplit5lstm_890/while/lstm_cell_890/split/split_dim:output:0-lstm_890/while/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_890/while/lstm_cell_890/SigmoidSigmoid+lstm_890/while/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_890/while/lstm_cell_890/Sigmoid_1Sigmoid+lstm_890/while/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_890/while/lstm_cell_890/mulMul*lstm_890/while/lstm_cell_890/Sigmoid_1:y:0lstm_890_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_890/while/lstm_cell_890/ReluRelu+lstm_890/while/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_890/while/lstm_cell_890/mul_1Mul(lstm_890/while/lstm_cell_890/Sigmoid:y:0/lstm_890/while/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_890/while/lstm_cell_890/add_1AddV2$lstm_890/while/lstm_cell_890/mul:z:0&lstm_890/while/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_890/while/lstm_cell_890/Sigmoid_2Sigmoid+lstm_890/while/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_890/while/lstm_cell_890/Relu_1Relu&lstm_890/while/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_890/while/lstm_cell_890/mul_2Mul*lstm_890/while/lstm_cell_890/Sigmoid_2:y:01lstm_890/while/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_890/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_890_while_placeholder_1lstm_890_while_placeholder&lstm_890/while/lstm_cell_890/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_890/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_890/while/addAddV2lstm_890_while_placeholderlstm_890/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_890/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_890/while/add_1AddV2*lstm_890_while_lstm_890_while_loop_counterlstm_890/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_890/while/IdentityIdentitylstm_890/while/add_1:z:0^lstm_890/while/NoOp*
T0*
_output_shapes
: ?
lstm_890/while/Identity_1Identity0lstm_890_while_lstm_890_while_maximum_iterations^lstm_890/while/NoOp*
T0*
_output_shapes
: t
lstm_890/while/Identity_2Identitylstm_890/while/add:z:0^lstm_890/while/NoOp*
T0*
_output_shapes
: ?
lstm_890/while/Identity_3IdentityClstm_890/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_890/while/NoOp*
T0*
_output_shapes
: ?
lstm_890/while/Identity_4Identity&lstm_890/while/lstm_cell_890/mul_2:z:0^lstm_890/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_890/while/Identity_5Identity&lstm_890/while/lstm_cell_890/add_1:z:0^lstm_890/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_890/while/NoOpNoOp4^lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp3^lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp5^lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_890_while_identity lstm_890/while/Identity:output:0"?
lstm_890_while_identity_1"lstm_890/while/Identity_1:output:0"?
lstm_890_while_identity_2"lstm_890/while/Identity_2:output:0"?
lstm_890_while_identity_3"lstm_890/while/Identity_3:output:0"?
lstm_890_while_identity_4"lstm_890/while/Identity_4:output:0"?
lstm_890_while_identity_5"lstm_890/while/Identity_5:output:0"T
'lstm_890_while_lstm_890_strided_slice_1)lstm_890_while_lstm_890_strided_slice_1_0"~
<lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource>lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource_0"?
=lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource?lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource_0"|
;lstm_890_while_lstm_cell_890_matmul_readvariableop_resource=lstm_890_while_lstm_cell_890_matmul_readvariableop_resource_0"?
clstm_890_while_tensorarrayv2read_tensorlistgetitem_lstm_890_tensorarrayunstack_tensorlistfromtensorelstm_890_while_tensorarrayv2read_tensorlistgetitem_lstm_890_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp3lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp2h
2lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp2lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp2l
4lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp4lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5297646

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
?#
?
while_body_5292589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_888_5292613_0:	?0
while_lstm_cell_888_5292615_0:	d?,
while_lstm_cell_888_5292617_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_888_5292613:	?.
while_lstm_cell_888_5292615:	d?*
while_lstm_cell_888_5292617:	???+while/lstm_cell_888/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_888/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_888_5292613_0while_lstm_cell_888_5292615_0while_lstm_cell_888_5292617_0*
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
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5292530?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_888/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_888/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_888/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_888/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_888_5292613while_lstm_cell_888_5292613_0"<
while_lstm_cell_888_5292615while_lstm_cell_888_5292615_0"<
while_lstm_cell_888_5292617while_lstm_cell_888_5292617_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_888/StatefulPartitionedCall+while/lstm_cell_888/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_890_while_body_5295395.
*lstm_890_while_lstm_890_while_loop_counter4
0lstm_890_while_lstm_890_while_maximum_iterations
lstm_890_while_placeholder 
lstm_890_while_placeholder_1 
lstm_890_while_placeholder_2 
lstm_890_while_placeholder_3-
)lstm_890_while_lstm_890_strided_slice_1_0i
elstm_890_while_tensorarrayv2read_tensorlistgetitem_lstm_890_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_890_while_lstm_cell_890_matmul_readvariableop_resource_0:2(Q
?lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource_0:
(L
>lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource_0:(
lstm_890_while_identity
lstm_890_while_identity_1
lstm_890_while_identity_2
lstm_890_while_identity_3
lstm_890_while_identity_4
lstm_890_while_identity_5+
'lstm_890_while_lstm_890_strided_slice_1g
clstm_890_while_tensorarrayv2read_tensorlistgetitem_lstm_890_tensorarrayunstack_tensorlistfromtensorM
;lstm_890_while_lstm_cell_890_matmul_readvariableop_resource:2(O
=lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource:
(J
<lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource:(??3lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp?2lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp?4lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp?
@lstm_890/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_890/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_890_while_tensorarrayv2read_tensorlistgetitem_lstm_890_tensorarrayunstack_tensorlistfromtensor_0lstm_890_while_placeholderIlstm_890/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_890/while/lstm_cell_890/MatMul/ReadVariableOpReadVariableOp=lstm_890_while_lstm_cell_890_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_890/while/lstm_cell_890/MatMulMatMul9lstm_890/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp?lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_890/while/lstm_cell_890/MatMul_1MatMullstm_890_while_placeholder_2<lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_890/while/lstm_cell_890/addAddV2-lstm_890/while/lstm_cell_890/MatMul:product:0/lstm_890/while/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp>lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_890/while/lstm_cell_890/BiasAddBiasAdd$lstm_890/while/lstm_cell_890/add:z:0;lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_890/while/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_890/while/lstm_cell_890/splitSplit5lstm_890/while/lstm_cell_890/split/split_dim:output:0-lstm_890/while/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_890/while/lstm_cell_890/SigmoidSigmoid+lstm_890/while/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_890/while/lstm_cell_890/Sigmoid_1Sigmoid+lstm_890/while/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_890/while/lstm_cell_890/mulMul*lstm_890/while/lstm_cell_890/Sigmoid_1:y:0lstm_890_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_890/while/lstm_cell_890/ReluRelu+lstm_890/while/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_890/while/lstm_cell_890/mul_1Mul(lstm_890/while/lstm_cell_890/Sigmoid:y:0/lstm_890/while/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_890/while/lstm_cell_890/add_1AddV2$lstm_890/while/lstm_cell_890/mul:z:0&lstm_890/while/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_890/while/lstm_cell_890/Sigmoid_2Sigmoid+lstm_890/while/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_890/while/lstm_cell_890/Relu_1Relu&lstm_890/while/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_890/while/lstm_cell_890/mul_2Mul*lstm_890/while/lstm_cell_890/Sigmoid_2:y:01lstm_890/while/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_890/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_890_while_placeholder_1lstm_890_while_placeholder&lstm_890/while/lstm_cell_890/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_890/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_890/while/addAddV2lstm_890_while_placeholderlstm_890/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_890/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_890/while/add_1AddV2*lstm_890_while_lstm_890_while_loop_counterlstm_890/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_890/while/IdentityIdentitylstm_890/while/add_1:z:0^lstm_890/while/NoOp*
T0*
_output_shapes
: ?
lstm_890/while/Identity_1Identity0lstm_890_while_lstm_890_while_maximum_iterations^lstm_890/while/NoOp*
T0*
_output_shapes
: t
lstm_890/while/Identity_2Identitylstm_890/while/add:z:0^lstm_890/while/NoOp*
T0*
_output_shapes
: ?
lstm_890/while/Identity_3IdentityClstm_890/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_890/while/NoOp*
T0*
_output_shapes
: ?
lstm_890/while/Identity_4Identity&lstm_890/while/lstm_cell_890/mul_2:z:0^lstm_890/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_890/while/Identity_5Identity&lstm_890/while/lstm_cell_890/add_1:z:0^lstm_890/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_890/while/NoOpNoOp4^lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp3^lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp5^lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_890_while_identity lstm_890/while/Identity:output:0"?
lstm_890_while_identity_1"lstm_890/while/Identity_1:output:0"?
lstm_890_while_identity_2"lstm_890/while/Identity_2:output:0"?
lstm_890_while_identity_3"lstm_890/while/Identity_3:output:0"?
lstm_890_while_identity_4"lstm_890/while/Identity_4:output:0"?
lstm_890_while_identity_5"lstm_890/while/Identity_5:output:0"T
'lstm_890_while_lstm_890_strided_slice_1)lstm_890_while_lstm_890_strided_slice_1_0"~
<lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource>lstm_890_while_lstm_cell_890_biasadd_readvariableop_resource_0"?
=lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource?lstm_890_while_lstm_cell_890_matmul_1_readvariableop_resource_0"|
;lstm_890_while_lstm_cell_890_matmul_readvariableop_resource=lstm_890_while_lstm_cell_890_matmul_readvariableop_resource_0"?
clstm_890_while_tensorarrayv2read_tensorlistgetitem_lstm_890_tensorarrayunstack_tensorlistfromtensorelstm_890_while_tensorarrayv2read_tensorlistgetitem_lstm_890_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp3lstm_890/while/lstm_cell_890/BiasAdd/ReadVariableOp2h
2lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp2lstm_890/while/lstm_cell_890/MatMul/ReadVariableOp2l
4lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp4lstm_890/while/lstm_cell_890/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_888_layer_call_fn_5295518

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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5293516s
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
while_body_5296347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_889_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_889_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_889_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_889_matmul_readvariableop_resource:	d?G
4while_lstm_cell_889_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_889_biasadd_readvariableop_resource:	???*while/lstm_cell_889/BiasAdd/ReadVariableOp?)while/lstm_cell_889/MatMul/ReadVariableOp?+while/lstm_cell_889/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_889/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_889_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_889/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_889_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_889/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_889/addAddV2$while/lstm_cell_889/MatMul:product:0&while/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_889_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_889/BiasAddBiasAddwhile/lstm_cell_889/add:z:02while/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_889/splitSplit,while/lstm_cell_889/split/split_dim:output:0$while/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_889/SigmoidSigmoid"while/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_1Sigmoid"while/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mulMul!while/lstm_cell_889/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_889/ReluRelu"while/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_1Mulwhile/lstm_cell_889/Sigmoid:y:0&while/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/add_1AddV2while/lstm_cell_889/mul:z:0while/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_2Sigmoid"while/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_889/Relu_1Reluwhile/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_2Mul!while/lstm_cell_889/Sigmoid_2:y:0(while/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_889/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_889/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_889/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_889/BiasAdd/ReadVariableOp*^while/lstm_cell_889/MatMul/ReadVariableOp,^while/lstm_cell_889/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_889_biasadd_readvariableop_resource5while_lstm_cell_889_biasadd_readvariableop_resource_0"n
4while_lstm_cell_889_matmul_1_readvariableop_resource6while_lstm_cell_889_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_889_matmul_readvariableop_resource4while_lstm_cell_889_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_889/BiasAdd/ReadVariableOp*while/lstm_cell_889/BiasAdd/ReadVariableOp2V
)while/lstm_cell_889/MatMul/ReadVariableOp)while/lstm_cell_889/MatMul/ReadVariableOp2Z
+while/lstm_cell_889/MatMul_1/ReadVariableOp+while/lstm_cell_889/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5292817

inputs(
lstm_cell_889_5292735:	d?(
lstm_cell_889_5292737:	2?$
lstm_cell_889_5292739:	?
identity??%lstm_cell_889/StatefulPartitionedCall?while;
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
%lstm_cell_889/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_889_5292735lstm_cell_889_5292737lstm_cell_889_5292739*
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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5292734n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_889_5292735lstm_cell_889_5292737lstm_cell_889_5292739*
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
while_body_5292748*
condR
while_cond_5292747*K
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
NoOpNoOp&^lstm_cell_889/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_889/StatefulPartitionedCall%lstm_cell_889/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5297548

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
while_cond_5295730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5295730___redundant_placeholder05
1while_while_cond_5295730___redundant_placeholder15
1while_while_cond_5295730___redundant_placeholder25
1while_while_cond_5295730___redundant_placeholder3
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5293516

inputs?
,lstm_cell_888_matmul_readvariableop_resource:	?A
.lstm_cell_888_matmul_1_readvariableop_resource:	d?<
-lstm_cell_888_biasadd_readvariableop_resource:	?
identity??$lstm_cell_888/BiasAdd/ReadVariableOp?#lstm_cell_888/MatMul/ReadVariableOp?%lstm_cell_888/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_888/MatMul/ReadVariableOpReadVariableOp,lstm_cell_888_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_888/MatMulMatMulstrided_slice_2:output:0+lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_888_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_888/MatMul_1MatMulzeros:output:0-lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_888/addAddV2lstm_cell_888/MatMul:product:0 lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_888_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_888/BiasAddBiasAddlstm_cell_888/add:z:0,lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_888/splitSplit&lstm_cell_888/split/split_dim:output:0lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_888/SigmoidSigmoidlstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_1Sigmoidlstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_888/mulMullstm_cell_888/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_888/ReluRelulstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_1Mullstm_cell_888/Sigmoid:y:0 lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_888/add_1AddV2lstm_cell_888/mul:z:0lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_2Sigmoidlstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_888/Relu_1Relulstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_2Mullstm_cell_888/Sigmoid_2:y:0"lstm_cell_888/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_888_matmul_readvariableop_resource.lstm_cell_888_matmul_1_readvariableop_resource-lstm_cell_888_biasadd_readvariableop_resource*
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
while_body_5293432*
condR
while_cond_5293431*K
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
NoOpNoOp%^lstm_cell_888/BiasAdd/ReadVariableOp$^lstm_cell_888/MatMul/ReadVariableOp&^lstm_cell_888/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_888/BiasAdd/ReadVariableOp$lstm_cell_888/BiasAdd/ReadVariableOp2J
#lstm_cell_888/MatMul/ReadVariableOp#lstm_cell_888/MatMul/ReadVariableOp2N
%lstm_cell_888/MatMul_1/ReadVariableOp%lstm_cell_888/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_296_layer_call_and_return_conditional_losses_5295485

inputsH
5lstm_888_lstm_cell_888_matmul_readvariableop_resource:	?J
7lstm_888_lstm_cell_888_matmul_1_readvariableop_resource:	d?E
6lstm_888_lstm_cell_888_biasadd_readvariableop_resource:	?H
5lstm_889_lstm_cell_889_matmul_readvariableop_resource:	d?J
7lstm_889_lstm_cell_889_matmul_1_readvariableop_resource:	2?E
6lstm_889_lstm_cell_889_biasadd_readvariableop_resource:	?G
5lstm_890_lstm_cell_890_matmul_readvariableop_resource:2(I
7lstm_890_lstm_cell_890_matmul_1_readvariableop_resource:
(D
6lstm_890_lstm_cell_890_biasadd_readvariableop_resource:(:
(dense_296_matmul_readvariableop_resource:
7
)dense_296_biasadd_readvariableop_resource:
identity?? dense_296/BiasAdd/ReadVariableOp?dense_296/MatMul/ReadVariableOp?-lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp?,lstm_888/lstm_cell_888/MatMul/ReadVariableOp?.lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp?lstm_888/while?-lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp?,lstm_889/lstm_cell_889/MatMul/ReadVariableOp?.lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp?lstm_889/while?-lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp?,lstm_890/lstm_cell_890/MatMul/ReadVariableOp?.lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp?lstm_890/whileD
lstm_888/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_888/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_888/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_888/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_888/strided_sliceStridedSlicelstm_888/Shape:output:0%lstm_888/strided_slice/stack:output:0'lstm_888/strided_slice/stack_1:output:0'lstm_888/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_888/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_888/zeros/packedPacklstm_888/strided_slice:output:0 lstm_888/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_888/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_888/zerosFilllstm_888/zeros/packed:output:0lstm_888/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_888/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_888/zeros_1/packedPacklstm_888/strided_slice:output:0"lstm_888/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_888/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_888/zeros_1Fill lstm_888/zeros_1/packed:output:0lstm_888/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_888/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_888/transpose	Transposeinputs lstm_888/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_888/Shape_1Shapelstm_888/transpose:y:0*
T0*
_output_shapes
:h
lstm_888/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_888/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_888/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_888/strided_slice_1StridedSlicelstm_888/Shape_1:output:0'lstm_888/strided_slice_1/stack:output:0)lstm_888/strided_slice_1/stack_1:output:0)lstm_888/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_888/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_888/TensorArrayV2TensorListReserve-lstm_888/TensorArrayV2/element_shape:output:0!lstm_888/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_888/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_888/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_888/transpose:y:0Glstm_888/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_888/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_888/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_888/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_888/strided_slice_2StridedSlicelstm_888/transpose:y:0'lstm_888/strided_slice_2/stack:output:0)lstm_888/strided_slice_2/stack_1:output:0)lstm_888/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_888/lstm_cell_888/MatMul/ReadVariableOpReadVariableOp5lstm_888_lstm_cell_888_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_888/lstm_cell_888/MatMulMatMul!lstm_888/strided_slice_2:output:04lstm_888/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_888/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp7lstm_888_lstm_cell_888_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_888/lstm_cell_888/MatMul_1MatMullstm_888/zeros:output:06lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_888/lstm_cell_888/addAddV2'lstm_888/lstm_cell_888/MatMul:product:0)lstm_888/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_888/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp6lstm_888_lstm_cell_888_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_888/lstm_cell_888/BiasAddBiasAddlstm_888/lstm_cell_888/add:z:05lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_888/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_888/lstm_cell_888/splitSplit/lstm_888/lstm_cell_888/split/split_dim:output:0'lstm_888/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_888/lstm_cell_888/SigmoidSigmoid%lstm_888/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_888/lstm_cell_888/Sigmoid_1Sigmoid%lstm_888/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_888/lstm_cell_888/mulMul$lstm_888/lstm_cell_888/Sigmoid_1:y:0lstm_888/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_888/lstm_cell_888/ReluRelu%lstm_888/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_888/lstm_cell_888/mul_1Mul"lstm_888/lstm_cell_888/Sigmoid:y:0)lstm_888/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_888/lstm_cell_888/add_1AddV2lstm_888/lstm_cell_888/mul:z:0 lstm_888/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_888/lstm_cell_888/Sigmoid_2Sigmoid%lstm_888/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_888/lstm_cell_888/Relu_1Relu lstm_888/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_888/lstm_cell_888/mul_2Mul$lstm_888/lstm_cell_888/Sigmoid_2:y:0+lstm_888/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_888/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_888/TensorArrayV2_1TensorListReserve/lstm_888/TensorArrayV2_1/element_shape:output:0!lstm_888/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_888/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_888/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_888/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_888/whileWhile$lstm_888/while/loop_counter:output:0*lstm_888/while/maximum_iterations:output:0lstm_888/time:output:0!lstm_888/TensorArrayV2_1:handle:0lstm_888/zeros:output:0lstm_888/zeros_1:output:0!lstm_888/strided_slice_1:output:0@lstm_888/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_888_lstm_cell_888_matmul_readvariableop_resource7lstm_888_lstm_cell_888_matmul_1_readvariableop_resource6lstm_888_lstm_cell_888_biasadd_readvariableop_resource*
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
lstm_888_while_body_5295117*'
condR
lstm_888_while_cond_5295116*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_888/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_888/TensorArrayV2Stack/TensorListStackTensorListStacklstm_888/while:output:3Blstm_888/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_888/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_888/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_888/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_888/strided_slice_3StridedSlice4lstm_888/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_888/strided_slice_3/stack:output:0)lstm_888/strided_slice_3/stack_1:output:0)lstm_888/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_888/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_888/transpose_1	Transpose4lstm_888/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_888/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_888/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_889/ShapeShapelstm_888/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_889/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_889/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_889/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_889/strided_sliceStridedSlicelstm_889/Shape:output:0%lstm_889/strided_slice/stack:output:0'lstm_889/strided_slice/stack_1:output:0'lstm_889/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_889/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_889/zeros/packedPacklstm_889/strided_slice:output:0 lstm_889/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_889/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_889/zerosFilllstm_889/zeros/packed:output:0lstm_889/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_889/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_889/zeros_1/packedPacklstm_889/strided_slice:output:0"lstm_889/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_889/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_889/zeros_1Fill lstm_889/zeros_1/packed:output:0lstm_889/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_889/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_889/transpose	Transposelstm_888/transpose_1:y:0 lstm_889/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_889/Shape_1Shapelstm_889/transpose:y:0*
T0*
_output_shapes
:h
lstm_889/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_889/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_889/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_889/strided_slice_1StridedSlicelstm_889/Shape_1:output:0'lstm_889/strided_slice_1/stack:output:0)lstm_889/strided_slice_1/stack_1:output:0)lstm_889/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_889/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_889/TensorArrayV2TensorListReserve-lstm_889/TensorArrayV2/element_shape:output:0!lstm_889/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_889/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_889/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_889/transpose:y:0Glstm_889/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_889/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_889/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_889/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_889/strided_slice_2StridedSlicelstm_889/transpose:y:0'lstm_889/strided_slice_2/stack:output:0)lstm_889/strided_slice_2/stack_1:output:0)lstm_889/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_889/lstm_cell_889/MatMul/ReadVariableOpReadVariableOp5lstm_889_lstm_cell_889_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_889/lstm_cell_889/MatMulMatMul!lstm_889/strided_slice_2:output:04lstm_889/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_889/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp7lstm_889_lstm_cell_889_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_889/lstm_cell_889/MatMul_1MatMullstm_889/zeros:output:06lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_889/lstm_cell_889/addAddV2'lstm_889/lstm_cell_889/MatMul:product:0)lstm_889/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_889/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp6lstm_889_lstm_cell_889_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_889/lstm_cell_889/BiasAddBiasAddlstm_889/lstm_cell_889/add:z:05lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_889/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_889/lstm_cell_889/splitSplit/lstm_889/lstm_cell_889/split/split_dim:output:0'lstm_889/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_889/lstm_cell_889/SigmoidSigmoid%lstm_889/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_889/lstm_cell_889/Sigmoid_1Sigmoid%lstm_889/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_889/lstm_cell_889/mulMul$lstm_889/lstm_cell_889/Sigmoid_1:y:0lstm_889/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_889/lstm_cell_889/ReluRelu%lstm_889/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_889/lstm_cell_889/mul_1Mul"lstm_889/lstm_cell_889/Sigmoid:y:0)lstm_889/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_889/lstm_cell_889/add_1AddV2lstm_889/lstm_cell_889/mul:z:0 lstm_889/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_889/lstm_cell_889/Sigmoid_2Sigmoid%lstm_889/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_889/lstm_cell_889/Relu_1Relu lstm_889/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_889/lstm_cell_889/mul_2Mul$lstm_889/lstm_cell_889/Sigmoid_2:y:0+lstm_889/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_889/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_889/TensorArrayV2_1TensorListReserve/lstm_889/TensorArrayV2_1/element_shape:output:0!lstm_889/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_889/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_889/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_889/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_889/whileWhile$lstm_889/while/loop_counter:output:0*lstm_889/while/maximum_iterations:output:0lstm_889/time:output:0!lstm_889/TensorArrayV2_1:handle:0lstm_889/zeros:output:0lstm_889/zeros_1:output:0!lstm_889/strided_slice_1:output:0@lstm_889/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_889_lstm_cell_889_matmul_readvariableop_resource7lstm_889_lstm_cell_889_matmul_1_readvariableop_resource6lstm_889_lstm_cell_889_biasadd_readvariableop_resource*
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
lstm_889_while_body_5295256*'
condR
lstm_889_while_cond_5295255*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_889/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_889/TensorArrayV2Stack/TensorListStackTensorListStacklstm_889/while:output:3Blstm_889/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_889/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_889/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_889/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_889/strided_slice_3StridedSlice4lstm_889/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_889/strided_slice_3/stack:output:0)lstm_889/strided_slice_3/stack_1:output:0)lstm_889/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_889/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_889/transpose_1	Transpose4lstm_889/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_889/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_889/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_890/ShapeShapelstm_889/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_890/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_890/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_890/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_890/strided_sliceStridedSlicelstm_890/Shape:output:0%lstm_890/strided_slice/stack:output:0'lstm_890/strided_slice/stack_1:output:0'lstm_890/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_890/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_890/zeros/packedPacklstm_890/strided_slice:output:0 lstm_890/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_890/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_890/zerosFilllstm_890/zeros/packed:output:0lstm_890/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_890/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_890/zeros_1/packedPacklstm_890/strided_slice:output:0"lstm_890/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_890/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_890/zeros_1Fill lstm_890/zeros_1/packed:output:0lstm_890/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_890/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_890/transpose	Transposelstm_889/transpose_1:y:0 lstm_890/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_890/Shape_1Shapelstm_890/transpose:y:0*
T0*
_output_shapes
:h
lstm_890/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_890/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_890/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_890/strided_slice_1StridedSlicelstm_890/Shape_1:output:0'lstm_890/strided_slice_1/stack:output:0)lstm_890/strided_slice_1/stack_1:output:0)lstm_890/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_890/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_890/TensorArrayV2TensorListReserve-lstm_890/TensorArrayV2/element_shape:output:0!lstm_890/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_890/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_890/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_890/transpose:y:0Glstm_890/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_890/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_890/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_890/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_890/strided_slice_2StridedSlicelstm_890/transpose:y:0'lstm_890/strided_slice_2/stack:output:0)lstm_890/strided_slice_2/stack_1:output:0)lstm_890/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_890/lstm_cell_890/MatMul/ReadVariableOpReadVariableOp5lstm_890_lstm_cell_890_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_890/lstm_cell_890/MatMulMatMul!lstm_890/strided_slice_2:output:04lstm_890/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_890/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp7lstm_890_lstm_cell_890_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_890/lstm_cell_890/MatMul_1MatMullstm_890/zeros:output:06lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_890/lstm_cell_890/addAddV2'lstm_890/lstm_cell_890/MatMul:product:0)lstm_890/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_890/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp6lstm_890_lstm_cell_890_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_890/lstm_cell_890/BiasAddBiasAddlstm_890/lstm_cell_890/add:z:05lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_890/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_890/lstm_cell_890/splitSplit/lstm_890/lstm_cell_890/split/split_dim:output:0'lstm_890/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_890/lstm_cell_890/SigmoidSigmoid%lstm_890/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_890/lstm_cell_890/Sigmoid_1Sigmoid%lstm_890/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_890/lstm_cell_890/mulMul$lstm_890/lstm_cell_890/Sigmoid_1:y:0lstm_890/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_890/lstm_cell_890/ReluRelu%lstm_890/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_890/lstm_cell_890/mul_1Mul"lstm_890/lstm_cell_890/Sigmoid:y:0)lstm_890/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_890/lstm_cell_890/add_1AddV2lstm_890/lstm_cell_890/mul:z:0 lstm_890/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_890/lstm_cell_890/Sigmoid_2Sigmoid%lstm_890/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_890/lstm_cell_890/Relu_1Relu lstm_890/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_890/lstm_cell_890/mul_2Mul$lstm_890/lstm_cell_890/Sigmoid_2:y:0+lstm_890/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_890/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_890/TensorArrayV2_1TensorListReserve/lstm_890/TensorArrayV2_1/element_shape:output:0!lstm_890/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_890/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_890/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_890/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_890/whileWhile$lstm_890/while/loop_counter:output:0*lstm_890/while/maximum_iterations:output:0lstm_890/time:output:0!lstm_890/TensorArrayV2_1:handle:0lstm_890/zeros:output:0lstm_890/zeros_1:output:0!lstm_890/strided_slice_1:output:0@lstm_890/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_890_lstm_cell_890_matmul_readvariableop_resource7lstm_890_lstm_cell_890_matmul_1_readvariableop_resource6lstm_890_lstm_cell_890_biasadd_readvariableop_resource*
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
lstm_890_while_body_5295395*'
condR
lstm_890_while_cond_5295394*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_890/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_890/TensorArrayV2Stack/TensorListStackTensorListStacklstm_890/while:output:3Blstm_890/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_890/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_890/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_890/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_890/strided_slice_3StridedSlice4lstm_890/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_890/strided_slice_3/stack:output:0)lstm_890/strided_slice_3/stack_1:output:0)lstm_890/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_890/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_890/transpose_1	Transpose4lstm_890/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_890/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_890/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_296/MatMul/ReadVariableOpReadVariableOp(dense_296_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_296/MatMulMatMul!lstm_890/strided_slice_3:output:0'dense_296/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_296/BiasAdd/ReadVariableOpReadVariableOp)dense_296_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_296/BiasAddBiasAdddense_296/MatMul:product:0(dense_296/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_296/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_296/BiasAdd/ReadVariableOp ^dense_296/MatMul/ReadVariableOp.^lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp-^lstm_888/lstm_cell_888/MatMul/ReadVariableOp/^lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp^lstm_888/while.^lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp-^lstm_889/lstm_cell_889/MatMul/ReadVariableOp/^lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp^lstm_889/while.^lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp-^lstm_890/lstm_cell_890/MatMul/ReadVariableOp/^lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp^lstm_890/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_296/BiasAdd/ReadVariableOp dense_296/BiasAdd/ReadVariableOp2B
dense_296/MatMul/ReadVariableOpdense_296/MatMul/ReadVariableOp2^
-lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp-lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp2\
,lstm_888/lstm_cell_888/MatMul/ReadVariableOp,lstm_888/lstm_cell_888/MatMul/ReadVariableOp2`
.lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp.lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp2 
lstm_888/whilelstm_888/while2^
-lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp-lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp2\
,lstm_889/lstm_cell_889/MatMul/ReadVariableOp,lstm_889/lstm_cell_889/MatMul/ReadVariableOp2`
.lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp.lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp2 
lstm_889/whilelstm_889/while2^
-lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp-lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp2\
,lstm_890/lstm_cell_890/MatMul/ReadVariableOp,lstm_890/lstm_cell_890/MatMul/ReadVariableOp2`
.lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp.lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp2 
lstm_890/whilelstm_890/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5295873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5295873___redundant_placeholder05
1while_while_cond_5295873___redundant_placeholder15
1while_while_cond_5295873___redundant_placeholder25
1while_while_cond_5295873___redundant_placeholder3
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
while_cond_5292747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5292747___redundant_placeholder05
1while_while_cond_5292747___redundant_placeholder15
1while_while_cond_5292747___redundant_placeholder25
1while_while_cond_5292747___redundant_placeholder3
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
/__inference_lstm_cell_889_layer_call_fn_5297467

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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5292734o
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296574

inputs?
,lstm_cell_889_matmul_readvariableop_resource:	d?A
.lstm_cell_889_matmul_1_readvariableop_resource:	2?<
-lstm_cell_889_biasadd_readvariableop_resource:	?
identity??$lstm_cell_889/BiasAdd/ReadVariableOp?#lstm_cell_889/MatMul/ReadVariableOp?%lstm_cell_889/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_889/MatMul/ReadVariableOpReadVariableOp,lstm_cell_889_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_889/MatMulMatMulstrided_slice_2:output:0+lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_889_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_889/MatMul_1MatMulzeros:output:0-lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_889/addAddV2lstm_cell_889/MatMul:product:0 lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_889_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_889/BiasAddBiasAddlstm_cell_889/add:z:0,lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_889/splitSplit&lstm_cell_889/split/split_dim:output:0lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_889/SigmoidSigmoidlstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_1Sigmoidlstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_889/mulMullstm_cell_889/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_889/ReluRelulstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_1Mullstm_cell_889/Sigmoid:y:0 lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_889/add_1AddV2lstm_cell_889/mul:z:0lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_2Sigmoidlstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_889/Relu_1Relulstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_2Mullstm_cell_889/Sigmoid_2:y:0"lstm_cell_889/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_889_matmul_readvariableop_resource.lstm_cell_889_matmul_1_readvariableop_resource-lstm_cell_889_biasadd_readvariableop_resource*
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
while_body_5296490*
condR
while_cond_5296489*K
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
NoOpNoOp%^lstm_cell_889/BiasAdd/ReadVariableOp$^lstm_cell_889/MatMul/ReadVariableOp&^lstm_cell_889/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_889/BiasAdd/ReadVariableOp$lstm_cell_889/BiasAdd/ReadVariableOp2J
#lstm_cell_889/MatMul/ReadVariableOp#lstm_cell_889/MatMul/ReadVariableOp2N
%lstm_cell_889/MatMul_1/ReadVariableOp%lstm_cell_889/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_5296962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5296962___redundant_placeholder05
1while_while_cond_5296962___redundant_placeholder15
1while_while_cond_5296962___redundant_placeholder25
1while_while_cond_5296962___redundant_placeholder3
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
0__inference_sequential_296_layer_call_fn_5294604

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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5293841o
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
while_body_5295588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_888_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_888_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_888_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_888_matmul_readvariableop_resource:	?G
4while_lstm_cell_888_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_888_biasadd_readvariableop_resource:	???*while/lstm_cell_888/BiasAdd/ReadVariableOp?)while/lstm_cell_888/MatMul/ReadVariableOp?+while/lstm_cell_888/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_888/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_888_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_888/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_888_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_888/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_888/addAddV2$while/lstm_cell_888/MatMul:product:0&while/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_888_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_888/BiasAddBiasAddwhile/lstm_cell_888/add:z:02while/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_888/splitSplit,while/lstm_cell_888/split/split_dim:output:0$while/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_888/SigmoidSigmoid"while/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_1Sigmoid"while/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mulMul!while/lstm_cell_888/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_888/ReluRelu"while/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_1Mulwhile/lstm_cell_888/Sigmoid:y:0&while/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/add_1AddV2while/lstm_cell_888/mul:z:0while/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_2Sigmoid"while/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_888/Relu_1Reluwhile/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_2Mul!while/lstm_cell_888/Sigmoid_2:y:0(while/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_888/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_888/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_888/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_888/BiasAdd/ReadVariableOp*^while/lstm_cell_888/MatMul/ReadVariableOp,^while/lstm_cell_888/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_888_biasadd_readvariableop_resource5while_lstm_cell_888_biasadd_readvariableop_resource_0"n
4while_lstm_cell_888_matmul_1_readvariableop_resource6while_lstm_cell_888_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_888_matmul_readvariableop_resource4while_lstm_cell_888_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_888/BiasAdd/ReadVariableOp*while/lstm_cell_888/BiasAdd/ReadVariableOp2V
)while/lstm_cell_888/MatMul/ReadVariableOp)while/lstm_cell_888/MatMul/ReadVariableOp2Z
+while/lstm_cell_888/MatMul_1/ReadVariableOp+while/lstm_cell_888/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5293948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_890_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_890_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_890_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_890_matmul_readvariableop_resource:2(F
4while_lstm_cell_890_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_890_biasadd_readvariableop_resource:(??*while/lstm_cell_890/BiasAdd/ReadVariableOp?)while/lstm_cell_890/MatMul/ReadVariableOp?+while/lstm_cell_890/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_890/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_890_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_890/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_890_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_890/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_890/addAddV2$while/lstm_cell_890/MatMul:product:0&while/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_890_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_890/BiasAddBiasAddwhile/lstm_cell_890/add:z:02while/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_890/splitSplit,while/lstm_cell_890/split/split_dim:output:0$while/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_890/SigmoidSigmoid"while/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_1Sigmoid"while/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mulMul!while/lstm_cell_890/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_890/ReluRelu"while/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_1Mulwhile/lstm_cell_890/Sigmoid:y:0&while/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/add_1AddV2while/lstm_cell_890/mul:z:0while/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_2Sigmoid"while/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_890/Relu_1Reluwhile/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_2Mul!while/lstm_cell_890/Sigmoid_2:y:0(while/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_890/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_890/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_890/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_890/BiasAdd/ReadVariableOp*^while/lstm_cell_890/MatMul/ReadVariableOp,^while/lstm_cell_890/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_890_biasadd_readvariableop_resource5while_lstm_cell_890_biasadd_readvariableop_resource_0"n
4while_lstm_cell_890_matmul_1_readvariableop_resource6while_lstm_cell_890_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_890_matmul_readvariableop_resource4while_lstm_cell_890_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_890/BiasAdd/ReadVariableOp*while/lstm_cell_890/BiasAdd/ReadVariableOp2V
)while/lstm_cell_890/MatMul/ReadVariableOp)while/lstm_cell_890/MatMul/ReadVariableOp2Z
+while/lstm_cell_890/MatMul_1/ReadVariableOp+while/lstm_cell_890/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5296904
inputs_0>
,lstm_cell_890_matmul_readvariableop_resource:2(@
.lstm_cell_890_matmul_1_readvariableop_resource:
(;
-lstm_cell_890_biasadd_readvariableop_resource:(
identity??$lstm_cell_890/BiasAdd/ReadVariableOp?#lstm_cell_890/MatMul/ReadVariableOp?%lstm_cell_890/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_890/MatMul/ReadVariableOpReadVariableOp,lstm_cell_890_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_890/MatMulMatMulstrided_slice_2:output:0+lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_890_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_890/MatMul_1MatMulzeros:output:0-lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_890/addAddV2lstm_cell_890/MatMul:product:0 lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_890_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_890/BiasAddBiasAddlstm_cell_890/add:z:0,lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_890/splitSplit&lstm_cell_890/split/split_dim:output:0lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_890/SigmoidSigmoidlstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_1Sigmoidlstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_890/mulMullstm_cell_890/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_890/ReluRelulstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_1Mullstm_cell_890/Sigmoid:y:0 lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_890/add_1AddV2lstm_cell_890/mul:z:0lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_2Sigmoidlstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_890/Relu_1Relulstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_2Mullstm_cell_890/Sigmoid_2:y:0"lstm_cell_890/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_890_matmul_readvariableop_resource.lstm_cell_890_matmul_1_readvariableop_resource-lstm_cell_890_biasadd_readvariableop_resource*
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
while_body_5296820*
condR
while_cond_5296819*K
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
NoOpNoOp%^lstm_cell_890/BiasAdd/ReadVariableOp$^lstm_cell_890/MatMul/ReadVariableOp&^lstm_cell_890/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_890/BiasAdd/ReadVariableOp$lstm_cell_890/BiasAdd/ReadVariableOp2J
#lstm_cell_890/MatMul/ReadVariableOp#lstm_cell_890/MatMul/ReadVariableOp2N
%lstm_cell_890/MatMul_1/ReadVariableOp%lstm_cell_890/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_5292588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5292588___redundant_placeholder05
1while_while_cond_5292588___redundant_placeholder15
1while_while_cond_5292588___redundant_placeholder25
1while_while_cond_5292588___redundant_placeholder3
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
while_cond_5295587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5295587___redundant_placeholder05
1while_while_cond_5295587___redundant_placeholder15
1while_while_cond_5295587___redundant_placeholder25
1while_while_cond_5295587___redundant_placeholder3
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
while_cond_5296016
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5296016___redundant_placeholder05
1while_while_cond_5296016___redundant_placeholder15
1while_while_cond_5296016___redundant_placeholder25
1while_while_cond_5296016___redundant_placeholder3
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
while_cond_5296203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5296203___redundant_placeholder05
1while_while_cond_5296203___redundant_placeholder15
1while_while_cond_5296203___redundant_placeholder25
1while_while_cond_5296203___redundant_placeholder3
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
?#
?
while_body_5293289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_890_5293313_0:2(/
while_lstm_cell_890_5293315_0:
(+
while_lstm_cell_890_5293317_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_890_5293313:2(-
while_lstm_cell_890_5293315:
()
while_lstm_cell_890_5293317:(??+while/lstm_cell_890/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_890/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_890_5293313_0while_lstm_cell_890_5293315_0while_lstm_cell_890_5293317_0*
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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5293230?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_890/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_890/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_890/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_890/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_890_5293313while_lstm_cell_890_5293313_0"<
while_lstm_cell_890_5293315while_lstm_cell_890_5293315_0"<
while_lstm_cell_890_5293317while_lstm_cell_890_5293317_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_890/StatefulPartitionedCall+while/lstm_cell_890/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_296_lstm_889_while_cond_5292087L
Hsequential_296_lstm_889_while_sequential_296_lstm_889_while_loop_counterR
Nsequential_296_lstm_889_while_sequential_296_lstm_889_while_maximum_iterations-
)sequential_296_lstm_889_while_placeholder/
+sequential_296_lstm_889_while_placeholder_1/
+sequential_296_lstm_889_while_placeholder_2/
+sequential_296_lstm_889_while_placeholder_3N
Jsequential_296_lstm_889_while_less_sequential_296_lstm_889_strided_slice_1e
asequential_296_lstm_889_while_sequential_296_lstm_889_while_cond_5292087___redundant_placeholder0e
asequential_296_lstm_889_while_sequential_296_lstm_889_while_cond_5292087___redundant_placeholder1e
asequential_296_lstm_889_while_sequential_296_lstm_889_while_cond_5292087___redundant_placeholder2e
asequential_296_lstm_889_while_sequential_296_lstm_889_while_cond_5292087___redundant_placeholder3*
&sequential_296_lstm_889_while_identity
?
"sequential_296/lstm_889/while/LessLess)sequential_296_lstm_889_while_placeholderJsequential_296_lstm_889_while_less_sequential_296_lstm_889_strided_slice_1*
T0*
_output_shapes
: {
&sequential_296/lstm_889/while/IdentityIdentity&sequential_296/lstm_889/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_296_lstm_889_while_identity/sequential_296/lstm_889/while/Identity:output:0*(
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
while_body_5293432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_888_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_888_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_888_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_888_matmul_readvariableop_resource:	?G
4while_lstm_cell_888_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_888_biasadd_readvariableop_resource:	???*while/lstm_cell_888/BiasAdd/ReadVariableOp?)while/lstm_cell_888/MatMul/ReadVariableOp?+while/lstm_cell_888/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_888/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_888_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_888/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_888_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_888/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_888/addAddV2$while/lstm_cell_888/MatMul:product:0&while/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_888_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_888/BiasAddBiasAddwhile/lstm_cell_888/add:z:02while/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_888/splitSplit,while/lstm_cell_888/split/split_dim:output:0$while/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_888/SigmoidSigmoid"while/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_1Sigmoid"while/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mulMul!while/lstm_cell_888/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_888/ReluRelu"while/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_1Mulwhile/lstm_cell_888/Sigmoid:y:0&while/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/add_1AddV2while/lstm_cell_888/mul:z:0while/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_2Sigmoid"while/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_888/Relu_1Reluwhile/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_2Mul!while/lstm_cell_888/Sigmoid_2:y:0(while/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_888/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_888/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_888/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_888/BiasAdd/ReadVariableOp*^while/lstm_cell_888/MatMul/ReadVariableOp,^while/lstm_cell_888/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_888_biasadd_readvariableop_resource5while_lstm_cell_888_biasadd_readvariableop_resource_0"n
4while_lstm_cell_888_matmul_1_readvariableop_resource6while_lstm_cell_888_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_888_matmul_readvariableop_resource4while_lstm_cell_888_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_888/BiasAdd/ReadVariableOp*while/lstm_cell_888/BiasAdd/ReadVariableOp2V
)while/lstm_cell_888/MatMul/ReadVariableOp)while/lstm_cell_888/MatMul/ReadVariableOp2Z
+while/lstm_cell_888/MatMul_1/ReadVariableOp+while/lstm_cell_888/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_890_layer_call_fn_5296750

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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5293816o
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
*__inference_lstm_889_layer_call_fn_5296123
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5293008|
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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5294430

inputs#
lstm_888_5294403:	?#
lstm_888_5294405:	d?
lstm_888_5294407:	?#
lstm_889_5294410:	d?#
lstm_889_5294412:	2?
lstm_889_5294414:	?"
lstm_890_5294417:2("
lstm_890_5294419:
(
lstm_890_5294421:(#
dense_296_5294424:

dense_296_5294426:
identity??!dense_296/StatefulPartitionedCall? lstm_888/StatefulPartitionedCall? lstm_889/StatefulPartitionedCall? lstm_890/StatefulPartitionedCall?
 lstm_888/StatefulPartitionedCallStatefulPartitionedCallinputslstm_888_5294403lstm_888_5294405lstm_888_5294407*
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5294362?
 lstm_889/StatefulPartitionedCallStatefulPartitionedCall)lstm_888/StatefulPartitionedCall:output:0lstm_889_5294410lstm_889_5294412lstm_889_5294414*
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5294197?
 lstm_890/StatefulPartitionedCallStatefulPartitionedCall)lstm_889/StatefulPartitionedCall:output:0lstm_890_5294417lstm_890_5294419lstm_890_5294421*
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5294032?
!dense_296/StatefulPartitionedCallStatefulPartitionedCall)lstm_890/StatefulPartitionedCall:output:0dense_296_5294424dense_296_5294426*
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
F__inference_dense_296_layer_call_and_return_conditional_losses_5293834y
IdentityIdentity*dense_296/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_296/StatefulPartitionedCall!^lstm_888/StatefulPartitionedCall!^lstm_889/StatefulPartitionedCall!^lstm_890/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_296/StatefulPartitionedCall!dense_296/StatefulPartitionedCall2D
 lstm_888/StatefulPartitionedCall lstm_888/StatefulPartitionedCall2D
 lstm_889/StatefulPartitionedCall lstm_889/StatefulPartitionedCall2D
 lstm_890/StatefulPartitionedCall lstm_890/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5292530

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
while_body_5297106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_890_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_890_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_890_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_890_matmul_readvariableop_resource:2(F
4while_lstm_cell_890_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_890_biasadd_readvariableop_resource:(??*while/lstm_cell_890/BiasAdd/ReadVariableOp?)while/lstm_cell_890/MatMul/ReadVariableOp?+while/lstm_cell_890/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_890/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_890_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_890/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_890_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_890/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_890/addAddV2$while/lstm_cell_890/MatMul:product:0&while/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_890_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_890/BiasAddBiasAddwhile/lstm_cell_890/add:z:02while/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_890/splitSplit,while/lstm_cell_890/split/split_dim:output:0$while/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_890/SigmoidSigmoid"while/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_1Sigmoid"while/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mulMul!while/lstm_cell_890/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_890/ReluRelu"while/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_1Mulwhile/lstm_cell_890/Sigmoid:y:0&while/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/add_1AddV2while/lstm_cell_890/mul:z:0while/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_2Sigmoid"while/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_890/Relu_1Reluwhile/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_2Mul!while/lstm_cell_890/Sigmoid_2:y:0(while/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_890/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_890/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_890/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_890/BiasAdd/ReadVariableOp*^while/lstm_cell_890/MatMul/ReadVariableOp,^while/lstm_cell_890/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_890_biasadd_readvariableop_resource5while_lstm_cell_890_biasadd_readvariableop_resource_0"n
4while_lstm_cell_890_matmul_1_readvariableop_resource6while_lstm_cell_890_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_890_matmul_readvariableop_resource4while_lstm_cell_890_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_890/BiasAdd/ReadVariableOp*while/lstm_cell_890/BiasAdd/ReadVariableOp2V
)while/lstm_cell_890/MatMul/ReadVariableOp)while/lstm_cell_890/MatMul/ReadVariableOp2Z
+while/lstm_cell_890/MatMul_1/ReadVariableOp+while/lstm_cell_890/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5292734

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
*sequential_296_lstm_888_while_cond_5291948L
Hsequential_296_lstm_888_while_sequential_296_lstm_888_while_loop_counterR
Nsequential_296_lstm_888_while_sequential_296_lstm_888_while_maximum_iterations-
)sequential_296_lstm_888_while_placeholder/
+sequential_296_lstm_888_while_placeholder_1/
+sequential_296_lstm_888_while_placeholder_2/
+sequential_296_lstm_888_while_placeholder_3N
Jsequential_296_lstm_888_while_less_sequential_296_lstm_888_strided_slice_1e
asequential_296_lstm_888_while_sequential_296_lstm_888_while_cond_5291948___redundant_placeholder0e
asequential_296_lstm_888_while_sequential_296_lstm_888_while_cond_5291948___redundant_placeholder1e
asequential_296_lstm_888_while_sequential_296_lstm_888_while_cond_5291948___redundant_placeholder2e
asequential_296_lstm_888_while_sequential_296_lstm_888_while_cond_5291948___redundant_placeholder3*
&sequential_296_lstm_888_while_identity
?
"sequential_296/lstm_888/while/LessLess)sequential_296_lstm_888_while_placeholderJsequential_296_lstm_888_while_less_sequential_296_lstm_888_strided_slice_1*
T0*
_output_shapes
: {
&sequential_296/lstm_888/while/IdentityIdentity&sequential_296/lstm_888/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_296_lstm_888_while_identity/sequential_296/lstm_888/while/Identity:output:0*(
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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5293084

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
F__inference_dense_296_layer_call_and_return_conditional_losses_5293834

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
lstm_888_while_cond_5295116.
*lstm_888_while_lstm_888_while_loop_counter4
0lstm_888_while_lstm_888_while_maximum_iterations
lstm_888_while_placeholder 
lstm_888_while_placeholder_1 
lstm_888_while_placeholder_2 
lstm_888_while_placeholder_30
,lstm_888_while_less_lstm_888_strided_slice_1G
Clstm_888_while_lstm_888_while_cond_5295116___redundant_placeholder0G
Clstm_888_while_lstm_888_while_cond_5295116___redundant_placeholder1G
Clstm_888_while_lstm_888_while_cond_5295116___redundant_placeholder2G
Clstm_888_while_lstm_888_while_cond_5295116___redundant_placeholder3
lstm_888_while_identity
?
lstm_888/while/LessLesslstm_888_while_placeholder,lstm_888_while_less_lstm_888_strided_slice_1*
T0*
_output_shapes
: ]
lstm_888/while/IdentityIdentitylstm_888/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_888_while_identity lstm_888/while/Identity:output:0*(
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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5294512
lstm_888_input#
lstm_888_5294485:	?#
lstm_888_5294487:	d?
lstm_888_5294489:	?#
lstm_889_5294492:	d?#
lstm_889_5294494:	2?
lstm_889_5294496:	?"
lstm_890_5294499:2("
lstm_890_5294501:
(
lstm_890_5294503:(#
dense_296_5294506:

dense_296_5294508:
identity??!dense_296/StatefulPartitionedCall? lstm_888/StatefulPartitionedCall? lstm_889/StatefulPartitionedCall? lstm_890/StatefulPartitionedCall?
 lstm_888/StatefulPartitionedCallStatefulPartitionedCalllstm_888_inputlstm_888_5294485lstm_888_5294487lstm_888_5294489*
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5293516?
 lstm_889/StatefulPartitionedCallStatefulPartitionedCall)lstm_888/StatefulPartitionedCall:output:0lstm_889_5294492lstm_889_5294494lstm_889_5294496*
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5293666?
 lstm_890/StatefulPartitionedCallStatefulPartitionedCall)lstm_889/StatefulPartitionedCall:output:0lstm_890_5294499lstm_890_5294501lstm_890_5294503*
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5293816?
!dense_296/StatefulPartitionedCallStatefulPartitionedCall)lstm_890/StatefulPartitionedCall:output:0dense_296_5294506dense_296_5294508*
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
F__inference_dense_296_layer_call_and_return_conditional_losses_5293834y
IdentityIdentity*dense_296/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_296/StatefulPartitionedCall!^lstm_888/StatefulPartitionedCall!^lstm_889/StatefulPartitionedCall!^lstm_890/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_296/StatefulPartitionedCall!dense_296/StatefulPartitionedCall2D
 lstm_888/StatefulPartitionedCall lstm_888/StatefulPartitionedCall2D
 lstm_889/StatefulPartitionedCall lstm_889/StatefulPartitionedCall2D
 lstm_890/StatefulPartitionedCall lstm_890/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_888_input
?
?
while_cond_5293581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5293581___redundant_placeholder05
1while_while_cond_5293581___redundant_placeholder15
1while_while_cond_5293581___redundant_placeholder25
1while_while_cond_5293581___redundant_placeholder3
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
/__inference_lstm_cell_890_layer_call_fn_5297565

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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5293084o
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
while_cond_5293288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5293288___redundant_placeholder05
1while_while_cond_5293288___redundant_placeholder15
1while_while_cond_5293288___redundant_placeholder25
1while_while_cond_5293288___redundant_placeholder3
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
while_body_5296204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_889_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_889_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_889_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_889_matmul_readvariableop_resource:	d?G
4while_lstm_cell_889_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_889_biasadd_readvariableop_resource:	???*while/lstm_cell_889/BiasAdd/ReadVariableOp?)while/lstm_cell_889/MatMul/ReadVariableOp?+while/lstm_cell_889/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_889/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_889_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_889/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_889_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_889/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_889/addAddV2$while/lstm_cell_889/MatMul:product:0&while/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_889_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_889/BiasAddBiasAddwhile/lstm_cell_889/add:z:02while/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_889/splitSplit,while/lstm_cell_889/split/split_dim:output:0$while/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_889/SigmoidSigmoid"while/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_1Sigmoid"while/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mulMul!while/lstm_cell_889/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_889/ReluRelu"while/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_1Mulwhile/lstm_cell_889/Sigmoid:y:0&while/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/add_1AddV2while/lstm_cell_889/mul:z:0while/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_889/Sigmoid_2Sigmoid"while/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_889/Relu_1Reluwhile/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_889/mul_2Mul!while/lstm_cell_889/Sigmoid_2:y:0(while/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_889/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_889/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_889/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_889/BiasAdd/ReadVariableOp*^while/lstm_cell_889/MatMul/ReadVariableOp,^while/lstm_cell_889/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_889_biasadd_readvariableop_resource5while_lstm_cell_889_biasadd_readvariableop_resource_0"n
4while_lstm_cell_889_matmul_1_readvariableop_resource6while_lstm_cell_889_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_889_matmul_readvariableop_resource4while_lstm_cell_889_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_889/BiasAdd/ReadVariableOp*while/lstm_cell_889/BiasAdd/ReadVariableOp2V
)while/lstm_cell_889/MatMul/ReadVariableOp)while/lstm_cell_889/MatMul/ReadVariableOp2Z
+while/lstm_cell_889/MatMul_1/ReadVariableOp+while/lstm_cell_889/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5296963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_890_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_890_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_890_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_890_matmul_readvariableop_resource:2(F
4while_lstm_cell_890_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_890_biasadd_readvariableop_resource:(??*while/lstm_cell_890/BiasAdd/ReadVariableOp?)while/lstm_cell_890/MatMul/ReadVariableOp?+while/lstm_cell_890/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_890/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_890_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_890/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_890_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_890/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_890/addAddV2$while/lstm_cell_890/MatMul:product:0&while/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_890_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_890/BiasAddBiasAddwhile/lstm_cell_890/add:z:02while/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_890/splitSplit,while/lstm_cell_890/split/split_dim:output:0$while/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_890/SigmoidSigmoid"while/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_1Sigmoid"while/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mulMul!while/lstm_cell_890/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_890/ReluRelu"while/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_1Mulwhile/lstm_cell_890/Sigmoid:y:0&while/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/add_1AddV2while/lstm_cell_890/mul:z:0while/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_2Sigmoid"while/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_890/Relu_1Reluwhile/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_2Mul!while/lstm_cell_890/Sigmoid_2:y:0(while/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_890/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_890/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_890/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_890/BiasAdd/ReadVariableOp*^while/lstm_cell_890/MatMul/ReadVariableOp,^while/lstm_cell_890/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_890_biasadd_readvariableop_resource5while_lstm_cell_890_biasadd_readvariableop_resource_0"n
4while_lstm_cell_890_matmul_1_readvariableop_resource6while_lstm_cell_890_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_890_matmul_readvariableop_resource4while_lstm_cell_890_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_890/BiasAdd/ReadVariableOp*while/lstm_cell_890/BiasAdd/ReadVariableOp2V
)while/lstm_cell_890/MatMul/ReadVariableOp)while/lstm_cell_890/MatMul/ReadVariableOp2Z
+while/lstm_cell_890/MatMul_1/ReadVariableOp+while/lstm_cell_890/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_890_layer_call_fn_5296728
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5293167o
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
while_cond_5293431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5293431___redundant_placeholder05
1while_while_cond_5293431___redundant_placeholder15
1while_while_cond_5293431___redundant_placeholder25
1while_while_cond_5293431___redundant_placeholder3
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
"__inference__wrapped_model_5292317
lstm_888_inputW
Dsequential_296_lstm_888_lstm_cell_888_matmul_readvariableop_resource:	?Y
Fsequential_296_lstm_888_lstm_cell_888_matmul_1_readvariableop_resource:	d?T
Esequential_296_lstm_888_lstm_cell_888_biasadd_readvariableop_resource:	?W
Dsequential_296_lstm_889_lstm_cell_889_matmul_readvariableop_resource:	d?Y
Fsequential_296_lstm_889_lstm_cell_889_matmul_1_readvariableop_resource:	2?T
Esequential_296_lstm_889_lstm_cell_889_biasadd_readvariableop_resource:	?V
Dsequential_296_lstm_890_lstm_cell_890_matmul_readvariableop_resource:2(X
Fsequential_296_lstm_890_lstm_cell_890_matmul_1_readvariableop_resource:
(S
Esequential_296_lstm_890_lstm_cell_890_biasadd_readvariableop_resource:(I
7sequential_296_dense_296_matmul_readvariableop_resource:
F
8sequential_296_dense_296_biasadd_readvariableop_resource:
identity??/sequential_296/dense_296/BiasAdd/ReadVariableOp?.sequential_296/dense_296/MatMul/ReadVariableOp?<sequential_296/lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp?;sequential_296/lstm_888/lstm_cell_888/MatMul/ReadVariableOp?=sequential_296/lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp?sequential_296/lstm_888/while?<sequential_296/lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp?;sequential_296/lstm_889/lstm_cell_889/MatMul/ReadVariableOp?=sequential_296/lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp?sequential_296/lstm_889/while?<sequential_296/lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp?;sequential_296/lstm_890/lstm_cell_890/MatMul/ReadVariableOp?=sequential_296/lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp?sequential_296/lstm_890/while[
sequential_296/lstm_888/ShapeShapelstm_888_input*
T0*
_output_shapes
:u
+sequential_296/lstm_888/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_296/lstm_888/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_296/lstm_888/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_296/lstm_888/strided_sliceStridedSlice&sequential_296/lstm_888/Shape:output:04sequential_296/lstm_888/strided_slice/stack:output:06sequential_296/lstm_888/strided_slice/stack_1:output:06sequential_296/lstm_888/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_296/lstm_888/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_296/lstm_888/zeros/packedPack.sequential_296/lstm_888/strided_slice:output:0/sequential_296/lstm_888/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_296/lstm_888/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_296/lstm_888/zerosFill-sequential_296/lstm_888/zeros/packed:output:0,sequential_296/lstm_888/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_296/lstm_888/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_296/lstm_888/zeros_1/packedPack.sequential_296/lstm_888/strided_slice:output:01sequential_296/lstm_888/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_296/lstm_888/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_296/lstm_888/zeros_1Fill/sequential_296/lstm_888/zeros_1/packed:output:0.sequential_296/lstm_888/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_296/lstm_888/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_296/lstm_888/transpose	Transposelstm_888_input/sequential_296/lstm_888/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_296/lstm_888/Shape_1Shape%sequential_296/lstm_888/transpose:y:0*
T0*
_output_shapes
:w
-sequential_296/lstm_888/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_296/lstm_888/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_296/lstm_888/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_296/lstm_888/strided_slice_1StridedSlice(sequential_296/lstm_888/Shape_1:output:06sequential_296/lstm_888/strided_slice_1/stack:output:08sequential_296/lstm_888/strided_slice_1/stack_1:output:08sequential_296/lstm_888/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_296/lstm_888/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_296/lstm_888/TensorArrayV2TensorListReserve<sequential_296/lstm_888/TensorArrayV2/element_shape:output:00sequential_296/lstm_888/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_296/lstm_888/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_296/lstm_888/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_296/lstm_888/transpose:y:0Vsequential_296/lstm_888/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_296/lstm_888/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_296/lstm_888/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_296/lstm_888/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_296/lstm_888/strided_slice_2StridedSlice%sequential_296/lstm_888/transpose:y:06sequential_296/lstm_888/strided_slice_2/stack:output:08sequential_296/lstm_888/strided_slice_2/stack_1:output:08sequential_296/lstm_888/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_296/lstm_888/lstm_cell_888/MatMul/ReadVariableOpReadVariableOpDsequential_296_lstm_888_lstm_cell_888_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_296/lstm_888/lstm_cell_888/MatMulMatMul0sequential_296/lstm_888/strided_slice_2:output:0Csequential_296/lstm_888/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_296/lstm_888/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOpFsequential_296_lstm_888_lstm_cell_888_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_296/lstm_888/lstm_cell_888/MatMul_1MatMul&sequential_296/lstm_888/zeros:output:0Esequential_296/lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_296/lstm_888/lstm_cell_888/addAddV26sequential_296/lstm_888/lstm_cell_888/MatMul:product:08sequential_296/lstm_888/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_296/lstm_888/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOpEsequential_296_lstm_888_lstm_cell_888_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_296/lstm_888/lstm_cell_888/BiasAddBiasAdd-sequential_296/lstm_888/lstm_cell_888/add:z:0Dsequential_296/lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_296/lstm_888/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_296/lstm_888/lstm_cell_888/splitSplit>sequential_296/lstm_888/lstm_cell_888/split/split_dim:output:06sequential_296/lstm_888/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_296/lstm_888/lstm_cell_888/SigmoidSigmoid4sequential_296/lstm_888/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_296/lstm_888/lstm_cell_888/Sigmoid_1Sigmoid4sequential_296/lstm_888/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_296/lstm_888/lstm_cell_888/mulMul3sequential_296/lstm_888/lstm_cell_888/Sigmoid_1:y:0(sequential_296/lstm_888/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_296/lstm_888/lstm_cell_888/ReluRelu4sequential_296/lstm_888/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_296/lstm_888/lstm_cell_888/mul_1Mul1sequential_296/lstm_888/lstm_cell_888/Sigmoid:y:08sequential_296/lstm_888/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_296/lstm_888/lstm_cell_888/add_1AddV2-sequential_296/lstm_888/lstm_cell_888/mul:z:0/sequential_296/lstm_888/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_296/lstm_888/lstm_cell_888/Sigmoid_2Sigmoid4sequential_296/lstm_888/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_296/lstm_888/lstm_cell_888/Relu_1Relu/sequential_296/lstm_888/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_296/lstm_888/lstm_cell_888/mul_2Mul3sequential_296/lstm_888/lstm_cell_888/Sigmoid_2:y:0:sequential_296/lstm_888/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_296/lstm_888/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_296/lstm_888/TensorArrayV2_1TensorListReserve>sequential_296/lstm_888/TensorArrayV2_1/element_shape:output:00sequential_296/lstm_888/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_296/lstm_888/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_296/lstm_888/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_296/lstm_888/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_296/lstm_888/whileWhile3sequential_296/lstm_888/while/loop_counter:output:09sequential_296/lstm_888/while/maximum_iterations:output:0%sequential_296/lstm_888/time:output:00sequential_296/lstm_888/TensorArrayV2_1:handle:0&sequential_296/lstm_888/zeros:output:0(sequential_296/lstm_888/zeros_1:output:00sequential_296/lstm_888/strided_slice_1:output:0Osequential_296/lstm_888/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_296_lstm_888_lstm_cell_888_matmul_readvariableop_resourceFsequential_296_lstm_888_lstm_cell_888_matmul_1_readvariableop_resourceEsequential_296_lstm_888_lstm_cell_888_biasadd_readvariableop_resource*
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
*sequential_296_lstm_888_while_body_5291949*6
cond.R,
*sequential_296_lstm_888_while_cond_5291948*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_296/lstm_888/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_296/lstm_888/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_296/lstm_888/while:output:3Qsequential_296/lstm_888/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_296/lstm_888/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_296/lstm_888/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_296/lstm_888/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_296/lstm_888/strided_slice_3StridedSliceCsequential_296/lstm_888/TensorArrayV2Stack/TensorListStack:tensor:06sequential_296/lstm_888/strided_slice_3/stack:output:08sequential_296/lstm_888/strided_slice_3/stack_1:output:08sequential_296/lstm_888/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_296/lstm_888/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_296/lstm_888/transpose_1	TransposeCsequential_296/lstm_888/TensorArrayV2Stack/TensorListStack:tensor:01sequential_296/lstm_888/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_296/lstm_888/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_296/lstm_889/ShapeShape'sequential_296/lstm_888/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_296/lstm_889/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_296/lstm_889/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_296/lstm_889/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_296/lstm_889/strided_sliceStridedSlice&sequential_296/lstm_889/Shape:output:04sequential_296/lstm_889/strided_slice/stack:output:06sequential_296/lstm_889/strided_slice/stack_1:output:06sequential_296/lstm_889/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_296/lstm_889/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_296/lstm_889/zeros/packedPack.sequential_296/lstm_889/strided_slice:output:0/sequential_296/lstm_889/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_296/lstm_889/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_296/lstm_889/zerosFill-sequential_296/lstm_889/zeros/packed:output:0,sequential_296/lstm_889/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_296/lstm_889/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_296/lstm_889/zeros_1/packedPack.sequential_296/lstm_889/strided_slice:output:01sequential_296/lstm_889/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_296/lstm_889/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_296/lstm_889/zeros_1Fill/sequential_296/lstm_889/zeros_1/packed:output:0.sequential_296/lstm_889/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_296/lstm_889/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_296/lstm_889/transpose	Transpose'sequential_296/lstm_888/transpose_1:y:0/sequential_296/lstm_889/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_296/lstm_889/Shape_1Shape%sequential_296/lstm_889/transpose:y:0*
T0*
_output_shapes
:w
-sequential_296/lstm_889/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_296/lstm_889/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_296/lstm_889/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_296/lstm_889/strided_slice_1StridedSlice(sequential_296/lstm_889/Shape_1:output:06sequential_296/lstm_889/strided_slice_1/stack:output:08sequential_296/lstm_889/strided_slice_1/stack_1:output:08sequential_296/lstm_889/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_296/lstm_889/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_296/lstm_889/TensorArrayV2TensorListReserve<sequential_296/lstm_889/TensorArrayV2/element_shape:output:00sequential_296/lstm_889/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_296/lstm_889/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_296/lstm_889/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_296/lstm_889/transpose:y:0Vsequential_296/lstm_889/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_296/lstm_889/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_296/lstm_889/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_296/lstm_889/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_296/lstm_889/strided_slice_2StridedSlice%sequential_296/lstm_889/transpose:y:06sequential_296/lstm_889/strided_slice_2/stack:output:08sequential_296/lstm_889/strided_slice_2/stack_1:output:08sequential_296/lstm_889/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_296/lstm_889/lstm_cell_889/MatMul/ReadVariableOpReadVariableOpDsequential_296_lstm_889_lstm_cell_889_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_296/lstm_889/lstm_cell_889/MatMulMatMul0sequential_296/lstm_889/strided_slice_2:output:0Csequential_296/lstm_889/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_296/lstm_889/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOpFsequential_296_lstm_889_lstm_cell_889_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_296/lstm_889/lstm_cell_889/MatMul_1MatMul&sequential_296/lstm_889/zeros:output:0Esequential_296/lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_296/lstm_889/lstm_cell_889/addAddV26sequential_296/lstm_889/lstm_cell_889/MatMul:product:08sequential_296/lstm_889/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_296/lstm_889/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOpEsequential_296_lstm_889_lstm_cell_889_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_296/lstm_889/lstm_cell_889/BiasAddBiasAdd-sequential_296/lstm_889/lstm_cell_889/add:z:0Dsequential_296/lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_296/lstm_889/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_296/lstm_889/lstm_cell_889/splitSplit>sequential_296/lstm_889/lstm_cell_889/split/split_dim:output:06sequential_296/lstm_889/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_296/lstm_889/lstm_cell_889/SigmoidSigmoid4sequential_296/lstm_889/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_296/lstm_889/lstm_cell_889/Sigmoid_1Sigmoid4sequential_296/lstm_889/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_296/lstm_889/lstm_cell_889/mulMul3sequential_296/lstm_889/lstm_cell_889/Sigmoid_1:y:0(sequential_296/lstm_889/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_296/lstm_889/lstm_cell_889/ReluRelu4sequential_296/lstm_889/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_296/lstm_889/lstm_cell_889/mul_1Mul1sequential_296/lstm_889/lstm_cell_889/Sigmoid:y:08sequential_296/lstm_889/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_296/lstm_889/lstm_cell_889/add_1AddV2-sequential_296/lstm_889/lstm_cell_889/mul:z:0/sequential_296/lstm_889/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_296/lstm_889/lstm_cell_889/Sigmoid_2Sigmoid4sequential_296/lstm_889/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_296/lstm_889/lstm_cell_889/Relu_1Relu/sequential_296/lstm_889/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_296/lstm_889/lstm_cell_889/mul_2Mul3sequential_296/lstm_889/lstm_cell_889/Sigmoid_2:y:0:sequential_296/lstm_889/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_296/lstm_889/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_296/lstm_889/TensorArrayV2_1TensorListReserve>sequential_296/lstm_889/TensorArrayV2_1/element_shape:output:00sequential_296/lstm_889/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_296/lstm_889/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_296/lstm_889/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_296/lstm_889/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_296/lstm_889/whileWhile3sequential_296/lstm_889/while/loop_counter:output:09sequential_296/lstm_889/while/maximum_iterations:output:0%sequential_296/lstm_889/time:output:00sequential_296/lstm_889/TensorArrayV2_1:handle:0&sequential_296/lstm_889/zeros:output:0(sequential_296/lstm_889/zeros_1:output:00sequential_296/lstm_889/strided_slice_1:output:0Osequential_296/lstm_889/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_296_lstm_889_lstm_cell_889_matmul_readvariableop_resourceFsequential_296_lstm_889_lstm_cell_889_matmul_1_readvariableop_resourceEsequential_296_lstm_889_lstm_cell_889_biasadd_readvariableop_resource*
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
*sequential_296_lstm_889_while_body_5292088*6
cond.R,
*sequential_296_lstm_889_while_cond_5292087*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_296/lstm_889/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_296/lstm_889/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_296/lstm_889/while:output:3Qsequential_296/lstm_889/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_296/lstm_889/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_296/lstm_889/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_296/lstm_889/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_296/lstm_889/strided_slice_3StridedSliceCsequential_296/lstm_889/TensorArrayV2Stack/TensorListStack:tensor:06sequential_296/lstm_889/strided_slice_3/stack:output:08sequential_296/lstm_889/strided_slice_3/stack_1:output:08sequential_296/lstm_889/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_296/lstm_889/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_296/lstm_889/transpose_1	TransposeCsequential_296/lstm_889/TensorArrayV2Stack/TensorListStack:tensor:01sequential_296/lstm_889/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_296/lstm_889/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_296/lstm_890/ShapeShape'sequential_296/lstm_889/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_296/lstm_890/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_296/lstm_890/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_296/lstm_890/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_296/lstm_890/strided_sliceStridedSlice&sequential_296/lstm_890/Shape:output:04sequential_296/lstm_890/strided_slice/stack:output:06sequential_296/lstm_890/strided_slice/stack_1:output:06sequential_296/lstm_890/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_296/lstm_890/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_296/lstm_890/zeros/packedPack.sequential_296/lstm_890/strided_slice:output:0/sequential_296/lstm_890/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_296/lstm_890/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_296/lstm_890/zerosFill-sequential_296/lstm_890/zeros/packed:output:0,sequential_296/lstm_890/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_296/lstm_890/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_296/lstm_890/zeros_1/packedPack.sequential_296/lstm_890/strided_slice:output:01sequential_296/lstm_890/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_296/lstm_890/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_296/lstm_890/zeros_1Fill/sequential_296/lstm_890/zeros_1/packed:output:0.sequential_296/lstm_890/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_296/lstm_890/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_296/lstm_890/transpose	Transpose'sequential_296/lstm_889/transpose_1:y:0/sequential_296/lstm_890/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_296/lstm_890/Shape_1Shape%sequential_296/lstm_890/transpose:y:0*
T0*
_output_shapes
:w
-sequential_296/lstm_890/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_296/lstm_890/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_296/lstm_890/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_296/lstm_890/strided_slice_1StridedSlice(sequential_296/lstm_890/Shape_1:output:06sequential_296/lstm_890/strided_slice_1/stack:output:08sequential_296/lstm_890/strided_slice_1/stack_1:output:08sequential_296/lstm_890/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_296/lstm_890/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_296/lstm_890/TensorArrayV2TensorListReserve<sequential_296/lstm_890/TensorArrayV2/element_shape:output:00sequential_296/lstm_890/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_296/lstm_890/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_296/lstm_890/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_296/lstm_890/transpose:y:0Vsequential_296/lstm_890/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_296/lstm_890/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_296/lstm_890/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_296/lstm_890/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_296/lstm_890/strided_slice_2StridedSlice%sequential_296/lstm_890/transpose:y:06sequential_296/lstm_890/strided_slice_2/stack:output:08sequential_296/lstm_890/strided_slice_2/stack_1:output:08sequential_296/lstm_890/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_296/lstm_890/lstm_cell_890/MatMul/ReadVariableOpReadVariableOpDsequential_296_lstm_890_lstm_cell_890_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_296/lstm_890/lstm_cell_890/MatMulMatMul0sequential_296/lstm_890/strided_slice_2:output:0Csequential_296/lstm_890/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_296/lstm_890/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOpFsequential_296_lstm_890_lstm_cell_890_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_296/lstm_890/lstm_cell_890/MatMul_1MatMul&sequential_296/lstm_890/zeros:output:0Esequential_296/lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_296/lstm_890/lstm_cell_890/addAddV26sequential_296/lstm_890/lstm_cell_890/MatMul:product:08sequential_296/lstm_890/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_296/lstm_890/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOpEsequential_296_lstm_890_lstm_cell_890_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_296/lstm_890/lstm_cell_890/BiasAddBiasAdd-sequential_296/lstm_890/lstm_cell_890/add:z:0Dsequential_296/lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_296/lstm_890/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_296/lstm_890/lstm_cell_890/splitSplit>sequential_296/lstm_890/lstm_cell_890/split/split_dim:output:06sequential_296/lstm_890/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_296/lstm_890/lstm_cell_890/SigmoidSigmoid4sequential_296/lstm_890/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_296/lstm_890/lstm_cell_890/Sigmoid_1Sigmoid4sequential_296/lstm_890/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_296/lstm_890/lstm_cell_890/mulMul3sequential_296/lstm_890/lstm_cell_890/Sigmoid_1:y:0(sequential_296/lstm_890/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_296/lstm_890/lstm_cell_890/ReluRelu4sequential_296/lstm_890/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_296/lstm_890/lstm_cell_890/mul_1Mul1sequential_296/lstm_890/lstm_cell_890/Sigmoid:y:08sequential_296/lstm_890/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_296/lstm_890/lstm_cell_890/add_1AddV2-sequential_296/lstm_890/lstm_cell_890/mul:z:0/sequential_296/lstm_890/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_296/lstm_890/lstm_cell_890/Sigmoid_2Sigmoid4sequential_296/lstm_890/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_296/lstm_890/lstm_cell_890/Relu_1Relu/sequential_296/lstm_890/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_296/lstm_890/lstm_cell_890/mul_2Mul3sequential_296/lstm_890/lstm_cell_890/Sigmoid_2:y:0:sequential_296/lstm_890/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_296/lstm_890/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_296/lstm_890/TensorArrayV2_1TensorListReserve>sequential_296/lstm_890/TensorArrayV2_1/element_shape:output:00sequential_296/lstm_890/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_296/lstm_890/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_296/lstm_890/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_296/lstm_890/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_296/lstm_890/whileWhile3sequential_296/lstm_890/while/loop_counter:output:09sequential_296/lstm_890/while/maximum_iterations:output:0%sequential_296/lstm_890/time:output:00sequential_296/lstm_890/TensorArrayV2_1:handle:0&sequential_296/lstm_890/zeros:output:0(sequential_296/lstm_890/zeros_1:output:00sequential_296/lstm_890/strided_slice_1:output:0Osequential_296/lstm_890/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_296_lstm_890_lstm_cell_890_matmul_readvariableop_resourceFsequential_296_lstm_890_lstm_cell_890_matmul_1_readvariableop_resourceEsequential_296_lstm_890_lstm_cell_890_biasadd_readvariableop_resource*
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
*sequential_296_lstm_890_while_body_5292227*6
cond.R,
*sequential_296_lstm_890_while_cond_5292226*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_296/lstm_890/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_296/lstm_890/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_296/lstm_890/while:output:3Qsequential_296/lstm_890/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_296/lstm_890/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_296/lstm_890/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_296/lstm_890/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_296/lstm_890/strided_slice_3StridedSliceCsequential_296/lstm_890/TensorArrayV2Stack/TensorListStack:tensor:06sequential_296/lstm_890/strided_slice_3/stack:output:08sequential_296/lstm_890/strided_slice_3/stack_1:output:08sequential_296/lstm_890/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_296/lstm_890/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_296/lstm_890/transpose_1	TransposeCsequential_296/lstm_890/TensorArrayV2Stack/TensorListStack:tensor:01sequential_296/lstm_890/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_296/lstm_890/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_296/dense_296/MatMul/ReadVariableOpReadVariableOp7sequential_296_dense_296_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_296/dense_296/MatMulMatMul0sequential_296/lstm_890/strided_slice_3:output:06sequential_296/dense_296/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_296/dense_296/BiasAdd/ReadVariableOpReadVariableOp8sequential_296_dense_296_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_296/dense_296/BiasAddBiasAdd)sequential_296/dense_296/MatMul:product:07sequential_296/dense_296/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_296/dense_296/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_296/dense_296/BiasAdd/ReadVariableOp/^sequential_296/dense_296/MatMul/ReadVariableOp=^sequential_296/lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp<^sequential_296/lstm_888/lstm_cell_888/MatMul/ReadVariableOp>^sequential_296/lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp^sequential_296/lstm_888/while=^sequential_296/lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp<^sequential_296/lstm_889/lstm_cell_889/MatMul/ReadVariableOp>^sequential_296/lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp^sequential_296/lstm_889/while=^sequential_296/lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp<^sequential_296/lstm_890/lstm_cell_890/MatMul/ReadVariableOp>^sequential_296/lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp^sequential_296/lstm_890/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_296/dense_296/BiasAdd/ReadVariableOp/sequential_296/dense_296/BiasAdd/ReadVariableOp2`
.sequential_296/dense_296/MatMul/ReadVariableOp.sequential_296/dense_296/MatMul/ReadVariableOp2|
<sequential_296/lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp<sequential_296/lstm_888/lstm_cell_888/BiasAdd/ReadVariableOp2z
;sequential_296/lstm_888/lstm_cell_888/MatMul/ReadVariableOp;sequential_296/lstm_888/lstm_cell_888/MatMul/ReadVariableOp2~
=sequential_296/lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp=sequential_296/lstm_888/lstm_cell_888/MatMul_1/ReadVariableOp2>
sequential_296/lstm_888/whilesequential_296/lstm_888/while2|
<sequential_296/lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp<sequential_296/lstm_889/lstm_cell_889/BiasAdd/ReadVariableOp2z
;sequential_296/lstm_889/lstm_cell_889/MatMul/ReadVariableOp;sequential_296/lstm_889/lstm_cell_889/MatMul/ReadVariableOp2~
=sequential_296/lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp=sequential_296/lstm_889/lstm_cell_889/MatMul_1/ReadVariableOp2>
sequential_296/lstm_889/whilesequential_296/lstm_889/while2|
<sequential_296/lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp<sequential_296/lstm_890/lstm_cell_890/BiasAdd/ReadVariableOp2z
;sequential_296/lstm_890/lstm_cell_890/MatMul/ReadVariableOp;sequential_296/lstm_890/lstm_cell_890/MatMul/ReadVariableOp2~
=sequential_296/lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp=sequential_296/lstm_890/lstm_cell_890/MatMul_1/ReadVariableOp2>
sequential_296/lstm_890/whilesequential_296/lstm_890/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_888_input
?
?
while_cond_5296346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5296346___redundant_placeholder05
1while_while_cond_5296346___redundant_placeholder15
1while_while_cond_5296346___redundant_placeholder25
1while_while_cond_5296346___redundant_placeholder3
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
*sequential_296_lstm_888_while_body_5291949L
Hsequential_296_lstm_888_while_sequential_296_lstm_888_while_loop_counterR
Nsequential_296_lstm_888_while_sequential_296_lstm_888_while_maximum_iterations-
)sequential_296_lstm_888_while_placeholder/
+sequential_296_lstm_888_while_placeholder_1/
+sequential_296_lstm_888_while_placeholder_2/
+sequential_296_lstm_888_while_placeholder_3K
Gsequential_296_lstm_888_while_sequential_296_lstm_888_strided_slice_1_0?
?sequential_296_lstm_888_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_888_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_296_lstm_888_while_lstm_cell_888_matmul_readvariableop_resource_0:	?a
Nsequential_296_lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource_0:	d?\
Msequential_296_lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource_0:	?*
&sequential_296_lstm_888_while_identity,
(sequential_296_lstm_888_while_identity_1,
(sequential_296_lstm_888_while_identity_2,
(sequential_296_lstm_888_while_identity_3,
(sequential_296_lstm_888_while_identity_4,
(sequential_296_lstm_888_while_identity_5I
Esequential_296_lstm_888_while_sequential_296_lstm_888_strided_slice_1?
?sequential_296_lstm_888_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_888_tensorarrayunstack_tensorlistfromtensor]
Jsequential_296_lstm_888_while_lstm_cell_888_matmul_readvariableop_resource:	?_
Lsequential_296_lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource:	d?Z
Ksequential_296_lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource:	???Bsequential_296/lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp?Asequential_296/lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp?Csequential_296/lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp?
Osequential_296/lstm_888/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_296/lstm_888/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_296_lstm_888_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_888_tensorarrayunstack_tensorlistfromtensor_0)sequential_296_lstm_888_while_placeholderXsequential_296/lstm_888/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_296/lstm_888/while/lstm_cell_888/MatMul/ReadVariableOpReadVariableOpLsequential_296_lstm_888_while_lstm_cell_888_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_296/lstm_888/while/lstm_cell_888/MatMulMatMulHsequential_296/lstm_888/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_296/lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_296/lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOpNsequential_296_lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_296/lstm_888/while/lstm_cell_888/MatMul_1MatMul+sequential_296_lstm_888_while_placeholder_2Ksequential_296/lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_296/lstm_888/while/lstm_cell_888/addAddV2<sequential_296/lstm_888/while/lstm_cell_888/MatMul:product:0>sequential_296/lstm_888/while/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_296/lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOpMsequential_296_lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_296/lstm_888/while/lstm_cell_888/BiasAddBiasAdd3sequential_296/lstm_888/while/lstm_cell_888/add:z:0Jsequential_296/lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_296/lstm_888/while/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_296/lstm_888/while/lstm_cell_888/splitSplitDsequential_296/lstm_888/while/lstm_cell_888/split/split_dim:output:0<sequential_296/lstm_888/while/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_296/lstm_888/while/lstm_cell_888/SigmoidSigmoid:sequential_296/lstm_888/while/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_296/lstm_888/while/lstm_cell_888/Sigmoid_1Sigmoid:sequential_296/lstm_888/while/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_296/lstm_888/while/lstm_cell_888/mulMul9sequential_296/lstm_888/while/lstm_cell_888/Sigmoid_1:y:0+sequential_296_lstm_888_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_296/lstm_888/while/lstm_cell_888/ReluRelu:sequential_296/lstm_888/while/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_296/lstm_888/while/lstm_cell_888/mul_1Mul7sequential_296/lstm_888/while/lstm_cell_888/Sigmoid:y:0>sequential_296/lstm_888/while/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_296/lstm_888/while/lstm_cell_888/add_1AddV23sequential_296/lstm_888/while/lstm_cell_888/mul:z:05sequential_296/lstm_888/while/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_296/lstm_888/while/lstm_cell_888/Sigmoid_2Sigmoid:sequential_296/lstm_888/while/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_296/lstm_888/while/lstm_cell_888/Relu_1Relu5sequential_296/lstm_888/while/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_296/lstm_888/while/lstm_cell_888/mul_2Mul9sequential_296/lstm_888/while/lstm_cell_888/Sigmoid_2:y:0@sequential_296/lstm_888/while/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_296/lstm_888/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_296_lstm_888_while_placeholder_1)sequential_296_lstm_888_while_placeholder5sequential_296/lstm_888/while/lstm_cell_888/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_296/lstm_888/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_296/lstm_888/while/addAddV2)sequential_296_lstm_888_while_placeholder,sequential_296/lstm_888/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_296/lstm_888/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_296/lstm_888/while/add_1AddV2Hsequential_296_lstm_888_while_sequential_296_lstm_888_while_loop_counter.sequential_296/lstm_888/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_296/lstm_888/while/IdentityIdentity'sequential_296/lstm_888/while/add_1:z:0#^sequential_296/lstm_888/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_888/while/Identity_1IdentityNsequential_296_lstm_888_while_sequential_296_lstm_888_while_maximum_iterations#^sequential_296/lstm_888/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_888/while/Identity_2Identity%sequential_296/lstm_888/while/add:z:0#^sequential_296/lstm_888/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_888/while/Identity_3IdentityRsequential_296/lstm_888/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_296/lstm_888/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_888/while/Identity_4Identity5sequential_296/lstm_888/while/lstm_cell_888/mul_2:z:0#^sequential_296/lstm_888/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_296/lstm_888/while/Identity_5Identity5sequential_296/lstm_888/while/lstm_cell_888/add_1:z:0#^sequential_296/lstm_888/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_296/lstm_888/while/NoOpNoOpC^sequential_296/lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOpB^sequential_296/lstm_888/while/lstm_cell_888/MatMul/ReadVariableOpD^sequential_296/lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_296_lstm_888_while_identity/sequential_296/lstm_888/while/Identity:output:0"]
(sequential_296_lstm_888_while_identity_11sequential_296/lstm_888/while/Identity_1:output:0"]
(sequential_296_lstm_888_while_identity_21sequential_296/lstm_888/while/Identity_2:output:0"]
(sequential_296_lstm_888_while_identity_31sequential_296/lstm_888/while/Identity_3:output:0"]
(sequential_296_lstm_888_while_identity_41sequential_296/lstm_888/while/Identity_4:output:0"]
(sequential_296_lstm_888_while_identity_51sequential_296/lstm_888/while/Identity_5:output:0"?
Ksequential_296_lstm_888_while_lstm_cell_888_biasadd_readvariableop_resourceMsequential_296_lstm_888_while_lstm_cell_888_biasadd_readvariableop_resource_0"?
Lsequential_296_lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resourceNsequential_296_lstm_888_while_lstm_cell_888_matmul_1_readvariableop_resource_0"?
Jsequential_296_lstm_888_while_lstm_cell_888_matmul_readvariableop_resourceLsequential_296_lstm_888_while_lstm_cell_888_matmul_readvariableop_resource_0"?
Esequential_296_lstm_888_while_sequential_296_lstm_888_strided_slice_1Gsequential_296_lstm_888_while_sequential_296_lstm_888_strided_slice_1_0"?
?sequential_296_lstm_888_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_888_tensorarrayunstack_tensorlistfromtensor?sequential_296_lstm_888_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_888_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_296/lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOpBsequential_296/lstm_888/while/lstm_cell_888/BiasAdd/ReadVariableOp2?
Asequential_296/lstm_888/while/lstm_cell_888/MatMul/ReadVariableOpAsequential_296/lstm_888/while/lstm_cell_888/MatMul/ReadVariableOp2?
Csequential_296/lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOpCsequential_296/lstm_888/while/lstm_cell_888/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5297516

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
+__inference_dense_296_layer_call_fn_5297342

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
F__inference_dense_296_layer_call_and_return_conditional_losses_5293834o
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
?K
?
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296431
inputs_0?
,lstm_cell_889_matmul_readvariableop_resource:	d?A
.lstm_cell_889_matmul_1_readvariableop_resource:	2?<
-lstm_cell_889_biasadd_readvariableop_resource:	?
identity??$lstm_cell_889/BiasAdd/ReadVariableOp?#lstm_cell_889/MatMul/ReadVariableOp?%lstm_cell_889/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_889/MatMul/ReadVariableOpReadVariableOp,lstm_cell_889_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_889/MatMulMatMulstrided_slice_2:output:0+lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_889_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_889/MatMul_1MatMulzeros:output:0-lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_889/addAddV2lstm_cell_889/MatMul:product:0 lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_889_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_889/BiasAddBiasAddlstm_cell_889/add:z:0,lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_889/splitSplit&lstm_cell_889/split/split_dim:output:0lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_889/SigmoidSigmoidlstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_1Sigmoidlstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_889/mulMullstm_cell_889/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_889/ReluRelulstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_1Mullstm_cell_889/Sigmoid:y:0 lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_889/add_1AddV2lstm_cell_889/mul:z:0lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_2Sigmoidlstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_889/Relu_1Relulstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_2Mullstm_cell_889/Sigmoid_2:y:0"lstm_cell_889/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_889_matmul_readvariableop_resource.lstm_cell_889_matmul_1_readvariableop_resource-lstm_cell_889_biasadd_readvariableop_resource*
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
while_body_5296347*
condR
while_cond_5296346*K
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
NoOpNoOp%^lstm_cell_889/BiasAdd/ReadVariableOp$^lstm_cell_889/MatMul/ReadVariableOp&^lstm_cell_889/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_889/BiasAdd/ReadVariableOp$lstm_cell_889/BiasAdd/ReadVariableOp2J
#lstm_cell_889/MatMul/ReadVariableOp#lstm_cell_889/MatMul/ReadVariableOp2N
%lstm_cell_889/MatMul_1/ReadVariableOp%lstm_cell_889/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296288
inputs_0?
,lstm_cell_889_matmul_readvariableop_resource:	d?A
.lstm_cell_889_matmul_1_readvariableop_resource:	2?<
-lstm_cell_889_biasadd_readvariableop_resource:	?
identity??$lstm_cell_889/BiasAdd/ReadVariableOp?#lstm_cell_889/MatMul/ReadVariableOp?%lstm_cell_889/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_889/MatMul/ReadVariableOpReadVariableOp,lstm_cell_889_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_889/MatMulMatMulstrided_slice_2:output:0+lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_889_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_889/MatMul_1MatMulzeros:output:0-lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_889/addAddV2lstm_cell_889/MatMul:product:0 lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_889_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_889/BiasAddBiasAddlstm_cell_889/add:z:0,lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_889/splitSplit&lstm_cell_889/split/split_dim:output:0lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_889/SigmoidSigmoidlstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_1Sigmoidlstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_889/mulMullstm_cell_889/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_889/ReluRelulstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_1Mullstm_cell_889/Sigmoid:y:0 lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_889/add_1AddV2lstm_cell_889/mul:z:0lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_889/Sigmoid_2Sigmoidlstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_889/Relu_1Relulstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_889/mul_2Mullstm_cell_889/Sigmoid_2:y:0"lstm_cell_889/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_889_matmul_readvariableop_resource.lstm_cell_889_matmul_1_readvariableop_resource-lstm_cell_889_biasadd_readvariableop_resource*
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
while_body_5296204*
condR
while_cond_5296203*K
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
NoOpNoOp%^lstm_cell_889/BiasAdd/ReadVariableOp$^lstm_cell_889/MatMul/ReadVariableOp&^lstm_cell_889/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_889/BiasAdd/ReadVariableOp$lstm_cell_889/BiasAdd/ReadVariableOp2J
#lstm_cell_889/MatMul/ReadVariableOp#lstm_cell_889/MatMul/ReadVariableOp2N
%lstm_cell_889/MatMul_1/ReadVariableOp%lstm_cell_889/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_888_layer_call_and_return_conditional_losses_5294362

inputs?
,lstm_cell_888_matmul_readvariableop_resource:	?A
.lstm_cell_888_matmul_1_readvariableop_resource:	d?<
-lstm_cell_888_biasadd_readvariableop_resource:	?
identity??$lstm_cell_888/BiasAdd/ReadVariableOp?#lstm_cell_888/MatMul/ReadVariableOp?%lstm_cell_888/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_888/MatMul/ReadVariableOpReadVariableOp,lstm_cell_888_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_888/MatMulMatMulstrided_slice_2:output:0+lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_888_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_888/MatMul_1MatMulzeros:output:0-lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_888/addAddV2lstm_cell_888/MatMul:product:0 lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_888_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_888/BiasAddBiasAddlstm_cell_888/add:z:0,lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_888/splitSplit&lstm_cell_888/split/split_dim:output:0lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_888/SigmoidSigmoidlstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_1Sigmoidlstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_888/mulMullstm_cell_888/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_888/ReluRelulstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_1Mullstm_cell_888/Sigmoid:y:0 lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_888/add_1AddV2lstm_cell_888/mul:z:0lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_888/Sigmoid_2Sigmoidlstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_888/Relu_1Relulstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_888/mul_2Mullstm_cell_888/Sigmoid_2:y:0"lstm_cell_888/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_888_matmul_readvariableop_resource.lstm_cell_888_matmul_1_readvariableop_resource-lstm_cell_888_biasadd_readvariableop_resource*
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
while_body_5294278*
condR
while_cond_5294277*K
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
NoOpNoOp%^lstm_cell_888/BiasAdd/ReadVariableOp$^lstm_cell_888/MatMul/ReadVariableOp&^lstm_cell_888/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_888/BiasAdd/ReadVariableOp$lstm_cell_888/BiasAdd/ReadVariableOp2J
#lstm_cell_888/MatMul/ReadVariableOp#lstm_cell_888/MatMul/ReadVariableOp2N
%lstm_cell_888/MatMul_1/ReadVariableOp%lstm_cell_888/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_296_lstm_889_while_body_5292088L
Hsequential_296_lstm_889_while_sequential_296_lstm_889_while_loop_counterR
Nsequential_296_lstm_889_while_sequential_296_lstm_889_while_maximum_iterations-
)sequential_296_lstm_889_while_placeholder/
+sequential_296_lstm_889_while_placeholder_1/
+sequential_296_lstm_889_while_placeholder_2/
+sequential_296_lstm_889_while_placeholder_3K
Gsequential_296_lstm_889_while_sequential_296_lstm_889_strided_slice_1_0?
?sequential_296_lstm_889_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_889_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_296_lstm_889_while_lstm_cell_889_matmul_readvariableop_resource_0:	d?a
Nsequential_296_lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource_0:	2?\
Msequential_296_lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource_0:	?*
&sequential_296_lstm_889_while_identity,
(sequential_296_lstm_889_while_identity_1,
(sequential_296_lstm_889_while_identity_2,
(sequential_296_lstm_889_while_identity_3,
(sequential_296_lstm_889_while_identity_4,
(sequential_296_lstm_889_while_identity_5I
Esequential_296_lstm_889_while_sequential_296_lstm_889_strided_slice_1?
?sequential_296_lstm_889_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_889_tensorarrayunstack_tensorlistfromtensor]
Jsequential_296_lstm_889_while_lstm_cell_889_matmul_readvariableop_resource:	d?_
Lsequential_296_lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource:	2?Z
Ksequential_296_lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource:	???Bsequential_296/lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp?Asequential_296/lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp?Csequential_296/lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp?
Osequential_296/lstm_889/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_296/lstm_889/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_296_lstm_889_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_889_tensorarrayunstack_tensorlistfromtensor_0)sequential_296_lstm_889_while_placeholderXsequential_296/lstm_889/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_296/lstm_889/while/lstm_cell_889/MatMul/ReadVariableOpReadVariableOpLsequential_296_lstm_889_while_lstm_cell_889_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_296/lstm_889/while/lstm_cell_889/MatMulMatMulHsequential_296/lstm_889/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_296/lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_296/lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOpReadVariableOpNsequential_296_lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_296/lstm_889/while/lstm_cell_889/MatMul_1MatMul+sequential_296_lstm_889_while_placeholder_2Ksequential_296/lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_296/lstm_889/while/lstm_cell_889/addAddV2<sequential_296/lstm_889/while/lstm_cell_889/MatMul:product:0>sequential_296/lstm_889/while/lstm_cell_889/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_296/lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOpReadVariableOpMsequential_296_lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_296/lstm_889/while/lstm_cell_889/BiasAddBiasAdd3sequential_296/lstm_889/while/lstm_cell_889/add:z:0Jsequential_296/lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_296/lstm_889/while/lstm_cell_889/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_296/lstm_889/while/lstm_cell_889/splitSplitDsequential_296/lstm_889/while/lstm_cell_889/split/split_dim:output:0<sequential_296/lstm_889/while/lstm_cell_889/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_296/lstm_889/while/lstm_cell_889/SigmoidSigmoid:sequential_296/lstm_889/while/lstm_cell_889/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_296/lstm_889/while/lstm_cell_889/Sigmoid_1Sigmoid:sequential_296/lstm_889/while/lstm_cell_889/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_296/lstm_889/while/lstm_cell_889/mulMul9sequential_296/lstm_889/while/lstm_cell_889/Sigmoid_1:y:0+sequential_296_lstm_889_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_296/lstm_889/while/lstm_cell_889/ReluRelu:sequential_296/lstm_889/while/lstm_cell_889/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_296/lstm_889/while/lstm_cell_889/mul_1Mul7sequential_296/lstm_889/while/lstm_cell_889/Sigmoid:y:0>sequential_296/lstm_889/while/lstm_cell_889/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_296/lstm_889/while/lstm_cell_889/add_1AddV23sequential_296/lstm_889/while/lstm_cell_889/mul:z:05sequential_296/lstm_889/while/lstm_cell_889/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_296/lstm_889/while/lstm_cell_889/Sigmoid_2Sigmoid:sequential_296/lstm_889/while/lstm_cell_889/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_296/lstm_889/while/lstm_cell_889/Relu_1Relu5sequential_296/lstm_889/while/lstm_cell_889/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_296/lstm_889/while/lstm_cell_889/mul_2Mul9sequential_296/lstm_889/while/lstm_cell_889/Sigmoid_2:y:0@sequential_296/lstm_889/while/lstm_cell_889/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_296/lstm_889/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_296_lstm_889_while_placeholder_1)sequential_296_lstm_889_while_placeholder5sequential_296/lstm_889/while/lstm_cell_889/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_296/lstm_889/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_296/lstm_889/while/addAddV2)sequential_296_lstm_889_while_placeholder,sequential_296/lstm_889/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_296/lstm_889/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_296/lstm_889/while/add_1AddV2Hsequential_296_lstm_889_while_sequential_296_lstm_889_while_loop_counter.sequential_296/lstm_889/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_296/lstm_889/while/IdentityIdentity'sequential_296/lstm_889/while/add_1:z:0#^sequential_296/lstm_889/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_889/while/Identity_1IdentityNsequential_296_lstm_889_while_sequential_296_lstm_889_while_maximum_iterations#^sequential_296/lstm_889/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_889/while/Identity_2Identity%sequential_296/lstm_889/while/add:z:0#^sequential_296/lstm_889/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_889/while/Identity_3IdentityRsequential_296/lstm_889/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_296/lstm_889/while/NoOp*
T0*
_output_shapes
: ?
(sequential_296/lstm_889/while/Identity_4Identity5sequential_296/lstm_889/while/lstm_cell_889/mul_2:z:0#^sequential_296/lstm_889/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_296/lstm_889/while/Identity_5Identity5sequential_296/lstm_889/while/lstm_cell_889/add_1:z:0#^sequential_296/lstm_889/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_296/lstm_889/while/NoOpNoOpC^sequential_296/lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOpB^sequential_296/lstm_889/while/lstm_cell_889/MatMul/ReadVariableOpD^sequential_296/lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_296_lstm_889_while_identity/sequential_296/lstm_889/while/Identity:output:0"]
(sequential_296_lstm_889_while_identity_11sequential_296/lstm_889/while/Identity_1:output:0"]
(sequential_296_lstm_889_while_identity_21sequential_296/lstm_889/while/Identity_2:output:0"]
(sequential_296_lstm_889_while_identity_31sequential_296/lstm_889/while/Identity_3:output:0"]
(sequential_296_lstm_889_while_identity_41sequential_296/lstm_889/while/Identity_4:output:0"]
(sequential_296_lstm_889_while_identity_51sequential_296/lstm_889/while/Identity_5:output:0"?
Ksequential_296_lstm_889_while_lstm_cell_889_biasadd_readvariableop_resourceMsequential_296_lstm_889_while_lstm_cell_889_biasadd_readvariableop_resource_0"?
Lsequential_296_lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resourceNsequential_296_lstm_889_while_lstm_cell_889_matmul_1_readvariableop_resource_0"?
Jsequential_296_lstm_889_while_lstm_cell_889_matmul_readvariableop_resourceLsequential_296_lstm_889_while_lstm_cell_889_matmul_readvariableop_resource_0"?
Esequential_296_lstm_889_while_sequential_296_lstm_889_strided_slice_1Gsequential_296_lstm_889_while_sequential_296_lstm_889_strided_slice_1_0"?
?sequential_296_lstm_889_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_889_tensorarrayunstack_tensorlistfromtensor?sequential_296_lstm_889_while_tensorarrayv2read_tensorlistgetitem_sequential_296_lstm_889_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_296/lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOpBsequential_296/lstm_889/while/lstm_cell_889/BiasAdd/ReadVariableOp2?
Asequential_296/lstm_889/while/lstm_cell_889/MatMul/ReadVariableOpAsequential_296/lstm_889/while/lstm_cell_889/MatMul/ReadVariableOp2?
Csequential_296/lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOpCsequential_296/lstm_889/while/lstm_cell_889/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_889_while_cond_5294828.
*lstm_889_while_lstm_889_while_loop_counter4
0lstm_889_while_lstm_889_while_maximum_iterations
lstm_889_while_placeholder 
lstm_889_while_placeholder_1 
lstm_889_while_placeholder_2 
lstm_889_while_placeholder_30
,lstm_889_while_less_lstm_889_strided_slice_1G
Clstm_889_while_lstm_889_while_cond_5294828___redundant_placeholder0G
Clstm_889_while_lstm_889_while_cond_5294828___redundant_placeholder1G
Clstm_889_while_lstm_889_while_cond_5294828___redundant_placeholder2G
Clstm_889_while_lstm_889_while_cond_5294828___redundant_placeholder3
lstm_889_while_identity
?
lstm_889/while/LessLesslstm_889_while_placeholder,lstm_889_while_less_lstm_889_strided_slice_1*
T0*
_output_shapes
: ]
lstm_889/while/IdentityIdentitylstm_889/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_889_while_identity lstm_889/while/Identity:output:0*(
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
while_cond_5294277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5294277___redundant_placeholder05
1while_while_cond_5294277___redundant_placeholder15
1while_while_cond_5294277___redundant_placeholder25
1while_while_cond_5294277___redundant_placeholder3
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
*__inference_lstm_890_layer_call_fn_5296739
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5293358o
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5297190

inputs>
,lstm_cell_890_matmul_readvariableop_resource:2(@
.lstm_cell_890_matmul_1_readvariableop_resource:
(;
-lstm_cell_890_biasadd_readvariableop_resource:(
identity??$lstm_cell_890/BiasAdd/ReadVariableOp?#lstm_cell_890/MatMul/ReadVariableOp?%lstm_cell_890/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_890/MatMul/ReadVariableOpReadVariableOp,lstm_cell_890_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_890/MatMulMatMulstrided_slice_2:output:0+lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_890_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_890/MatMul_1MatMulzeros:output:0-lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_890/addAddV2lstm_cell_890/MatMul:product:0 lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_890_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_890/BiasAddBiasAddlstm_cell_890/add:z:0,lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_890/splitSplit&lstm_cell_890/split/split_dim:output:0lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_890/SigmoidSigmoidlstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_1Sigmoidlstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_890/mulMullstm_cell_890/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_890/ReluRelulstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_1Mullstm_cell_890/Sigmoid:y:0 lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_890/add_1AddV2lstm_cell_890/mul:z:0lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_890/Sigmoid_2Sigmoidlstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_890/Relu_1Relulstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_890/mul_2Mullstm_cell_890/Sigmoid_2:y:0"lstm_cell_890/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_890_matmul_readvariableop_resource.lstm_cell_890_matmul_1_readvariableop_resource-lstm_cell_890_biasadd_readvariableop_resource*
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
while_body_5297106*
condR
while_cond_5297105*K
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
NoOpNoOp%^lstm_cell_890/BiasAdd/ReadVariableOp$^lstm_cell_890/MatMul/ReadVariableOp&^lstm_cell_890/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_890/BiasAdd/ReadVariableOp$lstm_cell_890/BiasAdd/ReadVariableOp2J
#lstm_cell_890/MatMul/ReadVariableOp#lstm_cell_890/MatMul/ReadVariableOp2N
%lstm_cell_890/MatMul_1/ReadVariableOp%lstm_cell_890/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_890_layer_call_and_return_conditional_losses_5293358

inputs'
lstm_cell_890_5293276:2('
lstm_cell_890_5293278:
(#
lstm_cell_890_5293280:(
identity??%lstm_cell_890/StatefulPartitionedCall?while;
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
%lstm_cell_890/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_890_5293276lstm_cell_890_5293278lstm_cell_890_5293280*
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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5293230n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_890_5293276lstm_cell_890_5293278lstm_cell_890_5293280*
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
while_body_5293289*
condR
while_cond_5293288*K
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
NoOpNoOp&^lstm_cell_890/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_890/StatefulPartitionedCall%lstm_cell_890/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_888_layer_call_and_return_conditional_losses_5292467

inputs(
lstm_cell_888_5292385:	?(
lstm_cell_888_5292387:	d?$
lstm_cell_888_5292389:	?
identity??%lstm_cell_888/StatefulPartitionedCall?while;
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
%lstm_cell_888/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_888_5292385lstm_cell_888_5292387lstm_cell_888_5292389*
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
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5292384n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_888_5292385lstm_cell_888_5292387lstm_cell_888_5292389*
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
while_body_5292398*
condR
while_cond_5292397*K
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
NoOpNoOp&^lstm_cell_888/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_888/StatefulPartitionedCall%lstm_cell_888/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5292384

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
while_body_5293098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_890_5293122_0:2(/
while_lstm_cell_890_5293124_0:
(+
while_lstm_cell_890_5293126_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_890_5293122:2(-
while_lstm_cell_890_5293124:
()
while_lstm_cell_890_5293126:(??+while/lstm_cell_890/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_890/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_890_5293122_0while_lstm_cell_890_5293124_0while_lstm_cell_890_5293126_0*
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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5293084?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_890/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_890/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_890/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_890/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_890_5293122while_lstm_cell_890_5293122_0"<
while_lstm_cell_890_5293124while_lstm_cell_890_5293124_0"<
while_lstm_cell_890_5293126while_lstm_cell_890_5293126_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_890/StatefulPartitionedCall+while/lstm_cell_890/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_5296017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_888_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_888_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_888_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_888_matmul_readvariableop_resource:	?G
4while_lstm_cell_888_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_888_biasadd_readvariableop_resource:	???*while/lstm_cell_888/BiasAdd/ReadVariableOp?)while/lstm_cell_888/MatMul/ReadVariableOp?+while/lstm_cell_888/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_888/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_888_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_888/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_888/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_888/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_888_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_888/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_888/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_888/addAddV2$while/lstm_cell_888/MatMul:product:0&while/lstm_cell_888/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_888/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_888_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_888/BiasAddBiasAddwhile/lstm_cell_888/add:z:02while/lstm_cell_888/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_888/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_888/splitSplit,while/lstm_cell_888/split/split_dim:output:0$while/lstm_cell_888/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_888/SigmoidSigmoid"while/lstm_cell_888/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_1Sigmoid"while/lstm_cell_888/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mulMul!while/lstm_cell_888/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_888/ReluRelu"while/lstm_cell_888/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_1Mulwhile/lstm_cell_888/Sigmoid:y:0&while/lstm_cell_888/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/add_1AddV2while/lstm_cell_888/mul:z:0while/lstm_cell_888/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_888/Sigmoid_2Sigmoid"while/lstm_cell_888/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_888/Relu_1Reluwhile/lstm_cell_888/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_888/mul_2Mul!while/lstm_cell_888/Sigmoid_2:y:0(while/lstm_cell_888/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_888/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_888/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_888/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_888/BiasAdd/ReadVariableOp*^while/lstm_cell_888/MatMul/ReadVariableOp,^while/lstm_cell_888/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_888_biasadd_readvariableop_resource5while_lstm_cell_888_biasadd_readvariableop_resource_0"n
4while_lstm_cell_888_matmul_1_readvariableop_resource6while_lstm_cell_888_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_888_matmul_readvariableop_resource4while_lstm_cell_888_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_888/BiasAdd/ReadVariableOp*while/lstm_cell_888/BiasAdd/ReadVariableOp2V
)while/lstm_cell_888/MatMul/ReadVariableOp)while/lstm_cell_888/MatMul/ReadVariableOp2Z
+while/lstm_cell_888/MatMul_1/ReadVariableOp+while/lstm_cell_888/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5297249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_890_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_890_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_890_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_890_matmul_readvariableop_resource:2(F
4while_lstm_cell_890_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_890_biasadd_readvariableop_resource:(??*while/lstm_cell_890/BiasAdd/ReadVariableOp?)while/lstm_cell_890/MatMul/ReadVariableOp?+while/lstm_cell_890/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_890/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_890_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_890/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_890_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_890/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_890/addAddV2$while/lstm_cell_890/MatMul:product:0&while/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_890_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_890/BiasAddBiasAddwhile/lstm_cell_890/add:z:02while/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_890/splitSplit,while/lstm_cell_890/split/split_dim:output:0$while/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_890/SigmoidSigmoid"while/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_1Sigmoid"while/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mulMul!while/lstm_cell_890/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_890/ReluRelu"while/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_1Mulwhile/lstm_cell_890/Sigmoid:y:0&while/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/add_1AddV2while/lstm_cell_890/mul:z:0while/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_2Sigmoid"while/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_890/Relu_1Reluwhile/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_2Mul!while/lstm_cell_890/Sigmoid_2:y:0(while/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_890/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_890/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_890/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_890/BiasAdd/ReadVariableOp*^while/lstm_cell_890/MatMul/ReadVariableOp,^while/lstm_cell_890/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_890_biasadd_readvariableop_resource5while_lstm_cell_890_biasadd_readvariableop_resource_0"n
4while_lstm_cell_890_matmul_1_readvariableop_resource6while_lstm_cell_890_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_890_matmul_readvariableop_resource4while_lstm_cell_890_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_890/BiasAdd/ReadVariableOp*while/lstm_cell_890/BiasAdd/ReadVariableOp2V
)while/lstm_cell_890/MatMul/ReadVariableOp)while/lstm_cell_890/MatMul/ReadVariableOp2Z
+while/lstm_cell_890/MatMul_1/ReadVariableOp+while/lstm_cell_890/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5293732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_890_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_890_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_890_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_890_matmul_readvariableop_resource:2(F
4while_lstm_cell_890_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_890_biasadd_readvariableop_resource:(??*while/lstm_cell_890/BiasAdd/ReadVariableOp?)while/lstm_cell_890/MatMul/ReadVariableOp?+while/lstm_cell_890/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_890/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_890_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_890/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_890/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_890/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_890_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_890/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_890/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_890/addAddV2$while/lstm_cell_890/MatMul:product:0&while/lstm_cell_890/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_890/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_890_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_890/BiasAddBiasAddwhile/lstm_cell_890/add:z:02while/lstm_cell_890/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_890/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_890/splitSplit,while/lstm_cell_890/split/split_dim:output:0$while/lstm_cell_890/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_890/SigmoidSigmoid"while/lstm_cell_890/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_1Sigmoid"while/lstm_cell_890/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mulMul!while/lstm_cell_890/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_890/ReluRelu"while/lstm_cell_890/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_1Mulwhile/lstm_cell_890/Sigmoid:y:0&while/lstm_cell_890/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/add_1AddV2while/lstm_cell_890/mul:z:0while/lstm_cell_890/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_890/Sigmoid_2Sigmoid"while/lstm_cell_890/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_890/Relu_1Reluwhile/lstm_cell_890/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_890/mul_2Mul!while/lstm_cell_890/Sigmoid_2:y:0(while/lstm_cell_890/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_890/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_890/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_890/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_890/BiasAdd/ReadVariableOp*^while/lstm_cell_890/MatMul/ReadVariableOp,^while/lstm_cell_890/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_890_biasadd_readvariableop_resource5while_lstm_cell_890_biasadd_readvariableop_resource_0"n
4while_lstm_cell_890_matmul_1_readvariableop_resource6while_lstm_cell_890_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_890_matmul_readvariableop_resource4while_lstm_cell_890_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_890/BiasAdd/ReadVariableOp*while/lstm_cell_890/BiasAdd/ReadVariableOp2V
)while/lstm_cell_890/MatMul/ReadVariableOp)while/lstm_cell_890/MatMul/ReadVariableOp2Z
+while/lstm_cell_890/MatMul_1/ReadVariableOp+while/lstm_cell_890/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_888_input;
 serving_default_lstm_888_input:0?????????=
	dense_2960
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
2dense_296/kernel
:2dense_296/bias
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
0:.	?2lstm_888/lstm_cell_888/kernel
::8	d?2'lstm_888/lstm_cell_888/recurrent_kernel
*:(?2lstm_888/lstm_cell_888/bias
0:.	d?2lstm_889/lstm_cell_889/kernel
::8	2?2'lstm_889/lstm_cell_889/recurrent_kernel
*:(?2lstm_889/lstm_cell_889/bias
/:-2(2lstm_890/lstm_cell_890/kernel
9:7
(2'lstm_890/lstm_cell_890/recurrent_kernel
):'(2lstm_890/lstm_cell_890/bias
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
2Adam/dense_296/kernel/m
!:2Adam/dense_296/bias/m
5:3	?2$Adam/lstm_888/lstm_cell_888/kernel/m
?:=	d?2.Adam/lstm_888/lstm_cell_888/recurrent_kernel/m
/:-?2"Adam/lstm_888/lstm_cell_888/bias/m
5:3	d?2$Adam/lstm_889/lstm_cell_889/kernel/m
?:=	2?2.Adam/lstm_889/lstm_cell_889/recurrent_kernel/m
/:-?2"Adam/lstm_889/lstm_cell_889/bias/m
4:22(2$Adam/lstm_890/lstm_cell_890/kernel/m
>:<
(2.Adam/lstm_890/lstm_cell_890/recurrent_kernel/m
.:,(2"Adam/lstm_890/lstm_cell_890/bias/m
':%
2Adam/dense_296/kernel/v
!:2Adam/dense_296/bias/v
5:3	?2$Adam/lstm_888/lstm_cell_888/kernel/v
?:=	d?2.Adam/lstm_888/lstm_cell_888/recurrent_kernel/v
/:-?2"Adam/lstm_888/lstm_cell_888/bias/v
5:3	d?2$Adam/lstm_889/lstm_cell_889/kernel/v
?:=	2?2.Adam/lstm_889/lstm_cell_889/recurrent_kernel/v
/:-?2"Adam/lstm_889/lstm_cell_889/bias/v
4:22(2$Adam/lstm_890/lstm_cell_890/kernel/v
>:<
(2.Adam/lstm_890/lstm_cell_890/recurrent_kernel/v
.:,(2"Adam/lstm_890/lstm_cell_890/bias/v
?2?
0__inference_sequential_296_layer_call_fn_5293866
0__inference_sequential_296_layer_call_fn_5294604
0__inference_sequential_296_layer_call_fn_5294631
0__inference_sequential_296_layer_call_fn_5294482?
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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5295058
K__inference_sequential_296_layer_call_and_return_conditional_losses_5295485
K__inference_sequential_296_layer_call_and_return_conditional_losses_5294512
K__inference_sequential_296_layer_call_and_return_conditional_losses_5294542?
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
"__inference__wrapped_model_5292317lstm_888_input"?
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
*__inference_lstm_888_layer_call_fn_5295496
*__inference_lstm_888_layer_call_fn_5295507
*__inference_lstm_888_layer_call_fn_5295518
*__inference_lstm_888_layer_call_fn_5295529?
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5295672
E__inference_lstm_888_layer_call_and_return_conditional_losses_5295815
E__inference_lstm_888_layer_call_and_return_conditional_losses_5295958
E__inference_lstm_888_layer_call_and_return_conditional_losses_5296101?
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
*__inference_lstm_889_layer_call_fn_5296112
*__inference_lstm_889_layer_call_fn_5296123
*__inference_lstm_889_layer_call_fn_5296134
*__inference_lstm_889_layer_call_fn_5296145?
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296288
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296431
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296574
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296717?
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
*__inference_lstm_890_layer_call_fn_5296728
*__inference_lstm_890_layer_call_fn_5296739
*__inference_lstm_890_layer_call_fn_5296750
*__inference_lstm_890_layer_call_fn_5296761?
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5296904
E__inference_lstm_890_layer_call_and_return_conditional_losses_5297047
E__inference_lstm_890_layer_call_and_return_conditional_losses_5297190
E__inference_lstm_890_layer_call_and_return_conditional_losses_5297333?
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
+__inference_dense_296_layer_call_fn_5297342?
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
F__inference_dense_296_layer_call_and_return_conditional_losses_5297352?
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
%__inference_signature_wrapper_5294577lstm_888_input"?
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
/__inference_lstm_cell_888_layer_call_fn_5297369
/__inference_lstm_cell_888_layer_call_fn_5297386?
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
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5297418
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5297450?
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
/__inference_lstm_cell_889_layer_call_fn_5297467
/__inference_lstm_cell_889_layer_call_fn_5297484?
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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5297516
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5297548?
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
/__inference_lstm_cell_890_layer_call_fn_5297565
/__inference_lstm_cell_890_layer_call_fn_5297582?
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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5297614
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5297646?
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
"__inference__wrapped_model_5292317?()*+,-./0;?8
1?.
,?)
lstm_888_input?????????
? "5?2
0
	dense_296#? 
	dense_296??????????
F__inference_dense_296_layer_call_and_return_conditional_losses_5297352\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_296_layer_call_fn_5297342O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_888_layer_call_and_return_conditional_losses_5295672?()*O?L
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5295815?()*O?L
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5295958q()*??<
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
E__inference_lstm_888_layer_call_and_return_conditional_losses_5296101q()*??<
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
*__inference_lstm_888_layer_call_fn_5295496}()*O?L
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
*__inference_lstm_888_layer_call_fn_5295507}()*O?L
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
*__inference_lstm_888_layer_call_fn_5295518d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_888_layer_call_fn_5295529d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296288?+,-O?L
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296431?+,-O?L
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296574q+,-??<
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
E__inference_lstm_889_layer_call_and_return_conditional_losses_5296717q+,-??<
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
*__inference_lstm_889_layer_call_fn_5296112}+,-O?L
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
*__inference_lstm_889_layer_call_fn_5296123}+,-O?L
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
*__inference_lstm_889_layer_call_fn_5296134d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_889_layer_call_fn_5296145d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_890_layer_call_and_return_conditional_losses_5296904}./0O?L
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5297047}./0O?L
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5297190m./0??<
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
E__inference_lstm_890_layer_call_and_return_conditional_losses_5297333m./0??<
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
*__inference_lstm_890_layer_call_fn_5296728p./0O?L
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
*__inference_lstm_890_layer_call_fn_5296739p./0O?L
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
*__inference_lstm_890_layer_call_fn_5296750`./0??<
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
*__inference_lstm_890_layer_call_fn_5296761`./0??<
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
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5297418?()*??}
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
J__inference_lstm_cell_888_layer_call_and_return_conditional_losses_5297450?()*??}
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
/__inference_lstm_cell_888_layer_call_fn_5297369?()*??}
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
/__inference_lstm_cell_888_layer_call_fn_5297386?()*??}
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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5297516?+,-??}
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
J__inference_lstm_cell_889_layer_call_and_return_conditional_losses_5297548?+,-??}
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
/__inference_lstm_cell_889_layer_call_fn_5297467?+,-??}
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
/__inference_lstm_cell_889_layer_call_fn_5297484?+,-??}
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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5297614?./0??}
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
J__inference_lstm_cell_890_layer_call_and_return_conditional_losses_5297646?./0??}
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
/__inference_lstm_cell_890_layer_call_fn_5297565?./0??}
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
/__inference_lstm_cell_890_layer_call_fn_5297582?./0??}
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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5294512y()*+,-./0C?@
9?6
,?)
lstm_888_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_296_layer_call_and_return_conditional_losses_5294542y()*+,-./0C?@
9?6
,?)
lstm_888_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_296_layer_call_and_return_conditional_losses_5295058q()*+,-./0;?8
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
K__inference_sequential_296_layer_call_and_return_conditional_losses_5295485q()*+,-./0;?8
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
0__inference_sequential_296_layer_call_fn_5293866l()*+,-./0C?@
9?6
,?)
lstm_888_input?????????
p 

 
? "???????????
0__inference_sequential_296_layer_call_fn_5294482l()*+,-./0C?@
9?6
,?)
lstm_888_input?????????
p

 
? "???????????
0__inference_sequential_296_layer_call_fn_5294604d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_296_layer_call_fn_5294631d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5294577?()*+,-./0M?J
? 
C?@
>
lstm_888_input,?)
lstm_888_input?????????"5?2
0
	dense_296#? 
	dense_296?????????