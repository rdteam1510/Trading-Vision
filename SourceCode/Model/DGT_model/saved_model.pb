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
dense_222/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_222/kernel
u
$dense_222/kernel/Read/ReadVariableOpReadVariableOpdense_222/kernel*
_output_shapes

:
*
dtype0
t
dense_222/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_222/bias
m
"dense_222/bias/Read/ReadVariableOpReadVariableOpdense_222/bias*
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
lstm_666/lstm_cell_666/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_666/lstm_cell_666/kernel
?
1lstm_666/lstm_cell_666/kernel/Read/ReadVariableOpReadVariableOplstm_666/lstm_cell_666/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_666/lstm_cell_666/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_666/lstm_cell_666/recurrent_kernel
?
;lstm_666/lstm_cell_666/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_666/lstm_cell_666/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_666/lstm_cell_666/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_666/lstm_cell_666/bias
?
/lstm_666/lstm_cell_666/bias/Read/ReadVariableOpReadVariableOplstm_666/lstm_cell_666/bias*
_output_shapes	
:?*
dtype0
?
lstm_667/lstm_cell_667/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_667/lstm_cell_667/kernel
?
1lstm_667/lstm_cell_667/kernel/Read/ReadVariableOpReadVariableOplstm_667/lstm_cell_667/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_667/lstm_cell_667/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_667/lstm_cell_667/recurrent_kernel
?
;lstm_667/lstm_cell_667/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_667/lstm_cell_667/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_667/lstm_cell_667/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_667/lstm_cell_667/bias
?
/lstm_667/lstm_cell_667/bias/Read/ReadVariableOpReadVariableOplstm_667/lstm_cell_667/bias*
_output_shapes	
:?*
dtype0
?
lstm_668/lstm_cell_668/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_668/lstm_cell_668/kernel
?
1lstm_668/lstm_cell_668/kernel/Read/ReadVariableOpReadVariableOplstm_668/lstm_cell_668/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_668/lstm_cell_668/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_668/lstm_cell_668/recurrent_kernel
?
;lstm_668/lstm_cell_668/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_668/lstm_cell_668/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_668/lstm_cell_668/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_668/lstm_cell_668/bias
?
/lstm_668/lstm_cell_668/bias/Read/ReadVariableOpReadVariableOplstm_668/lstm_cell_668/bias*
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
Adam/dense_222/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_222/kernel/m
?
+Adam/dense_222/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_222/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_222/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_222/bias/m
{
)Adam/dense_222/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_222/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_666/lstm_cell_666/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_666/lstm_cell_666/kernel/m
?
8Adam/lstm_666/lstm_cell_666/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_666/lstm_cell_666/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_666/lstm_cell_666/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_666/lstm_cell_666/recurrent_kernel/m
?
BAdam/lstm_666/lstm_cell_666/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_666/lstm_cell_666/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_666/lstm_cell_666/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_666/lstm_cell_666/bias/m
?
6Adam/lstm_666/lstm_cell_666/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_666/lstm_cell_666/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_667/lstm_cell_667/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_667/lstm_cell_667/kernel/m
?
8Adam/lstm_667/lstm_cell_667/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_667/lstm_cell_667/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_667/lstm_cell_667/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_667/lstm_cell_667/recurrent_kernel/m
?
BAdam/lstm_667/lstm_cell_667/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_667/lstm_cell_667/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_667/lstm_cell_667/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_667/lstm_cell_667/bias/m
?
6Adam/lstm_667/lstm_cell_667/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_667/lstm_cell_667/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_668/lstm_cell_668/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_668/lstm_cell_668/kernel/m
?
8Adam/lstm_668/lstm_cell_668/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_668/lstm_cell_668/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_668/lstm_cell_668/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_668/lstm_cell_668/recurrent_kernel/m
?
BAdam/lstm_668/lstm_cell_668/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_668/lstm_cell_668/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_668/lstm_cell_668/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_668/lstm_cell_668/bias/m
?
6Adam/lstm_668/lstm_cell_668/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_668/lstm_cell_668/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_222/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_222/kernel/v
?
+Adam/dense_222/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_222/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_222/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_222/bias/v
{
)Adam/dense_222/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_222/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_666/lstm_cell_666/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_666/lstm_cell_666/kernel/v
?
8Adam/lstm_666/lstm_cell_666/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_666/lstm_cell_666/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_666/lstm_cell_666/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_666/lstm_cell_666/recurrent_kernel/v
?
BAdam/lstm_666/lstm_cell_666/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_666/lstm_cell_666/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_666/lstm_cell_666/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_666/lstm_cell_666/bias/v
?
6Adam/lstm_666/lstm_cell_666/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_666/lstm_cell_666/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_667/lstm_cell_667/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_667/lstm_cell_667/kernel/v
?
8Adam/lstm_667/lstm_cell_667/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_667/lstm_cell_667/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_667/lstm_cell_667/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_667/lstm_cell_667/recurrent_kernel/v
?
BAdam/lstm_667/lstm_cell_667/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_667/lstm_cell_667/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_667/lstm_cell_667/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_667/lstm_cell_667/bias/v
?
6Adam/lstm_667/lstm_cell_667/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_667/lstm_cell_667/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_668/lstm_cell_668/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_668/lstm_cell_668/kernel/v
?
8Adam/lstm_668/lstm_cell_668/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_668/lstm_cell_668/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_668/lstm_cell_668/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_668/lstm_cell_668/recurrent_kernel/v
?
BAdam/lstm_668/lstm_cell_668/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_668/lstm_cell_668/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_668/lstm_cell_668/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_668/lstm_cell_668/bias/v
?
6Adam/lstm_668/lstm_cell_668/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_668/lstm_cell_668/bias/v*
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
VARIABLE_VALUEdense_222/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_222/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_666/lstm_cell_666/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_666/lstm_cell_666/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_666/lstm_cell_666/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_667/lstm_cell_667/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_667/lstm_cell_667/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_667/lstm_cell_667/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_668/lstm_cell_668/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_668/lstm_cell_668/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_668/lstm_cell_668/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_222/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_222/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_666/lstm_cell_666/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_666/lstm_cell_666/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_666/lstm_cell_666/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_667/lstm_cell_667/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_667/lstm_cell_667/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_667/lstm_cell_667/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_668/lstm_cell_668/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_668/lstm_cell_668/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_668/lstm_cell_668/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_222/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_222/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_666/lstm_cell_666/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_666/lstm_cell_666/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_666/lstm_cell_666/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_667/lstm_cell_667/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_667/lstm_cell_667/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_667/lstm_cell_667/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_668/lstm_cell_668/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_668/lstm_cell_668/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_668/lstm_cell_668/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_666_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_666_inputlstm_666/lstm_cell_666/kernel'lstm_666/lstm_cell_666/recurrent_kernellstm_666/lstm_cell_666/biaslstm_667/lstm_cell_667/kernel'lstm_667/lstm_cell_667/recurrent_kernellstm_667/lstm_cell_667/biaslstm_668/lstm_cell_668/kernel'lstm_668/lstm_cell_668/recurrent_kernellstm_668/lstm_cell_668/biasdense_222/kerneldense_222/bias*
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
%__inference_signature_wrapper_4232044
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_222/kernel/Read/ReadVariableOp"dense_222/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_666/lstm_cell_666/kernel/Read/ReadVariableOp;lstm_666/lstm_cell_666/recurrent_kernel/Read/ReadVariableOp/lstm_666/lstm_cell_666/bias/Read/ReadVariableOp1lstm_667/lstm_cell_667/kernel/Read/ReadVariableOp;lstm_667/lstm_cell_667/recurrent_kernel/Read/ReadVariableOp/lstm_667/lstm_cell_667/bias/Read/ReadVariableOp1lstm_668/lstm_cell_668/kernel/Read/ReadVariableOp;lstm_668/lstm_cell_668/recurrent_kernel/Read/ReadVariableOp/lstm_668/lstm_cell_668/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_222/kernel/m/Read/ReadVariableOp)Adam/dense_222/bias/m/Read/ReadVariableOp8Adam/lstm_666/lstm_cell_666/kernel/m/Read/ReadVariableOpBAdam/lstm_666/lstm_cell_666/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_666/lstm_cell_666/bias/m/Read/ReadVariableOp8Adam/lstm_667/lstm_cell_667/kernel/m/Read/ReadVariableOpBAdam/lstm_667/lstm_cell_667/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_667/lstm_cell_667/bias/m/Read/ReadVariableOp8Adam/lstm_668/lstm_cell_668/kernel/m/Read/ReadVariableOpBAdam/lstm_668/lstm_cell_668/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_668/lstm_cell_668/bias/m/Read/ReadVariableOp+Adam/dense_222/kernel/v/Read/ReadVariableOp)Adam/dense_222/bias/v/Read/ReadVariableOp8Adam/lstm_666/lstm_cell_666/kernel/v/Read/ReadVariableOpBAdam/lstm_666/lstm_cell_666/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_666/lstm_cell_666/bias/v/Read/ReadVariableOp8Adam/lstm_667/lstm_cell_667/kernel/v/Read/ReadVariableOpBAdam/lstm_667/lstm_cell_667/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_667/lstm_cell_667/bias/v/Read/ReadVariableOp8Adam/lstm_668/lstm_cell_668/kernel/v/Read/ReadVariableOpBAdam/lstm_668/lstm_cell_668/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_668/lstm_cell_668/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4235256
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_222/kerneldense_222/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_666/lstm_cell_666/kernel'lstm_666/lstm_cell_666/recurrent_kernellstm_666/lstm_cell_666/biaslstm_667/lstm_cell_667/kernel'lstm_667/lstm_cell_667/recurrent_kernellstm_667/lstm_cell_667/biaslstm_668/lstm_cell_668/kernel'lstm_668/lstm_cell_668/recurrent_kernellstm_668/lstm_cell_668/biastotalcountAdam/dense_222/kernel/mAdam/dense_222/bias/m$Adam/lstm_666/lstm_cell_666/kernel/m.Adam/lstm_666/lstm_cell_666/recurrent_kernel/m"Adam/lstm_666/lstm_cell_666/bias/m$Adam/lstm_667/lstm_cell_667/kernel/m.Adam/lstm_667/lstm_cell_667/recurrent_kernel/m"Adam/lstm_667/lstm_cell_667/bias/m$Adam/lstm_668/lstm_cell_668/kernel/m.Adam/lstm_668/lstm_cell_668/recurrent_kernel/m"Adam/lstm_668/lstm_cell_668/bias/mAdam/dense_222/kernel/vAdam/dense_222/bias/v$Adam/lstm_666/lstm_cell_666/kernel/v.Adam/lstm_666/lstm_cell_666/recurrent_kernel/v"Adam/lstm_666/lstm_cell_666/bias/v$Adam/lstm_667/lstm_cell_667/kernel/v.Adam/lstm_667/lstm_cell_667/recurrent_kernel/v"Adam/lstm_667/lstm_cell_667/bias/v$Adam/lstm_668/lstm_cell_668/kernel/v.Adam/lstm_668/lstm_cell_668/recurrent_kernel/v"Adam/lstm_668/lstm_cell_668/bias/v*4
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
#__inference__traced_restore_4235386??+
?8
?
while_body_4233198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4229851

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
?C
?

lstm_666_while_body_4232584.
*lstm_666_while_lstm_666_while_loop_counter4
0lstm_666_while_lstm_666_while_maximum_iterations
lstm_666_while_placeholder 
lstm_666_while_placeholder_1 
lstm_666_while_placeholder_2 
lstm_666_while_placeholder_3-
)lstm_666_while_lstm_666_strided_slice_1_0i
elstm_666_while_tensorarrayv2read_tensorlistgetitem_lstm_666_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_666_while_lstm_cell_666_matmul_readvariableop_resource_0:	?R
?lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?M
>lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
lstm_666_while_identity
lstm_666_while_identity_1
lstm_666_while_identity_2
lstm_666_while_identity_3
lstm_666_while_identity_4
lstm_666_while_identity_5+
'lstm_666_while_lstm_666_strided_slice_1g
clstm_666_while_tensorarrayv2read_tensorlistgetitem_lstm_666_tensorarrayunstack_tensorlistfromtensorN
;lstm_666_while_lstm_cell_666_matmul_readvariableop_resource:	?P
=lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource:	d?K
<lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource:	???3lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp?2lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp?4lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp?
@lstm_666/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_666/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_666_while_tensorarrayv2read_tensorlistgetitem_lstm_666_tensorarrayunstack_tensorlistfromtensor_0lstm_666_while_placeholderIlstm_666/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_666/while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp=lstm_666_while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_666/while/lstm_cell_666/MatMulMatMul9lstm_666/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp?lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_666/while/lstm_cell_666/MatMul_1MatMullstm_666_while_placeholder_2<lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_666/while/lstm_cell_666/addAddV2-lstm_666/while/lstm_cell_666/MatMul:product:0/lstm_666/while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp>lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_666/while/lstm_cell_666/BiasAddBiasAdd$lstm_666/while/lstm_cell_666/add:z:0;lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_666/while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_666/while/lstm_cell_666/splitSplit5lstm_666/while/lstm_cell_666/split/split_dim:output:0-lstm_666/while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_666/while/lstm_cell_666/SigmoidSigmoid+lstm_666/while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_666/while/lstm_cell_666/Sigmoid_1Sigmoid+lstm_666/while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_666/while/lstm_cell_666/mulMul*lstm_666/while/lstm_cell_666/Sigmoid_1:y:0lstm_666_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_666/while/lstm_cell_666/ReluRelu+lstm_666/while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_666/while/lstm_cell_666/mul_1Mul(lstm_666/while/lstm_cell_666/Sigmoid:y:0/lstm_666/while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_666/while/lstm_cell_666/add_1AddV2$lstm_666/while/lstm_cell_666/mul:z:0&lstm_666/while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_666/while/lstm_cell_666/Sigmoid_2Sigmoid+lstm_666/while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_666/while/lstm_cell_666/Relu_1Relu&lstm_666/while/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_666/while/lstm_cell_666/mul_2Mul*lstm_666/while/lstm_cell_666/Sigmoid_2:y:01lstm_666/while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_666/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_666_while_placeholder_1lstm_666_while_placeholder&lstm_666/while/lstm_cell_666/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_666/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_666/while/addAddV2lstm_666_while_placeholderlstm_666/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_666/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_666/while/add_1AddV2*lstm_666_while_lstm_666_while_loop_counterlstm_666/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_666/while/IdentityIdentitylstm_666/while/add_1:z:0^lstm_666/while/NoOp*
T0*
_output_shapes
: ?
lstm_666/while/Identity_1Identity0lstm_666_while_lstm_666_while_maximum_iterations^lstm_666/while/NoOp*
T0*
_output_shapes
: t
lstm_666/while/Identity_2Identitylstm_666/while/add:z:0^lstm_666/while/NoOp*
T0*
_output_shapes
: ?
lstm_666/while/Identity_3IdentityClstm_666/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_666/while/NoOp*
T0*
_output_shapes
: ?
lstm_666/while/Identity_4Identity&lstm_666/while/lstm_cell_666/mul_2:z:0^lstm_666/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_666/while/Identity_5Identity&lstm_666/while/lstm_cell_666/add_1:z:0^lstm_666/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_666/while/NoOpNoOp4^lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp3^lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp5^lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_666_while_identity lstm_666/while/Identity:output:0"?
lstm_666_while_identity_1"lstm_666/while/Identity_1:output:0"?
lstm_666_while_identity_2"lstm_666/while/Identity_2:output:0"?
lstm_666_while_identity_3"lstm_666/while/Identity_3:output:0"?
lstm_666_while_identity_4"lstm_666/while/Identity_4:output:0"?
lstm_666_while_identity_5"lstm_666/while/Identity_5:output:0"T
'lstm_666_while_lstm_666_strided_slice_1)lstm_666_while_lstm_666_strided_slice_1_0"~
<lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource>lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource_0"?
=lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource?lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource_0"|
;lstm_666_while_lstm_cell_666_matmul_readvariableop_resource=lstm_666_while_lstm_cell_666_matmul_readvariableop_resource_0"?
clstm_666_while_tensorarrayv2read_tensorlistgetitem_lstm_666_tensorarrayunstack_tensorlistfromtensorelstm_666_while_tensorarrayv2read_tensorlistgetitem_lstm_666_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp3lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp2h
2lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp2lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp2l
4lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp4lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4231579
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4231579___redundant_placeholder05
1while_while_cond_4231579___redundant_placeholder15
1while_while_cond_4231579___redundant_placeholder25
1while_while_cond_4231579___redundant_placeholder3
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
*sequential_222_lstm_667_while_cond_4229554L
Hsequential_222_lstm_667_while_sequential_222_lstm_667_while_loop_counterR
Nsequential_222_lstm_667_while_sequential_222_lstm_667_while_maximum_iterations-
)sequential_222_lstm_667_while_placeholder/
+sequential_222_lstm_667_while_placeholder_1/
+sequential_222_lstm_667_while_placeholder_2/
+sequential_222_lstm_667_while_placeholder_3N
Jsequential_222_lstm_667_while_less_sequential_222_lstm_667_strided_slice_1e
asequential_222_lstm_667_while_sequential_222_lstm_667_while_cond_4229554___redundant_placeholder0e
asequential_222_lstm_667_while_sequential_222_lstm_667_while_cond_4229554___redundant_placeholder1e
asequential_222_lstm_667_while_sequential_222_lstm_667_while_cond_4229554___redundant_placeholder2e
asequential_222_lstm_667_while_sequential_222_lstm_667_while_cond_4229554___redundant_placeholder3*
&sequential_222_lstm_667_while_identity
?
"sequential_222/lstm_667/while/LessLess)sequential_222_lstm_667_while_placeholderJsequential_222_lstm_667_while_less_sequential_222_lstm_667_strided_slice_1*
T0*
_output_shapes
: {
&sequential_222/lstm_667/while/IdentityIdentity&sequential_222/lstm_667/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_222_lstm_667_while_identity/sequential_222/lstm_667/while/Identity:output:0*(
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233425

inputs?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4233341*
condR
while_cond_4233340*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4229865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_666_4229889_0:	?0
while_lstm_cell_666_4229891_0:	d?,
while_lstm_cell_666_4229893_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_666_4229889:	?.
while_lstm_cell_666_4229891:	d?*
while_lstm_cell_666_4229893:	???+while/lstm_cell_666/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_666/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_666_4229889_0while_lstm_cell_666_4229891_0while_lstm_cell_666_4229893_0*
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4229851?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_666/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_666/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_666/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_666/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_666_4229889while_lstm_cell_666_4229889_0"<
while_lstm_cell_666_4229891while_lstm_cell_666_4229891_0"<
while_lstm_cell_666_4229893while_lstm_cell_666_4229893_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_666/StatefulPartitionedCall+while/lstm_cell_666/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4231414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4231414___redundant_placeholder05
1while_while_cond_4231414___redundant_placeholder15
1while_while_cond_4231414___redundant_placeholder25
1while_while_cond_4231414___redundant_placeholder3
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
while_cond_4229864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4229864___redundant_placeholder05
1while_while_cond_4229864___redundant_placeholder15
1while_while_cond_4229864___redundant_placeholder25
1while_while_cond_4229864___redundant_placeholder3
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4230347

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
while_body_4230899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_222_layer_call_and_return_conditional_losses_4231897

inputs#
lstm_666_4231870:	?#
lstm_666_4231872:	d?
lstm_666_4231874:	?#
lstm_667_4231877:	d?#
lstm_667_4231879:	2?
lstm_667_4231881:	?"
lstm_668_4231884:2("
lstm_668_4231886:
(
lstm_668_4231888:(#
dense_222_4231891:

dense_222_4231893:
identity??!dense_222/StatefulPartitionedCall? lstm_666/StatefulPartitionedCall? lstm_667/StatefulPartitionedCall? lstm_668/StatefulPartitionedCall?
 lstm_666/StatefulPartitionedCallStatefulPartitionedCallinputslstm_666_4231870lstm_666_4231872lstm_666_4231874*
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4231829?
 lstm_667/StatefulPartitionedCallStatefulPartitionedCall)lstm_666/StatefulPartitionedCall:output:0lstm_667_4231877lstm_667_4231879lstm_667_4231881*
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4231664?
 lstm_668/StatefulPartitionedCallStatefulPartitionedCall)lstm_667/StatefulPartitionedCall:output:0lstm_668_4231884lstm_668_4231886lstm_668_4231888*
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4231499?
!dense_222/StatefulPartitionedCallStatefulPartitionedCall)lstm_668/StatefulPartitionedCall:output:0dense_222_4231891dense_222_4231893*
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
F__inference_dense_222_layer_call_and_return_conditional_losses_4231301y
IdentityIdentity*dense_222/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_222/StatefulPartitionedCall!^lstm_666/StatefulPartitionedCall!^lstm_667/StatefulPartitionedCall!^lstm_668/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_222/StatefulPartitionedCall!dense_222/StatefulPartitionedCall2D
 lstm_666/StatefulPartitionedCall lstm_666/StatefulPartitionedCall2D
 lstm_667/StatefulPartitionedCall lstm_667/StatefulPartitionedCall2D
 lstm_668/StatefulPartitionedCall lstm_668/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4230215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_667_4230239_0:	d?0
while_lstm_cell_667_4230241_0:	2?,
while_lstm_cell_667_4230243_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_667_4230239:	d?.
while_lstm_cell_667_4230241:	2?*
while_lstm_cell_667_4230243:	???+while/lstm_cell_667/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_667/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_667_4230239_0while_lstm_cell_667_4230241_0while_lstm_cell_667_4230243_0*
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4230201?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_667/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_667/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_667/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_667/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_667_4230239while_lstm_cell_667_4230239_0"<
while_lstm_cell_667_4230241while_lstm_cell_667_4230241_0"<
while_lstm_cell_667_4230243while_lstm_cell_667_4230243_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_667/StatefulPartitionedCall+while/lstm_cell_667/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_668_layer_call_fn_4234195
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4230634o
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
?
E__inference_lstm_668_layer_call_and_return_conditional_losses_4230634

inputs'
lstm_cell_668_4230552:2('
lstm_cell_668_4230554:
(#
lstm_cell_668_4230556:(
identity??%lstm_cell_668/StatefulPartitionedCall?while;
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
%lstm_cell_668/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_668_4230552lstm_cell_668_4230554lstm_cell_668_4230556*
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4230551n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_668_4230552lstm_cell_668_4230554lstm_cell_668_4230556*
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
while_body_4230565*
condR
while_cond_4230564*K
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
NoOpNoOp&^lstm_cell_668/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_668/StatefulPartitionedCall%lstm_cell_668/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4233813
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4233813___redundant_placeholder05
1while_while_cond_4233813___redundant_placeholder15
1while_while_cond_4233813___redundant_placeholder25
1while_while_cond_4233813___redundant_placeholder3
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233282
inputs_0?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4233198*
condR
while_cond_4233197*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4234430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4231048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4231048___redundant_placeholder05
1while_while_cond_4231048___redundant_placeholder15
1while_while_cond_4231048___redundant_placeholder25
1while_while_cond_4231048___redundant_placeholder3
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4230983

inputs?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4230899*
condR
while_cond_4230898*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4231744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4231744___redundant_placeholder05
1while_while_cond_4231744___redundant_placeholder15
1while_while_cond_4231744___redundant_placeholder25
1while_while_cond_4231744___redundant_placeholder3
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
?
?
+__inference_dense_222_layer_call_fn_4234809

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
F__inference_dense_222_layer_call_and_return_conditional_losses_4231301o
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
?
?
/__inference_lstm_cell_667_layer_call_fn_4234951

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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4230347o
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
while_body_4231745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_666_while_body_4232157.
*lstm_666_while_lstm_666_while_loop_counter4
0lstm_666_while_lstm_666_while_maximum_iterations
lstm_666_while_placeholder 
lstm_666_while_placeholder_1 
lstm_666_while_placeholder_2 
lstm_666_while_placeholder_3-
)lstm_666_while_lstm_666_strided_slice_1_0i
elstm_666_while_tensorarrayv2read_tensorlistgetitem_lstm_666_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_666_while_lstm_cell_666_matmul_readvariableop_resource_0:	?R
?lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?M
>lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
lstm_666_while_identity
lstm_666_while_identity_1
lstm_666_while_identity_2
lstm_666_while_identity_3
lstm_666_while_identity_4
lstm_666_while_identity_5+
'lstm_666_while_lstm_666_strided_slice_1g
clstm_666_while_tensorarrayv2read_tensorlistgetitem_lstm_666_tensorarrayunstack_tensorlistfromtensorN
;lstm_666_while_lstm_cell_666_matmul_readvariableop_resource:	?P
=lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource:	d?K
<lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource:	???3lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp?2lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp?4lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp?
@lstm_666/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_666/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_666_while_tensorarrayv2read_tensorlistgetitem_lstm_666_tensorarrayunstack_tensorlistfromtensor_0lstm_666_while_placeholderIlstm_666/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_666/while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp=lstm_666_while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_666/while/lstm_cell_666/MatMulMatMul9lstm_666/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp?lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_666/while/lstm_cell_666/MatMul_1MatMullstm_666_while_placeholder_2<lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_666/while/lstm_cell_666/addAddV2-lstm_666/while/lstm_cell_666/MatMul:product:0/lstm_666/while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp>lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_666/while/lstm_cell_666/BiasAddBiasAdd$lstm_666/while/lstm_cell_666/add:z:0;lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_666/while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_666/while/lstm_cell_666/splitSplit5lstm_666/while/lstm_cell_666/split/split_dim:output:0-lstm_666/while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_666/while/lstm_cell_666/SigmoidSigmoid+lstm_666/while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_666/while/lstm_cell_666/Sigmoid_1Sigmoid+lstm_666/while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_666/while/lstm_cell_666/mulMul*lstm_666/while/lstm_cell_666/Sigmoid_1:y:0lstm_666_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_666/while/lstm_cell_666/ReluRelu+lstm_666/while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_666/while/lstm_cell_666/mul_1Mul(lstm_666/while/lstm_cell_666/Sigmoid:y:0/lstm_666/while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_666/while/lstm_cell_666/add_1AddV2$lstm_666/while/lstm_cell_666/mul:z:0&lstm_666/while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_666/while/lstm_cell_666/Sigmoid_2Sigmoid+lstm_666/while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_666/while/lstm_cell_666/Relu_1Relu&lstm_666/while/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_666/while/lstm_cell_666/mul_2Mul*lstm_666/while/lstm_cell_666/Sigmoid_2:y:01lstm_666/while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_666/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_666_while_placeholder_1lstm_666_while_placeholder&lstm_666/while/lstm_cell_666/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_666/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_666/while/addAddV2lstm_666_while_placeholderlstm_666/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_666/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_666/while/add_1AddV2*lstm_666_while_lstm_666_while_loop_counterlstm_666/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_666/while/IdentityIdentitylstm_666/while/add_1:z:0^lstm_666/while/NoOp*
T0*
_output_shapes
: ?
lstm_666/while/Identity_1Identity0lstm_666_while_lstm_666_while_maximum_iterations^lstm_666/while/NoOp*
T0*
_output_shapes
: t
lstm_666/while/Identity_2Identitylstm_666/while/add:z:0^lstm_666/while/NoOp*
T0*
_output_shapes
: ?
lstm_666/while/Identity_3IdentityClstm_666/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_666/while/NoOp*
T0*
_output_shapes
: ?
lstm_666/while/Identity_4Identity&lstm_666/while/lstm_cell_666/mul_2:z:0^lstm_666/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_666/while/Identity_5Identity&lstm_666/while/lstm_cell_666/add_1:z:0^lstm_666/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_666/while/NoOpNoOp4^lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp3^lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp5^lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_666_while_identity lstm_666/while/Identity:output:0"?
lstm_666_while_identity_1"lstm_666/while/Identity_1:output:0"?
lstm_666_while_identity_2"lstm_666/while/Identity_2:output:0"?
lstm_666_while_identity_3"lstm_666/while/Identity_3:output:0"?
lstm_666_while_identity_4"lstm_666/while/Identity_4:output:0"?
lstm_666_while_identity_5"lstm_666/while/Identity_5:output:0"T
'lstm_666_while_lstm_666_strided_slice_1)lstm_666_while_lstm_666_strided_slice_1_0"~
<lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource>lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource_0"?
=lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource?lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource_0"|
;lstm_666_while_lstm_cell_666_matmul_readvariableop_resource=lstm_666_while_lstm_cell_666_matmul_readvariableop_resource_0"?
clstm_666_while_tensorarrayv2read_tensorlistgetitem_lstm_666_tensorarrayunstack_tensorlistfromtensorelstm_666_while_tensorarrayv2read_tensorlistgetitem_lstm_666_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp3lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp2h
2lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp2lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp2l
4lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp4lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234371
inputs_0>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4234287*
condR
while_cond_4234286*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_4234287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_222_layer_call_fn_4232071

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
K__inference_sequential_222_layer_call_and_return_conditional_losses_4231308o
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
while_body_4233341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4231580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4230564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4230564___redundant_placeholder05
1while_while_cond_4230564___redundant_placeholder15
1while_while_cond_4230564___redundant_placeholder25
1while_while_cond_4230564___redundant_placeholder3
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
lstm_668_while_cond_4232434.
*lstm_668_while_lstm_668_while_loop_counter4
0lstm_668_while_lstm_668_while_maximum_iterations
lstm_668_while_placeholder 
lstm_668_while_placeholder_1 
lstm_668_while_placeholder_2 
lstm_668_while_placeholder_30
,lstm_668_while_less_lstm_668_strided_slice_1G
Clstm_668_while_lstm_668_while_cond_4232434___redundant_placeholder0G
Clstm_668_while_lstm_668_while_cond_4232434___redundant_placeholder1G
Clstm_668_while_lstm_668_while_cond_4232434___redundant_placeholder2G
Clstm_668_while_lstm_668_while_cond_4232434___redundant_placeholder3
lstm_668_while_identity
?
lstm_668/while/LessLesslstm_668_while_placeholder,lstm_668_while_less_lstm_668_strided_slice_1*
T0*
_output_shapes
: ]
lstm_668/while/IdentityIdentitylstm_668/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_668_while_identity lstm_668/while/Identity:output:0*(
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
while_body_4230756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_668_4230780_0:2(/
while_lstm_cell_668_4230782_0:
(+
while_lstm_cell_668_4230784_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_668_4230780:2(-
while_lstm_cell_668_4230782:
()
while_lstm_cell_668_4230784:(??+while/lstm_cell_668/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_668/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_668_4230780_0while_lstm_cell_668_4230782_0while_lstm_cell_668_4230784_0*
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4230697?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_668/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_668/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_668/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_668/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_668_4230780while_lstm_cell_668_4230780_0"<
while_lstm_cell_668_4230782while_lstm_cell_668_4230782_0"<
while_lstm_cell_668_4230784while_lstm_cell_668_4230784_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_668/StatefulPartitionedCall+while/lstm_cell_668/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_667_while_body_4232296.
*lstm_667_while_lstm_667_while_loop_counter4
0lstm_667_while_lstm_667_while_maximum_iterations
lstm_667_while_placeholder 
lstm_667_while_placeholder_1 
lstm_667_while_placeholder_2 
lstm_667_while_placeholder_3-
)lstm_667_while_lstm_667_strided_slice_1_0i
elstm_667_while_tensorarrayv2read_tensorlistgetitem_lstm_667_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_667_while_lstm_cell_667_matmul_readvariableop_resource_0:	d?R
?lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?M
>lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
lstm_667_while_identity
lstm_667_while_identity_1
lstm_667_while_identity_2
lstm_667_while_identity_3
lstm_667_while_identity_4
lstm_667_while_identity_5+
'lstm_667_while_lstm_667_strided_slice_1g
clstm_667_while_tensorarrayv2read_tensorlistgetitem_lstm_667_tensorarrayunstack_tensorlistfromtensorN
;lstm_667_while_lstm_cell_667_matmul_readvariableop_resource:	d?P
=lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource:	2?K
<lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource:	???3lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp?2lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp?4lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp?
@lstm_667/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_667/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_667_while_tensorarrayv2read_tensorlistgetitem_lstm_667_tensorarrayunstack_tensorlistfromtensor_0lstm_667_while_placeholderIlstm_667/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_667/while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp=lstm_667_while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_667/while/lstm_cell_667/MatMulMatMul9lstm_667/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp?lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_667/while/lstm_cell_667/MatMul_1MatMullstm_667_while_placeholder_2<lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_667/while/lstm_cell_667/addAddV2-lstm_667/while/lstm_cell_667/MatMul:product:0/lstm_667/while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp>lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_667/while/lstm_cell_667/BiasAddBiasAdd$lstm_667/while/lstm_cell_667/add:z:0;lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_667/while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_667/while/lstm_cell_667/splitSplit5lstm_667/while/lstm_cell_667/split/split_dim:output:0-lstm_667/while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_667/while/lstm_cell_667/SigmoidSigmoid+lstm_667/while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_667/while/lstm_cell_667/Sigmoid_1Sigmoid+lstm_667/while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_667/while/lstm_cell_667/mulMul*lstm_667/while/lstm_cell_667/Sigmoid_1:y:0lstm_667_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_667/while/lstm_cell_667/ReluRelu+lstm_667/while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_667/while/lstm_cell_667/mul_1Mul(lstm_667/while/lstm_cell_667/Sigmoid:y:0/lstm_667/while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_667/while/lstm_cell_667/add_1AddV2$lstm_667/while/lstm_cell_667/mul:z:0&lstm_667/while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_667/while/lstm_cell_667/Sigmoid_2Sigmoid+lstm_667/while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_667/while/lstm_cell_667/Relu_1Relu&lstm_667/while/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_667/while/lstm_cell_667/mul_2Mul*lstm_667/while/lstm_cell_667/Sigmoid_2:y:01lstm_667/while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_667/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_667_while_placeholder_1lstm_667_while_placeholder&lstm_667/while/lstm_cell_667/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_667/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_667/while/addAddV2lstm_667_while_placeholderlstm_667/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_667/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_667/while/add_1AddV2*lstm_667_while_lstm_667_while_loop_counterlstm_667/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_667/while/IdentityIdentitylstm_667/while/add_1:z:0^lstm_667/while/NoOp*
T0*
_output_shapes
: ?
lstm_667/while/Identity_1Identity0lstm_667_while_lstm_667_while_maximum_iterations^lstm_667/while/NoOp*
T0*
_output_shapes
: t
lstm_667/while/Identity_2Identitylstm_667/while/add:z:0^lstm_667/while/NoOp*
T0*
_output_shapes
: ?
lstm_667/while/Identity_3IdentityClstm_667/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_667/while/NoOp*
T0*
_output_shapes
: ?
lstm_667/while/Identity_4Identity&lstm_667/while/lstm_cell_667/mul_2:z:0^lstm_667/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_667/while/Identity_5Identity&lstm_667/while/lstm_cell_667/add_1:z:0^lstm_667/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_667/while/NoOpNoOp4^lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp3^lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp5^lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_667_while_identity lstm_667/while/Identity:output:0"?
lstm_667_while_identity_1"lstm_667/while/Identity_1:output:0"?
lstm_667_while_identity_2"lstm_667/while/Identity_2:output:0"?
lstm_667_while_identity_3"lstm_667/while/Identity_3:output:0"?
lstm_667_while_identity_4"lstm_667/while/Identity_4:output:0"?
lstm_667_while_identity_5"lstm_667/while/Identity_5:output:0"T
'lstm_667_while_lstm_667_strided_slice_1)lstm_667_while_lstm_667_strided_slice_1_0"~
<lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource>lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource_0"?
=lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource?lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource_0"|
;lstm_667_while_lstm_cell_667_matmul_readvariableop_resource=lstm_667_while_lstm_cell_667_matmul_readvariableop_resource_0"?
clstm_667_while_tensorarrayv2read_tensorlistgetitem_lstm_667_tensorarrayunstack_tensorlistfromtensorelstm_667_while_tensorarrayv2read_tensorlistgetitem_lstm_667_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp3lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp2h
2lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp2lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp2l
4lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp4lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4230405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4230405___redundant_placeholder05
1while_while_cond_4230405___redundant_placeholder15
1while_while_cond_4230405___redundant_placeholder25
1while_while_cond_4230405___redundant_placeholder3
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
??
?
#__inference__traced_restore_4235386
file_prefix3
!assignvariableop_dense_222_kernel:
/
!assignvariableop_1_dense_222_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_666_lstm_cell_666_kernel:	?M
:assignvariableop_8_lstm_666_lstm_cell_666_recurrent_kernel:	d?=
.assignvariableop_9_lstm_666_lstm_cell_666_bias:	?D
1assignvariableop_10_lstm_667_lstm_cell_667_kernel:	d?N
;assignvariableop_11_lstm_667_lstm_cell_667_recurrent_kernel:	2?>
/assignvariableop_12_lstm_667_lstm_cell_667_bias:	?C
1assignvariableop_13_lstm_668_lstm_cell_668_kernel:2(M
;assignvariableop_14_lstm_668_lstm_cell_668_recurrent_kernel:
(=
/assignvariableop_15_lstm_668_lstm_cell_668_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_222_kernel_m:
7
)assignvariableop_19_adam_dense_222_bias_m:K
8assignvariableop_20_adam_lstm_666_lstm_cell_666_kernel_m:	?U
Bassignvariableop_21_adam_lstm_666_lstm_cell_666_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_666_lstm_cell_666_bias_m:	?K
8assignvariableop_23_adam_lstm_667_lstm_cell_667_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_667_lstm_cell_667_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_667_lstm_cell_667_bias_m:	?J
8assignvariableop_26_adam_lstm_668_lstm_cell_668_kernel_m:2(T
Bassignvariableop_27_adam_lstm_668_lstm_cell_668_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_668_lstm_cell_668_bias_m:(=
+assignvariableop_29_adam_dense_222_kernel_v:
7
)assignvariableop_30_adam_dense_222_bias_v:K
8assignvariableop_31_adam_lstm_666_lstm_cell_666_kernel_v:	?U
Bassignvariableop_32_adam_lstm_666_lstm_cell_666_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_666_lstm_cell_666_bias_v:	?K
8assignvariableop_34_adam_lstm_667_lstm_cell_667_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_667_lstm_cell_667_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_667_lstm_cell_667_bias_v:	?J
8assignvariableop_37_adam_lstm_668_lstm_cell_668_kernel_v:2(T
Bassignvariableop_38_adam_lstm_668_lstm_cell_668_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_668_lstm_cell_668_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_222_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_222_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_666_lstm_cell_666_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_666_lstm_cell_666_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_666_lstm_cell_666_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_667_lstm_cell_667_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_667_lstm_cell_667_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_667_lstm_cell_667_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_668_lstm_cell_668_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_668_lstm_cell_668_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_668_lstm_cell_668_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_222_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_222_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_666_lstm_cell_666_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_666_lstm_cell_666_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_666_lstm_cell_666_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_667_lstm_cell_667_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_667_lstm_cell_667_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_667_lstm_cell_667_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_668_lstm_cell_668_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_668_lstm_cell_668_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_668_lstm_cell_668_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_222_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_222_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_666_lstm_cell_666_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_666_lstm_cell_666_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_666_lstm_cell_666_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_667_lstm_cell_667_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_667_lstm_cell_667_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_667_lstm_cell_667_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_668_lstm_cell_668_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_668_lstm_cell_668_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_668_lstm_cell_668_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4229997

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

?
0__inference_sequential_222_layer_call_fn_4232098

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
K__inference_sequential_222_layer_call_and_return_conditional_losses_4231897o
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
while_cond_4233340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4233340___redundant_placeholder05
1while_while_cond_4233340___redundant_placeholder15
1while_while_cond_4233340___redundant_placeholder25
1while_while_cond_4233340___redundant_placeholder3
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
F__inference_dense_222_layer_call_and_return_conditional_losses_4234819

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
while_body_4233671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_667_layer_call_fn_4234934

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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4230201o
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4234885

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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233568

inputs?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4233484*
condR
while_cond_4233483*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_666_layer_call_and_return_conditional_losses_4231829

inputs?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4231745*
condR
while_cond_4231744*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_668_while_body_4232862.
*lstm_668_while_lstm_668_while_loop_counter4
0lstm_668_while_lstm_668_while_maximum_iterations
lstm_668_while_placeholder 
lstm_668_while_placeholder_1 
lstm_668_while_placeholder_2 
lstm_668_while_placeholder_3-
)lstm_668_while_lstm_668_strided_slice_1_0i
elstm_668_while_tensorarrayv2read_tensorlistgetitem_lstm_668_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_668_while_lstm_cell_668_matmul_readvariableop_resource_0:2(Q
?lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(L
>lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource_0:(
lstm_668_while_identity
lstm_668_while_identity_1
lstm_668_while_identity_2
lstm_668_while_identity_3
lstm_668_while_identity_4
lstm_668_while_identity_5+
'lstm_668_while_lstm_668_strided_slice_1g
clstm_668_while_tensorarrayv2read_tensorlistgetitem_lstm_668_tensorarrayunstack_tensorlistfromtensorM
;lstm_668_while_lstm_cell_668_matmul_readvariableop_resource:2(O
=lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource:
(J
<lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource:(??3lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp?2lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp?4lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp?
@lstm_668/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_668/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_668_while_tensorarrayv2read_tensorlistgetitem_lstm_668_tensorarrayunstack_tensorlistfromtensor_0lstm_668_while_placeholderIlstm_668/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_668/while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp=lstm_668_while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_668/while/lstm_cell_668/MatMulMatMul9lstm_668/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp?lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_668/while/lstm_cell_668/MatMul_1MatMullstm_668_while_placeholder_2<lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_668/while/lstm_cell_668/addAddV2-lstm_668/while/lstm_cell_668/MatMul:product:0/lstm_668/while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp>lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_668/while/lstm_cell_668/BiasAddBiasAdd$lstm_668/while/lstm_cell_668/add:z:0;lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_668/while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_668/while/lstm_cell_668/splitSplit5lstm_668/while/lstm_cell_668/split/split_dim:output:0-lstm_668/while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_668/while/lstm_cell_668/SigmoidSigmoid+lstm_668/while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_668/while/lstm_cell_668/Sigmoid_1Sigmoid+lstm_668/while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_668/while/lstm_cell_668/mulMul*lstm_668/while/lstm_cell_668/Sigmoid_1:y:0lstm_668_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_668/while/lstm_cell_668/ReluRelu+lstm_668/while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_668/while/lstm_cell_668/mul_1Mul(lstm_668/while/lstm_cell_668/Sigmoid:y:0/lstm_668/while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_668/while/lstm_cell_668/add_1AddV2$lstm_668/while/lstm_cell_668/mul:z:0&lstm_668/while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_668/while/lstm_cell_668/Sigmoid_2Sigmoid+lstm_668/while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_668/while/lstm_cell_668/Relu_1Relu&lstm_668/while/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_668/while/lstm_cell_668/mul_2Mul*lstm_668/while/lstm_cell_668/Sigmoid_2:y:01lstm_668/while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_668/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_668_while_placeholder_1lstm_668_while_placeholder&lstm_668/while/lstm_cell_668/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_668/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_668/while/addAddV2lstm_668_while_placeholderlstm_668/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_668/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_668/while/add_1AddV2*lstm_668_while_lstm_668_while_loop_counterlstm_668/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_668/while/IdentityIdentitylstm_668/while/add_1:z:0^lstm_668/while/NoOp*
T0*
_output_shapes
: ?
lstm_668/while/Identity_1Identity0lstm_668_while_lstm_668_while_maximum_iterations^lstm_668/while/NoOp*
T0*
_output_shapes
: t
lstm_668/while/Identity_2Identitylstm_668/while/add:z:0^lstm_668/while/NoOp*
T0*
_output_shapes
: ?
lstm_668/while/Identity_3IdentityClstm_668/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_668/while/NoOp*
T0*
_output_shapes
: ?
lstm_668/while/Identity_4Identity&lstm_668/while/lstm_cell_668/mul_2:z:0^lstm_668/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_668/while/Identity_5Identity&lstm_668/while/lstm_cell_668/add_1:z:0^lstm_668/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_668/while/NoOpNoOp4^lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp3^lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp5^lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_668_while_identity lstm_668/while/Identity:output:0"?
lstm_668_while_identity_1"lstm_668/while/Identity_1:output:0"?
lstm_668_while_identity_2"lstm_668/while/Identity_2:output:0"?
lstm_668_while_identity_3"lstm_668/while/Identity_3:output:0"?
lstm_668_while_identity_4"lstm_668/while/Identity_4:output:0"?
lstm_668_while_identity_5"lstm_668/while/Identity_5:output:0"T
'lstm_668_while_lstm_668_strided_slice_1)lstm_668_while_lstm_668_strided_slice_1_0"~
<lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource>lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource_0"?
=lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource?lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource_0"|
;lstm_668_while_lstm_cell_668_matmul_readvariableop_resource=lstm_668_while_lstm_cell_668_matmul_readvariableop_resource_0"?
clstm_668_while_tensorarrayv2read_tensorlistgetitem_lstm_668_tensorarrayunstack_tensorlistfromtensorelstm_668_while_tensorarrayv2read_tensorlistgetitem_lstm_668_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp3lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp2h
2lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp2lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp2l
4lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp4lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4230565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_668_4230589_0:2(/
while_lstm_cell_668_4230591_0:
(+
while_lstm_cell_668_4230593_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_668_4230589:2(-
while_lstm_cell_668_4230591:
()
while_lstm_cell_668_4230593:(??+while/lstm_cell_668/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_668/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_668_4230589_0while_lstm_cell_668_4230591_0while_lstm_cell_668_4230593_0*
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4230551?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_668/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_668/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_668/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_668/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_668_4230589while_lstm_cell_668_4230589_0"<
while_lstm_cell_668_4230591while_lstm_cell_668_4230591_0"<
while_lstm_cell_668_4230593while_lstm_cell_668_4230593_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_668/StatefulPartitionedCall+while/lstm_cell_668/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4233956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4233956___redundant_placeholder05
1while_while_cond_4233956___redundant_placeholder15
1while_while_cond_4233956___redundant_placeholder25
1while_while_cond_4233956___redundant_placeholder3
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
while_cond_4234715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4234715___redundant_placeholder05
1while_while_cond_4234715___redundant_placeholder15
1while_while_cond_4234715___redundant_placeholder25
1while_while_cond_4234715___redundant_placeholder3
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
while_cond_4231198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4231198___redundant_placeholder05
1while_while_cond_4231198___redundant_placeholder15
1while_while_cond_4231198___redundant_placeholder25
1while_while_cond_4231198___redundant_placeholder3
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
lstm_667_while_cond_4232722.
*lstm_667_while_lstm_667_while_loop_counter4
0lstm_667_while_lstm_667_while_maximum_iterations
lstm_667_while_placeholder 
lstm_667_while_placeholder_1 
lstm_667_while_placeholder_2 
lstm_667_while_placeholder_30
,lstm_667_while_less_lstm_667_strided_slice_1G
Clstm_667_while_lstm_667_while_cond_4232722___redundant_placeholder0G
Clstm_667_while_lstm_667_while_cond_4232722___redundant_placeholder1G
Clstm_667_while_lstm_667_while_cond_4232722___redundant_placeholder2G
Clstm_667_while_lstm_667_while_cond_4232722___redundant_placeholder3
lstm_667_while_identity
?
lstm_667/while/LessLesslstm_667_while_placeholder,lstm_667_while_less_lstm_667_strided_slice_1*
T0*
_output_shapes
: ]
lstm_667/while/IdentityIdentitylstm_667/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_667_while_identity lstm_667/while/Identity:output:0*(
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
while_cond_4230055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4230055___redundant_placeholder05
1while_while_cond_4230055___redundant_placeholder15
1while_while_cond_4230055___redundant_placeholder25
1while_while_cond_4230055___redundant_placeholder3
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4230475

inputs(
lstm_cell_667_4230393:	d?(
lstm_cell_667_4230395:	2?$
lstm_cell_667_4230397:	?
identity??%lstm_cell_667/StatefulPartitionedCall?while;
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
%lstm_cell_667/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_667_4230393lstm_cell_667_4230395lstm_cell_667_4230397*
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4230347n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_667_4230393lstm_cell_667_4230395lstm_cell_667_4230397*
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
while_body_4230406*
condR
while_cond_4230405*K
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
NoOpNoOp&^lstm_cell_667/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_667/StatefulPartitionedCall%lstm_cell_667/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4234100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4233197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4233197___redundant_placeholder05
1while_while_cond_4233197___redundant_placeholder15
1while_while_cond_4233197___redundant_placeholder25
1while_while_cond_4233197___redundant_placeholder3
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
*__inference_lstm_667_layer_call_fn_4233590
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4230475|
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
?J
?
E__inference_lstm_668_layer_call_and_return_conditional_losses_4231499

inputs>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4231415*
condR
while_cond_4231414*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_667_layer_call_and_return_conditional_losses_4231133

inputs?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4231049*
condR
while_cond_4231048*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4235113

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
lstm_666_while_cond_4232583.
*lstm_666_while_lstm_666_while_loop_counter4
0lstm_666_while_lstm_666_while_maximum_iterations
lstm_666_while_placeholder 
lstm_666_while_placeholder_1 
lstm_666_while_placeholder_2 
lstm_666_while_placeholder_30
,lstm_666_while_less_lstm_666_strided_slice_1G
Clstm_666_while_lstm_666_while_cond_4232583___redundant_placeholder0G
Clstm_666_while_lstm_666_while_cond_4232583___redundant_placeholder1G
Clstm_666_while_lstm_666_while_cond_4232583___redundant_placeholder2G
Clstm_666_while_lstm_666_while_cond_4232583___redundant_placeholder3
lstm_666_while_identity
?
lstm_666/while/LessLesslstm_666_while_placeholder,lstm_666_while_less_lstm_666_strided_slice_1*
T0*
_output_shapes
: ]
lstm_666/while/IdentityIdentitylstm_666/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_666_while_identity lstm_666/while/Identity:output:0*(
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
*__inference_lstm_666_layer_call_fn_4232963
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4229934|
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
/__inference_lstm_cell_668_layer_call_fn_4235049

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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4230697o
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
*__inference_lstm_666_layer_call_fn_4232985

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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4230983s
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
while_cond_4233670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4233670___redundant_placeholder05
1while_while_cond_4233670___redundant_placeholder15
1while_while_cond_4233670___redundant_placeholder25
1while_while_cond_4233670___redundant_placeholder3
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
0__inference_sequential_222_layer_call_fn_4231949
lstm_666_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_666_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_222_layer_call_and_return_conditional_losses_4231897o
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
_user_specified_namelstm_666_input
?8
?
while_body_4234573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4233814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4229934

inputs(
lstm_cell_666_4229852:	?(
lstm_cell_666_4229854:	d?$
lstm_cell_666_4229856:	?
identity??%lstm_cell_666/StatefulPartitionedCall?while;
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
%lstm_cell_666/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_666_4229852lstm_cell_666_4229854lstm_cell_666_4229856*
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4229851n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_666_4229852lstm_cell_666_4229854lstm_cell_666_4229856*
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
while_body_4229865*
condR
while_cond_4229864*K
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
NoOpNoOp&^lstm_cell_666/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_666/StatefulPartitionedCall%lstm_cell_666/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?T
?
*sequential_222_lstm_667_while_body_4229555L
Hsequential_222_lstm_667_while_sequential_222_lstm_667_while_loop_counterR
Nsequential_222_lstm_667_while_sequential_222_lstm_667_while_maximum_iterations-
)sequential_222_lstm_667_while_placeholder/
+sequential_222_lstm_667_while_placeholder_1/
+sequential_222_lstm_667_while_placeholder_2/
+sequential_222_lstm_667_while_placeholder_3K
Gsequential_222_lstm_667_while_sequential_222_lstm_667_strided_slice_1_0?
?sequential_222_lstm_667_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_667_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_222_lstm_667_while_lstm_cell_667_matmul_readvariableop_resource_0:	d?a
Nsequential_222_lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?\
Msequential_222_lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource_0:	?*
&sequential_222_lstm_667_while_identity,
(sequential_222_lstm_667_while_identity_1,
(sequential_222_lstm_667_while_identity_2,
(sequential_222_lstm_667_while_identity_3,
(sequential_222_lstm_667_while_identity_4,
(sequential_222_lstm_667_while_identity_5I
Esequential_222_lstm_667_while_sequential_222_lstm_667_strided_slice_1?
?sequential_222_lstm_667_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_667_tensorarrayunstack_tensorlistfromtensor]
Jsequential_222_lstm_667_while_lstm_cell_667_matmul_readvariableop_resource:	d?_
Lsequential_222_lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource:	2?Z
Ksequential_222_lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource:	???Bsequential_222/lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp?Asequential_222/lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp?Csequential_222/lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp?
Osequential_222/lstm_667/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_222/lstm_667/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_222_lstm_667_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_667_tensorarrayunstack_tensorlistfromtensor_0)sequential_222_lstm_667_while_placeholderXsequential_222/lstm_667/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_222/lstm_667/while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOpLsequential_222_lstm_667_while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_222/lstm_667/while/lstm_cell_667/MatMulMatMulHsequential_222/lstm_667/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_222/lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_222/lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOpNsequential_222_lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_222/lstm_667/while/lstm_cell_667/MatMul_1MatMul+sequential_222_lstm_667_while_placeholder_2Ksequential_222/lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_222/lstm_667/while/lstm_cell_667/addAddV2<sequential_222/lstm_667/while/lstm_cell_667/MatMul:product:0>sequential_222/lstm_667/while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_222/lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOpMsequential_222_lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_222/lstm_667/while/lstm_cell_667/BiasAddBiasAdd3sequential_222/lstm_667/while/lstm_cell_667/add:z:0Jsequential_222/lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_222/lstm_667/while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_222/lstm_667/while/lstm_cell_667/splitSplitDsequential_222/lstm_667/while/lstm_cell_667/split/split_dim:output:0<sequential_222/lstm_667/while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_222/lstm_667/while/lstm_cell_667/SigmoidSigmoid:sequential_222/lstm_667/while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_222/lstm_667/while/lstm_cell_667/Sigmoid_1Sigmoid:sequential_222/lstm_667/while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_222/lstm_667/while/lstm_cell_667/mulMul9sequential_222/lstm_667/while/lstm_cell_667/Sigmoid_1:y:0+sequential_222_lstm_667_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_222/lstm_667/while/lstm_cell_667/ReluRelu:sequential_222/lstm_667/while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_222/lstm_667/while/lstm_cell_667/mul_1Mul7sequential_222/lstm_667/while/lstm_cell_667/Sigmoid:y:0>sequential_222/lstm_667/while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_222/lstm_667/while/lstm_cell_667/add_1AddV23sequential_222/lstm_667/while/lstm_cell_667/mul:z:05sequential_222/lstm_667/while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_222/lstm_667/while/lstm_cell_667/Sigmoid_2Sigmoid:sequential_222/lstm_667/while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_222/lstm_667/while/lstm_cell_667/Relu_1Relu5sequential_222/lstm_667/while/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_222/lstm_667/while/lstm_cell_667/mul_2Mul9sequential_222/lstm_667/while/lstm_cell_667/Sigmoid_2:y:0@sequential_222/lstm_667/while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_222/lstm_667/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_222_lstm_667_while_placeholder_1)sequential_222_lstm_667_while_placeholder5sequential_222/lstm_667/while/lstm_cell_667/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_222/lstm_667/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_222/lstm_667/while/addAddV2)sequential_222_lstm_667_while_placeholder,sequential_222/lstm_667/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_222/lstm_667/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_222/lstm_667/while/add_1AddV2Hsequential_222_lstm_667_while_sequential_222_lstm_667_while_loop_counter.sequential_222/lstm_667/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_222/lstm_667/while/IdentityIdentity'sequential_222/lstm_667/while/add_1:z:0#^sequential_222/lstm_667/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_667/while/Identity_1IdentityNsequential_222_lstm_667_while_sequential_222_lstm_667_while_maximum_iterations#^sequential_222/lstm_667/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_667/while/Identity_2Identity%sequential_222/lstm_667/while/add:z:0#^sequential_222/lstm_667/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_667/while/Identity_3IdentityRsequential_222/lstm_667/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_222/lstm_667/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_667/while/Identity_4Identity5sequential_222/lstm_667/while/lstm_cell_667/mul_2:z:0#^sequential_222/lstm_667/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_222/lstm_667/while/Identity_5Identity5sequential_222/lstm_667/while/lstm_cell_667/add_1:z:0#^sequential_222/lstm_667/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_222/lstm_667/while/NoOpNoOpC^sequential_222/lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOpB^sequential_222/lstm_667/while/lstm_cell_667/MatMul/ReadVariableOpD^sequential_222/lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_222_lstm_667_while_identity/sequential_222/lstm_667/while/Identity:output:0"]
(sequential_222_lstm_667_while_identity_11sequential_222/lstm_667/while/Identity_1:output:0"]
(sequential_222_lstm_667_while_identity_21sequential_222/lstm_667/while/Identity_2:output:0"]
(sequential_222_lstm_667_while_identity_31sequential_222/lstm_667/while/Identity_3:output:0"]
(sequential_222_lstm_667_while_identity_41sequential_222/lstm_667/while/Identity_4:output:0"]
(sequential_222_lstm_667_while_identity_51sequential_222/lstm_667/while/Identity_5:output:0"?
Ksequential_222_lstm_667_while_lstm_cell_667_biasadd_readvariableop_resourceMsequential_222_lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource_0"?
Lsequential_222_lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resourceNsequential_222_lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource_0"?
Jsequential_222_lstm_667_while_lstm_cell_667_matmul_readvariableop_resourceLsequential_222_lstm_667_while_lstm_cell_667_matmul_readvariableop_resource_0"?
Esequential_222_lstm_667_while_sequential_222_lstm_667_strided_slice_1Gsequential_222_lstm_667_while_sequential_222_lstm_667_strided_slice_1_0"?
?sequential_222_lstm_667_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_667_tensorarrayunstack_tensorlistfromtensor?sequential_222_lstm_667_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_667_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_222/lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOpBsequential_222/lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp2?
Asequential_222/lstm_667/while/lstm_cell_667/MatMul/ReadVariableOpAsequential_222/lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp2?
Csequential_222/lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOpCsequential_222/lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_668_layer_call_fn_4234206
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4230825o
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
?
?
*__inference_lstm_668_layer_call_fn_4234217

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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4231283o
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
while_cond_4234429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4234429___redundant_placeholder05
1while_while_cond_4234429___redundant_placeholder15
1while_while_cond_4234429___redundant_placeholder25
1while_while_cond_4234429___redundant_placeholder3
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
0__inference_sequential_222_layer_call_fn_4231333
lstm_666_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_666_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_222_layer_call_and_return_conditional_losses_4231308o
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
_user_specified_namelstm_666_input
?
?
while_cond_4233483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4233483___redundant_placeholder05
1while_while_cond_4233483___redundant_placeholder15
1while_while_cond_4233483___redundant_placeholder25
1while_while_cond_4233483___redundant_placeholder3
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
*sequential_222_lstm_668_while_body_4229694L
Hsequential_222_lstm_668_while_sequential_222_lstm_668_while_loop_counterR
Nsequential_222_lstm_668_while_sequential_222_lstm_668_while_maximum_iterations-
)sequential_222_lstm_668_while_placeholder/
+sequential_222_lstm_668_while_placeholder_1/
+sequential_222_lstm_668_while_placeholder_2/
+sequential_222_lstm_668_while_placeholder_3K
Gsequential_222_lstm_668_while_sequential_222_lstm_668_strided_slice_1_0?
?sequential_222_lstm_668_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_668_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_222_lstm_668_while_lstm_cell_668_matmul_readvariableop_resource_0:2(`
Nsequential_222_lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource_0:
([
Msequential_222_lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource_0:(*
&sequential_222_lstm_668_while_identity,
(sequential_222_lstm_668_while_identity_1,
(sequential_222_lstm_668_while_identity_2,
(sequential_222_lstm_668_while_identity_3,
(sequential_222_lstm_668_while_identity_4,
(sequential_222_lstm_668_while_identity_5I
Esequential_222_lstm_668_while_sequential_222_lstm_668_strided_slice_1?
?sequential_222_lstm_668_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_668_tensorarrayunstack_tensorlistfromtensor\
Jsequential_222_lstm_668_while_lstm_cell_668_matmul_readvariableop_resource:2(^
Lsequential_222_lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource:
(Y
Ksequential_222_lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource:(??Bsequential_222/lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp?Asequential_222/lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp?Csequential_222/lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp?
Osequential_222/lstm_668/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_222/lstm_668/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_222_lstm_668_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_668_tensorarrayunstack_tensorlistfromtensor_0)sequential_222_lstm_668_while_placeholderXsequential_222/lstm_668/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_222/lstm_668/while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOpLsequential_222_lstm_668_while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_222/lstm_668/while/lstm_cell_668/MatMulMatMulHsequential_222/lstm_668/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_222/lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_222/lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOpNsequential_222_lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_222/lstm_668/while/lstm_cell_668/MatMul_1MatMul+sequential_222_lstm_668_while_placeholder_2Ksequential_222/lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_222/lstm_668/while/lstm_cell_668/addAddV2<sequential_222/lstm_668/while/lstm_cell_668/MatMul:product:0>sequential_222/lstm_668/while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_222/lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOpMsequential_222_lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_222/lstm_668/while/lstm_cell_668/BiasAddBiasAdd3sequential_222/lstm_668/while/lstm_cell_668/add:z:0Jsequential_222/lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_222/lstm_668/while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_222/lstm_668/while/lstm_cell_668/splitSplitDsequential_222/lstm_668/while/lstm_cell_668/split/split_dim:output:0<sequential_222/lstm_668/while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_222/lstm_668/while/lstm_cell_668/SigmoidSigmoid:sequential_222/lstm_668/while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_222/lstm_668/while/lstm_cell_668/Sigmoid_1Sigmoid:sequential_222/lstm_668/while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_222/lstm_668/while/lstm_cell_668/mulMul9sequential_222/lstm_668/while/lstm_cell_668/Sigmoid_1:y:0+sequential_222_lstm_668_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_222/lstm_668/while/lstm_cell_668/ReluRelu:sequential_222/lstm_668/while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_222/lstm_668/while/lstm_cell_668/mul_1Mul7sequential_222/lstm_668/while/lstm_cell_668/Sigmoid:y:0>sequential_222/lstm_668/while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_222/lstm_668/while/lstm_cell_668/add_1AddV23sequential_222/lstm_668/while/lstm_cell_668/mul:z:05sequential_222/lstm_668/while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_222/lstm_668/while/lstm_cell_668/Sigmoid_2Sigmoid:sequential_222/lstm_668/while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_222/lstm_668/while/lstm_cell_668/Relu_1Relu5sequential_222/lstm_668/while/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_222/lstm_668/while/lstm_cell_668/mul_2Mul9sequential_222/lstm_668/while/lstm_cell_668/Sigmoid_2:y:0@sequential_222/lstm_668/while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_222/lstm_668/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_222_lstm_668_while_placeholder_1)sequential_222_lstm_668_while_placeholder5sequential_222/lstm_668/while/lstm_cell_668/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_222/lstm_668/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_222/lstm_668/while/addAddV2)sequential_222_lstm_668_while_placeholder,sequential_222/lstm_668/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_222/lstm_668/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_222/lstm_668/while/add_1AddV2Hsequential_222_lstm_668_while_sequential_222_lstm_668_while_loop_counter.sequential_222/lstm_668/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_222/lstm_668/while/IdentityIdentity'sequential_222/lstm_668/while/add_1:z:0#^sequential_222/lstm_668/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_668/while/Identity_1IdentityNsequential_222_lstm_668_while_sequential_222_lstm_668_while_maximum_iterations#^sequential_222/lstm_668/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_668/while/Identity_2Identity%sequential_222/lstm_668/while/add:z:0#^sequential_222/lstm_668/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_668/while/Identity_3IdentityRsequential_222/lstm_668/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_222/lstm_668/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_668/while/Identity_4Identity5sequential_222/lstm_668/while/lstm_cell_668/mul_2:z:0#^sequential_222/lstm_668/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_222/lstm_668/while/Identity_5Identity5sequential_222/lstm_668/while/lstm_cell_668/add_1:z:0#^sequential_222/lstm_668/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_222/lstm_668/while/NoOpNoOpC^sequential_222/lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOpB^sequential_222/lstm_668/while/lstm_cell_668/MatMul/ReadVariableOpD^sequential_222/lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_222_lstm_668_while_identity/sequential_222/lstm_668/while/Identity:output:0"]
(sequential_222_lstm_668_while_identity_11sequential_222/lstm_668/while/Identity_1:output:0"]
(sequential_222_lstm_668_while_identity_21sequential_222/lstm_668/while/Identity_2:output:0"]
(sequential_222_lstm_668_while_identity_31sequential_222/lstm_668/while/Identity_3:output:0"]
(sequential_222_lstm_668_while_identity_41sequential_222/lstm_668/while/Identity_4:output:0"]
(sequential_222_lstm_668_while_identity_51sequential_222/lstm_668/while/Identity_5:output:0"?
Ksequential_222_lstm_668_while_lstm_cell_668_biasadd_readvariableop_resourceMsequential_222_lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource_0"?
Lsequential_222_lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resourceNsequential_222_lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource_0"?
Jsequential_222_lstm_668_while_lstm_cell_668_matmul_readvariableop_resourceLsequential_222_lstm_668_while_lstm_cell_668_matmul_readvariableop_resource_0"?
Esequential_222_lstm_668_while_sequential_222_lstm_668_strided_slice_1Gsequential_222_lstm_668_while_sequential_222_lstm_668_strided_slice_1_0"?
?sequential_222_lstm_668_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_668_tensorarrayunstack_tensorlistfromtensor?sequential_222_lstm_668_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_668_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_222/lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOpBsequential_222/lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp2?
Asequential_222/lstm_668/while/lstm_cell_668/MatMul/ReadVariableOpAsequential_222/lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp2?
Csequential_222/lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOpCsequential_222/lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4230201

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
??
?
"__inference__wrapped_model_4229784
lstm_666_inputW
Dsequential_222_lstm_666_lstm_cell_666_matmul_readvariableop_resource:	?Y
Fsequential_222_lstm_666_lstm_cell_666_matmul_1_readvariableop_resource:	d?T
Esequential_222_lstm_666_lstm_cell_666_biasadd_readvariableop_resource:	?W
Dsequential_222_lstm_667_lstm_cell_667_matmul_readvariableop_resource:	d?Y
Fsequential_222_lstm_667_lstm_cell_667_matmul_1_readvariableop_resource:	2?T
Esequential_222_lstm_667_lstm_cell_667_biasadd_readvariableop_resource:	?V
Dsequential_222_lstm_668_lstm_cell_668_matmul_readvariableop_resource:2(X
Fsequential_222_lstm_668_lstm_cell_668_matmul_1_readvariableop_resource:
(S
Esequential_222_lstm_668_lstm_cell_668_biasadd_readvariableop_resource:(I
7sequential_222_dense_222_matmul_readvariableop_resource:
F
8sequential_222_dense_222_biasadd_readvariableop_resource:
identity??/sequential_222/dense_222/BiasAdd/ReadVariableOp?.sequential_222/dense_222/MatMul/ReadVariableOp?<sequential_222/lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp?;sequential_222/lstm_666/lstm_cell_666/MatMul/ReadVariableOp?=sequential_222/lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp?sequential_222/lstm_666/while?<sequential_222/lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp?;sequential_222/lstm_667/lstm_cell_667/MatMul/ReadVariableOp?=sequential_222/lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp?sequential_222/lstm_667/while?<sequential_222/lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp?;sequential_222/lstm_668/lstm_cell_668/MatMul/ReadVariableOp?=sequential_222/lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp?sequential_222/lstm_668/while[
sequential_222/lstm_666/ShapeShapelstm_666_input*
T0*
_output_shapes
:u
+sequential_222/lstm_666/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_222/lstm_666/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_222/lstm_666/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_222/lstm_666/strided_sliceStridedSlice&sequential_222/lstm_666/Shape:output:04sequential_222/lstm_666/strided_slice/stack:output:06sequential_222/lstm_666/strided_slice/stack_1:output:06sequential_222/lstm_666/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_222/lstm_666/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_222/lstm_666/zeros/packedPack.sequential_222/lstm_666/strided_slice:output:0/sequential_222/lstm_666/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_222/lstm_666/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_222/lstm_666/zerosFill-sequential_222/lstm_666/zeros/packed:output:0,sequential_222/lstm_666/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_222/lstm_666/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_222/lstm_666/zeros_1/packedPack.sequential_222/lstm_666/strided_slice:output:01sequential_222/lstm_666/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_222/lstm_666/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_222/lstm_666/zeros_1Fill/sequential_222/lstm_666/zeros_1/packed:output:0.sequential_222/lstm_666/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_222/lstm_666/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_222/lstm_666/transpose	Transposelstm_666_input/sequential_222/lstm_666/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_222/lstm_666/Shape_1Shape%sequential_222/lstm_666/transpose:y:0*
T0*
_output_shapes
:w
-sequential_222/lstm_666/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_222/lstm_666/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_222/lstm_666/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_222/lstm_666/strided_slice_1StridedSlice(sequential_222/lstm_666/Shape_1:output:06sequential_222/lstm_666/strided_slice_1/stack:output:08sequential_222/lstm_666/strided_slice_1/stack_1:output:08sequential_222/lstm_666/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_222/lstm_666/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_222/lstm_666/TensorArrayV2TensorListReserve<sequential_222/lstm_666/TensorArrayV2/element_shape:output:00sequential_222/lstm_666/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_222/lstm_666/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_222/lstm_666/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_222/lstm_666/transpose:y:0Vsequential_222/lstm_666/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_222/lstm_666/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_222/lstm_666/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_222/lstm_666/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_222/lstm_666/strided_slice_2StridedSlice%sequential_222/lstm_666/transpose:y:06sequential_222/lstm_666/strided_slice_2/stack:output:08sequential_222/lstm_666/strided_slice_2/stack_1:output:08sequential_222/lstm_666/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_222/lstm_666/lstm_cell_666/MatMul/ReadVariableOpReadVariableOpDsequential_222_lstm_666_lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_222/lstm_666/lstm_cell_666/MatMulMatMul0sequential_222/lstm_666/strided_slice_2:output:0Csequential_222/lstm_666/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_222/lstm_666/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOpFsequential_222_lstm_666_lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_222/lstm_666/lstm_cell_666/MatMul_1MatMul&sequential_222/lstm_666/zeros:output:0Esequential_222/lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_222/lstm_666/lstm_cell_666/addAddV26sequential_222/lstm_666/lstm_cell_666/MatMul:product:08sequential_222/lstm_666/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_222/lstm_666/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOpEsequential_222_lstm_666_lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_222/lstm_666/lstm_cell_666/BiasAddBiasAdd-sequential_222/lstm_666/lstm_cell_666/add:z:0Dsequential_222/lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_222/lstm_666/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_222/lstm_666/lstm_cell_666/splitSplit>sequential_222/lstm_666/lstm_cell_666/split/split_dim:output:06sequential_222/lstm_666/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_222/lstm_666/lstm_cell_666/SigmoidSigmoid4sequential_222/lstm_666/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_222/lstm_666/lstm_cell_666/Sigmoid_1Sigmoid4sequential_222/lstm_666/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_222/lstm_666/lstm_cell_666/mulMul3sequential_222/lstm_666/lstm_cell_666/Sigmoid_1:y:0(sequential_222/lstm_666/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_222/lstm_666/lstm_cell_666/ReluRelu4sequential_222/lstm_666/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_222/lstm_666/lstm_cell_666/mul_1Mul1sequential_222/lstm_666/lstm_cell_666/Sigmoid:y:08sequential_222/lstm_666/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_222/lstm_666/lstm_cell_666/add_1AddV2-sequential_222/lstm_666/lstm_cell_666/mul:z:0/sequential_222/lstm_666/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_222/lstm_666/lstm_cell_666/Sigmoid_2Sigmoid4sequential_222/lstm_666/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_222/lstm_666/lstm_cell_666/Relu_1Relu/sequential_222/lstm_666/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_222/lstm_666/lstm_cell_666/mul_2Mul3sequential_222/lstm_666/lstm_cell_666/Sigmoid_2:y:0:sequential_222/lstm_666/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_222/lstm_666/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_222/lstm_666/TensorArrayV2_1TensorListReserve>sequential_222/lstm_666/TensorArrayV2_1/element_shape:output:00sequential_222/lstm_666/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_222/lstm_666/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_222/lstm_666/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_222/lstm_666/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_222/lstm_666/whileWhile3sequential_222/lstm_666/while/loop_counter:output:09sequential_222/lstm_666/while/maximum_iterations:output:0%sequential_222/lstm_666/time:output:00sequential_222/lstm_666/TensorArrayV2_1:handle:0&sequential_222/lstm_666/zeros:output:0(sequential_222/lstm_666/zeros_1:output:00sequential_222/lstm_666/strided_slice_1:output:0Osequential_222/lstm_666/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_222_lstm_666_lstm_cell_666_matmul_readvariableop_resourceFsequential_222_lstm_666_lstm_cell_666_matmul_1_readvariableop_resourceEsequential_222_lstm_666_lstm_cell_666_biasadd_readvariableop_resource*
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
*sequential_222_lstm_666_while_body_4229416*6
cond.R,
*sequential_222_lstm_666_while_cond_4229415*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_222/lstm_666/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_222/lstm_666/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_222/lstm_666/while:output:3Qsequential_222/lstm_666/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_222/lstm_666/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_222/lstm_666/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_222/lstm_666/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_222/lstm_666/strided_slice_3StridedSliceCsequential_222/lstm_666/TensorArrayV2Stack/TensorListStack:tensor:06sequential_222/lstm_666/strided_slice_3/stack:output:08sequential_222/lstm_666/strided_slice_3/stack_1:output:08sequential_222/lstm_666/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_222/lstm_666/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_222/lstm_666/transpose_1	TransposeCsequential_222/lstm_666/TensorArrayV2Stack/TensorListStack:tensor:01sequential_222/lstm_666/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_222/lstm_666/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_222/lstm_667/ShapeShape'sequential_222/lstm_666/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_222/lstm_667/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_222/lstm_667/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_222/lstm_667/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_222/lstm_667/strided_sliceStridedSlice&sequential_222/lstm_667/Shape:output:04sequential_222/lstm_667/strided_slice/stack:output:06sequential_222/lstm_667/strided_slice/stack_1:output:06sequential_222/lstm_667/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_222/lstm_667/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_222/lstm_667/zeros/packedPack.sequential_222/lstm_667/strided_slice:output:0/sequential_222/lstm_667/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_222/lstm_667/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_222/lstm_667/zerosFill-sequential_222/lstm_667/zeros/packed:output:0,sequential_222/lstm_667/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_222/lstm_667/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_222/lstm_667/zeros_1/packedPack.sequential_222/lstm_667/strided_slice:output:01sequential_222/lstm_667/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_222/lstm_667/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_222/lstm_667/zeros_1Fill/sequential_222/lstm_667/zeros_1/packed:output:0.sequential_222/lstm_667/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_222/lstm_667/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_222/lstm_667/transpose	Transpose'sequential_222/lstm_666/transpose_1:y:0/sequential_222/lstm_667/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_222/lstm_667/Shape_1Shape%sequential_222/lstm_667/transpose:y:0*
T0*
_output_shapes
:w
-sequential_222/lstm_667/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_222/lstm_667/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_222/lstm_667/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_222/lstm_667/strided_slice_1StridedSlice(sequential_222/lstm_667/Shape_1:output:06sequential_222/lstm_667/strided_slice_1/stack:output:08sequential_222/lstm_667/strided_slice_1/stack_1:output:08sequential_222/lstm_667/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_222/lstm_667/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_222/lstm_667/TensorArrayV2TensorListReserve<sequential_222/lstm_667/TensorArrayV2/element_shape:output:00sequential_222/lstm_667/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_222/lstm_667/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_222/lstm_667/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_222/lstm_667/transpose:y:0Vsequential_222/lstm_667/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_222/lstm_667/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_222/lstm_667/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_222/lstm_667/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_222/lstm_667/strided_slice_2StridedSlice%sequential_222/lstm_667/transpose:y:06sequential_222/lstm_667/strided_slice_2/stack:output:08sequential_222/lstm_667/strided_slice_2/stack_1:output:08sequential_222/lstm_667/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_222/lstm_667/lstm_cell_667/MatMul/ReadVariableOpReadVariableOpDsequential_222_lstm_667_lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_222/lstm_667/lstm_cell_667/MatMulMatMul0sequential_222/lstm_667/strided_slice_2:output:0Csequential_222/lstm_667/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_222/lstm_667/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOpFsequential_222_lstm_667_lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_222/lstm_667/lstm_cell_667/MatMul_1MatMul&sequential_222/lstm_667/zeros:output:0Esequential_222/lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_222/lstm_667/lstm_cell_667/addAddV26sequential_222/lstm_667/lstm_cell_667/MatMul:product:08sequential_222/lstm_667/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_222/lstm_667/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOpEsequential_222_lstm_667_lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_222/lstm_667/lstm_cell_667/BiasAddBiasAdd-sequential_222/lstm_667/lstm_cell_667/add:z:0Dsequential_222/lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_222/lstm_667/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_222/lstm_667/lstm_cell_667/splitSplit>sequential_222/lstm_667/lstm_cell_667/split/split_dim:output:06sequential_222/lstm_667/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_222/lstm_667/lstm_cell_667/SigmoidSigmoid4sequential_222/lstm_667/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_222/lstm_667/lstm_cell_667/Sigmoid_1Sigmoid4sequential_222/lstm_667/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_222/lstm_667/lstm_cell_667/mulMul3sequential_222/lstm_667/lstm_cell_667/Sigmoid_1:y:0(sequential_222/lstm_667/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_222/lstm_667/lstm_cell_667/ReluRelu4sequential_222/lstm_667/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_222/lstm_667/lstm_cell_667/mul_1Mul1sequential_222/lstm_667/lstm_cell_667/Sigmoid:y:08sequential_222/lstm_667/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_222/lstm_667/lstm_cell_667/add_1AddV2-sequential_222/lstm_667/lstm_cell_667/mul:z:0/sequential_222/lstm_667/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_222/lstm_667/lstm_cell_667/Sigmoid_2Sigmoid4sequential_222/lstm_667/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_222/lstm_667/lstm_cell_667/Relu_1Relu/sequential_222/lstm_667/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_222/lstm_667/lstm_cell_667/mul_2Mul3sequential_222/lstm_667/lstm_cell_667/Sigmoid_2:y:0:sequential_222/lstm_667/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_222/lstm_667/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_222/lstm_667/TensorArrayV2_1TensorListReserve>sequential_222/lstm_667/TensorArrayV2_1/element_shape:output:00sequential_222/lstm_667/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_222/lstm_667/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_222/lstm_667/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_222/lstm_667/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_222/lstm_667/whileWhile3sequential_222/lstm_667/while/loop_counter:output:09sequential_222/lstm_667/while/maximum_iterations:output:0%sequential_222/lstm_667/time:output:00sequential_222/lstm_667/TensorArrayV2_1:handle:0&sequential_222/lstm_667/zeros:output:0(sequential_222/lstm_667/zeros_1:output:00sequential_222/lstm_667/strided_slice_1:output:0Osequential_222/lstm_667/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_222_lstm_667_lstm_cell_667_matmul_readvariableop_resourceFsequential_222_lstm_667_lstm_cell_667_matmul_1_readvariableop_resourceEsequential_222_lstm_667_lstm_cell_667_biasadd_readvariableop_resource*
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
*sequential_222_lstm_667_while_body_4229555*6
cond.R,
*sequential_222_lstm_667_while_cond_4229554*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_222/lstm_667/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_222/lstm_667/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_222/lstm_667/while:output:3Qsequential_222/lstm_667/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_222/lstm_667/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_222/lstm_667/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_222/lstm_667/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_222/lstm_667/strided_slice_3StridedSliceCsequential_222/lstm_667/TensorArrayV2Stack/TensorListStack:tensor:06sequential_222/lstm_667/strided_slice_3/stack:output:08sequential_222/lstm_667/strided_slice_3/stack_1:output:08sequential_222/lstm_667/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_222/lstm_667/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_222/lstm_667/transpose_1	TransposeCsequential_222/lstm_667/TensorArrayV2Stack/TensorListStack:tensor:01sequential_222/lstm_667/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_222/lstm_667/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_222/lstm_668/ShapeShape'sequential_222/lstm_667/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_222/lstm_668/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_222/lstm_668/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_222/lstm_668/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_222/lstm_668/strided_sliceStridedSlice&sequential_222/lstm_668/Shape:output:04sequential_222/lstm_668/strided_slice/stack:output:06sequential_222/lstm_668/strided_slice/stack_1:output:06sequential_222/lstm_668/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_222/lstm_668/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_222/lstm_668/zeros/packedPack.sequential_222/lstm_668/strided_slice:output:0/sequential_222/lstm_668/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_222/lstm_668/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_222/lstm_668/zerosFill-sequential_222/lstm_668/zeros/packed:output:0,sequential_222/lstm_668/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_222/lstm_668/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_222/lstm_668/zeros_1/packedPack.sequential_222/lstm_668/strided_slice:output:01sequential_222/lstm_668/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_222/lstm_668/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_222/lstm_668/zeros_1Fill/sequential_222/lstm_668/zeros_1/packed:output:0.sequential_222/lstm_668/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_222/lstm_668/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_222/lstm_668/transpose	Transpose'sequential_222/lstm_667/transpose_1:y:0/sequential_222/lstm_668/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_222/lstm_668/Shape_1Shape%sequential_222/lstm_668/transpose:y:0*
T0*
_output_shapes
:w
-sequential_222/lstm_668/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_222/lstm_668/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_222/lstm_668/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_222/lstm_668/strided_slice_1StridedSlice(sequential_222/lstm_668/Shape_1:output:06sequential_222/lstm_668/strided_slice_1/stack:output:08sequential_222/lstm_668/strided_slice_1/stack_1:output:08sequential_222/lstm_668/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_222/lstm_668/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_222/lstm_668/TensorArrayV2TensorListReserve<sequential_222/lstm_668/TensorArrayV2/element_shape:output:00sequential_222/lstm_668/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_222/lstm_668/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_222/lstm_668/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_222/lstm_668/transpose:y:0Vsequential_222/lstm_668/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_222/lstm_668/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_222/lstm_668/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_222/lstm_668/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_222/lstm_668/strided_slice_2StridedSlice%sequential_222/lstm_668/transpose:y:06sequential_222/lstm_668/strided_slice_2/stack:output:08sequential_222/lstm_668/strided_slice_2/stack_1:output:08sequential_222/lstm_668/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_222/lstm_668/lstm_cell_668/MatMul/ReadVariableOpReadVariableOpDsequential_222_lstm_668_lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_222/lstm_668/lstm_cell_668/MatMulMatMul0sequential_222/lstm_668/strided_slice_2:output:0Csequential_222/lstm_668/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_222/lstm_668/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOpFsequential_222_lstm_668_lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_222/lstm_668/lstm_cell_668/MatMul_1MatMul&sequential_222/lstm_668/zeros:output:0Esequential_222/lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_222/lstm_668/lstm_cell_668/addAddV26sequential_222/lstm_668/lstm_cell_668/MatMul:product:08sequential_222/lstm_668/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_222/lstm_668/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOpEsequential_222_lstm_668_lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_222/lstm_668/lstm_cell_668/BiasAddBiasAdd-sequential_222/lstm_668/lstm_cell_668/add:z:0Dsequential_222/lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_222/lstm_668/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_222/lstm_668/lstm_cell_668/splitSplit>sequential_222/lstm_668/lstm_cell_668/split/split_dim:output:06sequential_222/lstm_668/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_222/lstm_668/lstm_cell_668/SigmoidSigmoid4sequential_222/lstm_668/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_222/lstm_668/lstm_cell_668/Sigmoid_1Sigmoid4sequential_222/lstm_668/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_222/lstm_668/lstm_cell_668/mulMul3sequential_222/lstm_668/lstm_cell_668/Sigmoid_1:y:0(sequential_222/lstm_668/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_222/lstm_668/lstm_cell_668/ReluRelu4sequential_222/lstm_668/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_222/lstm_668/lstm_cell_668/mul_1Mul1sequential_222/lstm_668/lstm_cell_668/Sigmoid:y:08sequential_222/lstm_668/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_222/lstm_668/lstm_cell_668/add_1AddV2-sequential_222/lstm_668/lstm_cell_668/mul:z:0/sequential_222/lstm_668/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_222/lstm_668/lstm_cell_668/Sigmoid_2Sigmoid4sequential_222/lstm_668/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_222/lstm_668/lstm_cell_668/Relu_1Relu/sequential_222/lstm_668/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_222/lstm_668/lstm_cell_668/mul_2Mul3sequential_222/lstm_668/lstm_cell_668/Sigmoid_2:y:0:sequential_222/lstm_668/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_222/lstm_668/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_222/lstm_668/TensorArrayV2_1TensorListReserve>sequential_222/lstm_668/TensorArrayV2_1/element_shape:output:00sequential_222/lstm_668/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_222/lstm_668/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_222/lstm_668/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_222/lstm_668/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_222/lstm_668/whileWhile3sequential_222/lstm_668/while/loop_counter:output:09sequential_222/lstm_668/while/maximum_iterations:output:0%sequential_222/lstm_668/time:output:00sequential_222/lstm_668/TensorArrayV2_1:handle:0&sequential_222/lstm_668/zeros:output:0(sequential_222/lstm_668/zeros_1:output:00sequential_222/lstm_668/strided_slice_1:output:0Osequential_222/lstm_668/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_222_lstm_668_lstm_cell_668_matmul_readvariableop_resourceFsequential_222_lstm_668_lstm_cell_668_matmul_1_readvariableop_resourceEsequential_222_lstm_668_lstm_cell_668_biasadd_readvariableop_resource*
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
*sequential_222_lstm_668_while_body_4229694*6
cond.R,
*sequential_222_lstm_668_while_cond_4229693*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_222/lstm_668/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_222/lstm_668/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_222/lstm_668/while:output:3Qsequential_222/lstm_668/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_222/lstm_668/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_222/lstm_668/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_222/lstm_668/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_222/lstm_668/strided_slice_3StridedSliceCsequential_222/lstm_668/TensorArrayV2Stack/TensorListStack:tensor:06sequential_222/lstm_668/strided_slice_3/stack:output:08sequential_222/lstm_668/strided_slice_3/stack_1:output:08sequential_222/lstm_668/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_222/lstm_668/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_222/lstm_668/transpose_1	TransposeCsequential_222/lstm_668/TensorArrayV2Stack/TensorListStack:tensor:01sequential_222/lstm_668/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_222/lstm_668/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_222/dense_222/MatMul/ReadVariableOpReadVariableOp7sequential_222_dense_222_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_222/dense_222/MatMulMatMul0sequential_222/lstm_668/strided_slice_3:output:06sequential_222/dense_222/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_222/dense_222/BiasAdd/ReadVariableOpReadVariableOp8sequential_222_dense_222_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_222/dense_222/BiasAddBiasAdd)sequential_222/dense_222/MatMul:product:07sequential_222/dense_222/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_222/dense_222/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_222/dense_222/BiasAdd/ReadVariableOp/^sequential_222/dense_222/MatMul/ReadVariableOp=^sequential_222/lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp<^sequential_222/lstm_666/lstm_cell_666/MatMul/ReadVariableOp>^sequential_222/lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp^sequential_222/lstm_666/while=^sequential_222/lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp<^sequential_222/lstm_667/lstm_cell_667/MatMul/ReadVariableOp>^sequential_222/lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp^sequential_222/lstm_667/while=^sequential_222/lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp<^sequential_222/lstm_668/lstm_cell_668/MatMul/ReadVariableOp>^sequential_222/lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp^sequential_222/lstm_668/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_222/dense_222/BiasAdd/ReadVariableOp/sequential_222/dense_222/BiasAdd/ReadVariableOp2`
.sequential_222/dense_222/MatMul/ReadVariableOp.sequential_222/dense_222/MatMul/ReadVariableOp2|
<sequential_222/lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp<sequential_222/lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp2z
;sequential_222/lstm_666/lstm_cell_666/MatMul/ReadVariableOp;sequential_222/lstm_666/lstm_cell_666/MatMul/ReadVariableOp2~
=sequential_222/lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp=sequential_222/lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp2>
sequential_222/lstm_666/whilesequential_222/lstm_666/while2|
<sequential_222/lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp<sequential_222/lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp2z
;sequential_222/lstm_667/lstm_cell_667/MatMul/ReadVariableOp;sequential_222/lstm_667/lstm_cell_667/MatMul/ReadVariableOp2~
=sequential_222/lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp=sequential_222/lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp2>
sequential_222/lstm_667/whilesequential_222/lstm_667/while2|
<sequential_222/lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp<sequential_222/lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp2z
;sequential_222/lstm_668/lstm_cell_668/MatMul/ReadVariableOp;sequential_222/lstm_668/lstm_cell_668/MatMul/ReadVariableOp2~
=sequential_222/lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp=sequential_222/lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp2>
sequential_222/lstm_668/whilesequential_222/lstm_668/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_666_input
?
?
K__inference_sequential_222_layer_call_and_return_conditional_losses_4231308

inputs#
lstm_666_4230984:	?#
lstm_666_4230986:	d?
lstm_666_4230988:	?#
lstm_667_4231134:	d?#
lstm_667_4231136:	2?
lstm_667_4231138:	?"
lstm_668_4231284:2("
lstm_668_4231286:
(
lstm_668_4231288:(#
dense_222_4231302:

dense_222_4231304:
identity??!dense_222/StatefulPartitionedCall? lstm_666/StatefulPartitionedCall? lstm_667/StatefulPartitionedCall? lstm_668/StatefulPartitionedCall?
 lstm_666/StatefulPartitionedCallStatefulPartitionedCallinputslstm_666_4230984lstm_666_4230986lstm_666_4230988*
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4230983?
 lstm_667/StatefulPartitionedCallStatefulPartitionedCall)lstm_666/StatefulPartitionedCall:output:0lstm_667_4231134lstm_667_4231136lstm_667_4231138*
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4231133?
 lstm_668/StatefulPartitionedCallStatefulPartitionedCall)lstm_667/StatefulPartitionedCall:output:0lstm_668_4231284lstm_668_4231286lstm_668_4231288*
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4231283?
!dense_222/StatefulPartitionedCallStatefulPartitionedCall)lstm_668/StatefulPartitionedCall:output:0dense_222_4231302dense_222_4231304*
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
F__inference_dense_222_layer_call_and_return_conditional_losses_4231301y
IdentityIdentity*dense_222/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_222/StatefulPartitionedCall!^lstm_666/StatefulPartitionedCall!^lstm_667/StatefulPartitionedCall!^lstm_668/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_222/StatefulPartitionedCall!dense_222/StatefulPartitionedCall2D
 lstm_666/StatefulPartitionedCall lstm_666/StatefulPartitionedCall2D
 lstm_667/StatefulPartitionedCall lstm_667/StatefulPartitionedCall2D
 lstm_668/StatefulPartitionedCall lstm_668/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_668_layer_call_fn_4234228

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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4231499o
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
?
*sequential_222_lstm_666_while_cond_4229415L
Hsequential_222_lstm_666_while_sequential_222_lstm_666_while_loop_counterR
Nsequential_222_lstm_666_while_sequential_222_lstm_666_while_maximum_iterations-
)sequential_222_lstm_666_while_placeholder/
+sequential_222_lstm_666_while_placeholder_1/
+sequential_222_lstm_666_while_placeholder_2/
+sequential_222_lstm_666_while_placeholder_3N
Jsequential_222_lstm_666_while_less_sequential_222_lstm_666_strided_slice_1e
asequential_222_lstm_666_while_sequential_222_lstm_666_while_cond_4229415___redundant_placeholder0e
asequential_222_lstm_666_while_sequential_222_lstm_666_while_cond_4229415___redundant_placeholder1e
asequential_222_lstm_666_while_sequential_222_lstm_666_while_cond_4229415___redundant_placeholder2e
asequential_222_lstm_666_while_sequential_222_lstm_666_while_cond_4229415___redundant_placeholder3*
&sequential_222_lstm_666_while_identity
?
"sequential_222/lstm_666/while/LessLess)sequential_222_lstm_666_while_placeholderJsequential_222_lstm_666_while_less_sequential_222_lstm_666_strided_slice_1*
T0*
_output_shapes
: {
&sequential_222/lstm_666/while/IdentityIdentity&sequential_222/lstm_666/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_222_lstm_666_while_identity/sequential_222/lstm_666/while/Identity:output:0*(
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
K__inference_sequential_222_layer_call_and_return_conditional_losses_4232525

inputsH
5lstm_666_lstm_cell_666_matmul_readvariableop_resource:	?J
7lstm_666_lstm_cell_666_matmul_1_readvariableop_resource:	d?E
6lstm_666_lstm_cell_666_biasadd_readvariableop_resource:	?H
5lstm_667_lstm_cell_667_matmul_readvariableop_resource:	d?J
7lstm_667_lstm_cell_667_matmul_1_readvariableop_resource:	2?E
6lstm_667_lstm_cell_667_biasadd_readvariableop_resource:	?G
5lstm_668_lstm_cell_668_matmul_readvariableop_resource:2(I
7lstm_668_lstm_cell_668_matmul_1_readvariableop_resource:
(D
6lstm_668_lstm_cell_668_biasadd_readvariableop_resource:(:
(dense_222_matmul_readvariableop_resource:
7
)dense_222_biasadd_readvariableop_resource:
identity?? dense_222/BiasAdd/ReadVariableOp?dense_222/MatMul/ReadVariableOp?-lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp?,lstm_666/lstm_cell_666/MatMul/ReadVariableOp?.lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp?lstm_666/while?-lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp?,lstm_667/lstm_cell_667/MatMul/ReadVariableOp?.lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp?lstm_667/while?-lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp?,lstm_668/lstm_cell_668/MatMul/ReadVariableOp?.lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp?lstm_668/whileD
lstm_666/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_666/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_666/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_666/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_666/strided_sliceStridedSlicelstm_666/Shape:output:0%lstm_666/strided_slice/stack:output:0'lstm_666/strided_slice/stack_1:output:0'lstm_666/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_666/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_666/zeros/packedPacklstm_666/strided_slice:output:0 lstm_666/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_666/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_666/zerosFilllstm_666/zeros/packed:output:0lstm_666/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_666/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_666/zeros_1/packedPacklstm_666/strided_slice:output:0"lstm_666/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_666/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_666/zeros_1Fill lstm_666/zeros_1/packed:output:0lstm_666/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_666/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_666/transpose	Transposeinputs lstm_666/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_666/Shape_1Shapelstm_666/transpose:y:0*
T0*
_output_shapes
:h
lstm_666/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_666/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_666/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_666/strided_slice_1StridedSlicelstm_666/Shape_1:output:0'lstm_666/strided_slice_1/stack:output:0)lstm_666/strided_slice_1/stack_1:output:0)lstm_666/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_666/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_666/TensorArrayV2TensorListReserve-lstm_666/TensorArrayV2/element_shape:output:0!lstm_666/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_666/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_666/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_666/transpose:y:0Glstm_666/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_666/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_666/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_666/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_666/strided_slice_2StridedSlicelstm_666/transpose:y:0'lstm_666/strided_slice_2/stack:output:0)lstm_666/strided_slice_2/stack_1:output:0)lstm_666/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_666/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp5lstm_666_lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_666/lstm_cell_666/MatMulMatMul!lstm_666/strided_slice_2:output:04lstm_666/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_666/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp7lstm_666_lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_666/lstm_cell_666/MatMul_1MatMullstm_666/zeros:output:06lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_666/lstm_cell_666/addAddV2'lstm_666/lstm_cell_666/MatMul:product:0)lstm_666/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_666/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp6lstm_666_lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_666/lstm_cell_666/BiasAddBiasAddlstm_666/lstm_cell_666/add:z:05lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_666/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_666/lstm_cell_666/splitSplit/lstm_666/lstm_cell_666/split/split_dim:output:0'lstm_666/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_666/lstm_cell_666/SigmoidSigmoid%lstm_666/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_666/lstm_cell_666/Sigmoid_1Sigmoid%lstm_666/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_666/lstm_cell_666/mulMul$lstm_666/lstm_cell_666/Sigmoid_1:y:0lstm_666/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_666/lstm_cell_666/ReluRelu%lstm_666/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_666/lstm_cell_666/mul_1Mul"lstm_666/lstm_cell_666/Sigmoid:y:0)lstm_666/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_666/lstm_cell_666/add_1AddV2lstm_666/lstm_cell_666/mul:z:0 lstm_666/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_666/lstm_cell_666/Sigmoid_2Sigmoid%lstm_666/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_666/lstm_cell_666/Relu_1Relu lstm_666/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_666/lstm_cell_666/mul_2Mul$lstm_666/lstm_cell_666/Sigmoid_2:y:0+lstm_666/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_666/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_666/TensorArrayV2_1TensorListReserve/lstm_666/TensorArrayV2_1/element_shape:output:0!lstm_666/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_666/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_666/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_666/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_666/whileWhile$lstm_666/while/loop_counter:output:0*lstm_666/while/maximum_iterations:output:0lstm_666/time:output:0!lstm_666/TensorArrayV2_1:handle:0lstm_666/zeros:output:0lstm_666/zeros_1:output:0!lstm_666/strided_slice_1:output:0@lstm_666/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_666_lstm_cell_666_matmul_readvariableop_resource7lstm_666_lstm_cell_666_matmul_1_readvariableop_resource6lstm_666_lstm_cell_666_biasadd_readvariableop_resource*
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
lstm_666_while_body_4232157*'
condR
lstm_666_while_cond_4232156*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_666/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_666/TensorArrayV2Stack/TensorListStackTensorListStacklstm_666/while:output:3Blstm_666/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_666/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_666/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_666/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_666/strided_slice_3StridedSlice4lstm_666/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_666/strided_slice_3/stack:output:0)lstm_666/strided_slice_3/stack_1:output:0)lstm_666/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_666/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_666/transpose_1	Transpose4lstm_666/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_666/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_666/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_667/ShapeShapelstm_666/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_667/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_667/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_667/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_667/strided_sliceStridedSlicelstm_667/Shape:output:0%lstm_667/strided_slice/stack:output:0'lstm_667/strided_slice/stack_1:output:0'lstm_667/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_667/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_667/zeros/packedPacklstm_667/strided_slice:output:0 lstm_667/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_667/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_667/zerosFilllstm_667/zeros/packed:output:0lstm_667/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_667/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_667/zeros_1/packedPacklstm_667/strided_slice:output:0"lstm_667/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_667/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_667/zeros_1Fill lstm_667/zeros_1/packed:output:0lstm_667/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_667/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_667/transpose	Transposelstm_666/transpose_1:y:0 lstm_667/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_667/Shape_1Shapelstm_667/transpose:y:0*
T0*
_output_shapes
:h
lstm_667/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_667/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_667/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_667/strided_slice_1StridedSlicelstm_667/Shape_1:output:0'lstm_667/strided_slice_1/stack:output:0)lstm_667/strided_slice_1/stack_1:output:0)lstm_667/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_667/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_667/TensorArrayV2TensorListReserve-lstm_667/TensorArrayV2/element_shape:output:0!lstm_667/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_667/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_667/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_667/transpose:y:0Glstm_667/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_667/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_667/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_667/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_667/strided_slice_2StridedSlicelstm_667/transpose:y:0'lstm_667/strided_slice_2/stack:output:0)lstm_667/strided_slice_2/stack_1:output:0)lstm_667/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_667/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp5lstm_667_lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_667/lstm_cell_667/MatMulMatMul!lstm_667/strided_slice_2:output:04lstm_667/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_667/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp7lstm_667_lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_667/lstm_cell_667/MatMul_1MatMullstm_667/zeros:output:06lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_667/lstm_cell_667/addAddV2'lstm_667/lstm_cell_667/MatMul:product:0)lstm_667/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_667/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp6lstm_667_lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_667/lstm_cell_667/BiasAddBiasAddlstm_667/lstm_cell_667/add:z:05lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_667/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_667/lstm_cell_667/splitSplit/lstm_667/lstm_cell_667/split/split_dim:output:0'lstm_667/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_667/lstm_cell_667/SigmoidSigmoid%lstm_667/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_667/lstm_cell_667/Sigmoid_1Sigmoid%lstm_667/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_667/lstm_cell_667/mulMul$lstm_667/lstm_cell_667/Sigmoid_1:y:0lstm_667/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_667/lstm_cell_667/ReluRelu%lstm_667/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_667/lstm_cell_667/mul_1Mul"lstm_667/lstm_cell_667/Sigmoid:y:0)lstm_667/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_667/lstm_cell_667/add_1AddV2lstm_667/lstm_cell_667/mul:z:0 lstm_667/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_667/lstm_cell_667/Sigmoid_2Sigmoid%lstm_667/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_667/lstm_cell_667/Relu_1Relu lstm_667/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_667/lstm_cell_667/mul_2Mul$lstm_667/lstm_cell_667/Sigmoid_2:y:0+lstm_667/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_667/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_667/TensorArrayV2_1TensorListReserve/lstm_667/TensorArrayV2_1/element_shape:output:0!lstm_667/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_667/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_667/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_667/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_667/whileWhile$lstm_667/while/loop_counter:output:0*lstm_667/while/maximum_iterations:output:0lstm_667/time:output:0!lstm_667/TensorArrayV2_1:handle:0lstm_667/zeros:output:0lstm_667/zeros_1:output:0!lstm_667/strided_slice_1:output:0@lstm_667/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_667_lstm_cell_667_matmul_readvariableop_resource7lstm_667_lstm_cell_667_matmul_1_readvariableop_resource6lstm_667_lstm_cell_667_biasadd_readvariableop_resource*
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
lstm_667_while_body_4232296*'
condR
lstm_667_while_cond_4232295*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_667/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_667/TensorArrayV2Stack/TensorListStackTensorListStacklstm_667/while:output:3Blstm_667/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_667/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_667/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_667/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_667/strided_slice_3StridedSlice4lstm_667/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_667/strided_slice_3/stack:output:0)lstm_667/strided_slice_3/stack_1:output:0)lstm_667/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_667/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_667/transpose_1	Transpose4lstm_667/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_667/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_667/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_668/ShapeShapelstm_667/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_668/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_668/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_668/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_668/strided_sliceStridedSlicelstm_668/Shape:output:0%lstm_668/strided_slice/stack:output:0'lstm_668/strided_slice/stack_1:output:0'lstm_668/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_668/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_668/zeros/packedPacklstm_668/strided_slice:output:0 lstm_668/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_668/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_668/zerosFilllstm_668/zeros/packed:output:0lstm_668/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_668/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_668/zeros_1/packedPacklstm_668/strided_slice:output:0"lstm_668/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_668/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_668/zeros_1Fill lstm_668/zeros_1/packed:output:0lstm_668/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_668/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_668/transpose	Transposelstm_667/transpose_1:y:0 lstm_668/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_668/Shape_1Shapelstm_668/transpose:y:0*
T0*
_output_shapes
:h
lstm_668/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_668/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_668/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_668/strided_slice_1StridedSlicelstm_668/Shape_1:output:0'lstm_668/strided_slice_1/stack:output:0)lstm_668/strided_slice_1/stack_1:output:0)lstm_668/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_668/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_668/TensorArrayV2TensorListReserve-lstm_668/TensorArrayV2/element_shape:output:0!lstm_668/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_668/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_668/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_668/transpose:y:0Glstm_668/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_668/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_668/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_668/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_668/strided_slice_2StridedSlicelstm_668/transpose:y:0'lstm_668/strided_slice_2/stack:output:0)lstm_668/strided_slice_2/stack_1:output:0)lstm_668/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_668/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp5lstm_668_lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_668/lstm_cell_668/MatMulMatMul!lstm_668/strided_slice_2:output:04lstm_668/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_668/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp7lstm_668_lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_668/lstm_cell_668/MatMul_1MatMullstm_668/zeros:output:06lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_668/lstm_cell_668/addAddV2'lstm_668/lstm_cell_668/MatMul:product:0)lstm_668/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_668/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp6lstm_668_lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_668/lstm_cell_668/BiasAddBiasAddlstm_668/lstm_cell_668/add:z:05lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_668/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_668/lstm_cell_668/splitSplit/lstm_668/lstm_cell_668/split/split_dim:output:0'lstm_668/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_668/lstm_cell_668/SigmoidSigmoid%lstm_668/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_668/lstm_cell_668/Sigmoid_1Sigmoid%lstm_668/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_668/lstm_cell_668/mulMul$lstm_668/lstm_cell_668/Sigmoid_1:y:0lstm_668/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_668/lstm_cell_668/ReluRelu%lstm_668/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_668/lstm_cell_668/mul_1Mul"lstm_668/lstm_cell_668/Sigmoid:y:0)lstm_668/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_668/lstm_cell_668/add_1AddV2lstm_668/lstm_cell_668/mul:z:0 lstm_668/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_668/lstm_cell_668/Sigmoid_2Sigmoid%lstm_668/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_668/lstm_cell_668/Relu_1Relu lstm_668/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_668/lstm_cell_668/mul_2Mul$lstm_668/lstm_cell_668/Sigmoid_2:y:0+lstm_668/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_668/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_668/TensorArrayV2_1TensorListReserve/lstm_668/TensorArrayV2_1/element_shape:output:0!lstm_668/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_668/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_668/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_668/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_668/whileWhile$lstm_668/while/loop_counter:output:0*lstm_668/while/maximum_iterations:output:0lstm_668/time:output:0!lstm_668/TensorArrayV2_1:handle:0lstm_668/zeros:output:0lstm_668/zeros_1:output:0!lstm_668/strided_slice_1:output:0@lstm_668/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_668_lstm_cell_668_matmul_readvariableop_resource7lstm_668_lstm_cell_668_matmul_1_readvariableop_resource6lstm_668_lstm_cell_668_biasadd_readvariableop_resource*
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
lstm_668_while_body_4232435*'
condR
lstm_668_while_cond_4232434*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_668/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_668/TensorArrayV2Stack/TensorListStackTensorListStacklstm_668/while:output:3Blstm_668/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_668/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_668/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_668/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_668/strided_slice_3StridedSlice4lstm_668/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_668/strided_slice_3/stack:output:0)lstm_668/strided_slice_3/stack_1:output:0)lstm_668/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_668/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_668/transpose_1	Transpose4lstm_668/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_668/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_668/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_222/MatMul/ReadVariableOpReadVariableOp(dense_222_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_222/MatMulMatMul!lstm_668/strided_slice_3:output:0'dense_222/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_222/BiasAdd/ReadVariableOpReadVariableOp)dense_222_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_222/BiasAddBiasAdddense_222/MatMul:product:0(dense_222/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_222/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_222/BiasAdd/ReadVariableOp ^dense_222/MatMul/ReadVariableOp.^lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp-^lstm_666/lstm_cell_666/MatMul/ReadVariableOp/^lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp^lstm_666/while.^lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp-^lstm_667/lstm_cell_667/MatMul/ReadVariableOp/^lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp^lstm_667/while.^lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp-^lstm_668/lstm_cell_668/MatMul/ReadVariableOp/^lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp^lstm_668/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_222/BiasAdd/ReadVariableOp dense_222/BiasAdd/ReadVariableOp2B
dense_222/MatMul/ReadVariableOpdense_222/MatMul/ReadVariableOp2^
-lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp-lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp2\
,lstm_666/lstm_cell_666/MatMul/ReadVariableOp,lstm_666/lstm_cell_666/MatMul/ReadVariableOp2`
.lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp.lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp2 
lstm_666/whilelstm_666/while2^
-lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp-lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp2\
,lstm_667/lstm_cell_667/MatMul/ReadVariableOp,lstm_667/lstm_cell_667/MatMul/ReadVariableOp2`
.lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp.lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp2 
lstm_667/whilelstm_667/while2^
-lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp-lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp2\
,lstm_668/lstm_cell_668/MatMul/ReadVariableOp,lstm_668/lstm_cell_668/MatMul/ReadVariableOp2`
.lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp.lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp2 
lstm_668/whilelstm_668/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_666_layer_call_and_return_conditional_losses_4230125

inputs(
lstm_cell_666_4230043:	?(
lstm_cell_666_4230045:	d?$
lstm_cell_666_4230047:	?
identity??%lstm_cell_666/StatefulPartitionedCall?while;
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
%lstm_cell_666/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_666_4230043lstm_cell_666_4230045lstm_cell_666_4230047*
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4229997n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_666_4230043lstm_cell_666_4230045lstm_cell_666_4230047*
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
while_body_4230056*
condR
while_cond_4230055*K
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
NoOpNoOp&^lstm_cell_666/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_666/StatefulPartitionedCall%lstm_cell_666/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_4231049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4234572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4234572___redundant_placeholder05
1while_while_cond_4234572___redundant_placeholder15
1while_while_cond_4234572___redundant_placeholder25
1while_while_cond_4234572___redundant_placeholder3
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
/__inference_lstm_cell_666_layer_call_fn_4234853

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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4229997o
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4235081

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
while_body_4233055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4233898
inputs_0?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4233814*
condR
while_cond_4233813*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_666_layer_call_fn_4234836

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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4229851o
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
while_cond_4230214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4230214___redundant_placeholder05
1while_while_cond_4230214___redundant_placeholder15
1while_while_cond_4230214___redundant_placeholder25
1while_while_cond_4230214___redundant_placeholder3
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4235015

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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4234983

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
?
?
K__inference_sequential_222_layer_call_and_return_conditional_losses_4232009
lstm_666_input#
lstm_666_4231982:	?#
lstm_666_4231984:	d?
lstm_666_4231986:	?#
lstm_667_4231989:	d?#
lstm_667_4231991:	2?
lstm_667_4231993:	?"
lstm_668_4231996:2("
lstm_668_4231998:
(
lstm_668_4232000:(#
dense_222_4232003:

dense_222_4232005:
identity??!dense_222/StatefulPartitionedCall? lstm_666/StatefulPartitionedCall? lstm_667/StatefulPartitionedCall? lstm_668/StatefulPartitionedCall?
 lstm_666/StatefulPartitionedCallStatefulPartitionedCalllstm_666_inputlstm_666_4231982lstm_666_4231984lstm_666_4231986*
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4231829?
 lstm_667/StatefulPartitionedCallStatefulPartitionedCall)lstm_666/StatefulPartitionedCall:output:0lstm_667_4231989lstm_667_4231991lstm_667_4231993*
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4231664?
 lstm_668/StatefulPartitionedCallStatefulPartitionedCall)lstm_667/StatefulPartitionedCall:output:0lstm_668_4231996lstm_668_4231998lstm_668_4232000*
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4231499?
!dense_222/StatefulPartitionedCallStatefulPartitionedCall)lstm_668/StatefulPartitionedCall:output:0dense_222_4232003dense_222_4232005*
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
F__inference_dense_222_layer_call_and_return_conditional_losses_4231301y
IdentityIdentity*dense_222/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_222/StatefulPartitionedCall!^lstm_666/StatefulPartitionedCall!^lstm_667/StatefulPartitionedCall!^lstm_668/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_222/StatefulPartitionedCall!dense_222/StatefulPartitionedCall2D
 lstm_666/StatefulPartitionedCall lstm_666/StatefulPartitionedCall2D
 lstm_667/StatefulPartitionedCall lstm_667/StatefulPartitionedCall2D
 lstm_668/StatefulPartitionedCall lstm_668/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_666_input
?J
?
E__inference_lstm_667_layer_call_and_return_conditional_losses_4231664

inputs?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4231580*
condR
while_cond_4231579*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_4230056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_666_4230080_0:	?0
while_lstm_cell_666_4230082_0:	d?,
while_lstm_cell_666_4230084_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_666_4230080:	?.
while_lstm_cell_666_4230082:	d?*
while_lstm_cell_666_4230084:	???+while/lstm_cell_666/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_666/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_666_4230080_0while_lstm_cell_666_4230082_0while_lstm_cell_666_4230084_0*
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4229997?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_666/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_666/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_666/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_666/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_666_4230080while_lstm_cell_666_4230080_0"<
while_lstm_cell_666_4230082while_lstm_cell_666_4230082_0"<
while_lstm_cell_666_4230084while_lstm_cell_666_4230084_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_666/StatefulPartitionedCall+while/lstm_cell_666/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_668_layer_call_fn_4235032

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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4230551o
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4233755
inputs_0?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4233671*
condR
while_cond_4233670*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?W
?
 __inference__traced_save_4235256
file_prefix/
+savev2_dense_222_kernel_read_readvariableop-
)savev2_dense_222_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_666_lstm_cell_666_kernel_read_readvariableopF
Bsavev2_lstm_666_lstm_cell_666_recurrent_kernel_read_readvariableop:
6savev2_lstm_666_lstm_cell_666_bias_read_readvariableop<
8savev2_lstm_667_lstm_cell_667_kernel_read_readvariableopF
Bsavev2_lstm_667_lstm_cell_667_recurrent_kernel_read_readvariableop:
6savev2_lstm_667_lstm_cell_667_bias_read_readvariableop<
8savev2_lstm_668_lstm_cell_668_kernel_read_readvariableopF
Bsavev2_lstm_668_lstm_cell_668_recurrent_kernel_read_readvariableop:
6savev2_lstm_668_lstm_cell_668_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_222_kernel_m_read_readvariableop4
0savev2_adam_dense_222_bias_m_read_readvariableopC
?savev2_adam_lstm_666_lstm_cell_666_kernel_m_read_readvariableopM
Isavev2_adam_lstm_666_lstm_cell_666_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_666_lstm_cell_666_bias_m_read_readvariableopC
?savev2_adam_lstm_667_lstm_cell_667_kernel_m_read_readvariableopM
Isavev2_adam_lstm_667_lstm_cell_667_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_667_lstm_cell_667_bias_m_read_readvariableopC
?savev2_adam_lstm_668_lstm_cell_668_kernel_m_read_readvariableopM
Isavev2_adam_lstm_668_lstm_cell_668_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_668_lstm_cell_668_bias_m_read_readvariableop6
2savev2_adam_dense_222_kernel_v_read_readvariableop4
0savev2_adam_dense_222_bias_v_read_readvariableopC
?savev2_adam_lstm_666_lstm_cell_666_kernel_v_read_readvariableopM
Isavev2_adam_lstm_666_lstm_cell_666_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_666_lstm_cell_666_bias_v_read_readvariableopC
?savev2_adam_lstm_667_lstm_cell_667_kernel_v_read_readvariableopM
Isavev2_adam_lstm_667_lstm_cell_667_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_667_lstm_cell_667_bias_v_read_readvariableopC
?savev2_adam_lstm_668_lstm_cell_668_kernel_v_read_readvariableopM
Isavev2_adam_lstm_668_lstm_cell_668_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_668_lstm_cell_668_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_222_kernel_read_readvariableop)savev2_dense_222_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_666_lstm_cell_666_kernel_read_readvariableopBsavev2_lstm_666_lstm_cell_666_recurrent_kernel_read_readvariableop6savev2_lstm_666_lstm_cell_666_bias_read_readvariableop8savev2_lstm_667_lstm_cell_667_kernel_read_readvariableopBsavev2_lstm_667_lstm_cell_667_recurrent_kernel_read_readvariableop6savev2_lstm_667_lstm_cell_667_bias_read_readvariableop8savev2_lstm_668_lstm_cell_668_kernel_read_readvariableopBsavev2_lstm_668_lstm_cell_668_recurrent_kernel_read_readvariableop6savev2_lstm_668_lstm_cell_668_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_222_kernel_m_read_readvariableop0savev2_adam_dense_222_bias_m_read_readvariableop?savev2_adam_lstm_666_lstm_cell_666_kernel_m_read_readvariableopIsavev2_adam_lstm_666_lstm_cell_666_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_666_lstm_cell_666_bias_m_read_readvariableop?savev2_adam_lstm_667_lstm_cell_667_kernel_m_read_readvariableopIsavev2_adam_lstm_667_lstm_cell_667_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_667_lstm_cell_667_bias_m_read_readvariableop?savev2_adam_lstm_668_lstm_cell_668_kernel_m_read_readvariableopIsavev2_adam_lstm_668_lstm_cell_668_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_668_lstm_cell_668_bias_m_read_readvariableop2savev2_adam_dense_222_kernel_v_read_readvariableop0savev2_adam_dense_222_bias_v_read_readvariableop?savev2_adam_lstm_666_lstm_cell_666_kernel_v_read_readvariableopIsavev2_adam_lstm_666_lstm_cell_666_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_666_lstm_cell_666_bias_v_read_readvariableop?savev2_adam_lstm_667_lstm_cell_667_kernel_v_read_readvariableopIsavev2_adam_lstm_667_lstm_cell_667_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_667_lstm_cell_667_bias_v_read_readvariableop?savev2_adam_lstm_668_lstm_cell_668_kernel_v_read_readvariableopIsavev2_adam_lstm_668_lstm_cell_668_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_668_lstm_cell_668_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
lstm_667_while_cond_4232295.
*lstm_667_while_lstm_667_while_loop_counter4
0lstm_667_while_lstm_667_while_maximum_iterations
lstm_667_while_placeholder 
lstm_667_while_placeholder_1 
lstm_667_while_placeholder_2 
lstm_667_while_placeholder_30
,lstm_667_while_less_lstm_667_strided_slice_1G
Clstm_667_while_lstm_667_while_cond_4232295___redundant_placeholder0G
Clstm_667_while_lstm_667_while_cond_4232295___redundant_placeholder1G
Clstm_667_while_lstm_667_while_cond_4232295___redundant_placeholder2G
Clstm_667_while_lstm_667_while_cond_4232295___redundant_placeholder3
lstm_667_while_identity
?
lstm_667/while/LessLesslstm_667_while_placeholder,lstm_667_while_less_lstm_667_strided_slice_1*
T0*
_output_shapes
: ]
lstm_667/while/IdentityIdentitylstm_667/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_667_while_identity lstm_667/while/Identity:output:0*(
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
while_body_4231199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_667_layer_call_fn_4233579
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4230284|
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
F__inference_dense_222_layer_call_and_return_conditional_losses_4231301

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
while_body_4233957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_667_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_667_matmul_readvariableop_resource:	d?G
4while_lstm_cell_667_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_667_biasadd_readvariableop_resource:	???*while/lstm_cell_667/BiasAdd/ReadVariableOp?)while/lstm_cell_667/MatMul/ReadVariableOp?+while/lstm_cell_667/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_667/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_667/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_667/addAddV2$while/lstm_cell_667/MatMul:product:0&while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_667/BiasAddBiasAddwhile/lstm_cell_667/add:z:02while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_667/splitSplit,while/lstm_cell_667/split/split_dim:output:0$while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_667/SigmoidSigmoid"while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_1Sigmoid"while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mulMul!while/lstm_cell_667/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_667/ReluRelu"while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_1Mulwhile/lstm_cell_667/Sigmoid:y:0&while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/add_1AddV2while/lstm_cell_667/mul:z:0while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_667/Sigmoid_2Sigmoid"while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_667/Relu_1Reluwhile/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_667/mul_2Mul!while/lstm_cell_667/Sigmoid_2:y:0(while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_667/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_667/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_667/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_667/BiasAdd/ReadVariableOp*^while/lstm_cell_667/MatMul/ReadVariableOp,^while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_667_biasadd_readvariableop_resource5while_lstm_cell_667_biasadd_readvariableop_resource_0"n
4while_lstm_cell_667_matmul_1_readvariableop_resource6while_lstm_cell_667_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_667_matmul_readvariableop_resource4while_lstm_cell_667_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_667/BiasAdd/ReadVariableOp*while/lstm_cell_667/BiasAdd/ReadVariableOp2V
)while/lstm_cell_667/MatMul/ReadVariableOp)while/lstm_cell_667/MatMul/ReadVariableOp2Z
+while/lstm_cell_667/MatMul_1/ReadVariableOp+while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_668_while_body_4232435.
*lstm_668_while_lstm_668_while_loop_counter4
0lstm_668_while_lstm_668_while_maximum_iterations
lstm_668_while_placeholder 
lstm_668_while_placeholder_1 
lstm_668_while_placeholder_2 
lstm_668_while_placeholder_3-
)lstm_668_while_lstm_668_strided_slice_1_0i
elstm_668_while_tensorarrayv2read_tensorlistgetitem_lstm_668_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_668_while_lstm_cell_668_matmul_readvariableop_resource_0:2(Q
?lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(L
>lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource_0:(
lstm_668_while_identity
lstm_668_while_identity_1
lstm_668_while_identity_2
lstm_668_while_identity_3
lstm_668_while_identity_4
lstm_668_while_identity_5+
'lstm_668_while_lstm_668_strided_slice_1g
clstm_668_while_tensorarrayv2read_tensorlistgetitem_lstm_668_tensorarrayunstack_tensorlistfromtensorM
;lstm_668_while_lstm_cell_668_matmul_readvariableop_resource:2(O
=lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource:
(J
<lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource:(??3lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp?2lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp?4lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp?
@lstm_668/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_668/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_668_while_tensorarrayv2read_tensorlistgetitem_lstm_668_tensorarrayunstack_tensorlistfromtensor_0lstm_668_while_placeholderIlstm_668/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_668/while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp=lstm_668_while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_668/while/lstm_cell_668/MatMulMatMul9lstm_668/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp?lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_668/while/lstm_cell_668/MatMul_1MatMullstm_668_while_placeholder_2<lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_668/while/lstm_cell_668/addAddV2-lstm_668/while/lstm_cell_668/MatMul:product:0/lstm_668/while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp>lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_668/while/lstm_cell_668/BiasAddBiasAdd$lstm_668/while/lstm_cell_668/add:z:0;lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_668/while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_668/while/lstm_cell_668/splitSplit5lstm_668/while/lstm_cell_668/split/split_dim:output:0-lstm_668/while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_668/while/lstm_cell_668/SigmoidSigmoid+lstm_668/while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_668/while/lstm_cell_668/Sigmoid_1Sigmoid+lstm_668/while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_668/while/lstm_cell_668/mulMul*lstm_668/while/lstm_cell_668/Sigmoid_1:y:0lstm_668_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_668/while/lstm_cell_668/ReluRelu+lstm_668/while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_668/while/lstm_cell_668/mul_1Mul(lstm_668/while/lstm_cell_668/Sigmoid:y:0/lstm_668/while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_668/while/lstm_cell_668/add_1AddV2$lstm_668/while/lstm_cell_668/mul:z:0&lstm_668/while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_668/while/lstm_cell_668/Sigmoid_2Sigmoid+lstm_668/while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_668/while/lstm_cell_668/Relu_1Relu&lstm_668/while/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_668/while/lstm_cell_668/mul_2Mul*lstm_668/while/lstm_cell_668/Sigmoid_2:y:01lstm_668/while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_668/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_668_while_placeholder_1lstm_668_while_placeholder&lstm_668/while/lstm_cell_668/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_668/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_668/while/addAddV2lstm_668_while_placeholderlstm_668/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_668/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_668/while/add_1AddV2*lstm_668_while_lstm_668_while_loop_counterlstm_668/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_668/while/IdentityIdentitylstm_668/while/add_1:z:0^lstm_668/while/NoOp*
T0*
_output_shapes
: ?
lstm_668/while/Identity_1Identity0lstm_668_while_lstm_668_while_maximum_iterations^lstm_668/while/NoOp*
T0*
_output_shapes
: t
lstm_668/while/Identity_2Identitylstm_668/while/add:z:0^lstm_668/while/NoOp*
T0*
_output_shapes
: ?
lstm_668/while/Identity_3IdentityClstm_668/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_668/while/NoOp*
T0*
_output_shapes
: ?
lstm_668/while/Identity_4Identity&lstm_668/while/lstm_cell_668/mul_2:z:0^lstm_668/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_668/while/Identity_5Identity&lstm_668/while/lstm_cell_668/add_1:z:0^lstm_668/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_668/while/NoOpNoOp4^lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp3^lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp5^lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_668_while_identity lstm_668/while/Identity:output:0"?
lstm_668_while_identity_1"lstm_668/while/Identity_1:output:0"?
lstm_668_while_identity_2"lstm_668/while/Identity_2:output:0"?
lstm_668_while_identity_3"lstm_668/while/Identity_3:output:0"?
lstm_668_while_identity_4"lstm_668/while/Identity_4:output:0"?
lstm_668_while_identity_5"lstm_668/while/Identity_5:output:0"T
'lstm_668_while_lstm_668_strided_slice_1)lstm_668_while_lstm_668_strided_slice_1_0"~
<lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource>lstm_668_while_lstm_cell_668_biasadd_readvariableop_resource_0"?
=lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource?lstm_668_while_lstm_cell_668_matmul_1_readvariableop_resource_0"|
;lstm_668_while_lstm_cell_668_matmul_readvariableop_resource=lstm_668_while_lstm_cell_668_matmul_readvariableop_resource_0"?
clstm_668_while_tensorarrayv2read_tensorlistgetitem_lstm_668_tensorarrayunstack_tensorlistfromtensorelstm_668_while_tensorarrayv2read_tensorlistgetitem_lstm_668_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp3lstm_668/while/lstm_cell_668/BiasAdd/ReadVariableOp2h
2lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp2lstm_668/while/lstm_cell_668/MatMul/ReadVariableOp2l
4lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp4lstm_668/while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_222_layer_call_and_return_conditional_losses_4231979
lstm_666_input#
lstm_666_4231952:	?#
lstm_666_4231954:	d?
lstm_666_4231956:	?#
lstm_667_4231959:	d?#
lstm_667_4231961:	2?
lstm_667_4231963:	?"
lstm_668_4231966:2("
lstm_668_4231968:
(
lstm_668_4231970:(#
dense_222_4231973:

dense_222_4231975:
identity??!dense_222/StatefulPartitionedCall? lstm_666/StatefulPartitionedCall? lstm_667/StatefulPartitionedCall? lstm_668/StatefulPartitionedCall?
 lstm_666/StatefulPartitionedCallStatefulPartitionedCalllstm_666_inputlstm_666_4231952lstm_666_4231954lstm_666_4231956*
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4230983?
 lstm_667/StatefulPartitionedCallStatefulPartitionedCall)lstm_666/StatefulPartitionedCall:output:0lstm_667_4231959lstm_667_4231961lstm_667_4231963*
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4231133?
 lstm_668/StatefulPartitionedCallStatefulPartitionedCall)lstm_667/StatefulPartitionedCall:output:0lstm_668_4231966lstm_668_4231968lstm_668_4231970*
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4231283?
!dense_222/StatefulPartitionedCallStatefulPartitionedCall)lstm_668/StatefulPartitionedCall:output:0dense_222_4231973dense_222_4231975*
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
F__inference_dense_222_layer_call_and_return_conditional_losses_4231301y
IdentityIdentity*dense_222/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_222/StatefulPartitionedCall!^lstm_666/StatefulPartitionedCall!^lstm_667/StatefulPartitionedCall!^lstm_668/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_222/StatefulPartitionedCall!dense_222/StatefulPartitionedCall2D
 lstm_666/StatefulPartitionedCall lstm_666/StatefulPartitionedCall2D
 lstm_667/StatefulPartitionedCall lstm_667/StatefulPartitionedCall2D
 lstm_668/StatefulPartitionedCall lstm_668/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_666_input
?

?
lstm_666_while_cond_4232156.
*lstm_666_while_lstm_666_while_loop_counter4
0lstm_666_while_lstm_666_while_maximum_iterations
lstm_666_while_placeholder 
lstm_666_while_placeholder_1 
lstm_666_while_placeholder_2 
lstm_666_while_placeholder_30
,lstm_666_while_less_lstm_666_strided_slice_1G
Clstm_666_while_lstm_666_while_cond_4232156___redundant_placeholder0G
Clstm_666_while_lstm_666_while_cond_4232156___redundant_placeholder1G
Clstm_666_while_lstm_666_while_cond_4232156___redundant_placeholder2G
Clstm_666_while_lstm_666_while_cond_4232156___redundant_placeholder3
lstm_666_while_identity
?
lstm_666/while/LessLesslstm_666_while_placeholder,lstm_666_while_less_lstm_666_strided_slice_1*
T0*
_output_shapes
: ]
lstm_666/while/IdentityIdentitylstm_666/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_666_while_identity lstm_666/while/Identity:output:0*(
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4234041

inputs?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4233957*
condR
while_cond_4233956*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4234099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4234099___redundant_placeholder05
1while_while_cond_4234099___redundant_placeholder15
1while_while_cond_4234099___redundant_placeholder25
1while_while_cond_4234099___redundant_placeholder3
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234800

inputs>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4234716*
condR
while_cond_4234715*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4230755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4230755___redundant_placeholder05
1while_while_cond_4230755___redundant_placeholder15
1while_while_cond_4230755___redundant_placeholder25
1while_while_cond_4230755___redundant_placeholder3
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
*sequential_222_lstm_666_while_body_4229416L
Hsequential_222_lstm_666_while_sequential_222_lstm_666_while_loop_counterR
Nsequential_222_lstm_666_while_sequential_222_lstm_666_while_maximum_iterations-
)sequential_222_lstm_666_while_placeholder/
+sequential_222_lstm_666_while_placeholder_1/
+sequential_222_lstm_666_while_placeholder_2/
+sequential_222_lstm_666_while_placeholder_3K
Gsequential_222_lstm_666_while_sequential_222_lstm_666_strided_slice_1_0?
?sequential_222_lstm_666_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_666_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_222_lstm_666_while_lstm_cell_666_matmul_readvariableop_resource_0:	?a
Nsequential_222_lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?\
Msequential_222_lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource_0:	?*
&sequential_222_lstm_666_while_identity,
(sequential_222_lstm_666_while_identity_1,
(sequential_222_lstm_666_while_identity_2,
(sequential_222_lstm_666_while_identity_3,
(sequential_222_lstm_666_while_identity_4,
(sequential_222_lstm_666_while_identity_5I
Esequential_222_lstm_666_while_sequential_222_lstm_666_strided_slice_1?
?sequential_222_lstm_666_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_666_tensorarrayunstack_tensorlistfromtensor]
Jsequential_222_lstm_666_while_lstm_cell_666_matmul_readvariableop_resource:	?_
Lsequential_222_lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource:	d?Z
Ksequential_222_lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource:	???Bsequential_222/lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp?Asequential_222/lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp?Csequential_222/lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp?
Osequential_222/lstm_666/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_222/lstm_666/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_222_lstm_666_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_666_tensorarrayunstack_tensorlistfromtensor_0)sequential_222_lstm_666_while_placeholderXsequential_222/lstm_666/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_222/lstm_666/while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOpLsequential_222_lstm_666_while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_222/lstm_666/while/lstm_cell_666/MatMulMatMulHsequential_222/lstm_666/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_222/lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_222/lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOpNsequential_222_lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_222/lstm_666/while/lstm_cell_666/MatMul_1MatMul+sequential_222_lstm_666_while_placeholder_2Ksequential_222/lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_222/lstm_666/while/lstm_cell_666/addAddV2<sequential_222/lstm_666/while/lstm_cell_666/MatMul:product:0>sequential_222/lstm_666/while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_222/lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOpMsequential_222_lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_222/lstm_666/while/lstm_cell_666/BiasAddBiasAdd3sequential_222/lstm_666/while/lstm_cell_666/add:z:0Jsequential_222/lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_222/lstm_666/while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_222/lstm_666/while/lstm_cell_666/splitSplitDsequential_222/lstm_666/while/lstm_cell_666/split/split_dim:output:0<sequential_222/lstm_666/while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_222/lstm_666/while/lstm_cell_666/SigmoidSigmoid:sequential_222/lstm_666/while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_222/lstm_666/while/lstm_cell_666/Sigmoid_1Sigmoid:sequential_222/lstm_666/while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_222/lstm_666/while/lstm_cell_666/mulMul9sequential_222/lstm_666/while/lstm_cell_666/Sigmoid_1:y:0+sequential_222_lstm_666_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_222/lstm_666/while/lstm_cell_666/ReluRelu:sequential_222/lstm_666/while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_222/lstm_666/while/lstm_cell_666/mul_1Mul7sequential_222/lstm_666/while/lstm_cell_666/Sigmoid:y:0>sequential_222/lstm_666/while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_222/lstm_666/while/lstm_cell_666/add_1AddV23sequential_222/lstm_666/while/lstm_cell_666/mul:z:05sequential_222/lstm_666/while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_222/lstm_666/while/lstm_cell_666/Sigmoid_2Sigmoid:sequential_222/lstm_666/while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_222/lstm_666/while/lstm_cell_666/Relu_1Relu5sequential_222/lstm_666/while/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_222/lstm_666/while/lstm_cell_666/mul_2Mul9sequential_222/lstm_666/while/lstm_cell_666/Sigmoid_2:y:0@sequential_222/lstm_666/while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_222/lstm_666/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_222_lstm_666_while_placeholder_1)sequential_222_lstm_666_while_placeholder5sequential_222/lstm_666/while/lstm_cell_666/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_222/lstm_666/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_222/lstm_666/while/addAddV2)sequential_222_lstm_666_while_placeholder,sequential_222/lstm_666/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_222/lstm_666/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_222/lstm_666/while/add_1AddV2Hsequential_222_lstm_666_while_sequential_222_lstm_666_while_loop_counter.sequential_222/lstm_666/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_222/lstm_666/while/IdentityIdentity'sequential_222/lstm_666/while/add_1:z:0#^sequential_222/lstm_666/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_666/while/Identity_1IdentityNsequential_222_lstm_666_while_sequential_222_lstm_666_while_maximum_iterations#^sequential_222/lstm_666/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_666/while/Identity_2Identity%sequential_222/lstm_666/while/add:z:0#^sequential_222/lstm_666/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_666/while/Identity_3IdentityRsequential_222/lstm_666/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_222/lstm_666/while/NoOp*
T0*
_output_shapes
: ?
(sequential_222/lstm_666/while/Identity_4Identity5sequential_222/lstm_666/while/lstm_cell_666/mul_2:z:0#^sequential_222/lstm_666/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_222/lstm_666/while/Identity_5Identity5sequential_222/lstm_666/while/lstm_cell_666/add_1:z:0#^sequential_222/lstm_666/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_222/lstm_666/while/NoOpNoOpC^sequential_222/lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOpB^sequential_222/lstm_666/while/lstm_cell_666/MatMul/ReadVariableOpD^sequential_222/lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_222_lstm_666_while_identity/sequential_222/lstm_666/while/Identity:output:0"]
(sequential_222_lstm_666_while_identity_11sequential_222/lstm_666/while/Identity_1:output:0"]
(sequential_222_lstm_666_while_identity_21sequential_222/lstm_666/while/Identity_2:output:0"]
(sequential_222_lstm_666_while_identity_31sequential_222/lstm_666/while/Identity_3:output:0"]
(sequential_222_lstm_666_while_identity_41sequential_222/lstm_666/while/Identity_4:output:0"]
(sequential_222_lstm_666_while_identity_51sequential_222/lstm_666/while/Identity_5:output:0"?
Ksequential_222_lstm_666_while_lstm_cell_666_biasadd_readvariableop_resourceMsequential_222_lstm_666_while_lstm_cell_666_biasadd_readvariableop_resource_0"?
Lsequential_222_lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resourceNsequential_222_lstm_666_while_lstm_cell_666_matmul_1_readvariableop_resource_0"?
Jsequential_222_lstm_666_while_lstm_cell_666_matmul_readvariableop_resourceLsequential_222_lstm_666_while_lstm_cell_666_matmul_readvariableop_resource_0"?
Esequential_222_lstm_666_while_sequential_222_lstm_666_strided_slice_1Gsequential_222_lstm_666_while_sequential_222_lstm_666_strided_slice_1_0"?
?sequential_222_lstm_666_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_666_tensorarrayunstack_tensorlistfromtensor?sequential_222_lstm_666_while_tensorarrayv2read_tensorlistgetitem_sequential_222_lstm_666_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_222/lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOpBsequential_222/lstm_666/while/lstm_cell_666/BiasAdd/ReadVariableOp2?
Asequential_222/lstm_666/while/lstm_cell_666/MatMul/ReadVariableOpAsequential_222/lstm_666/while/lstm_cell_666/MatMul/ReadVariableOp2?
Csequential_222/lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOpCsequential_222/lstm_666/while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4233484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_666_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_666_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_666_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_666_matmul_readvariableop_resource:	?G
4while_lstm_cell_666_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_666_biasadd_readvariableop_resource:	???*while/lstm_cell_666/BiasAdd/ReadVariableOp?)while/lstm_cell_666/MatMul/ReadVariableOp?+while/lstm_cell_666/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_666_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_666/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_666_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_666/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_666/addAddV2$while/lstm_cell_666/MatMul:product:0&while/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_666_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_666/BiasAddBiasAddwhile/lstm_cell_666/add:z:02while/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_666/splitSplit,while/lstm_cell_666/split/split_dim:output:0$while/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_666/SigmoidSigmoid"while/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_1Sigmoid"while/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mulMul!while/lstm_cell_666/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_666/ReluRelu"while/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_1Mulwhile/lstm_cell_666/Sigmoid:y:0&while/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/add_1AddV2while/lstm_cell_666/mul:z:0while/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_666/Sigmoid_2Sigmoid"while/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_666/Relu_1Reluwhile/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_666/mul_2Mul!while/lstm_cell_666/Sigmoid_2:y:0(while/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_666/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_666/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_666/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_666/BiasAdd/ReadVariableOp*^while/lstm_cell_666/MatMul/ReadVariableOp,^while/lstm_cell_666/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_666_biasadd_readvariableop_resource5while_lstm_cell_666_biasadd_readvariableop_resource_0"n
4while_lstm_cell_666_matmul_1_readvariableop_resource6while_lstm_cell_666_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_666_matmul_readvariableop_resource4while_lstm_cell_666_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_666/BiasAdd/ReadVariableOp*while/lstm_cell_666/BiasAdd/ReadVariableOp2V
)while/lstm_cell_666/MatMul/ReadVariableOp)while/lstm_cell_666/MatMul/ReadVariableOp2Z
+while/lstm_cell_666/MatMul_1/ReadVariableOp+while/lstm_cell_666/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4230697

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
?
E__inference_lstm_668_layer_call_and_return_conditional_losses_4230825

inputs'
lstm_cell_668_4230743:2('
lstm_cell_668_4230745:
(#
lstm_cell_668_4230747:(
identity??%lstm_cell_668/StatefulPartitionedCall?while;
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
%lstm_cell_668/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_668_4230743lstm_cell_668_4230745lstm_cell_668_4230747*
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4230697n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_668_4230743lstm_cell_668_4230745lstm_cell_668_4230747*
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
while_body_4230756*
condR
while_cond_4230755*K
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
NoOpNoOp&^lstm_cell_668/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_668/StatefulPartitionedCall%lstm_cell_668/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_666_layer_call_fn_4232974
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4230125|
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234657

inputs>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4234573*
condR
while_cond_4234572*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_667_layer_call_fn_4233601

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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4231133s
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
?K
?
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234514
inputs_0>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4234430*
condR
while_cond_4234429*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_667_layer_call_and_return_conditional_losses_4234184

inputs?
,lstm_cell_667_matmul_readvariableop_resource:	d?A
.lstm_cell_667_matmul_1_readvariableop_resource:	2?<
-lstm_cell_667_biasadd_readvariableop_resource:	?
identity??$lstm_cell_667/BiasAdd/ReadVariableOp?#lstm_cell_667/MatMul/ReadVariableOp?%lstm_cell_667/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_667/MatMul/ReadVariableOpReadVariableOp,lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_667/MatMulMatMulstrided_slice_2:output:0+lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_667/MatMul_1MatMulzeros:output:0-lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_667/addAddV2lstm_cell_667/MatMul:product:0 lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_667/BiasAddBiasAddlstm_cell_667/add:z:0,lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_667/splitSplit&lstm_cell_667/split/split_dim:output:0lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_667/SigmoidSigmoidlstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_1Sigmoidlstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_667/mulMullstm_cell_667/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_667/ReluRelulstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_1Mullstm_cell_667/Sigmoid:y:0 lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_667/add_1AddV2lstm_cell_667/mul:z:0lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_667/Sigmoid_2Sigmoidlstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_667/Relu_1Relulstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_667/mul_2Mullstm_cell_667/Sigmoid_2:y:0"lstm_cell_667/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_667_matmul_readvariableop_resource.lstm_cell_667_matmul_1_readvariableop_resource-lstm_cell_667_biasadd_readvariableop_resource*
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
while_body_4234100*
condR
while_cond_4234099*K
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
NoOpNoOp%^lstm_cell_667/BiasAdd/ReadVariableOp$^lstm_cell_667/MatMul/ReadVariableOp&^lstm_cell_667/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_667/BiasAdd/ReadVariableOp$lstm_cell_667/BiasAdd/ReadVariableOp2J
#lstm_cell_667/MatMul/ReadVariableOp#lstm_cell_667/MatMul/ReadVariableOp2N
%lstm_cell_667/MatMul_1/ReadVariableOp%lstm_cell_667/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_668_while_cond_4232861.
*lstm_668_while_lstm_668_while_loop_counter4
0lstm_668_while_lstm_668_while_maximum_iterations
lstm_668_while_placeholder 
lstm_668_while_placeholder_1 
lstm_668_while_placeholder_2 
lstm_668_while_placeholder_30
,lstm_668_while_less_lstm_668_strided_slice_1G
Clstm_668_while_lstm_668_while_cond_4232861___redundant_placeholder0G
Clstm_668_while_lstm_668_while_cond_4232861___redundant_placeholder1G
Clstm_668_while_lstm_668_while_cond_4232861___redundant_placeholder2G
Clstm_668_while_lstm_668_while_cond_4232861___redundant_placeholder3
lstm_668_while_identity
?
lstm_668/while/LessLesslstm_668_while_placeholder,lstm_668_while_less_lstm_668_strided_slice_1*
T0*
_output_shapes
: ]
lstm_668/while/IdentityIdentitylstm_668/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_668_while_identity lstm_668/while/Identity:output:0*(
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
while_body_4231415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233139
inputs_0?
,lstm_cell_666_matmul_readvariableop_resource:	?A
.lstm_cell_666_matmul_1_readvariableop_resource:	d?<
-lstm_cell_666_biasadd_readvariableop_resource:	?
identity??$lstm_cell_666/BiasAdd/ReadVariableOp?#lstm_cell_666/MatMul/ReadVariableOp?%lstm_cell_666/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_666/MatMul/ReadVariableOpReadVariableOp,lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_666/MatMulMatMulstrided_slice_2:output:0+lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_666/MatMul_1MatMulzeros:output:0-lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_666/addAddV2lstm_cell_666/MatMul:product:0 lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_666/BiasAddBiasAddlstm_cell_666/add:z:0,lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_666/splitSplit&lstm_cell_666/split/split_dim:output:0lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_666/SigmoidSigmoidlstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_1Sigmoidlstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_666/mulMullstm_cell_666/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_666/ReluRelulstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_1Mullstm_cell_666/Sigmoid:y:0 lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_666/add_1AddV2lstm_cell_666/mul:z:0lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_666/Sigmoid_2Sigmoidlstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_666/Relu_1Relulstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_666/mul_2Mullstm_cell_666/Sigmoid_2:y:0"lstm_cell_666/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_666_matmul_readvariableop_resource.lstm_cell_666_matmul_1_readvariableop_resource-lstm_cell_666_biasadd_readvariableop_resource*
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
while_body_4233055*
condR
while_cond_4233054*K
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
NoOpNoOp%^lstm_cell_666/BiasAdd/ReadVariableOp$^lstm_cell_666/MatMul/ReadVariableOp&^lstm_cell_666/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_666/BiasAdd/ReadVariableOp$lstm_cell_666/BiasAdd/ReadVariableOp2J
#lstm_cell_666/MatMul/ReadVariableOp#lstm_cell_666/MatMul/ReadVariableOp2N
%lstm_cell_666/MatMul_1/ReadVariableOp%lstm_cell_666/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_4234286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4234286___redundant_placeholder05
1while_while_cond_4234286___redundant_placeholder15
1while_while_cond_4234286___redundant_placeholder25
1while_while_cond_4234286___redundant_placeholder3
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
?
*sequential_222_lstm_668_while_cond_4229693L
Hsequential_222_lstm_668_while_sequential_222_lstm_668_while_loop_counterR
Nsequential_222_lstm_668_while_sequential_222_lstm_668_while_maximum_iterations-
)sequential_222_lstm_668_while_placeholder/
+sequential_222_lstm_668_while_placeholder_1/
+sequential_222_lstm_668_while_placeholder_2/
+sequential_222_lstm_668_while_placeholder_3N
Jsequential_222_lstm_668_while_less_sequential_222_lstm_668_strided_slice_1e
asequential_222_lstm_668_while_sequential_222_lstm_668_while_cond_4229693___redundant_placeholder0e
asequential_222_lstm_668_while_sequential_222_lstm_668_while_cond_4229693___redundant_placeholder1e
asequential_222_lstm_668_while_sequential_222_lstm_668_while_cond_4229693___redundant_placeholder2e
asequential_222_lstm_668_while_sequential_222_lstm_668_while_cond_4229693___redundant_placeholder3*
&sequential_222_lstm_668_while_identity
?
"sequential_222/lstm_668/while/LessLess)sequential_222_lstm_668_while_placeholderJsequential_222_lstm_668_while_less_sequential_222_lstm_668_strided_slice_1*
T0*
_output_shapes
: {
&sequential_222/lstm_668/while/IdentityIdentity&sequential_222/lstm_668/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_222_lstm_668_while_identity/sequential_222/lstm_668/while/Identity:output:0*(
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
K__inference_sequential_222_layer_call_and_return_conditional_losses_4232952

inputsH
5lstm_666_lstm_cell_666_matmul_readvariableop_resource:	?J
7lstm_666_lstm_cell_666_matmul_1_readvariableop_resource:	d?E
6lstm_666_lstm_cell_666_biasadd_readvariableop_resource:	?H
5lstm_667_lstm_cell_667_matmul_readvariableop_resource:	d?J
7lstm_667_lstm_cell_667_matmul_1_readvariableop_resource:	2?E
6lstm_667_lstm_cell_667_biasadd_readvariableop_resource:	?G
5lstm_668_lstm_cell_668_matmul_readvariableop_resource:2(I
7lstm_668_lstm_cell_668_matmul_1_readvariableop_resource:
(D
6lstm_668_lstm_cell_668_biasadd_readvariableop_resource:(:
(dense_222_matmul_readvariableop_resource:
7
)dense_222_biasadd_readvariableop_resource:
identity?? dense_222/BiasAdd/ReadVariableOp?dense_222/MatMul/ReadVariableOp?-lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp?,lstm_666/lstm_cell_666/MatMul/ReadVariableOp?.lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp?lstm_666/while?-lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp?,lstm_667/lstm_cell_667/MatMul/ReadVariableOp?.lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp?lstm_667/while?-lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp?,lstm_668/lstm_cell_668/MatMul/ReadVariableOp?.lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp?lstm_668/whileD
lstm_666/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_666/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_666/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_666/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_666/strided_sliceStridedSlicelstm_666/Shape:output:0%lstm_666/strided_slice/stack:output:0'lstm_666/strided_slice/stack_1:output:0'lstm_666/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_666/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_666/zeros/packedPacklstm_666/strided_slice:output:0 lstm_666/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_666/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_666/zerosFilllstm_666/zeros/packed:output:0lstm_666/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_666/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_666/zeros_1/packedPacklstm_666/strided_slice:output:0"lstm_666/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_666/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_666/zeros_1Fill lstm_666/zeros_1/packed:output:0lstm_666/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_666/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_666/transpose	Transposeinputs lstm_666/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_666/Shape_1Shapelstm_666/transpose:y:0*
T0*
_output_shapes
:h
lstm_666/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_666/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_666/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_666/strided_slice_1StridedSlicelstm_666/Shape_1:output:0'lstm_666/strided_slice_1/stack:output:0)lstm_666/strided_slice_1/stack_1:output:0)lstm_666/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_666/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_666/TensorArrayV2TensorListReserve-lstm_666/TensorArrayV2/element_shape:output:0!lstm_666/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_666/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_666/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_666/transpose:y:0Glstm_666/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_666/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_666/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_666/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_666/strided_slice_2StridedSlicelstm_666/transpose:y:0'lstm_666/strided_slice_2/stack:output:0)lstm_666/strided_slice_2/stack_1:output:0)lstm_666/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_666/lstm_cell_666/MatMul/ReadVariableOpReadVariableOp5lstm_666_lstm_cell_666_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_666/lstm_cell_666/MatMulMatMul!lstm_666/strided_slice_2:output:04lstm_666/lstm_cell_666/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_666/lstm_cell_666/MatMul_1/ReadVariableOpReadVariableOp7lstm_666_lstm_cell_666_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_666/lstm_cell_666/MatMul_1MatMullstm_666/zeros:output:06lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_666/lstm_cell_666/addAddV2'lstm_666/lstm_cell_666/MatMul:product:0)lstm_666/lstm_cell_666/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_666/lstm_cell_666/BiasAdd/ReadVariableOpReadVariableOp6lstm_666_lstm_cell_666_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_666/lstm_cell_666/BiasAddBiasAddlstm_666/lstm_cell_666/add:z:05lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_666/lstm_cell_666/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_666/lstm_cell_666/splitSplit/lstm_666/lstm_cell_666/split/split_dim:output:0'lstm_666/lstm_cell_666/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_666/lstm_cell_666/SigmoidSigmoid%lstm_666/lstm_cell_666/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_666/lstm_cell_666/Sigmoid_1Sigmoid%lstm_666/lstm_cell_666/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_666/lstm_cell_666/mulMul$lstm_666/lstm_cell_666/Sigmoid_1:y:0lstm_666/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_666/lstm_cell_666/ReluRelu%lstm_666/lstm_cell_666/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_666/lstm_cell_666/mul_1Mul"lstm_666/lstm_cell_666/Sigmoid:y:0)lstm_666/lstm_cell_666/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_666/lstm_cell_666/add_1AddV2lstm_666/lstm_cell_666/mul:z:0 lstm_666/lstm_cell_666/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_666/lstm_cell_666/Sigmoid_2Sigmoid%lstm_666/lstm_cell_666/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_666/lstm_cell_666/Relu_1Relu lstm_666/lstm_cell_666/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_666/lstm_cell_666/mul_2Mul$lstm_666/lstm_cell_666/Sigmoid_2:y:0+lstm_666/lstm_cell_666/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_666/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_666/TensorArrayV2_1TensorListReserve/lstm_666/TensorArrayV2_1/element_shape:output:0!lstm_666/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_666/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_666/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_666/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_666/whileWhile$lstm_666/while/loop_counter:output:0*lstm_666/while/maximum_iterations:output:0lstm_666/time:output:0!lstm_666/TensorArrayV2_1:handle:0lstm_666/zeros:output:0lstm_666/zeros_1:output:0!lstm_666/strided_slice_1:output:0@lstm_666/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_666_lstm_cell_666_matmul_readvariableop_resource7lstm_666_lstm_cell_666_matmul_1_readvariableop_resource6lstm_666_lstm_cell_666_biasadd_readvariableop_resource*
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
lstm_666_while_body_4232584*'
condR
lstm_666_while_cond_4232583*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_666/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_666/TensorArrayV2Stack/TensorListStackTensorListStacklstm_666/while:output:3Blstm_666/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_666/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_666/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_666/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_666/strided_slice_3StridedSlice4lstm_666/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_666/strided_slice_3/stack:output:0)lstm_666/strided_slice_3/stack_1:output:0)lstm_666/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_666/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_666/transpose_1	Transpose4lstm_666/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_666/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_666/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_667/ShapeShapelstm_666/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_667/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_667/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_667/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_667/strided_sliceStridedSlicelstm_667/Shape:output:0%lstm_667/strided_slice/stack:output:0'lstm_667/strided_slice/stack_1:output:0'lstm_667/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_667/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_667/zeros/packedPacklstm_667/strided_slice:output:0 lstm_667/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_667/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_667/zerosFilllstm_667/zeros/packed:output:0lstm_667/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_667/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_667/zeros_1/packedPacklstm_667/strided_slice:output:0"lstm_667/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_667/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_667/zeros_1Fill lstm_667/zeros_1/packed:output:0lstm_667/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_667/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_667/transpose	Transposelstm_666/transpose_1:y:0 lstm_667/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_667/Shape_1Shapelstm_667/transpose:y:0*
T0*
_output_shapes
:h
lstm_667/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_667/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_667/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_667/strided_slice_1StridedSlicelstm_667/Shape_1:output:0'lstm_667/strided_slice_1/stack:output:0)lstm_667/strided_slice_1/stack_1:output:0)lstm_667/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_667/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_667/TensorArrayV2TensorListReserve-lstm_667/TensorArrayV2/element_shape:output:0!lstm_667/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_667/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_667/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_667/transpose:y:0Glstm_667/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_667/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_667/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_667/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_667/strided_slice_2StridedSlicelstm_667/transpose:y:0'lstm_667/strided_slice_2/stack:output:0)lstm_667/strided_slice_2/stack_1:output:0)lstm_667/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_667/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp5lstm_667_lstm_cell_667_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_667/lstm_cell_667/MatMulMatMul!lstm_667/strided_slice_2:output:04lstm_667/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_667/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp7lstm_667_lstm_cell_667_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_667/lstm_cell_667/MatMul_1MatMullstm_667/zeros:output:06lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_667/lstm_cell_667/addAddV2'lstm_667/lstm_cell_667/MatMul:product:0)lstm_667/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_667/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp6lstm_667_lstm_cell_667_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_667/lstm_cell_667/BiasAddBiasAddlstm_667/lstm_cell_667/add:z:05lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_667/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_667/lstm_cell_667/splitSplit/lstm_667/lstm_cell_667/split/split_dim:output:0'lstm_667/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_667/lstm_cell_667/SigmoidSigmoid%lstm_667/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_667/lstm_cell_667/Sigmoid_1Sigmoid%lstm_667/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_667/lstm_cell_667/mulMul$lstm_667/lstm_cell_667/Sigmoid_1:y:0lstm_667/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_667/lstm_cell_667/ReluRelu%lstm_667/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_667/lstm_cell_667/mul_1Mul"lstm_667/lstm_cell_667/Sigmoid:y:0)lstm_667/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_667/lstm_cell_667/add_1AddV2lstm_667/lstm_cell_667/mul:z:0 lstm_667/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_667/lstm_cell_667/Sigmoid_2Sigmoid%lstm_667/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_667/lstm_cell_667/Relu_1Relu lstm_667/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_667/lstm_cell_667/mul_2Mul$lstm_667/lstm_cell_667/Sigmoid_2:y:0+lstm_667/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_667/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_667/TensorArrayV2_1TensorListReserve/lstm_667/TensorArrayV2_1/element_shape:output:0!lstm_667/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_667/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_667/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_667/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_667/whileWhile$lstm_667/while/loop_counter:output:0*lstm_667/while/maximum_iterations:output:0lstm_667/time:output:0!lstm_667/TensorArrayV2_1:handle:0lstm_667/zeros:output:0lstm_667/zeros_1:output:0!lstm_667/strided_slice_1:output:0@lstm_667/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_667_lstm_cell_667_matmul_readvariableop_resource7lstm_667_lstm_cell_667_matmul_1_readvariableop_resource6lstm_667_lstm_cell_667_biasadd_readvariableop_resource*
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
lstm_667_while_body_4232723*'
condR
lstm_667_while_cond_4232722*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_667/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_667/TensorArrayV2Stack/TensorListStackTensorListStacklstm_667/while:output:3Blstm_667/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_667/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_667/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_667/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_667/strided_slice_3StridedSlice4lstm_667/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_667/strided_slice_3/stack:output:0)lstm_667/strided_slice_3/stack_1:output:0)lstm_667/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_667/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_667/transpose_1	Transpose4lstm_667/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_667/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_667/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_668/ShapeShapelstm_667/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_668/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_668/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_668/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_668/strided_sliceStridedSlicelstm_668/Shape:output:0%lstm_668/strided_slice/stack:output:0'lstm_668/strided_slice/stack_1:output:0'lstm_668/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_668/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_668/zeros/packedPacklstm_668/strided_slice:output:0 lstm_668/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_668/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_668/zerosFilllstm_668/zeros/packed:output:0lstm_668/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_668/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_668/zeros_1/packedPacklstm_668/strided_slice:output:0"lstm_668/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_668/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_668/zeros_1Fill lstm_668/zeros_1/packed:output:0lstm_668/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_668/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_668/transpose	Transposelstm_667/transpose_1:y:0 lstm_668/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_668/Shape_1Shapelstm_668/transpose:y:0*
T0*
_output_shapes
:h
lstm_668/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_668/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_668/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_668/strided_slice_1StridedSlicelstm_668/Shape_1:output:0'lstm_668/strided_slice_1/stack:output:0)lstm_668/strided_slice_1/stack_1:output:0)lstm_668/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_668/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_668/TensorArrayV2TensorListReserve-lstm_668/TensorArrayV2/element_shape:output:0!lstm_668/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_668/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_668/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_668/transpose:y:0Glstm_668/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_668/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_668/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_668/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_668/strided_slice_2StridedSlicelstm_668/transpose:y:0'lstm_668/strided_slice_2/stack:output:0)lstm_668/strided_slice_2/stack_1:output:0)lstm_668/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_668/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp5lstm_668_lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_668/lstm_cell_668/MatMulMatMul!lstm_668/strided_slice_2:output:04lstm_668/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_668/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp7lstm_668_lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_668/lstm_cell_668/MatMul_1MatMullstm_668/zeros:output:06lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_668/lstm_cell_668/addAddV2'lstm_668/lstm_cell_668/MatMul:product:0)lstm_668/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_668/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp6lstm_668_lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_668/lstm_cell_668/BiasAddBiasAddlstm_668/lstm_cell_668/add:z:05lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_668/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_668/lstm_cell_668/splitSplit/lstm_668/lstm_cell_668/split/split_dim:output:0'lstm_668/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_668/lstm_cell_668/SigmoidSigmoid%lstm_668/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_668/lstm_cell_668/Sigmoid_1Sigmoid%lstm_668/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_668/lstm_cell_668/mulMul$lstm_668/lstm_cell_668/Sigmoid_1:y:0lstm_668/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_668/lstm_cell_668/ReluRelu%lstm_668/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_668/lstm_cell_668/mul_1Mul"lstm_668/lstm_cell_668/Sigmoid:y:0)lstm_668/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_668/lstm_cell_668/add_1AddV2lstm_668/lstm_cell_668/mul:z:0 lstm_668/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_668/lstm_cell_668/Sigmoid_2Sigmoid%lstm_668/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_668/lstm_cell_668/Relu_1Relu lstm_668/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_668/lstm_cell_668/mul_2Mul$lstm_668/lstm_cell_668/Sigmoid_2:y:0+lstm_668/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_668/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_668/TensorArrayV2_1TensorListReserve/lstm_668/TensorArrayV2_1/element_shape:output:0!lstm_668/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_668/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_668/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_668/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_668/whileWhile$lstm_668/while/loop_counter:output:0*lstm_668/while/maximum_iterations:output:0lstm_668/time:output:0!lstm_668/TensorArrayV2_1:handle:0lstm_668/zeros:output:0lstm_668/zeros_1:output:0!lstm_668/strided_slice_1:output:0@lstm_668/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_668_lstm_cell_668_matmul_readvariableop_resource7lstm_668_lstm_cell_668_matmul_1_readvariableop_resource6lstm_668_lstm_cell_668_biasadd_readvariableop_resource*
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
lstm_668_while_body_4232862*'
condR
lstm_668_while_cond_4232861*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_668/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_668/TensorArrayV2Stack/TensorListStackTensorListStacklstm_668/while:output:3Blstm_668/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_668/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_668/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_668/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_668/strided_slice_3StridedSlice4lstm_668/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_668/strided_slice_3/stack:output:0)lstm_668/strided_slice_3/stack_1:output:0)lstm_668/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_668/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_668/transpose_1	Transpose4lstm_668/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_668/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_668/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_222/MatMul/ReadVariableOpReadVariableOp(dense_222_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_222/MatMulMatMul!lstm_668/strided_slice_3:output:0'dense_222/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_222/BiasAdd/ReadVariableOpReadVariableOp)dense_222_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_222/BiasAddBiasAdddense_222/MatMul:product:0(dense_222/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_222/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_222/BiasAdd/ReadVariableOp ^dense_222/MatMul/ReadVariableOp.^lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp-^lstm_666/lstm_cell_666/MatMul/ReadVariableOp/^lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp^lstm_666/while.^lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp-^lstm_667/lstm_cell_667/MatMul/ReadVariableOp/^lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp^lstm_667/while.^lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp-^lstm_668/lstm_cell_668/MatMul/ReadVariableOp/^lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp^lstm_668/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_222/BiasAdd/ReadVariableOp dense_222/BiasAdd/ReadVariableOp2B
dense_222/MatMul/ReadVariableOpdense_222/MatMul/ReadVariableOp2^
-lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp-lstm_666/lstm_cell_666/BiasAdd/ReadVariableOp2\
,lstm_666/lstm_cell_666/MatMul/ReadVariableOp,lstm_666/lstm_cell_666/MatMul/ReadVariableOp2`
.lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp.lstm_666/lstm_cell_666/MatMul_1/ReadVariableOp2 
lstm_666/whilelstm_666/while2^
-lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp-lstm_667/lstm_cell_667/BiasAdd/ReadVariableOp2\
,lstm_667/lstm_cell_667/MatMul/ReadVariableOp,lstm_667/lstm_cell_667/MatMul/ReadVariableOp2`
.lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp.lstm_667/lstm_cell_667/MatMul_1/ReadVariableOp2 
lstm_667/whilelstm_667/while2^
-lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp-lstm_668/lstm_cell_668/BiasAdd/ReadVariableOp2\
,lstm_668/lstm_cell_668/MatMul/ReadVariableOp,lstm_668/lstm_cell_668/MatMul/ReadVariableOp2`
.lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp.lstm_668/lstm_cell_668/MatMul_1/ReadVariableOp2 
lstm_668/whilelstm_668/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_667_while_body_4232723.
*lstm_667_while_lstm_667_while_loop_counter4
0lstm_667_while_lstm_667_while_maximum_iterations
lstm_667_while_placeholder 
lstm_667_while_placeholder_1 
lstm_667_while_placeholder_2 
lstm_667_while_placeholder_3-
)lstm_667_while_lstm_667_strided_slice_1_0i
elstm_667_while_tensorarrayv2read_tensorlistgetitem_lstm_667_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_667_while_lstm_cell_667_matmul_readvariableop_resource_0:	d?R
?lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource_0:	2?M
>lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource_0:	?
lstm_667_while_identity
lstm_667_while_identity_1
lstm_667_while_identity_2
lstm_667_while_identity_3
lstm_667_while_identity_4
lstm_667_while_identity_5+
'lstm_667_while_lstm_667_strided_slice_1g
clstm_667_while_tensorarrayv2read_tensorlistgetitem_lstm_667_tensorarrayunstack_tensorlistfromtensorN
;lstm_667_while_lstm_cell_667_matmul_readvariableop_resource:	d?P
=lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource:	2?K
<lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource:	???3lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp?2lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp?4lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp?
@lstm_667/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_667/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_667_while_tensorarrayv2read_tensorlistgetitem_lstm_667_tensorarrayunstack_tensorlistfromtensor_0lstm_667_while_placeholderIlstm_667/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_667/while/lstm_cell_667/MatMul/ReadVariableOpReadVariableOp=lstm_667_while_lstm_cell_667_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_667/while/lstm_cell_667/MatMulMatMul9lstm_667/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOpReadVariableOp?lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_667/while/lstm_cell_667/MatMul_1MatMullstm_667_while_placeholder_2<lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_667/while/lstm_cell_667/addAddV2-lstm_667/while/lstm_cell_667/MatMul:product:0/lstm_667/while/lstm_cell_667/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOpReadVariableOp>lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_667/while/lstm_cell_667/BiasAddBiasAdd$lstm_667/while/lstm_cell_667/add:z:0;lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_667/while/lstm_cell_667/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_667/while/lstm_cell_667/splitSplit5lstm_667/while/lstm_cell_667/split/split_dim:output:0-lstm_667/while/lstm_cell_667/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_667/while/lstm_cell_667/SigmoidSigmoid+lstm_667/while/lstm_cell_667/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_667/while/lstm_cell_667/Sigmoid_1Sigmoid+lstm_667/while/lstm_cell_667/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_667/while/lstm_cell_667/mulMul*lstm_667/while/lstm_cell_667/Sigmoid_1:y:0lstm_667_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_667/while/lstm_cell_667/ReluRelu+lstm_667/while/lstm_cell_667/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_667/while/lstm_cell_667/mul_1Mul(lstm_667/while/lstm_cell_667/Sigmoid:y:0/lstm_667/while/lstm_cell_667/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_667/while/lstm_cell_667/add_1AddV2$lstm_667/while/lstm_cell_667/mul:z:0&lstm_667/while/lstm_cell_667/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_667/while/lstm_cell_667/Sigmoid_2Sigmoid+lstm_667/while/lstm_cell_667/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_667/while/lstm_cell_667/Relu_1Relu&lstm_667/while/lstm_cell_667/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_667/while/lstm_cell_667/mul_2Mul*lstm_667/while/lstm_cell_667/Sigmoid_2:y:01lstm_667/while/lstm_cell_667/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_667/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_667_while_placeholder_1lstm_667_while_placeholder&lstm_667/while/lstm_cell_667/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_667/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_667/while/addAddV2lstm_667_while_placeholderlstm_667/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_667/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_667/while/add_1AddV2*lstm_667_while_lstm_667_while_loop_counterlstm_667/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_667/while/IdentityIdentitylstm_667/while/add_1:z:0^lstm_667/while/NoOp*
T0*
_output_shapes
: ?
lstm_667/while/Identity_1Identity0lstm_667_while_lstm_667_while_maximum_iterations^lstm_667/while/NoOp*
T0*
_output_shapes
: t
lstm_667/while/Identity_2Identitylstm_667/while/add:z:0^lstm_667/while/NoOp*
T0*
_output_shapes
: ?
lstm_667/while/Identity_3IdentityClstm_667/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_667/while/NoOp*
T0*
_output_shapes
: ?
lstm_667/while/Identity_4Identity&lstm_667/while/lstm_cell_667/mul_2:z:0^lstm_667/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_667/while/Identity_5Identity&lstm_667/while/lstm_cell_667/add_1:z:0^lstm_667/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_667/while/NoOpNoOp4^lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp3^lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp5^lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_667_while_identity lstm_667/while/Identity:output:0"?
lstm_667_while_identity_1"lstm_667/while/Identity_1:output:0"?
lstm_667_while_identity_2"lstm_667/while/Identity_2:output:0"?
lstm_667_while_identity_3"lstm_667/while/Identity_3:output:0"?
lstm_667_while_identity_4"lstm_667/while/Identity_4:output:0"?
lstm_667_while_identity_5"lstm_667/while/Identity_5:output:0"T
'lstm_667_while_lstm_667_strided_slice_1)lstm_667_while_lstm_667_strided_slice_1_0"~
<lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource>lstm_667_while_lstm_cell_667_biasadd_readvariableop_resource_0"?
=lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource?lstm_667_while_lstm_cell_667_matmul_1_readvariableop_resource_0"|
;lstm_667_while_lstm_cell_667_matmul_readvariableop_resource=lstm_667_while_lstm_cell_667_matmul_readvariableop_resource_0"?
clstm_667_while_tensorarrayv2read_tensorlistgetitem_lstm_667_tensorarrayunstack_tensorlistfromtensorelstm_667_while_tensorarrayv2read_tensorlistgetitem_lstm_667_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp3lstm_667/while/lstm_cell_667/BiasAdd/ReadVariableOp2h
2lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp2lstm_667/while/lstm_cell_667/MatMul/ReadVariableOp2l
4lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp4lstm_667/while/lstm_cell_667/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4231283

inputs>
,lstm_cell_668_matmul_readvariableop_resource:2(@
.lstm_cell_668_matmul_1_readvariableop_resource:
(;
-lstm_cell_668_biasadd_readvariableop_resource:(
identity??$lstm_cell_668/BiasAdd/ReadVariableOp?#lstm_cell_668/MatMul/ReadVariableOp?%lstm_cell_668/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_668/MatMul/ReadVariableOpReadVariableOp,lstm_cell_668_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_668/MatMulMatMulstrided_slice_2:output:0+lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_668_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_668/MatMul_1MatMulzeros:output:0-lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_668/addAddV2lstm_cell_668/MatMul:product:0 lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_668_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_668/BiasAddBiasAddlstm_cell_668/add:z:0,lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_668/splitSplit&lstm_cell_668/split/split_dim:output:0lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_668/SigmoidSigmoidlstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_1Sigmoidlstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_668/mulMullstm_cell_668/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_668/ReluRelulstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_1Mullstm_cell_668/Sigmoid:y:0 lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_668/add_1AddV2lstm_cell_668/mul:z:0lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_668/Sigmoid_2Sigmoidlstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_668/Relu_1Relulstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_668/mul_2Mullstm_cell_668/Sigmoid_2:y:0"lstm_cell_668/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_668_matmul_readvariableop_resource.lstm_cell_668_matmul_1_readvariableop_resource-lstm_cell_668_biasadd_readvariableop_resource*
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
while_body_4231199*
condR
while_cond_4231198*K
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
NoOpNoOp%^lstm_cell_668/BiasAdd/ReadVariableOp$^lstm_cell_668/MatMul/ReadVariableOp&^lstm_cell_668/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_668/BiasAdd/ReadVariableOp$lstm_cell_668/BiasAdd/ReadVariableOp2J
#lstm_cell_668/MatMul/ReadVariableOp#lstm_cell_668/MatMul/ReadVariableOp2N
%lstm_cell_668/MatMul_1/ReadVariableOp%lstm_cell_668/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4234716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_668_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_668_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_668_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_668_matmul_readvariableop_resource:2(F
4while_lstm_cell_668_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_668_biasadd_readvariableop_resource:(??*while/lstm_cell_668/BiasAdd/ReadVariableOp?)while/lstm_cell_668/MatMul/ReadVariableOp?+while/lstm_cell_668/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_668/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_668_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_668/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_668/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_668/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_668_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_668/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_668/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_668/addAddV2$while/lstm_cell_668/MatMul:product:0&while/lstm_cell_668/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_668/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_668_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_668/BiasAddBiasAddwhile/lstm_cell_668/add:z:02while/lstm_cell_668/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_668/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_668/splitSplit,while/lstm_cell_668/split/split_dim:output:0$while/lstm_cell_668/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_668/SigmoidSigmoid"while/lstm_cell_668/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_1Sigmoid"while/lstm_cell_668/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mulMul!while/lstm_cell_668/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_668/ReluRelu"while/lstm_cell_668/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_1Mulwhile/lstm_cell_668/Sigmoid:y:0&while/lstm_cell_668/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/add_1AddV2while/lstm_cell_668/mul:z:0while/lstm_cell_668/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_668/Sigmoid_2Sigmoid"while/lstm_cell_668/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_668/Relu_1Reluwhile/lstm_cell_668/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_668/mul_2Mul!while/lstm_cell_668/Sigmoid_2:y:0(while/lstm_cell_668/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_668/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_668/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_668/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_668/BiasAdd/ReadVariableOp*^while/lstm_cell_668/MatMul/ReadVariableOp,^while/lstm_cell_668/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_668_biasadd_readvariableop_resource5while_lstm_cell_668_biasadd_readvariableop_resource_0"n
4while_lstm_cell_668_matmul_1_readvariableop_resource6while_lstm_cell_668_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_668_matmul_readvariableop_resource4while_lstm_cell_668_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_668/BiasAdd/ReadVariableOp*while/lstm_cell_668/BiasAdd/ReadVariableOp2V
)while/lstm_cell_668/MatMul/ReadVariableOp)while/lstm_cell_668/MatMul/ReadVariableOp2Z
+while/lstm_cell_668/MatMul_1/ReadVariableOp+while/lstm_cell_668/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4234917

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
while_cond_4230898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4230898___redundant_placeholder05
1while_while_cond_4230898___redundant_placeholder15
1while_while_cond_4230898___redundant_placeholder25
1while_while_cond_4230898___redundant_placeholder3
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
while_body_4230406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_667_4230430_0:	d?0
while_lstm_cell_667_4230432_0:	2?,
while_lstm_cell_667_4230434_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_667_4230430:	d?.
while_lstm_cell_667_4230432:	2?*
while_lstm_cell_667_4230434:	???+while/lstm_cell_667/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_667/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_667_4230430_0while_lstm_cell_667_4230432_0while_lstm_cell_667_4230434_0*
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4230347?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_667/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_667/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_667/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_667/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_667_4230430while_lstm_cell_667_4230430_0"<
while_lstm_cell_667_4230432while_lstm_cell_667_4230432_0"<
while_lstm_cell_667_4230434while_lstm_cell_667_4230434_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_667/StatefulPartitionedCall+while/lstm_cell_667/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_4232044
lstm_666_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_666_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4229784o
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
_user_specified_namelstm_666_input
?
?
*__inference_lstm_667_layer_call_fn_4233612

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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4231664s
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4230551

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
*__inference_lstm_666_layer_call_fn_4232996

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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4231829s
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4230284

inputs(
lstm_cell_667_4230202:	d?(
lstm_cell_667_4230204:	2?$
lstm_cell_667_4230206:	?
identity??%lstm_cell_667/StatefulPartitionedCall?while;
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
%lstm_cell_667/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_667_4230202lstm_cell_667_4230204lstm_cell_667_4230206*
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4230201n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_667_4230202lstm_cell_667_4230204lstm_cell_667_4230206*
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
while_body_4230215*
condR
while_cond_4230214*K
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
NoOpNoOp&^lstm_cell_667/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_667/StatefulPartitionedCall%lstm_cell_667/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4233054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4233054___redundant_placeholder05
1while_while_cond_4233054___redundant_placeholder15
1while_while_cond_4233054___redundant_placeholder25
1while_while_cond_4233054___redundant_placeholder3
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
lstm_666_input;
 serving_default_lstm_666_input:0?????????=
	dense_2220
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
2dense_222/kernel
:2dense_222/bias
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
0:.	?2lstm_666/lstm_cell_666/kernel
::8	d?2'lstm_666/lstm_cell_666/recurrent_kernel
*:(?2lstm_666/lstm_cell_666/bias
0:.	d?2lstm_667/lstm_cell_667/kernel
::8	2?2'lstm_667/lstm_cell_667/recurrent_kernel
*:(?2lstm_667/lstm_cell_667/bias
/:-2(2lstm_668/lstm_cell_668/kernel
9:7
(2'lstm_668/lstm_cell_668/recurrent_kernel
):'(2lstm_668/lstm_cell_668/bias
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
2Adam/dense_222/kernel/m
!:2Adam/dense_222/bias/m
5:3	?2$Adam/lstm_666/lstm_cell_666/kernel/m
?:=	d?2.Adam/lstm_666/lstm_cell_666/recurrent_kernel/m
/:-?2"Adam/lstm_666/lstm_cell_666/bias/m
5:3	d?2$Adam/lstm_667/lstm_cell_667/kernel/m
?:=	2?2.Adam/lstm_667/lstm_cell_667/recurrent_kernel/m
/:-?2"Adam/lstm_667/lstm_cell_667/bias/m
4:22(2$Adam/lstm_668/lstm_cell_668/kernel/m
>:<
(2.Adam/lstm_668/lstm_cell_668/recurrent_kernel/m
.:,(2"Adam/lstm_668/lstm_cell_668/bias/m
':%
2Adam/dense_222/kernel/v
!:2Adam/dense_222/bias/v
5:3	?2$Adam/lstm_666/lstm_cell_666/kernel/v
?:=	d?2.Adam/lstm_666/lstm_cell_666/recurrent_kernel/v
/:-?2"Adam/lstm_666/lstm_cell_666/bias/v
5:3	d?2$Adam/lstm_667/lstm_cell_667/kernel/v
?:=	2?2.Adam/lstm_667/lstm_cell_667/recurrent_kernel/v
/:-?2"Adam/lstm_667/lstm_cell_667/bias/v
4:22(2$Adam/lstm_668/lstm_cell_668/kernel/v
>:<
(2.Adam/lstm_668/lstm_cell_668/recurrent_kernel/v
.:,(2"Adam/lstm_668/lstm_cell_668/bias/v
?2?
0__inference_sequential_222_layer_call_fn_4231333
0__inference_sequential_222_layer_call_fn_4232071
0__inference_sequential_222_layer_call_fn_4232098
0__inference_sequential_222_layer_call_fn_4231949?
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
K__inference_sequential_222_layer_call_and_return_conditional_losses_4232525
K__inference_sequential_222_layer_call_and_return_conditional_losses_4232952
K__inference_sequential_222_layer_call_and_return_conditional_losses_4231979
K__inference_sequential_222_layer_call_and_return_conditional_losses_4232009?
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
"__inference__wrapped_model_4229784lstm_666_input"?
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
*__inference_lstm_666_layer_call_fn_4232963
*__inference_lstm_666_layer_call_fn_4232974
*__inference_lstm_666_layer_call_fn_4232985
*__inference_lstm_666_layer_call_fn_4232996?
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233139
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233282
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233425
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233568?
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
*__inference_lstm_667_layer_call_fn_4233579
*__inference_lstm_667_layer_call_fn_4233590
*__inference_lstm_667_layer_call_fn_4233601
*__inference_lstm_667_layer_call_fn_4233612?
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4233755
E__inference_lstm_667_layer_call_and_return_conditional_losses_4233898
E__inference_lstm_667_layer_call_and_return_conditional_losses_4234041
E__inference_lstm_667_layer_call_and_return_conditional_losses_4234184?
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
*__inference_lstm_668_layer_call_fn_4234195
*__inference_lstm_668_layer_call_fn_4234206
*__inference_lstm_668_layer_call_fn_4234217
*__inference_lstm_668_layer_call_fn_4234228?
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234371
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234514
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234657
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234800?
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
+__inference_dense_222_layer_call_fn_4234809?
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
F__inference_dense_222_layer_call_and_return_conditional_losses_4234819?
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
%__inference_signature_wrapper_4232044lstm_666_input"?
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
/__inference_lstm_cell_666_layer_call_fn_4234836
/__inference_lstm_cell_666_layer_call_fn_4234853?
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4234885
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4234917?
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
/__inference_lstm_cell_667_layer_call_fn_4234934
/__inference_lstm_cell_667_layer_call_fn_4234951?
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4234983
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4235015?
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
/__inference_lstm_cell_668_layer_call_fn_4235032
/__inference_lstm_cell_668_layer_call_fn_4235049?
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4235081
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4235113?
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
"__inference__wrapped_model_4229784?()*+,-./0;?8
1?.
,?)
lstm_666_input?????????
? "5?2
0
	dense_222#? 
	dense_222??????????
F__inference_dense_222_layer_call_and_return_conditional_losses_4234819\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_222_layer_call_fn_4234809O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233139?()*O?L
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233282?()*O?L
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233425q()*??<
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
E__inference_lstm_666_layer_call_and_return_conditional_losses_4233568q()*??<
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
*__inference_lstm_666_layer_call_fn_4232963}()*O?L
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
*__inference_lstm_666_layer_call_fn_4232974}()*O?L
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
*__inference_lstm_666_layer_call_fn_4232985d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_666_layer_call_fn_4232996d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_667_layer_call_and_return_conditional_losses_4233755?+,-O?L
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4233898?+,-O?L
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4234041q+,-??<
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
E__inference_lstm_667_layer_call_and_return_conditional_losses_4234184q+,-??<
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
*__inference_lstm_667_layer_call_fn_4233579}+,-O?L
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
*__inference_lstm_667_layer_call_fn_4233590}+,-O?L
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
*__inference_lstm_667_layer_call_fn_4233601d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_667_layer_call_fn_4233612d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234371}./0O?L
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234514}./0O?L
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234657m./0??<
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
E__inference_lstm_668_layer_call_and_return_conditional_losses_4234800m./0??<
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
*__inference_lstm_668_layer_call_fn_4234195p./0O?L
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
*__inference_lstm_668_layer_call_fn_4234206p./0O?L
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
*__inference_lstm_668_layer_call_fn_4234217`./0??<
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
*__inference_lstm_668_layer_call_fn_4234228`./0??<
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4234885?()*??}
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
J__inference_lstm_cell_666_layer_call_and_return_conditional_losses_4234917?()*??}
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
/__inference_lstm_cell_666_layer_call_fn_4234836?()*??}
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
/__inference_lstm_cell_666_layer_call_fn_4234853?()*??}
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4234983?+,-??}
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
J__inference_lstm_cell_667_layer_call_and_return_conditional_losses_4235015?+,-??}
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
/__inference_lstm_cell_667_layer_call_fn_4234934?+,-??}
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
/__inference_lstm_cell_667_layer_call_fn_4234951?+,-??}
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4235081?./0??}
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
J__inference_lstm_cell_668_layer_call_and_return_conditional_losses_4235113?./0??}
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
/__inference_lstm_cell_668_layer_call_fn_4235032?./0??}
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
/__inference_lstm_cell_668_layer_call_fn_4235049?./0??}
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
K__inference_sequential_222_layer_call_and_return_conditional_losses_4231979y()*+,-./0C?@
9?6
,?)
lstm_666_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_222_layer_call_and_return_conditional_losses_4232009y()*+,-./0C?@
9?6
,?)
lstm_666_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_222_layer_call_and_return_conditional_losses_4232525q()*+,-./0;?8
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
K__inference_sequential_222_layer_call_and_return_conditional_losses_4232952q()*+,-./0;?8
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
0__inference_sequential_222_layer_call_fn_4231333l()*+,-./0C?@
9?6
,?)
lstm_666_input?????????
p 

 
? "???????????
0__inference_sequential_222_layer_call_fn_4231949l()*+,-./0C?@
9?6
,?)
lstm_666_input?????????
p

 
? "???????????
0__inference_sequential_222_layer_call_fn_4232071d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_222_layer_call_fn_4232098d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4232044?()*+,-./0M?J
? 
C?@
>
lstm_666_input,?)
lstm_666_input?????????"5?2
0
	dense_222#? 
	dense_222?????????