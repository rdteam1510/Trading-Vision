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
dense_294/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_294/kernel
u
$dense_294/kernel/Read/ReadVariableOpReadVariableOpdense_294/kernel*
_output_shapes

:
*
dtype0
t
dense_294/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_294/bias
m
"dense_294/bias/Read/ReadVariableOpReadVariableOpdense_294/bias*
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
lstm_882/lstm_cell_882/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_882/lstm_cell_882/kernel
?
1lstm_882/lstm_cell_882/kernel/Read/ReadVariableOpReadVariableOplstm_882/lstm_cell_882/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_882/lstm_cell_882/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_882/lstm_cell_882/recurrent_kernel
?
;lstm_882/lstm_cell_882/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_882/lstm_cell_882/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_882/lstm_cell_882/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_882/lstm_cell_882/bias
?
/lstm_882/lstm_cell_882/bias/Read/ReadVariableOpReadVariableOplstm_882/lstm_cell_882/bias*
_output_shapes	
:?*
dtype0
?
lstm_883/lstm_cell_883/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_883/lstm_cell_883/kernel
?
1lstm_883/lstm_cell_883/kernel/Read/ReadVariableOpReadVariableOplstm_883/lstm_cell_883/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_883/lstm_cell_883/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_883/lstm_cell_883/recurrent_kernel
?
;lstm_883/lstm_cell_883/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_883/lstm_cell_883/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_883/lstm_cell_883/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_883/lstm_cell_883/bias
?
/lstm_883/lstm_cell_883/bias/Read/ReadVariableOpReadVariableOplstm_883/lstm_cell_883/bias*
_output_shapes	
:?*
dtype0
?
lstm_884/lstm_cell_884/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_884/lstm_cell_884/kernel
?
1lstm_884/lstm_cell_884/kernel/Read/ReadVariableOpReadVariableOplstm_884/lstm_cell_884/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_884/lstm_cell_884/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_884/lstm_cell_884/recurrent_kernel
?
;lstm_884/lstm_cell_884/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_884/lstm_cell_884/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_884/lstm_cell_884/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_884/lstm_cell_884/bias
?
/lstm_884/lstm_cell_884/bias/Read/ReadVariableOpReadVariableOplstm_884/lstm_cell_884/bias*
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
Adam/dense_294/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_294/kernel/m
?
+Adam/dense_294/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_294/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_294/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_294/bias/m
{
)Adam/dense_294/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_294/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_882/lstm_cell_882/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_882/lstm_cell_882/kernel/m
?
8Adam/lstm_882/lstm_cell_882/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_882/lstm_cell_882/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_882/lstm_cell_882/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_882/lstm_cell_882/recurrent_kernel/m
?
BAdam/lstm_882/lstm_cell_882/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_882/lstm_cell_882/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_882/lstm_cell_882/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_882/lstm_cell_882/bias/m
?
6Adam/lstm_882/lstm_cell_882/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_882/lstm_cell_882/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_883/lstm_cell_883/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_883/lstm_cell_883/kernel/m
?
8Adam/lstm_883/lstm_cell_883/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_883/lstm_cell_883/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_883/lstm_cell_883/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_883/lstm_cell_883/recurrent_kernel/m
?
BAdam/lstm_883/lstm_cell_883/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_883/lstm_cell_883/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_883/lstm_cell_883/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_883/lstm_cell_883/bias/m
?
6Adam/lstm_883/lstm_cell_883/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_883/lstm_cell_883/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_884/lstm_cell_884/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_884/lstm_cell_884/kernel/m
?
8Adam/lstm_884/lstm_cell_884/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_884/lstm_cell_884/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_884/lstm_cell_884/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_884/lstm_cell_884/recurrent_kernel/m
?
BAdam/lstm_884/lstm_cell_884/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_884/lstm_cell_884/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_884/lstm_cell_884/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_884/lstm_cell_884/bias/m
?
6Adam/lstm_884/lstm_cell_884/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_884/lstm_cell_884/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_294/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_294/kernel/v
?
+Adam/dense_294/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_294/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_294/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_294/bias/v
{
)Adam/dense_294/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_294/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_882/lstm_cell_882/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_882/lstm_cell_882/kernel/v
?
8Adam/lstm_882/lstm_cell_882/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_882/lstm_cell_882/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_882/lstm_cell_882/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_882/lstm_cell_882/recurrent_kernel/v
?
BAdam/lstm_882/lstm_cell_882/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_882/lstm_cell_882/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_882/lstm_cell_882/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_882/lstm_cell_882/bias/v
?
6Adam/lstm_882/lstm_cell_882/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_882/lstm_cell_882/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_883/lstm_cell_883/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_883/lstm_cell_883/kernel/v
?
8Adam/lstm_883/lstm_cell_883/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_883/lstm_cell_883/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_883/lstm_cell_883/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_883/lstm_cell_883/recurrent_kernel/v
?
BAdam/lstm_883/lstm_cell_883/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_883/lstm_cell_883/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_883/lstm_cell_883/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_883/lstm_cell_883/bias/v
?
6Adam/lstm_883/lstm_cell_883/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_883/lstm_cell_883/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_884/lstm_cell_884/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_884/lstm_cell_884/kernel/v
?
8Adam/lstm_884/lstm_cell_884/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_884/lstm_cell_884/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_884/lstm_cell_884/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_884/lstm_cell_884/recurrent_kernel/v
?
BAdam/lstm_884/lstm_cell_884/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_884/lstm_cell_884/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_884/lstm_cell_884/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_884/lstm_cell_884/bias/v
?
6Adam/lstm_884/lstm_cell_884/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_884/lstm_cell_884/bias/v*
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
VARIABLE_VALUEdense_294/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_294/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_882/lstm_cell_882/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_882/lstm_cell_882/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_882/lstm_cell_882/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_883/lstm_cell_883/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_883/lstm_cell_883/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_883/lstm_cell_883/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_884/lstm_cell_884/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_884/lstm_cell_884/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_884/lstm_cell_884/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_294/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_294/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_882/lstm_cell_882/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_882/lstm_cell_882/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_882/lstm_cell_882/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_883/lstm_cell_883/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_883/lstm_cell_883/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_883/lstm_cell_883/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_884/lstm_cell_884/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_884/lstm_cell_884/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_884/lstm_cell_884/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_294/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_294/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_882/lstm_cell_882/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_882/lstm_cell_882/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_882/lstm_cell_882/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_883/lstm_cell_883/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_883/lstm_cell_883/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_883/lstm_cell_883/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_884/lstm_cell_884/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_884/lstm_cell_884/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_884/lstm_cell_884/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_882_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_882_inputlstm_882/lstm_cell_882/kernel'lstm_882/lstm_cell_882/recurrent_kernellstm_882/lstm_cell_882/biaslstm_883/lstm_cell_883/kernel'lstm_883/lstm_cell_883/recurrent_kernellstm_883/lstm_cell_883/biaslstm_884/lstm_cell_884/kernel'lstm_884/lstm_cell_884/recurrent_kernellstm_884/lstm_cell_884/biasdense_294/kerneldense_294/bias*
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
%__inference_signature_wrapper_5262118
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_294/kernel/Read/ReadVariableOp"dense_294/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_882/lstm_cell_882/kernel/Read/ReadVariableOp;lstm_882/lstm_cell_882/recurrent_kernel/Read/ReadVariableOp/lstm_882/lstm_cell_882/bias/Read/ReadVariableOp1lstm_883/lstm_cell_883/kernel/Read/ReadVariableOp;lstm_883/lstm_cell_883/recurrent_kernel/Read/ReadVariableOp/lstm_883/lstm_cell_883/bias/Read/ReadVariableOp1lstm_884/lstm_cell_884/kernel/Read/ReadVariableOp;lstm_884/lstm_cell_884/recurrent_kernel/Read/ReadVariableOp/lstm_884/lstm_cell_884/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_294/kernel/m/Read/ReadVariableOp)Adam/dense_294/bias/m/Read/ReadVariableOp8Adam/lstm_882/lstm_cell_882/kernel/m/Read/ReadVariableOpBAdam/lstm_882/lstm_cell_882/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_882/lstm_cell_882/bias/m/Read/ReadVariableOp8Adam/lstm_883/lstm_cell_883/kernel/m/Read/ReadVariableOpBAdam/lstm_883/lstm_cell_883/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_883/lstm_cell_883/bias/m/Read/ReadVariableOp8Adam/lstm_884/lstm_cell_884/kernel/m/Read/ReadVariableOpBAdam/lstm_884/lstm_cell_884/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_884/lstm_cell_884/bias/m/Read/ReadVariableOp+Adam/dense_294/kernel/v/Read/ReadVariableOp)Adam/dense_294/bias/v/Read/ReadVariableOp8Adam/lstm_882/lstm_cell_882/kernel/v/Read/ReadVariableOpBAdam/lstm_882/lstm_cell_882/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_882/lstm_cell_882/bias/v/Read/ReadVariableOp8Adam/lstm_883/lstm_cell_883/kernel/v/Read/ReadVariableOpBAdam/lstm_883/lstm_cell_883/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_883/lstm_cell_883/bias/v/Read/ReadVariableOp8Adam/lstm_884/lstm_cell_884/kernel/v/Read/ReadVariableOpBAdam/lstm_884/lstm_cell_884/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_884/lstm_cell_884/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5265330
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_294/kerneldense_294/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_882/lstm_cell_882/kernel'lstm_882/lstm_cell_882/recurrent_kernellstm_882/lstm_cell_882/biaslstm_883/lstm_cell_883/kernel'lstm_883/lstm_cell_883/recurrent_kernellstm_883/lstm_cell_883/biaslstm_884/lstm_cell_884/kernel'lstm_884/lstm_cell_884/recurrent_kernellstm_884/lstm_cell_884/biastotalcountAdam/dense_294/kernel/mAdam/dense_294/bias/m$Adam/lstm_882/lstm_cell_882/kernel/m.Adam/lstm_882/lstm_cell_882/recurrent_kernel/m"Adam/lstm_882/lstm_cell_882/bias/m$Adam/lstm_883/lstm_cell_883/kernel/m.Adam/lstm_883/lstm_cell_883/recurrent_kernel/m"Adam/lstm_883/lstm_cell_883/bias/m$Adam/lstm_884/lstm_cell_884/kernel/m.Adam/lstm_884/lstm_cell_884/recurrent_kernel/m"Adam/lstm_884/lstm_cell_884/bias/mAdam/dense_294/kernel/vAdam/dense_294/bias/v$Adam/lstm_882/lstm_cell_882/kernel/v.Adam/lstm_882/lstm_cell_882/recurrent_kernel/v"Adam/lstm_882/lstm_cell_882/bias/v$Adam/lstm_883/lstm_cell_883/kernel/v.Adam/lstm_883/lstm_cell_883/recurrent_kernel/v"Adam/lstm_883/lstm_cell_883/bias/v$Adam/lstm_884/lstm_cell_884/kernel/v.Adam/lstm_884/lstm_cell_884/recurrent_kernel/v"Adam/lstm_884/lstm_cell_884/bias/v*4
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
#__inference__traced_restore_5265460??+
?K
?
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264588
inputs_0>
,lstm_cell_884_matmul_readvariableop_resource:2(@
.lstm_cell_884_matmul_1_readvariableop_resource:
(;
-lstm_cell_884_biasadd_readvariableop_resource:(
identity??$lstm_cell_884/BiasAdd/ReadVariableOp?#lstm_cell_884/MatMul/ReadVariableOp?%lstm_cell_884/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_884/MatMul/ReadVariableOpReadVariableOp,lstm_cell_884_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_884/MatMulMatMulstrided_slice_2:output:0+lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_884_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_884/MatMul_1MatMulzeros:output:0-lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_884/addAddV2lstm_cell_884/MatMul:product:0 lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_884_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_884/BiasAddBiasAddlstm_cell_884/add:z:0,lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_884/splitSplit&lstm_cell_884/split/split_dim:output:0lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_884/SigmoidSigmoidlstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_1Sigmoidlstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_884/mulMullstm_cell_884/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_884/ReluRelulstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_1Mullstm_cell_884/Sigmoid:y:0 lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_884/add_1AddV2lstm_cell_884/mul:z:0lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_2Sigmoidlstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_884/Relu_1Relulstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_2Mullstm_cell_884/Sigmoid_2:y:0"lstm_cell_884/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_884_matmul_readvariableop_resource.lstm_cell_884_matmul_1_readvariableop_resource-lstm_cell_884_biasadd_readvariableop_resource*
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
while_body_5264504*
condR
while_cond_5264503*K
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
NoOpNoOp%^lstm_cell_884/BiasAdd/ReadVariableOp$^lstm_cell_884/MatMul/ReadVariableOp&^lstm_cell_884/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_884/BiasAdd/ReadVariableOp$lstm_cell_884/BiasAdd/ReadVariableOp2J
#lstm_cell_884/MatMul/ReadVariableOp#lstm_cell_884/MatMul/ReadVariableOp2N
%lstm_cell_884/MatMul_1/ReadVariableOp%lstm_cell_884/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
??
?
K__inference_sequential_294_layer_call_and_return_conditional_losses_5262599

inputsH
5lstm_882_lstm_cell_882_matmul_readvariableop_resource:	?J
7lstm_882_lstm_cell_882_matmul_1_readvariableop_resource:	d?E
6lstm_882_lstm_cell_882_biasadd_readvariableop_resource:	?H
5lstm_883_lstm_cell_883_matmul_readvariableop_resource:	d?J
7lstm_883_lstm_cell_883_matmul_1_readvariableop_resource:	2?E
6lstm_883_lstm_cell_883_biasadd_readvariableop_resource:	?G
5lstm_884_lstm_cell_884_matmul_readvariableop_resource:2(I
7lstm_884_lstm_cell_884_matmul_1_readvariableop_resource:
(D
6lstm_884_lstm_cell_884_biasadd_readvariableop_resource:(:
(dense_294_matmul_readvariableop_resource:
7
)dense_294_biasadd_readvariableop_resource:
identity?? dense_294/BiasAdd/ReadVariableOp?dense_294/MatMul/ReadVariableOp?-lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp?,lstm_882/lstm_cell_882/MatMul/ReadVariableOp?.lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp?lstm_882/while?-lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp?,lstm_883/lstm_cell_883/MatMul/ReadVariableOp?.lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp?lstm_883/while?-lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp?,lstm_884/lstm_cell_884/MatMul/ReadVariableOp?.lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp?lstm_884/whileD
lstm_882/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_882/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_882/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_882/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_882/strided_sliceStridedSlicelstm_882/Shape:output:0%lstm_882/strided_slice/stack:output:0'lstm_882/strided_slice/stack_1:output:0'lstm_882/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_882/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_882/zeros/packedPacklstm_882/strided_slice:output:0 lstm_882/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_882/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_882/zerosFilllstm_882/zeros/packed:output:0lstm_882/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_882/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_882/zeros_1/packedPacklstm_882/strided_slice:output:0"lstm_882/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_882/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_882/zeros_1Fill lstm_882/zeros_1/packed:output:0lstm_882/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_882/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_882/transpose	Transposeinputs lstm_882/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_882/Shape_1Shapelstm_882/transpose:y:0*
T0*
_output_shapes
:h
lstm_882/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_882/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_882/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_882/strided_slice_1StridedSlicelstm_882/Shape_1:output:0'lstm_882/strided_slice_1/stack:output:0)lstm_882/strided_slice_1/stack_1:output:0)lstm_882/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_882/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_882/TensorArrayV2TensorListReserve-lstm_882/TensorArrayV2/element_shape:output:0!lstm_882/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_882/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_882/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_882/transpose:y:0Glstm_882/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_882/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_882/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_882/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_882/strided_slice_2StridedSlicelstm_882/transpose:y:0'lstm_882/strided_slice_2/stack:output:0)lstm_882/strided_slice_2/stack_1:output:0)lstm_882/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_882/lstm_cell_882/MatMul/ReadVariableOpReadVariableOp5lstm_882_lstm_cell_882_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_882/lstm_cell_882/MatMulMatMul!lstm_882/strided_slice_2:output:04lstm_882/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_882/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp7lstm_882_lstm_cell_882_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_882/lstm_cell_882/MatMul_1MatMullstm_882/zeros:output:06lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_882/lstm_cell_882/addAddV2'lstm_882/lstm_cell_882/MatMul:product:0)lstm_882/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_882/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp6lstm_882_lstm_cell_882_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_882/lstm_cell_882/BiasAddBiasAddlstm_882/lstm_cell_882/add:z:05lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_882/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_882/lstm_cell_882/splitSplit/lstm_882/lstm_cell_882/split/split_dim:output:0'lstm_882/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_882/lstm_cell_882/SigmoidSigmoid%lstm_882/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_882/lstm_cell_882/Sigmoid_1Sigmoid%lstm_882/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_882/lstm_cell_882/mulMul$lstm_882/lstm_cell_882/Sigmoid_1:y:0lstm_882/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_882/lstm_cell_882/ReluRelu%lstm_882/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_882/lstm_cell_882/mul_1Mul"lstm_882/lstm_cell_882/Sigmoid:y:0)lstm_882/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_882/lstm_cell_882/add_1AddV2lstm_882/lstm_cell_882/mul:z:0 lstm_882/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_882/lstm_cell_882/Sigmoid_2Sigmoid%lstm_882/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_882/lstm_cell_882/Relu_1Relu lstm_882/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_882/lstm_cell_882/mul_2Mul$lstm_882/lstm_cell_882/Sigmoid_2:y:0+lstm_882/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_882/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_882/TensorArrayV2_1TensorListReserve/lstm_882/TensorArrayV2_1/element_shape:output:0!lstm_882/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_882/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_882/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_882/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_882/whileWhile$lstm_882/while/loop_counter:output:0*lstm_882/while/maximum_iterations:output:0lstm_882/time:output:0!lstm_882/TensorArrayV2_1:handle:0lstm_882/zeros:output:0lstm_882/zeros_1:output:0!lstm_882/strided_slice_1:output:0@lstm_882/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_882_lstm_cell_882_matmul_readvariableop_resource7lstm_882_lstm_cell_882_matmul_1_readvariableop_resource6lstm_882_lstm_cell_882_biasadd_readvariableop_resource*
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
lstm_882_while_body_5262231*'
condR
lstm_882_while_cond_5262230*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_882/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_882/TensorArrayV2Stack/TensorListStackTensorListStacklstm_882/while:output:3Blstm_882/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_882/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_882/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_882/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_882/strided_slice_3StridedSlice4lstm_882/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_882/strided_slice_3/stack:output:0)lstm_882/strided_slice_3/stack_1:output:0)lstm_882/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_882/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_882/transpose_1	Transpose4lstm_882/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_882/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_882/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_883/ShapeShapelstm_882/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_883/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_883/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_883/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_883/strided_sliceStridedSlicelstm_883/Shape:output:0%lstm_883/strided_slice/stack:output:0'lstm_883/strided_slice/stack_1:output:0'lstm_883/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_883/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_883/zeros/packedPacklstm_883/strided_slice:output:0 lstm_883/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_883/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_883/zerosFilllstm_883/zeros/packed:output:0lstm_883/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_883/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_883/zeros_1/packedPacklstm_883/strided_slice:output:0"lstm_883/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_883/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_883/zeros_1Fill lstm_883/zeros_1/packed:output:0lstm_883/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_883/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_883/transpose	Transposelstm_882/transpose_1:y:0 lstm_883/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_883/Shape_1Shapelstm_883/transpose:y:0*
T0*
_output_shapes
:h
lstm_883/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_883/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_883/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_883/strided_slice_1StridedSlicelstm_883/Shape_1:output:0'lstm_883/strided_slice_1/stack:output:0)lstm_883/strided_slice_1/stack_1:output:0)lstm_883/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_883/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_883/TensorArrayV2TensorListReserve-lstm_883/TensorArrayV2/element_shape:output:0!lstm_883/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_883/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_883/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_883/transpose:y:0Glstm_883/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_883/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_883/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_883/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_883/strided_slice_2StridedSlicelstm_883/transpose:y:0'lstm_883/strided_slice_2/stack:output:0)lstm_883/strided_slice_2/stack_1:output:0)lstm_883/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_883/lstm_cell_883/MatMul/ReadVariableOpReadVariableOp5lstm_883_lstm_cell_883_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_883/lstm_cell_883/MatMulMatMul!lstm_883/strided_slice_2:output:04lstm_883/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_883/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp7lstm_883_lstm_cell_883_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_883/lstm_cell_883/MatMul_1MatMullstm_883/zeros:output:06lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_883/lstm_cell_883/addAddV2'lstm_883/lstm_cell_883/MatMul:product:0)lstm_883/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_883/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp6lstm_883_lstm_cell_883_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_883/lstm_cell_883/BiasAddBiasAddlstm_883/lstm_cell_883/add:z:05lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_883/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_883/lstm_cell_883/splitSplit/lstm_883/lstm_cell_883/split/split_dim:output:0'lstm_883/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_883/lstm_cell_883/SigmoidSigmoid%lstm_883/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_883/lstm_cell_883/Sigmoid_1Sigmoid%lstm_883/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_883/lstm_cell_883/mulMul$lstm_883/lstm_cell_883/Sigmoid_1:y:0lstm_883/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_883/lstm_cell_883/ReluRelu%lstm_883/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_883/lstm_cell_883/mul_1Mul"lstm_883/lstm_cell_883/Sigmoid:y:0)lstm_883/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_883/lstm_cell_883/add_1AddV2lstm_883/lstm_cell_883/mul:z:0 lstm_883/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_883/lstm_cell_883/Sigmoid_2Sigmoid%lstm_883/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_883/lstm_cell_883/Relu_1Relu lstm_883/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_883/lstm_cell_883/mul_2Mul$lstm_883/lstm_cell_883/Sigmoid_2:y:0+lstm_883/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_883/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_883/TensorArrayV2_1TensorListReserve/lstm_883/TensorArrayV2_1/element_shape:output:0!lstm_883/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_883/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_883/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_883/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_883/whileWhile$lstm_883/while/loop_counter:output:0*lstm_883/while/maximum_iterations:output:0lstm_883/time:output:0!lstm_883/TensorArrayV2_1:handle:0lstm_883/zeros:output:0lstm_883/zeros_1:output:0!lstm_883/strided_slice_1:output:0@lstm_883/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_883_lstm_cell_883_matmul_readvariableop_resource7lstm_883_lstm_cell_883_matmul_1_readvariableop_resource6lstm_883_lstm_cell_883_biasadd_readvariableop_resource*
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
lstm_883_while_body_5262370*'
condR
lstm_883_while_cond_5262369*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_883/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_883/TensorArrayV2Stack/TensorListStackTensorListStacklstm_883/while:output:3Blstm_883/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_883/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_883/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_883/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_883/strided_slice_3StridedSlice4lstm_883/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_883/strided_slice_3/stack:output:0)lstm_883/strided_slice_3/stack_1:output:0)lstm_883/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_883/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_883/transpose_1	Transpose4lstm_883/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_883/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_883/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_884/ShapeShapelstm_883/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_884/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_884/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_884/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_884/strided_sliceStridedSlicelstm_884/Shape:output:0%lstm_884/strided_slice/stack:output:0'lstm_884/strided_slice/stack_1:output:0'lstm_884/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_884/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_884/zeros/packedPacklstm_884/strided_slice:output:0 lstm_884/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_884/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_884/zerosFilllstm_884/zeros/packed:output:0lstm_884/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_884/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_884/zeros_1/packedPacklstm_884/strided_slice:output:0"lstm_884/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_884/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_884/zeros_1Fill lstm_884/zeros_1/packed:output:0lstm_884/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_884/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_884/transpose	Transposelstm_883/transpose_1:y:0 lstm_884/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_884/Shape_1Shapelstm_884/transpose:y:0*
T0*
_output_shapes
:h
lstm_884/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_884/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_884/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_884/strided_slice_1StridedSlicelstm_884/Shape_1:output:0'lstm_884/strided_slice_1/stack:output:0)lstm_884/strided_slice_1/stack_1:output:0)lstm_884/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_884/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_884/TensorArrayV2TensorListReserve-lstm_884/TensorArrayV2/element_shape:output:0!lstm_884/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_884/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_884/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_884/transpose:y:0Glstm_884/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_884/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_884/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_884/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_884/strided_slice_2StridedSlicelstm_884/transpose:y:0'lstm_884/strided_slice_2/stack:output:0)lstm_884/strided_slice_2/stack_1:output:0)lstm_884/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_884/lstm_cell_884/MatMul/ReadVariableOpReadVariableOp5lstm_884_lstm_cell_884_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_884/lstm_cell_884/MatMulMatMul!lstm_884/strided_slice_2:output:04lstm_884/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_884/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp7lstm_884_lstm_cell_884_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_884/lstm_cell_884/MatMul_1MatMullstm_884/zeros:output:06lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_884/lstm_cell_884/addAddV2'lstm_884/lstm_cell_884/MatMul:product:0)lstm_884/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_884/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp6lstm_884_lstm_cell_884_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_884/lstm_cell_884/BiasAddBiasAddlstm_884/lstm_cell_884/add:z:05lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_884/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_884/lstm_cell_884/splitSplit/lstm_884/lstm_cell_884/split/split_dim:output:0'lstm_884/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_884/lstm_cell_884/SigmoidSigmoid%lstm_884/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_884/lstm_cell_884/Sigmoid_1Sigmoid%lstm_884/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_884/lstm_cell_884/mulMul$lstm_884/lstm_cell_884/Sigmoid_1:y:0lstm_884/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_884/lstm_cell_884/ReluRelu%lstm_884/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_884/lstm_cell_884/mul_1Mul"lstm_884/lstm_cell_884/Sigmoid:y:0)lstm_884/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_884/lstm_cell_884/add_1AddV2lstm_884/lstm_cell_884/mul:z:0 lstm_884/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_884/lstm_cell_884/Sigmoid_2Sigmoid%lstm_884/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_884/lstm_cell_884/Relu_1Relu lstm_884/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_884/lstm_cell_884/mul_2Mul$lstm_884/lstm_cell_884/Sigmoid_2:y:0+lstm_884/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_884/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_884/TensorArrayV2_1TensorListReserve/lstm_884/TensorArrayV2_1/element_shape:output:0!lstm_884/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_884/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_884/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_884/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_884/whileWhile$lstm_884/while/loop_counter:output:0*lstm_884/while/maximum_iterations:output:0lstm_884/time:output:0!lstm_884/TensorArrayV2_1:handle:0lstm_884/zeros:output:0lstm_884/zeros_1:output:0!lstm_884/strided_slice_1:output:0@lstm_884/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_884_lstm_cell_884_matmul_readvariableop_resource7lstm_884_lstm_cell_884_matmul_1_readvariableop_resource6lstm_884_lstm_cell_884_biasadd_readvariableop_resource*
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
lstm_884_while_body_5262509*'
condR
lstm_884_while_cond_5262508*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_884/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_884/TensorArrayV2Stack/TensorListStackTensorListStacklstm_884/while:output:3Blstm_884/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_884/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_884/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_884/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_884/strided_slice_3StridedSlice4lstm_884/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_884/strided_slice_3/stack:output:0)lstm_884/strided_slice_3/stack_1:output:0)lstm_884/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_884/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_884/transpose_1	Transpose4lstm_884/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_884/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_884/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_294/MatMul/ReadVariableOpReadVariableOp(dense_294_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_294/MatMulMatMul!lstm_884/strided_slice_3:output:0'dense_294/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_294/BiasAdd/ReadVariableOpReadVariableOp)dense_294_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_294/BiasAddBiasAdddense_294/MatMul:product:0(dense_294/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_294/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_294/BiasAdd/ReadVariableOp ^dense_294/MatMul/ReadVariableOp.^lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp-^lstm_882/lstm_cell_882/MatMul/ReadVariableOp/^lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp^lstm_882/while.^lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp-^lstm_883/lstm_cell_883/MatMul/ReadVariableOp/^lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp^lstm_883/while.^lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp-^lstm_884/lstm_cell_884/MatMul/ReadVariableOp/^lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp^lstm_884/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_294/BiasAdd/ReadVariableOp dense_294/BiasAdd/ReadVariableOp2B
dense_294/MatMul/ReadVariableOpdense_294/MatMul/ReadVariableOp2^
-lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp-lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp2\
,lstm_882/lstm_cell_882/MatMul/ReadVariableOp,lstm_882/lstm_cell_882/MatMul/ReadVariableOp2`
.lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp.lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp2 
lstm_882/whilelstm_882/while2^
-lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp-lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp2\
,lstm_883/lstm_cell_883/MatMul/ReadVariableOp,lstm_883/lstm_cell_883/MatMul/ReadVariableOp2`
.lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp.lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp2 
lstm_883/whilelstm_883/while2^
-lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp-lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp2\
,lstm_884/lstm_cell_884/MatMul/ReadVariableOp,lstm_884/lstm_cell_884/MatMul/ReadVariableOp2`
.lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp.lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp2 
lstm_884/whilelstm_884/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_294_layer_call_and_return_conditional_losses_5262053
lstm_882_input#
lstm_882_5262026:	?#
lstm_882_5262028:	d?
lstm_882_5262030:	?#
lstm_883_5262033:	d?#
lstm_883_5262035:	2?
lstm_883_5262037:	?"
lstm_884_5262040:2("
lstm_884_5262042:
(
lstm_884_5262044:(#
dense_294_5262047:

dense_294_5262049:
identity??!dense_294/StatefulPartitionedCall? lstm_882/StatefulPartitionedCall? lstm_883/StatefulPartitionedCall? lstm_884/StatefulPartitionedCall?
 lstm_882/StatefulPartitionedCallStatefulPartitionedCalllstm_882_inputlstm_882_5262026lstm_882_5262028lstm_882_5262030*
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5261057?
 lstm_883/StatefulPartitionedCallStatefulPartitionedCall)lstm_882/StatefulPartitionedCall:output:0lstm_883_5262033lstm_883_5262035lstm_883_5262037*
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5261207?
 lstm_884/StatefulPartitionedCallStatefulPartitionedCall)lstm_883/StatefulPartitionedCall:output:0lstm_884_5262040lstm_884_5262042lstm_884_5262044*
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5261357?
!dense_294/StatefulPartitionedCallStatefulPartitionedCall)lstm_884/StatefulPartitionedCall:output:0dense_294_5262047dense_294_5262049*
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
F__inference_dense_294_layer_call_and_return_conditional_losses_5261375y
IdentityIdentity*dense_294/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_294/StatefulPartitionedCall!^lstm_882/StatefulPartitionedCall!^lstm_883/StatefulPartitionedCall!^lstm_884/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_294/StatefulPartitionedCall!dense_294/StatefulPartitionedCall2D
 lstm_882/StatefulPartitionedCall lstm_882/StatefulPartitionedCall2D
 lstm_883/StatefulPartitionedCall lstm_883/StatefulPartitionedCall2D
 lstm_884/StatefulPartitionedCall lstm_884/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_882_input
?
?
while_cond_5260129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5260129___redundant_placeholder05
1while_while_cond_5260129___redundant_placeholder15
1while_while_cond_5260129___redundant_placeholder25
1while_while_cond_5260129___redundant_placeholder3
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
while_cond_5260288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5260288___redundant_placeholder05
1while_while_cond_5260288___redundant_placeholder15
1while_while_cond_5260288___redundant_placeholder25
1while_while_cond_5260288___redundant_placeholder3
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
/__inference_lstm_cell_884_layer_call_fn_5265106

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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5260625o
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5264959

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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5264115

inputs?
,lstm_cell_883_matmul_readvariableop_resource:	d?A
.lstm_cell_883_matmul_1_readvariableop_resource:	2?<
-lstm_cell_883_biasadd_readvariableop_resource:	?
identity??$lstm_cell_883/BiasAdd/ReadVariableOp?#lstm_cell_883/MatMul/ReadVariableOp?%lstm_cell_883/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_883/MatMul/ReadVariableOpReadVariableOp,lstm_cell_883_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_883/MatMulMatMulstrided_slice_2:output:0+lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_883_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_883/MatMul_1MatMulzeros:output:0-lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_883/addAddV2lstm_cell_883/MatMul:product:0 lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_883_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_883/BiasAddBiasAddlstm_cell_883/add:z:0,lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_883/splitSplit&lstm_cell_883/split/split_dim:output:0lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_883/SigmoidSigmoidlstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_1Sigmoidlstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_883/mulMullstm_cell_883/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_883/ReluRelulstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_1Mullstm_cell_883/Sigmoid:y:0 lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_883/add_1AddV2lstm_cell_883/mul:z:0lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_2Sigmoidlstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_883/Relu_1Relulstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_2Mullstm_cell_883/Sigmoid_2:y:0"lstm_cell_883/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_883_matmul_readvariableop_resource.lstm_cell_883_matmul_1_readvariableop_resource-lstm_cell_883_biasadd_readvariableop_resource*
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
while_body_5264031*
condR
while_cond_5264030*K
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
NoOpNoOp%^lstm_cell_883/BiasAdd/ReadVariableOp$^lstm_cell_883/MatMul/ReadVariableOp&^lstm_cell_883/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_883/BiasAdd/ReadVariableOp$lstm_cell_883/BiasAdd/ReadVariableOp2J
#lstm_cell_883/MatMul/ReadVariableOp#lstm_cell_883/MatMul/ReadVariableOp2N
%lstm_cell_883/MatMul_1/ReadVariableOp%lstm_cell_883/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_884_while_body_5262936.
*lstm_884_while_lstm_884_while_loop_counter4
0lstm_884_while_lstm_884_while_maximum_iterations
lstm_884_while_placeholder 
lstm_884_while_placeholder_1 
lstm_884_while_placeholder_2 
lstm_884_while_placeholder_3-
)lstm_884_while_lstm_884_strided_slice_1_0i
elstm_884_while_tensorarrayv2read_tensorlistgetitem_lstm_884_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_884_while_lstm_cell_884_matmul_readvariableop_resource_0:2(Q
?lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource_0:
(L
>lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource_0:(
lstm_884_while_identity
lstm_884_while_identity_1
lstm_884_while_identity_2
lstm_884_while_identity_3
lstm_884_while_identity_4
lstm_884_while_identity_5+
'lstm_884_while_lstm_884_strided_slice_1g
clstm_884_while_tensorarrayv2read_tensorlistgetitem_lstm_884_tensorarrayunstack_tensorlistfromtensorM
;lstm_884_while_lstm_cell_884_matmul_readvariableop_resource:2(O
=lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource:
(J
<lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource:(??3lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp?2lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp?4lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp?
@lstm_884/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_884/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_884_while_tensorarrayv2read_tensorlistgetitem_lstm_884_tensorarrayunstack_tensorlistfromtensor_0lstm_884_while_placeholderIlstm_884/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_884/while/lstm_cell_884/MatMul/ReadVariableOpReadVariableOp=lstm_884_while_lstm_cell_884_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_884/while/lstm_cell_884/MatMulMatMul9lstm_884/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp?lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_884/while/lstm_cell_884/MatMul_1MatMullstm_884_while_placeholder_2<lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_884/while/lstm_cell_884/addAddV2-lstm_884/while/lstm_cell_884/MatMul:product:0/lstm_884/while/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp>lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_884/while/lstm_cell_884/BiasAddBiasAdd$lstm_884/while/lstm_cell_884/add:z:0;lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_884/while/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_884/while/lstm_cell_884/splitSplit5lstm_884/while/lstm_cell_884/split/split_dim:output:0-lstm_884/while/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_884/while/lstm_cell_884/SigmoidSigmoid+lstm_884/while/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_884/while/lstm_cell_884/Sigmoid_1Sigmoid+lstm_884/while/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_884/while/lstm_cell_884/mulMul*lstm_884/while/lstm_cell_884/Sigmoid_1:y:0lstm_884_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_884/while/lstm_cell_884/ReluRelu+lstm_884/while/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_884/while/lstm_cell_884/mul_1Mul(lstm_884/while/lstm_cell_884/Sigmoid:y:0/lstm_884/while/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_884/while/lstm_cell_884/add_1AddV2$lstm_884/while/lstm_cell_884/mul:z:0&lstm_884/while/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_884/while/lstm_cell_884/Sigmoid_2Sigmoid+lstm_884/while/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_884/while/lstm_cell_884/Relu_1Relu&lstm_884/while/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_884/while/lstm_cell_884/mul_2Mul*lstm_884/while/lstm_cell_884/Sigmoid_2:y:01lstm_884/while/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_884/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_884_while_placeholder_1lstm_884_while_placeholder&lstm_884/while/lstm_cell_884/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_884/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_884/while/addAddV2lstm_884_while_placeholderlstm_884/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_884/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_884/while/add_1AddV2*lstm_884_while_lstm_884_while_loop_counterlstm_884/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_884/while/IdentityIdentitylstm_884/while/add_1:z:0^lstm_884/while/NoOp*
T0*
_output_shapes
: ?
lstm_884/while/Identity_1Identity0lstm_884_while_lstm_884_while_maximum_iterations^lstm_884/while/NoOp*
T0*
_output_shapes
: t
lstm_884/while/Identity_2Identitylstm_884/while/add:z:0^lstm_884/while/NoOp*
T0*
_output_shapes
: ?
lstm_884/while/Identity_3IdentityClstm_884/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_884/while/NoOp*
T0*
_output_shapes
: ?
lstm_884/while/Identity_4Identity&lstm_884/while/lstm_cell_884/mul_2:z:0^lstm_884/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_884/while/Identity_5Identity&lstm_884/while/lstm_cell_884/add_1:z:0^lstm_884/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_884/while/NoOpNoOp4^lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp3^lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp5^lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_884_while_identity lstm_884/while/Identity:output:0"?
lstm_884_while_identity_1"lstm_884/while/Identity_1:output:0"?
lstm_884_while_identity_2"lstm_884/while/Identity_2:output:0"?
lstm_884_while_identity_3"lstm_884/while/Identity_3:output:0"?
lstm_884_while_identity_4"lstm_884/while/Identity_4:output:0"?
lstm_884_while_identity_5"lstm_884/while/Identity_5:output:0"T
'lstm_884_while_lstm_884_strided_slice_1)lstm_884_while_lstm_884_strided_slice_1_0"~
<lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource>lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource_0"?
=lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource?lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource_0"|
;lstm_884_while_lstm_cell_884_matmul_readvariableop_resource=lstm_884_while_lstm_cell_884_matmul_readvariableop_resource_0"?
clstm_884_while_tensorarrayv2read_tensorlistgetitem_lstm_884_tensorarrayunstack_tensorlistfromtensorelstm_884_while_tensorarrayv2read_tensorlistgetitem_lstm_884_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp3lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp2h
2lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp2lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp2l
4lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp4lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5261738

inputs?
,lstm_cell_883_matmul_readvariableop_resource:	d?A
.lstm_cell_883_matmul_1_readvariableop_resource:	2?<
-lstm_cell_883_biasadd_readvariableop_resource:	?
identity??$lstm_cell_883/BiasAdd/ReadVariableOp?#lstm_cell_883/MatMul/ReadVariableOp?%lstm_cell_883/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_883/MatMul/ReadVariableOpReadVariableOp,lstm_cell_883_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_883/MatMulMatMulstrided_slice_2:output:0+lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_883_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_883/MatMul_1MatMulzeros:output:0-lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_883/addAddV2lstm_cell_883/MatMul:product:0 lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_883_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_883/BiasAddBiasAddlstm_cell_883/add:z:0,lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_883/splitSplit&lstm_cell_883/split/split_dim:output:0lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_883/SigmoidSigmoidlstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_1Sigmoidlstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_883/mulMullstm_cell_883/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_883/ReluRelulstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_1Mullstm_cell_883/Sigmoid:y:0 lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_883/add_1AddV2lstm_cell_883/mul:z:0lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_2Sigmoidlstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_883/Relu_1Relulstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_2Mullstm_cell_883/Sigmoid_2:y:0"lstm_cell_883/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_883_matmul_readvariableop_resource.lstm_cell_883_matmul_1_readvariableop_resource-lstm_cell_883_biasadd_readvariableop_resource*
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
while_body_5261654*
condR
while_cond_5261653*K
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
NoOpNoOp%^lstm_cell_883/BiasAdd/ReadVariableOp$^lstm_cell_883/MatMul/ReadVariableOp&^lstm_cell_883/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_883/BiasAdd/ReadVariableOp$lstm_cell_883/BiasAdd/ReadVariableOp2J
#lstm_cell_883/MatMul/ReadVariableOp#lstm_cell_883/MatMul/ReadVariableOp2N
%lstm_cell_883/MatMul_1/ReadVariableOp%lstm_cell_883/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_5259858
lstm_882_inputW
Dsequential_294_lstm_882_lstm_cell_882_matmul_readvariableop_resource:	?Y
Fsequential_294_lstm_882_lstm_cell_882_matmul_1_readvariableop_resource:	d?T
Esequential_294_lstm_882_lstm_cell_882_biasadd_readvariableop_resource:	?W
Dsequential_294_lstm_883_lstm_cell_883_matmul_readvariableop_resource:	d?Y
Fsequential_294_lstm_883_lstm_cell_883_matmul_1_readvariableop_resource:	2?T
Esequential_294_lstm_883_lstm_cell_883_biasadd_readvariableop_resource:	?V
Dsequential_294_lstm_884_lstm_cell_884_matmul_readvariableop_resource:2(X
Fsequential_294_lstm_884_lstm_cell_884_matmul_1_readvariableop_resource:
(S
Esequential_294_lstm_884_lstm_cell_884_biasadd_readvariableop_resource:(I
7sequential_294_dense_294_matmul_readvariableop_resource:
F
8sequential_294_dense_294_biasadd_readvariableop_resource:
identity??/sequential_294/dense_294/BiasAdd/ReadVariableOp?.sequential_294/dense_294/MatMul/ReadVariableOp?<sequential_294/lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp?;sequential_294/lstm_882/lstm_cell_882/MatMul/ReadVariableOp?=sequential_294/lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp?sequential_294/lstm_882/while?<sequential_294/lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp?;sequential_294/lstm_883/lstm_cell_883/MatMul/ReadVariableOp?=sequential_294/lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp?sequential_294/lstm_883/while?<sequential_294/lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp?;sequential_294/lstm_884/lstm_cell_884/MatMul/ReadVariableOp?=sequential_294/lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp?sequential_294/lstm_884/while[
sequential_294/lstm_882/ShapeShapelstm_882_input*
T0*
_output_shapes
:u
+sequential_294/lstm_882/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_294/lstm_882/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_294/lstm_882/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_294/lstm_882/strided_sliceStridedSlice&sequential_294/lstm_882/Shape:output:04sequential_294/lstm_882/strided_slice/stack:output:06sequential_294/lstm_882/strided_slice/stack_1:output:06sequential_294/lstm_882/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_294/lstm_882/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_294/lstm_882/zeros/packedPack.sequential_294/lstm_882/strided_slice:output:0/sequential_294/lstm_882/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_294/lstm_882/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_294/lstm_882/zerosFill-sequential_294/lstm_882/zeros/packed:output:0,sequential_294/lstm_882/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_294/lstm_882/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_294/lstm_882/zeros_1/packedPack.sequential_294/lstm_882/strided_slice:output:01sequential_294/lstm_882/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_294/lstm_882/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_294/lstm_882/zeros_1Fill/sequential_294/lstm_882/zeros_1/packed:output:0.sequential_294/lstm_882/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_294/lstm_882/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_294/lstm_882/transpose	Transposelstm_882_input/sequential_294/lstm_882/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_294/lstm_882/Shape_1Shape%sequential_294/lstm_882/transpose:y:0*
T0*
_output_shapes
:w
-sequential_294/lstm_882/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_294/lstm_882/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_294/lstm_882/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_294/lstm_882/strided_slice_1StridedSlice(sequential_294/lstm_882/Shape_1:output:06sequential_294/lstm_882/strided_slice_1/stack:output:08sequential_294/lstm_882/strided_slice_1/stack_1:output:08sequential_294/lstm_882/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_294/lstm_882/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_294/lstm_882/TensorArrayV2TensorListReserve<sequential_294/lstm_882/TensorArrayV2/element_shape:output:00sequential_294/lstm_882/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_294/lstm_882/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_294/lstm_882/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_294/lstm_882/transpose:y:0Vsequential_294/lstm_882/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_294/lstm_882/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_294/lstm_882/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_294/lstm_882/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_294/lstm_882/strided_slice_2StridedSlice%sequential_294/lstm_882/transpose:y:06sequential_294/lstm_882/strided_slice_2/stack:output:08sequential_294/lstm_882/strided_slice_2/stack_1:output:08sequential_294/lstm_882/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_294/lstm_882/lstm_cell_882/MatMul/ReadVariableOpReadVariableOpDsequential_294_lstm_882_lstm_cell_882_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_294/lstm_882/lstm_cell_882/MatMulMatMul0sequential_294/lstm_882/strided_slice_2:output:0Csequential_294/lstm_882/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_294/lstm_882/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOpFsequential_294_lstm_882_lstm_cell_882_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_294/lstm_882/lstm_cell_882/MatMul_1MatMul&sequential_294/lstm_882/zeros:output:0Esequential_294/lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_294/lstm_882/lstm_cell_882/addAddV26sequential_294/lstm_882/lstm_cell_882/MatMul:product:08sequential_294/lstm_882/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_294/lstm_882/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOpEsequential_294_lstm_882_lstm_cell_882_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_294/lstm_882/lstm_cell_882/BiasAddBiasAdd-sequential_294/lstm_882/lstm_cell_882/add:z:0Dsequential_294/lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_294/lstm_882/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_294/lstm_882/lstm_cell_882/splitSplit>sequential_294/lstm_882/lstm_cell_882/split/split_dim:output:06sequential_294/lstm_882/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_294/lstm_882/lstm_cell_882/SigmoidSigmoid4sequential_294/lstm_882/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_294/lstm_882/lstm_cell_882/Sigmoid_1Sigmoid4sequential_294/lstm_882/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_294/lstm_882/lstm_cell_882/mulMul3sequential_294/lstm_882/lstm_cell_882/Sigmoid_1:y:0(sequential_294/lstm_882/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_294/lstm_882/lstm_cell_882/ReluRelu4sequential_294/lstm_882/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_294/lstm_882/lstm_cell_882/mul_1Mul1sequential_294/lstm_882/lstm_cell_882/Sigmoid:y:08sequential_294/lstm_882/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_294/lstm_882/lstm_cell_882/add_1AddV2-sequential_294/lstm_882/lstm_cell_882/mul:z:0/sequential_294/lstm_882/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_294/lstm_882/lstm_cell_882/Sigmoid_2Sigmoid4sequential_294/lstm_882/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_294/lstm_882/lstm_cell_882/Relu_1Relu/sequential_294/lstm_882/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_294/lstm_882/lstm_cell_882/mul_2Mul3sequential_294/lstm_882/lstm_cell_882/Sigmoid_2:y:0:sequential_294/lstm_882/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_294/lstm_882/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_294/lstm_882/TensorArrayV2_1TensorListReserve>sequential_294/lstm_882/TensorArrayV2_1/element_shape:output:00sequential_294/lstm_882/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_294/lstm_882/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_294/lstm_882/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_294/lstm_882/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_294/lstm_882/whileWhile3sequential_294/lstm_882/while/loop_counter:output:09sequential_294/lstm_882/while/maximum_iterations:output:0%sequential_294/lstm_882/time:output:00sequential_294/lstm_882/TensorArrayV2_1:handle:0&sequential_294/lstm_882/zeros:output:0(sequential_294/lstm_882/zeros_1:output:00sequential_294/lstm_882/strided_slice_1:output:0Osequential_294/lstm_882/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_294_lstm_882_lstm_cell_882_matmul_readvariableop_resourceFsequential_294_lstm_882_lstm_cell_882_matmul_1_readvariableop_resourceEsequential_294_lstm_882_lstm_cell_882_biasadd_readvariableop_resource*
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
*sequential_294_lstm_882_while_body_5259490*6
cond.R,
*sequential_294_lstm_882_while_cond_5259489*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_294/lstm_882/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_294/lstm_882/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_294/lstm_882/while:output:3Qsequential_294/lstm_882/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_294/lstm_882/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_294/lstm_882/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_294/lstm_882/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_294/lstm_882/strided_slice_3StridedSliceCsequential_294/lstm_882/TensorArrayV2Stack/TensorListStack:tensor:06sequential_294/lstm_882/strided_slice_3/stack:output:08sequential_294/lstm_882/strided_slice_3/stack_1:output:08sequential_294/lstm_882/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_294/lstm_882/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_294/lstm_882/transpose_1	TransposeCsequential_294/lstm_882/TensorArrayV2Stack/TensorListStack:tensor:01sequential_294/lstm_882/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_294/lstm_882/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_294/lstm_883/ShapeShape'sequential_294/lstm_882/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_294/lstm_883/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_294/lstm_883/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_294/lstm_883/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_294/lstm_883/strided_sliceStridedSlice&sequential_294/lstm_883/Shape:output:04sequential_294/lstm_883/strided_slice/stack:output:06sequential_294/lstm_883/strided_slice/stack_1:output:06sequential_294/lstm_883/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_294/lstm_883/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_294/lstm_883/zeros/packedPack.sequential_294/lstm_883/strided_slice:output:0/sequential_294/lstm_883/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_294/lstm_883/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_294/lstm_883/zerosFill-sequential_294/lstm_883/zeros/packed:output:0,sequential_294/lstm_883/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_294/lstm_883/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_294/lstm_883/zeros_1/packedPack.sequential_294/lstm_883/strided_slice:output:01sequential_294/lstm_883/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_294/lstm_883/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_294/lstm_883/zeros_1Fill/sequential_294/lstm_883/zeros_1/packed:output:0.sequential_294/lstm_883/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_294/lstm_883/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_294/lstm_883/transpose	Transpose'sequential_294/lstm_882/transpose_1:y:0/sequential_294/lstm_883/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_294/lstm_883/Shape_1Shape%sequential_294/lstm_883/transpose:y:0*
T0*
_output_shapes
:w
-sequential_294/lstm_883/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_294/lstm_883/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_294/lstm_883/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_294/lstm_883/strided_slice_1StridedSlice(sequential_294/lstm_883/Shape_1:output:06sequential_294/lstm_883/strided_slice_1/stack:output:08sequential_294/lstm_883/strided_slice_1/stack_1:output:08sequential_294/lstm_883/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_294/lstm_883/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_294/lstm_883/TensorArrayV2TensorListReserve<sequential_294/lstm_883/TensorArrayV2/element_shape:output:00sequential_294/lstm_883/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_294/lstm_883/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_294/lstm_883/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_294/lstm_883/transpose:y:0Vsequential_294/lstm_883/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_294/lstm_883/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_294/lstm_883/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_294/lstm_883/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_294/lstm_883/strided_slice_2StridedSlice%sequential_294/lstm_883/transpose:y:06sequential_294/lstm_883/strided_slice_2/stack:output:08sequential_294/lstm_883/strided_slice_2/stack_1:output:08sequential_294/lstm_883/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_294/lstm_883/lstm_cell_883/MatMul/ReadVariableOpReadVariableOpDsequential_294_lstm_883_lstm_cell_883_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_294/lstm_883/lstm_cell_883/MatMulMatMul0sequential_294/lstm_883/strided_slice_2:output:0Csequential_294/lstm_883/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_294/lstm_883/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOpFsequential_294_lstm_883_lstm_cell_883_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_294/lstm_883/lstm_cell_883/MatMul_1MatMul&sequential_294/lstm_883/zeros:output:0Esequential_294/lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_294/lstm_883/lstm_cell_883/addAddV26sequential_294/lstm_883/lstm_cell_883/MatMul:product:08sequential_294/lstm_883/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_294/lstm_883/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOpEsequential_294_lstm_883_lstm_cell_883_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_294/lstm_883/lstm_cell_883/BiasAddBiasAdd-sequential_294/lstm_883/lstm_cell_883/add:z:0Dsequential_294/lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_294/lstm_883/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_294/lstm_883/lstm_cell_883/splitSplit>sequential_294/lstm_883/lstm_cell_883/split/split_dim:output:06sequential_294/lstm_883/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_294/lstm_883/lstm_cell_883/SigmoidSigmoid4sequential_294/lstm_883/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_294/lstm_883/lstm_cell_883/Sigmoid_1Sigmoid4sequential_294/lstm_883/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_294/lstm_883/lstm_cell_883/mulMul3sequential_294/lstm_883/lstm_cell_883/Sigmoid_1:y:0(sequential_294/lstm_883/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_294/lstm_883/lstm_cell_883/ReluRelu4sequential_294/lstm_883/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_294/lstm_883/lstm_cell_883/mul_1Mul1sequential_294/lstm_883/lstm_cell_883/Sigmoid:y:08sequential_294/lstm_883/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_294/lstm_883/lstm_cell_883/add_1AddV2-sequential_294/lstm_883/lstm_cell_883/mul:z:0/sequential_294/lstm_883/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_294/lstm_883/lstm_cell_883/Sigmoid_2Sigmoid4sequential_294/lstm_883/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_294/lstm_883/lstm_cell_883/Relu_1Relu/sequential_294/lstm_883/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_294/lstm_883/lstm_cell_883/mul_2Mul3sequential_294/lstm_883/lstm_cell_883/Sigmoid_2:y:0:sequential_294/lstm_883/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_294/lstm_883/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_294/lstm_883/TensorArrayV2_1TensorListReserve>sequential_294/lstm_883/TensorArrayV2_1/element_shape:output:00sequential_294/lstm_883/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_294/lstm_883/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_294/lstm_883/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_294/lstm_883/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_294/lstm_883/whileWhile3sequential_294/lstm_883/while/loop_counter:output:09sequential_294/lstm_883/while/maximum_iterations:output:0%sequential_294/lstm_883/time:output:00sequential_294/lstm_883/TensorArrayV2_1:handle:0&sequential_294/lstm_883/zeros:output:0(sequential_294/lstm_883/zeros_1:output:00sequential_294/lstm_883/strided_slice_1:output:0Osequential_294/lstm_883/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_294_lstm_883_lstm_cell_883_matmul_readvariableop_resourceFsequential_294_lstm_883_lstm_cell_883_matmul_1_readvariableop_resourceEsequential_294_lstm_883_lstm_cell_883_biasadd_readvariableop_resource*
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
*sequential_294_lstm_883_while_body_5259629*6
cond.R,
*sequential_294_lstm_883_while_cond_5259628*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_294/lstm_883/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_294/lstm_883/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_294/lstm_883/while:output:3Qsequential_294/lstm_883/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_294/lstm_883/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_294/lstm_883/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_294/lstm_883/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_294/lstm_883/strided_slice_3StridedSliceCsequential_294/lstm_883/TensorArrayV2Stack/TensorListStack:tensor:06sequential_294/lstm_883/strided_slice_3/stack:output:08sequential_294/lstm_883/strided_slice_3/stack_1:output:08sequential_294/lstm_883/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_294/lstm_883/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_294/lstm_883/transpose_1	TransposeCsequential_294/lstm_883/TensorArrayV2Stack/TensorListStack:tensor:01sequential_294/lstm_883/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_294/lstm_883/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_294/lstm_884/ShapeShape'sequential_294/lstm_883/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_294/lstm_884/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_294/lstm_884/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_294/lstm_884/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_294/lstm_884/strided_sliceStridedSlice&sequential_294/lstm_884/Shape:output:04sequential_294/lstm_884/strided_slice/stack:output:06sequential_294/lstm_884/strided_slice/stack_1:output:06sequential_294/lstm_884/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_294/lstm_884/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_294/lstm_884/zeros/packedPack.sequential_294/lstm_884/strided_slice:output:0/sequential_294/lstm_884/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_294/lstm_884/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_294/lstm_884/zerosFill-sequential_294/lstm_884/zeros/packed:output:0,sequential_294/lstm_884/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_294/lstm_884/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_294/lstm_884/zeros_1/packedPack.sequential_294/lstm_884/strided_slice:output:01sequential_294/lstm_884/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_294/lstm_884/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_294/lstm_884/zeros_1Fill/sequential_294/lstm_884/zeros_1/packed:output:0.sequential_294/lstm_884/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_294/lstm_884/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_294/lstm_884/transpose	Transpose'sequential_294/lstm_883/transpose_1:y:0/sequential_294/lstm_884/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_294/lstm_884/Shape_1Shape%sequential_294/lstm_884/transpose:y:0*
T0*
_output_shapes
:w
-sequential_294/lstm_884/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_294/lstm_884/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_294/lstm_884/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_294/lstm_884/strided_slice_1StridedSlice(sequential_294/lstm_884/Shape_1:output:06sequential_294/lstm_884/strided_slice_1/stack:output:08sequential_294/lstm_884/strided_slice_1/stack_1:output:08sequential_294/lstm_884/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_294/lstm_884/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_294/lstm_884/TensorArrayV2TensorListReserve<sequential_294/lstm_884/TensorArrayV2/element_shape:output:00sequential_294/lstm_884/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_294/lstm_884/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_294/lstm_884/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_294/lstm_884/transpose:y:0Vsequential_294/lstm_884/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_294/lstm_884/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_294/lstm_884/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_294/lstm_884/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_294/lstm_884/strided_slice_2StridedSlice%sequential_294/lstm_884/transpose:y:06sequential_294/lstm_884/strided_slice_2/stack:output:08sequential_294/lstm_884/strided_slice_2/stack_1:output:08sequential_294/lstm_884/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_294/lstm_884/lstm_cell_884/MatMul/ReadVariableOpReadVariableOpDsequential_294_lstm_884_lstm_cell_884_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_294/lstm_884/lstm_cell_884/MatMulMatMul0sequential_294/lstm_884/strided_slice_2:output:0Csequential_294/lstm_884/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_294/lstm_884/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOpFsequential_294_lstm_884_lstm_cell_884_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_294/lstm_884/lstm_cell_884/MatMul_1MatMul&sequential_294/lstm_884/zeros:output:0Esequential_294/lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_294/lstm_884/lstm_cell_884/addAddV26sequential_294/lstm_884/lstm_cell_884/MatMul:product:08sequential_294/lstm_884/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_294/lstm_884/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOpEsequential_294_lstm_884_lstm_cell_884_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_294/lstm_884/lstm_cell_884/BiasAddBiasAdd-sequential_294/lstm_884/lstm_cell_884/add:z:0Dsequential_294/lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_294/lstm_884/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_294/lstm_884/lstm_cell_884/splitSplit>sequential_294/lstm_884/lstm_cell_884/split/split_dim:output:06sequential_294/lstm_884/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_294/lstm_884/lstm_cell_884/SigmoidSigmoid4sequential_294/lstm_884/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_294/lstm_884/lstm_cell_884/Sigmoid_1Sigmoid4sequential_294/lstm_884/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_294/lstm_884/lstm_cell_884/mulMul3sequential_294/lstm_884/lstm_cell_884/Sigmoid_1:y:0(sequential_294/lstm_884/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_294/lstm_884/lstm_cell_884/ReluRelu4sequential_294/lstm_884/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_294/lstm_884/lstm_cell_884/mul_1Mul1sequential_294/lstm_884/lstm_cell_884/Sigmoid:y:08sequential_294/lstm_884/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_294/lstm_884/lstm_cell_884/add_1AddV2-sequential_294/lstm_884/lstm_cell_884/mul:z:0/sequential_294/lstm_884/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_294/lstm_884/lstm_cell_884/Sigmoid_2Sigmoid4sequential_294/lstm_884/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_294/lstm_884/lstm_cell_884/Relu_1Relu/sequential_294/lstm_884/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_294/lstm_884/lstm_cell_884/mul_2Mul3sequential_294/lstm_884/lstm_cell_884/Sigmoid_2:y:0:sequential_294/lstm_884/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_294/lstm_884/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_294/lstm_884/TensorArrayV2_1TensorListReserve>sequential_294/lstm_884/TensorArrayV2_1/element_shape:output:00sequential_294/lstm_884/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_294/lstm_884/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_294/lstm_884/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_294/lstm_884/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_294/lstm_884/whileWhile3sequential_294/lstm_884/while/loop_counter:output:09sequential_294/lstm_884/while/maximum_iterations:output:0%sequential_294/lstm_884/time:output:00sequential_294/lstm_884/TensorArrayV2_1:handle:0&sequential_294/lstm_884/zeros:output:0(sequential_294/lstm_884/zeros_1:output:00sequential_294/lstm_884/strided_slice_1:output:0Osequential_294/lstm_884/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_294_lstm_884_lstm_cell_884_matmul_readvariableop_resourceFsequential_294_lstm_884_lstm_cell_884_matmul_1_readvariableop_resourceEsequential_294_lstm_884_lstm_cell_884_biasadd_readvariableop_resource*
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
*sequential_294_lstm_884_while_body_5259768*6
cond.R,
*sequential_294_lstm_884_while_cond_5259767*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_294/lstm_884/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_294/lstm_884/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_294/lstm_884/while:output:3Qsequential_294/lstm_884/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_294/lstm_884/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_294/lstm_884/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_294/lstm_884/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_294/lstm_884/strided_slice_3StridedSliceCsequential_294/lstm_884/TensorArrayV2Stack/TensorListStack:tensor:06sequential_294/lstm_884/strided_slice_3/stack:output:08sequential_294/lstm_884/strided_slice_3/stack_1:output:08sequential_294/lstm_884/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_294/lstm_884/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_294/lstm_884/transpose_1	TransposeCsequential_294/lstm_884/TensorArrayV2Stack/TensorListStack:tensor:01sequential_294/lstm_884/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_294/lstm_884/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_294/dense_294/MatMul/ReadVariableOpReadVariableOp7sequential_294_dense_294_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_294/dense_294/MatMulMatMul0sequential_294/lstm_884/strided_slice_3:output:06sequential_294/dense_294/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_294/dense_294/BiasAdd/ReadVariableOpReadVariableOp8sequential_294_dense_294_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_294/dense_294/BiasAddBiasAdd)sequential_294/dense_294/MatMul:product:07sequential_294/dense_294/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_294/dense_294/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_294/dense_294/BiasAdd/ReadVariableOp/^sequential_294/dense_294/MatMul/ReadVariableOp=^sequential_294/lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp<^sequential_294/lstm_882/lstm_cell_882/MatMul/ReadVariableOp>^sequential_294/lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp^sequential_294/lstm_882/while=^sequential_294/lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp<^sequential_294/lstm_883/lstm_cell_883/MatMul/ReadVariableOp>^sequential_294/lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp^sequential_294/lstm_883/while=^sequential_294/lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp<^sequential_294/lstm_884/lstm_cell_884/MatMul/ReadVariableOp>^sequential_294/lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp^sequential_294/lstm_884/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_294/dense_294/BiasAdd/ReadVariableOp/sequential_294/dense_294/BiasAdd/ReadVariableOp2`
.sequential_294/dense_294/MatMul/ReadVariableOp.sequential_294/dense_294/MatMul/ReadVariableOp2|
<sequential_294/lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp<sequential_294/lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp2z
;sequential_294/lstm_882/lstm_cell_882/MatMul/ReadVariableOp;sequential_294/lstm_882/lstm_cell_882/MatMul/ReadVariableOp2~
=sequential_294/lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp=sequential_294/lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp2>
sequential_294/lstm_882/whilesequential_294/lstm_882/while2|
<sequential_294/lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp<sequential_294/lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp2z
;sequential_294/lstm_883/lstm_cell_883/MatMul/ReadVariableOp;sequential_294/lstm_883/lstm_cell_883/MatMul/ReadVariableOp2~
=sequential_294/lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp=sequential_294/lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp2>
sequential_294/lstm_883/whilesequential_294/lstm_883/while2|
<sequential_294/lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp<sequential_294/lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp2z
;sequential_294/lstm_884/lstm_cell_884/MatMul/ReadVariableOp;sequential_294/lstm_884/lstm_cell_884/MatMul/ReadVariableOp2~
=sequential_294/lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp=sequential_294/lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp2>
sequential_294/lstm_884/whilesequential_294/lstm_884/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_882_input
?8
?
while_body_5263129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_882_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_882_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_882_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_882_matmul_readvariableop_resource:	?G
4while_lstm_cell_882_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_882_biasadd_readvariableop_resource:	???*while/lstm_cell_882/BiasAdd/ReadVariableOp?)while/lstm_cell_882/MatMul/ReadVariableOp?+while/lstm_cell_882/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_882/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_882_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_882/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_882_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_882/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_882/addAddV2$while/lstm_cell_882/MatMul:product:0&while/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_882_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_882/BiasAddBiasAddwhile/lstm_cell_882/add:z:02while/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_882/splitSplit,while/lstm_cell_882/split/split_dim:output:0$while/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_882/SigmoidSigmoid"while/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_1Sigmoid"while/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mulMul!while/lstm_cell_882/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_882/ReluRelu"while/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_1Mulwhile/lstm_cell_882/Sigmoid:y:0&while/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/add_1AddV2while/lstm_cell_882/mul:z:0while/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_2Sigmoid"while/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_882/Relu_1Reluwhile/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_2Mul!while/lstm_cell_882/Sigmoid_2:y:0(while/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_882/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_882/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_882/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_882/BiasAdd/ReadVariableOp*^while/lstm_cell_882/MatMul/ReadVariableOp,^while/lstm_cell_882/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_882_biasadd_readvariableop_resource5while_lstm_cell_882_biasadd_readvariableop_resource_0"n
4while_lstm_cell_882_matmul_1_readvariableop_resource6while_lstm_cell_882_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_882_matmul_readvariableop_resource4while_lstm_cell_882_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_882/BiasAdd/ReadVariableOp*while/lstm_cell_882/BiasAdd/ReadVariableOp2V
)while/lstm_cell_882/MatMul/ReadVariableOp)while/lstm_cell_882/MatMul/ReadVariableOp2Z
+while/lstm_cell_882/MatMul_1/ReadVariableOp+while/lstm_cell_882/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5264503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5264503___redundant_placeholder05
1while_while_cond_5264503___redundant_placeholder15
1while_while_cond_5264503___redundant_placeholder25
1while_while_cond_5264503___redundant_placeholder3
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5261057

inputs?
,lstm_cell_882_matmul_readvariableop_resource:	?A
.lstm_cell_882_matmul_1_readvariableop_resource:	d?<
-lstm_cell_882_biasadd_readvariableop_resource:	?
identity??$lstm_cell_882/BiasAdd/ReadVariableOp?#lstm_cell_882/MatMul/ReadVariableOp?%lstm_cell_882/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_882/MatMul/ReadVariableOpReadVariableOp,lstm_cell_882_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_882/MatMulMatMulstrided_slice_2:output:0+lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_882_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_882/MatMul_1MatMulzeros:output:0-lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_882/addAddV2lstm_cell_882/MatMul:product:0 lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_882_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_882/BiasAddBiasAddlstm_cell_882/add:z:0,lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_882/splitSplit&lstm_cell_882/split/split_dim:output:0lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_882/SigmoidSigmoidlstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_1Sigmoidlstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_882/mulMullstm_cell_882/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_882/ReluRelulstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_1Mullstm_cell_882/Sigmoid:y:0 lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_882/add_1AddV2lstm_cell_882/mul:z:0lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_2Sigmoidlstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_882/Relu_1Relulstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_2Mullstm_cell_882/Sigmoid_2:y:0"lstm_cell_882/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_882_matmul_readvariableop_resource.lstm_cell_882_matmul_1_readvariableop_resource-lstm_cell_882_biasadd_readvariableop_resource*
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
while_body_5260973*
condR
while_cond_5260972*K
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
NoOpNoOp%^lstm_cell_882/BiasAdd/ReadVariableOp$^lstm_cell_882/MatMul/ReadVariableOp&^lstm_cell_882/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_882/BiasAdd/ReadVariableOp$lstm_cell_882/BiasAdd/ReadVariableOp2J
#lstm_cell_882/MatMul/ReadVariableOp#lstm_cell_882/MatMul/ReadVariableOp2N
%lstm_cell_882/MatMul_1/ReadVariableOp%lstm_cell_882/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_5260289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_883_5260313_0:	d?0
while_lstm_cell_883_5260315_0:	2?,
while_lstm_cell_883_5260317_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_883_5260313:	d?.
while_lstm_cell_883_5260315:	2?*
while_lstm_cell_883_5260317:	???+while/lstm_cell_883/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_883/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_883_5260313_0while_lstm_cell_883_5260315_0while_lstm_cell_883_5260317_0*
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5260275?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_883/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_883/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_883/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_883/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_883_5260313while_lstm_cell_883_5260313_0"<
while_lstm_cell_883_5260315while_lstm_cell_883_5260315_0"<
while_lstm_cell_883_5260317while_lstm_cell_883_5260317_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_883/StatefulPartitionedCall+while/lstm_cell_883/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5264646
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5264646___redundant_placeholder05
1while_while_cond_5264646___redundant_placeholder15
1while_while_cond_5264646___redundant_placeholder25
1while_while_cond_5264646___redundant_placeholder3
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
*__inference_lstm_882_layer_call_fn_5263070

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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5261903s
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
while_cond_5263744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5263744___redundant_placeholder05
1while_while_cond_5263744___redundant_placeholder15
1while_while_cond_5263744___redundant_placeholder25
1while_while_cond_5263744___redundant_placeholder3
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
*__inference_lstm_882_layer_call_fn_5263059

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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5261057s
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
while_cond_5261488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5261488___redundant_placeholder05
1while_while_cond_5261488___redundant_placeholder15
1while_while_cond_5261488___redundant_placeholder25
1while_while_cond_5261488___redundant_placeholder3
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
while_body_5263745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_883_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_883_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_883_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_883_matmul_readvariableop_resource:	d?G
4while_lstm_cell_883_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_883_biasadd_readvariableop_resource:	???*while/lstm_cell_883/BiasAdd/ReadVariableOp?)while/lstm_cell_883/MatMul/ReadVariableOp?+while/lstm_cell_883/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_883/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_883_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_883/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_883_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_883/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_883/addAddV2$while/lstm_cell_883/MatMul:product:0&while/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_883_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_883/BiasAddBiasAddwhile/lstm_cell_883/add:z:02while/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_883/splitSplit,while/lstm_cell_883/split/split_dim:output:0$while/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_883/SigmoidSigmoid"while/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_1Sigmoid"while/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mulMul!while/lstm_cell_883/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_883/ReluRelu"while/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_1Mulwhile/lstm_cell_883/Sigmoid:y:0&while/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/add_1AddV2while/lstm_cell_883/mul:z:0while/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_2Sigmoid"while/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_883/Relu_1Reluwhile/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_2Mul!while/lstm_cell_883/Sigmoid_2:y:0(while/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_883/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_883/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_883/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_883/BiasAdd/ReadVariableOp*^while/lstm_cell_883/MatMul/ReadVariableOp,^while/lstm_cell_883/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_883_biasadd_readvariableop_resource5while_lstm_cell_883_biasadd_readvariableop_resource_0"n
4while_lstm_cell_883_matmul_1_readvariableop_resource6while_lstm_cell_883_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_883_matmul_readvariableop_resource4while_lstm_cell_883_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_883/BiasAdd/ReadVariableOp*while/lstm_cell_883/BiasAdd/ReadVariableOp2V
)while/lstm_cell_883/MatMul/ReadVariableOp)while/lstm_cell_883/MatMul/ReadVariableOp2Z
+while/lstm_cell_883/MatMul_1/ReadVariableOp+while/lstm_cell_883/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_883_while_cond_5262796.
*lstm_883_while_lstm_883_while_loop_counter4
0lstm_883_while_lstm_883_while_maximum_iterations
lstm_883_while_placeholder 
lstm_883_while_placeholder_1 
lstm_883_while_placeholder_2 
lstm_883_while_placeholder_30
,lstm_883_while_less_lstm_883_strided_slice_1G
Clstm_883_while_lstm_883_while_cond_5262796___redundant_placeholder0G
Clstm_883_while_lstm_883_while_cond_5262796___redundant_placeholder1G
Clstm_883_while_lstm_883_while_cond_5262796___redundant_placeholder2G
Clstm_883_while_lstm_883_while_cond_5262796___redundant_placeholder3
lstm_883_while_identity
?
lstm_883/while/LessLesslstm_883_while_placeholder,lstm_883_while_less_lstm_883_strided_slice_1*
T0*
_output_shapes
: ]
lstm_883/while/IdentityIdentitylstm_883/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_883_while_identity lstm_883/while/Identity:output:0*(
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5264991

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
*__inference_lstm_883_layer_call_fn_5263653
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5260358|
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
/__inference_lstm_cell_882_layer_call_fn_5264910

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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5259925o
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
while_cond_5259938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5259938___redundant_placeholder05
1while_while_cond_5259938___redundant_placeholder15
1while_while_cond_5259938___redundant_placeholder25
1while_while_cond_5259938___redundant_placeholder3
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
*sequential_294_lstm_883_while_cond_5259628L
Hsequential_294_lstm_883_while_sequential_294_lstm_883_while_loop_counterR
Nsequential_294_lstm_883_while_sequential_294_lstm_883_while_maximum_iterations-
)sequential_294_lstm_883_while_placeholder/
+sequential_294_lstm_883_while_placeholder_1/
+sequential_294_lstm_883_while_placeholder_2/
+sequential_294_lstm_883_while_placeholder_3N
Jsequential_294_lstm_883_while_less_sequential_294_lstm_883_strided_slice_1e
asequential_294_lstm_883_while_sequential_294_lstm_883_while_cond_5259628___redundant_placeholder0e
asequential_294_lstm_883_while_sequential_294_lstm_883_while_cond_5259628___redundant_placeholder1e
asequential_294_lstm_883_while_sequential_294_lstm_883_while_cond_5259628___redundant_placeholder2e
asequential_294_lstm_883_while_sequential_294_lstm_883_while_cond_5259628___redundant_placeholder3*
&sequential_294_lstm_883_while_identity
?
"sequential_294/lstm_883/while/LessLess)sequential_294_lstm_883_while_placeholderJsequential_294_lstm_883_while_less_sequential_294_lstm_883_strided_slice_1*
T0*
_output_shapes
: {
&sequential_294/lstm_883/while/IdentityIdentity&sequential_294/lstm_883/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_294_lstm_883_while_identity/sequential_294/lstm_883/while/Identity:output:0*(
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
*__inference_lstm_884_layer_call_fn_5264291

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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5261357o
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
?#
?
while_body_5260130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_882_5260154_0:	?0
while_lstm_cell_882_5260156_0:	d?,
while_lstm_cell_882_5260158_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_882_5260154:	?.
while_lstm_cell_882_5260156:	d?*
while_lstm_cell_882_5260158:	???+while/lstm_cell_882/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_882/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_882_5260154_0while_lstm_cell_882_5260156_0while_lstm_cell_882_5260158_0*
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5260071?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_882/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_882/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_882/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_882/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_882_5260154while_lstm_cell_882_5260154_0"<
while_lstm_cell_882_5260156while_lstm_cell_882_5260156_0"<
while_lstm_cell_882_5260158while_lstm_cell_882_5260158_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_882/StatefulPartitionedCall+while/lstm_cell_882/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_882_while_cond_5262657.
*lstm_882_while_lstm_882_while_loop_counter4
0lstm_882_while_lstm_882_while_maximum_iterations
lstm_882_while_placeholder 
lstm_882_while_placeholder_1 
lstm_882_while_placeholder_2 
lstm_882_while_placeholder_30
,lstm_882_while_less_lstm_882_strided_slice_1G
Clstm_882_while_lstm_882_while_cond_5262657___redundant_placeholder0G
Clstm_882_while_lstm_882_while_cond_5262657___redundant_placeholder1G
Clstm_882_while_lstm_882_while_cond_5262657___redundant_placeholder2G
Clstm_882_while_lstm_882_while_cond_5262657___redundant_placeholder3
lstm_882_while_identity
?
lstm_882/while/LessLesslstm_882_while_placeholder,lstm_882_while_less_lstm_882_strided_slice_1*
T0*
_output_shapes
: ]
lstm_882/while/IdentityIdentitylstm_882/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_882_while_identity lstm_882/while/Identity:output:0*(
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
while_cond_5264360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5264360___redundant_placeholder05
1while_while_cond_5264360___redundant_placeholder15
1while_while_cond_5264360___redundant_placeholder25
1while_while_cond_5264360___redundant_placeholder3
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
while_cond_5263887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5263887___redundant_placeholder05
1while_while_cond_5263887___redundant_placeholder15
1while_while_cond_5263887___redundant_placeholder25
1while_while_cond_5263887___redundant_placeholder3
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5260008

inputs(
lstm_cell_882_5259926:	?(
lstm_cell_882_5259928:	d?$
lstm_cell_882_5259930:	?
identity??%lstm_cell_882/StatefulPartitionedCall?while;
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
%lstm_cell_882/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_882_5259926lstm_cell_882_5259928lstm_cell_882_5259930*
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5259925n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_882_5259926lstm_cell_882_5259928lstm_cell_882_5259930*
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
while_body_5259939*
condR
while_cond_5259938*K
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
NoOpNoOp&^lstm_cell_882/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_882/StatefulPartitionedCall%lstm_cell_882/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_5264030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5264030___redundant_placeholder05
1while_while_cond_5264030___redundant_placeholder15
1while_while_cond_5264030___redundant_placeholder25
1while_while_cond_5264030___redundant_placeholder3
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
/__inference_lstm_cell_883_layer_call_fn_5265025

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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5260421o
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
*__inference_lstm_884_layer_call_fn_5264269
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5260708o
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5265057

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

?
lstm_883_while_cond_5262369.
*lstm_883_while_lstm_883_while_loop_counter4
0lstm_883_while_lstm_883_while_maximum_iterations
lstm_883_while_placeholder 
lstm_883_while_placeholder_1 
lstm_883_while_placeholder_2 
lstm_883_while_placeholder_30
,lstm_883_while_less_lstm_883_strided_slice_1G
Clstm_883_while_lstm_883_while_cond_5262369___redundant_placeholder0G
Clstm_883_while_lstm_883_while_cond_5262369___redundant_placeholder1G
Clstm_883_while_lstm_883_while_cond_5262369___redundant_placeholder2G
Clstm_883_while_lstm_883_while_cond_5262369___redundant_placeholder3
lstm_883_while_identity
?
lstm_883/while/LessLesslstm_883_while_placeholder,lstm_883_while_less_lstm_883_strided_slice_1*
T0*
_output_shapes
: ]
lstm_883/while/IdentityIdentitylstm_883/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_883_while_identity lstm_883/while/Identity:output:0*(
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
while_body_5261123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_883_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_883_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_883_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_883_matmul_readvariableop_resource:	d?G
4while_lstm_cell_883_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_883_biasadd_readvariableop_resource:	???*while/lstm_cell_883/BiasAdd/ReadVariableOp?)while/lstm_cell_883/MatMul/ReadVariableOp?+while/lstm_cell_883/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_883/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_883_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_883/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_883_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_883/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_883/addAddV2$while/lstm_cell_883/MatMul:product:0&while/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_883_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_883/BiasAddBiasAddwhile/lstm_cell_883/add:z:02while/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_883/splitSplit,while/lstm_cell_883/split/split_dim:output:0$while/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_883/SigmoidSigmoid"while/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_1Sigmoid"while/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mulMul!while/lstm_cell_883/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_883/ReluRelu"while/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_1Mulwhile/lstm_cell_883/Sigmoid:y:0&while/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/add_1AddV2while/lstm_cell_883/mul:z:0while/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_2Sigmoid"while/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_883/Relu_1Reluwhile/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_2Mul!while/lstm_cell_883/Sigmoid_2:y:0(while/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_883/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_883/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_883/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_883/BiasAdd/ReadVariableOp*^while/lstm_cell_883/MatMul/ReadVariableOp,^while/lstm_cell_883/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_883_biasadd_readvariableop_resource5while_lstm_cell_883_biasadd_readvariableop_resource_0"n
4while_lstm_cell_883_matmul_1_readvariableop_resource6while_lstm_cell_883_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_883_matmul_readvariableop_resource4while_lstm_cell_883_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_883/BiasAdd/ReadVariableOp*while/lstm_cell_883/BiasAdd/ReadVariableOp2V
)while/lstm_cell_883/MatMul/ReadVariableOp)while/lstm_cell_883/MatMul/ReadVariableOp2Z
+while/lstm_cell_883/MatMul_1/ReadVariableOp+while/lstm_cell_883/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5264174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_883_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_883_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_883_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_883_matmul_readvariableop_resource:	d?G
4while_lstm_cell_883_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_883_biasadd_readvariableop_resource:	???*while/lstm_cell_883/BiasAdd/ReadVariableOp?)while/lstm_cell_883/MatMul/ReadVariableOp?+while/lstm_cell_883/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_883/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_883_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_883/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_883_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_883/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_883/addAddV2$while/lstm_cell_883/MatMul:product:0&while/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_883_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_883/BiasAddBiasAddwhile/lstm_cell_883/add:z:02while/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_883/splitSplit,while/lstm_cell_883/split/split_dim:output:0$while/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_883/SigmoidSigmoid"while/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_1Sigmoid"while/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mulMul!while/lstm_cell_883/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_883/ReluRelu"while/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_1Mulwhile/lstm_cell_883/Sigmoid:y:0&while/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/add_1AddV2while/lstm_cell_883/mul:z:0while/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_2Sigmoid"while/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_883/Relu_1Reluwhile/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_2Mul!while/lstm_cell_883/Sigmoid_2:y:0(while/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_883/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_883/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_883/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_883/BiasAdd/ReadVariableOp*^while/lstm_cell_883/MatMul/ReadVariableOp,^while/lstm_cell_883/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_883_biasadd_readvariableop_resource5while_lstm_cell_883_biasadd_readvariableop_resource_0"n
4while_lstm_cell_883_matmul_1_readvariableop_resource6while_lstm_cell_883_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_883_matmul_readvariableop_resource4while_lstm_cell_883_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_883/BiasAdd/ReadVariableOp*while/lstm_cell_883/BiasAdd/ReadVariableOp2V
)while/lstm_cell_883/MatMul/ReadVariableOp)while/lstm_cell_883/MatMul/ReadVariableOp2Z
+while/lstm_cell_883/MatMul_1/ReadVariableOp+while/lstm_cell_883/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_883_while_body_5262797.
*lstm_883_while_lstm_883_while_loop_counter4
0lstm_883_while_lstm_883_while_maximum_iterations
lstm_883_while_placeholder 
lstm_883_while_placeholder_1 
lstm_883_while_placeholder_2 
lstm_883_while_placeholder_3-
)lstm_883_while_lstm_883_strided_slice_1_0i
elstm_883_while_tensorarrayv2read_tensorlistgetitem_lstm_883_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_883_while_lstm_cell_883_matmul_readvariableop_resource_0:	d?R
?lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource_0:	2?M
>lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource_0:	?
lstm_883_while_identity
lstm_883_while_identity_1
lstm_883_while_identity_2
lstm_883_while_identity_3
lstm_883_while_identity_4
lstm_883_while_identity_5+
'lstm_883_while_lstm_883_strided_slice_1g
clstm_883_while_tensorarrayv2read_tensorlistgetitem_lstm_883_tensorarrayunstack_tensorlistfromtensorN
;lstm_883_while_lstm_cell_883_matmul_readvariableop_resource:	d?P
=lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource:	2?K
<lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource:	???3lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp?2lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp?4lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp?
@lstm_883/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_883/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_883_while_tensorarrayv2read_tensorlistgetitem_lstm_883_tensorarrayunstack_tensorlistfromtensor_0lstm_883_while_placeholderIlstm_883/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_883/while/lstm_cell_883/MatMul/ReadVariableOpReadVariableOp=lstm_883_while_lstm_cell_883_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_883/while/lstm_cell_883/MatMulMatMul9lstm_883/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp?lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_883/while/lstm_cell_883/MatMul_1MatMullstm_883_while_placeholder_2<lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_883/while/lstm_cell_883/addAddV2-lstm_883/while/lstm_cell_883/MatMul:product:0/lstm_883/while/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp>lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_883/while/lstm_cell_883/BiasAddBiasAdd$lstm_883/while/lstm_cell_883/add:z:0;lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_883/while/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_883/while/lstm_cell_883/splitSplit5lstm_883/while/lstm_cell_883/split/split_dim:output:0-lstm_883/while/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_883/while/lstm_cell_883/SigmoidSigmoid+lstm_883/while/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_883/while/lstm_cell_883/Sigmoid_1Sigmoid+lstm_883/while/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_883/while/lstm_cell_883/mulMul*lstm_883/while/lstm_cell_883/Sigmoid_1:y:0lstm_883_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_883/while/lstm_cell_883/ReluRelu+lstm_883/while/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_883/while/lstm_cell_883/mul_1Mul(lstm_883/while/lstm_cell_883/Sigmoid:y:0/lstm_883/while/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_883/while/lstm_cell_883/add_1AddV2$lstm_883/while/lstm_cell_883/mul:z:0&lstm_883/while/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_883/while/lstm_cell_883/Sigmoid_2Sigmoid+lstm_883/while/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_883/while/lstm_cell_883/Relu_1Relu&lstm_883/while/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_883/while/lstm_cell_883/mul_2Mul*lstm_883/while/lstm_cell_883/Sigmoid_2:y:01lstm_883/while/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_883/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_883_while_placeholder_1lstm_883_while_placeholder&lstm_883/while/lstm_cell_883/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_883/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_883/while/addAddV2lstm_883_while_placeholderlstm_883/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_883/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_883/while/add_1AddV2*lstm_883_while_lstm_883_while_loop_counterlstm_883/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_883/while/IdentityIdentitylstm_883/while/add_1:z:0^lstm_883/while/NoOp*
T0*
_output_shapes
: ?
lstm_883/while/Identity_1Identity0lstm_883_while_lstm_883_while_maximum_iterations^lstm_883/while/NoOp*
T0*
_output_shapes
: t
lstm_883/while/Identity_2Identitylstm_883/while/add:z:0^lstm_883/while/NoOp*
T0*
_output_shapes
: ?
lstm_883/while/Identity_3IdentityClstm_883/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_883/while/NoOp*
T0*
_output_shapes
: ?
lstm_883/while/Identity_4Identity&lstm_883/while/lstm_cell_883/mul_2:z:0^lstm_883/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_883/while/Identity_5Identity&lstm_883/while/lstm_cell_883/add_1:z:0^lstm_883/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_883/while/NoOpNoOp4^lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp3^lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp5^lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_883_while_identity lstm_883/while/Identity:output:0"?
lstm_883_while_identity_1"lstm_883/while/Identity_1:output:0"?
lstm_883_while_identity_2"lstm_883/while/Identity_2:output:0"?
lstm_883_while_identity_3"lstm_883/while/Identity_3:output:0"?
lstm_883_while_identity_4"lstm_883/while/Identity_4:output:0"?
lstm_883_while_identity_5"lstm_883/while/Identity_5:output:0"T
'lstm_883_while_lstm_883_strided_slice_1)lstm_883_while_lstm_883_strided_slice_1_0"~
<lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource>lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource_0"?
=lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource?lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource_0"|
;lstm_883_while_lstm_cell_883_matmul_readvariableop_resource=lstm_883_while_lstm_cell_883_matmul_readvariableop_resource_0"?
clstm_883_while_tensorarrayv2read_tensorlistgetitem_lstm_883_tensorarrayunstack_tensorlistfromtensorelstm_883_while_tensorarrayv2read_tensorlistgetitem_lstm_883_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp3lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp2h
2lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp2lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp2l
4lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp4lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_883_layer_call_fn_5263675

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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5261207s
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
while_body_5261489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_884_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_884_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_884_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_884_matmul_readvariableop_resource:2(F
4while_lstm_cell_884_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_884_biasadd_readvariableop_resource:(??*while/lstm_cell_884/BiasAdd/ReadVariableOp?)while/lstm_cell_884/MatMul/ReadVariableOp?+while/lstm_cell_884/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_884/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_884_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_884/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_884_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_884/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_884/addAddV2$while/lstm_cell_884/MatMul:product:0&while/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_884_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_884/BiasAddBiasAddwhile/lstm_cell_884/add:z:02while/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_884/splitSplit,while/lstm_cell_884/split/split_dim:output:0$while/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_884/SigmoidSigmoid"while/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_1Sigmoid"while/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mulMul!while/lstm_cell_884/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_884/ReluRelu"while/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_1Mulwhile/lstm_cell_884/Sigmoid:y:0&while/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/add_1AddV2while/lstm_cell_884/mul:z:0while/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_2Sigmoid"while/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_884/Relu_1Reluwhile/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_2Mul!while/lstm_cell_884/Sigmoid_2:y:0(while/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_884/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_884/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_884/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_884/BiasAdd/ReadVariableOp*^while/lstm_cell_884/MatMul/ReadVariableOp,^while/lstm_cell_884/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_884_biasadd_readvariableop_resource5while_lstm_cell_884_biasadd_readvariableop_resource_0"n
4while_lstm_cell_884_matmul_1_readvariableop_resource6while_lstm_cell_884_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_884_matmul_readvariableop_resource4while_lstm_cell_884_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_884/BiasAdd/ReadVariableOp*while/lstm_cell_884/BiasAdd/ReadVariableOp2V
)while/lstm_cell_884/MatMul/ReadVariableOp)while/lstm_cell_884/MatMul/ReadVariableOp2Z
+while/lstm_cell_884/MatMul_1/ReadVariableOp+while/lstm_cell_884/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_883_layer_call_fn_5263664
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5260549|
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5264258

inputs?
,lstm_cell_883_matmul_readvariableop_resource:	d?A
.lstm_cell_883_matmul_1_readvariableop_resource:	2?<
-lstm_cell_883_biasadd_readvariableop_resource:	?
identity??$lstm_cell_883/BiasAdd/ReadVariableOp?#lstm_cell_883/MatMul/ReadVariableOp?%lstm_cell_883/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_883/MatMul/ReadVariableOpReadVariableOp,lstm_cell_883_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_883/MatMulMatMulstrided_slice_2:output:0+lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_883_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_883/MatMul_1MatMulzeros:output:0-lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_883/addAddV2lstm_cell_883/MatMul:product:0 lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_883_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_883/BiasAddBiasAddlstm_cell_883/add:z:0,lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_883/splitSplit&lstm_cell_883/split/split_dim:output:0lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_883/SigmoidSigmoidlstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_1Sigmoidlstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_883/mulMullstm_cell_883/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_883/ReluRelulstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_1Mullstm_cell_883/Sigmoid:y:0 lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_883/add_1AddV2lstm_cell_883/mul:z:0lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_2Sigmoidlstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_883/Relu_1Relulstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_2Mullstm_cell_883/Sigmoid_2:y:0"lstm_cell_883/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_883_matmul_readvariableop_resource.lstm_cell_883_matmul_1_readvariableop_resource-lstm_cell_883_biasadd_readvariableop_resource*
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
while_body_5264174*
condR
while_cond_5264173*K
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
NoOpNoOp%^lstm_cell_883/BiasAdd/ReadVariableOp$^lstm_cell_883/MatMul/ReadVariableOp&^lstm_cell_883/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_883/BiasAdd/ReadVariableOp$lstm_cell_883/BiasAdd/ReadVariableOp2J
#lstm_cell_883/MatMul/ReadVariableOp#lstm_cell_883/MatMul/ReadVariableOp2N
%lstm_cell_883/MatMul_1/ReadVariableOp%lstm_cell_883/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_294_lstm_882_while_cond_5259489L
Hsequential_294_lstm_882_while_sequential_294_lstm_882_while_loop_counterR
Nsequential_294_lstm_882_while_sequential_294_lstm_882_while_maximum_iterations-
)sequential_294_lstm_882_while_placeholder/
+sequential_294_lstm_882_while_placeholder_1/
+sequential_294_lstm_882_while_placeholder_2/
+sequential_294_lstm_882_while_placeholder_3N
Jsequential_294_lstm_882_while_less_sequential_294_lstm_882_strided_slice_1e
asequential_294_lstm_882_while_sequential_294_lstm_882_while_cond_5259489___redundant_placeholder0e
asequential_294_lstm_882_while_sequential_294_lstm_882_while_cond_5259489___redundant_placeholder1e
asequential_294_lstm_882_while_sequential_294_lstm_882_while_cond_5259489___redundant_placeholder2e
asequential_294_lstm_882_while_sequential_294_lstm_882_while_cond_5259489___redundant_placeholder3*
&sequential_294_lstm_882_while_identity
?
"sequential_294/lstm_882/while/LessLess)sequential_294_lstm_882_while_placeholderJsequential_294_lstm_882_while_less_sequential_294_lstm_882_strided_slice_1*
T0*
_output_shapes
: {
&sequential_294/lstm_882/while/IdentityIdentity&sequential_294/lstm_882/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_294_lstm_882_while_identity/sequential_294/lstm_882/while/Identity:output:0*(
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5265155

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
while_body_5261273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_884_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_884_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_884_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_884_matmul_readvariableop_resource:2(F
4while_lstm_cell_884_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_884_biasadd_readvariableop_resource:(??*while/lstm_cell_884/BiasAdd/ReadVariableOp?)while/lstm_cell_884/MatMul/ReadVariableOp?+while/lstm_cell_884/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_884/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_884_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_884/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_884_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_884/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_884/addAddV2$while/lstm_cell_884/MatMul:product:0&while/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_884_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_884/BiasAddBiasAddwhile/lstm_cell_884/add:z:02while/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_884/splitSplit,while/lstm_cell_884/split/split_dim:output:0$while/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_884/SigmoidSigmoid"while/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_1Sigmoid"while/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mulMul!while/lstm_cell_884/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_884/ReluRelu"while/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_1Mulwhile/lstm_cell_884/Sigmoid:y:0&while/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/add_1AddV2while/lstm_cell_884/mul:z:0while/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_2Sigmoid"while/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_884/Relu_1Reluwhile/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_2Mul!while/lstm_cell_884/Sigmoid_2:y:0(while/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_884/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_884/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_884/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_884/BiasAdd/ReadVariableOp*^while/lstm_cell_884/MatMul/ReadVariableOp,^while/lstm_cell_884/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_884_biasadd_readvariableop_resource5while_lstm_cell_884_biasadd_readvariableop_resource_0"n
4while_lstm_cell_884_matmul_1_readvariableop_resource6while_lstm_cell_884_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_884_matmul_readvariableop_resource4while_lstm_cell_884_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_884/BiasAdd/ReadVariableOp*while/lstm_cell_884/BiasAdd/ReadVariableOp2V
)while/lstm_cell_884/MatMul/ReadVariableOp)while/lstm_cell_884/MatMul/ReadVariableOp2Z
+while/lstm_cell_884/MatMul_1/ReadVariableOp+while/lstm_cell_884/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5260830
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_884_5260854_0:2(/
while_lstm_cell_884_5260856_0:
(+
while_lstm_cell_884_5260858_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_884_5260854:2(-
while_lstm_cell_884_5260856:
()
while_lstm_cell_884_5260858:(??+while/lstm_cell_884/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_884/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_884_5260854_0while_lstm_cell_884_5260856_0while_lstm_cell_884_5260858_0*
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5260771?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_884/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_884/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_884/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_884/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_884_5260854while_lstm_cell_884_5260854_0"<
while_lstm_cell_884_5260856while_lstm_cell_884_5260856_0"<
while_lstm_cell_884_5260858while_lstm_cell_884_5260858_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_884/StatefulPartitionedCall+while/lstm_cell_884/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5260771

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
*__inference_lstm_884_layer_call_fn_5264280
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5260899o
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

?
0__inference_sequential_294_layer_call_fn_5262145

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
K__inference_sequential_294_layer_call_and_return_conditional_losses_5261382o
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
?K
?
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264445
inputs_0>
,lstm_cell_884_matmul_readvariableop_resource:2(@
.lstm_cell_884_matmul_1_readvariableop_resource:
(;
-lstm_cell_884_biasadd_readvariableop_resource:(
identity??$lstm_cell_884/BiasAdd/ReadVariableOp?#lstm_cell_884/MatMul/ReadVariableOp?%lstm_cell_884/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_884/MatMul/ReadVariableOpReadVariableOp,lstm_cell_884_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_884/MatMulMatMulstrided_slice_2:output:0+lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_884_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_884/MatMul_1MatMulzeros:output:0-lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_884/addAddV2lstm_cell_884/MatMul:product:0 lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_884_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_884/BiasAddBiasAddlstm_cell_884/add:z:0,lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_884/splitSplit&lstm_cell_884/split/split_dim:output:0lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_884/SigmoidSigmoidlstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_1Sigmoidlstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_884/mulMullstm_cell_884/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_884/ReluRelulstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_1Mullstm_cell_884/Sigmoid:y:0 lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_884/add_1AddV2lstm_cell_884/mul:z:0lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_2Sigmoidlstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_884/Relu_1Relulstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_2Mullstm_cell_884/Sigmoid_2:y:0"lstm_cell_884/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_884_matmul_readvariableop_resource.lstm_cell_884_matmul_1_readvariableop_resource-lstm_cell_884_biasadd_readvariableop_resource*
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
while_body_5264361*
condR
while_cond_5264360*K
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
NoOpNoOp%^lstm_cell_884/BiasAdd/ReadVariableOp$^lstm_cell_884/MatMul/ReadVariableOp&^lstm_cell_884/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_884/BiasAdd/ReadVariableOp$lstm_cell_884/BiasAdd/ReadVariableOp2J
#lstm_cell_884/MatMul/ReadVariableOp#lstm_cell_884/MatMul/ReadVariableOp2N
%lstm_cell_884/MatMul_1/ReadVariableOp%lstm_cell_884/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_294_layer_call_and_return_conditional_losses_5261971

inputs#
lstm_882_5261944:	?#
lstm_882_5261946:	d?
lstm_882_5261948:	?#
lstm_883_5261951:	d?#
lstm_883_5261953:	2?
lstm_883_5261955:	?"
lstm_884_5261958:2("
lstm_884_5261960:
(
lstm_884_5261962:(#
dense_294_5261965:

dense_294_5261967:
identity??!dense_294/StatefulPartitionedCall? lstm_882/StatefulPartitionedCall? lstm_883/StatefulPartitionedCall? lstm_884/StatefulPartitionedCall?
 lstm_882/StatefulPartitionedCallStatefulPartitionedCallinputslstm_882_5261944lstm_882_5261946lstm_882_5261948*
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5261903?
 lstm_883/StatefulPartitionedCallStatefulPartitionedCall)lstm_882/StatefulPartitionedCall:output:0lstm_883_5261951lstm_883_5261953lstm_883_5261955*
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5261738?
 lstm_884/StatefulPartitionedCallStatefulPartitionedCall)lstm_883/StatefulPartitionedCall:output:0lstm_884_5261958lstm_884_5261960lstm_884_5261962*
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5261573?
!dense_294/StatefulPartitionedCallStatefulPartitionedCall)lstm_884/StatefulPartitionedCall:output:0dense_294_5261965dense_294_5261967*
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
F__inference_dense_294_layer_call_and_return_conditional_losses_5261375y
IdentityIdentity*dense_294/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_294/StatefulPartitionedCall!^lstm_882/StatefulPartitionedCall!^lstm_883/StatefulPartitionedCall!^lstm_884/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_294/StatefulPartitionedCall!dense_294/StatefulPartitionedCall2D
 lstm_882/StatefulPartitionedCall lstm_882/StatefulPartitionedCall2D
 lstm_883/StatefulPartitionedCall lstm_883/StatefulPartitionedCall2D
 lstm_884/StatefulPartitionedCall lstm_884/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_883_layer_call_fn_5265008

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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5260275o
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
?
?
/__inference_lstm_cell_884_layer_call_fn_5265123

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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5260771o
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5265187

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
?
E__inference_lstm_883_layer_call_and_return_conditional_losses_5260358

inputs(
lstm_cell_883_5260276:	d?(
lstm_cell_883_5260278:	2?$
lstm_cell_883_5260280:	?
identity??%lstm_cell_883/StatefulPartitionedCall?while;
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
%lstm_cell_883/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_883_5260276lstm_cell_883_5260278lstm_cell_883_5260280*
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5260275n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_883_5260276lstm_cell_883_5260278lstm_cell_883_5260280*
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
while_body_5260289*
condR
while_cond_5260288*K
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
NoOpNoOp&^lstm_cell_883/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_883/StatefulPartitionedCall%lstm_cell_883/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?	
?
F__inference_dense_294_layer_call_and_return_conditional_losses_5261375

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
while_body_5259939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_882_5259963_0:	?0
while_lstm_cell_882_5259965_0:	d?,
while_lstm_cell_882_5259967_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_882_5259963:	?.
while_lstm_cell_882_5259965:	d?*
while_lstm_cell_882_5259967:	???+while/lstm_cell_882/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_882/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_882_5259963_0while_lstm_cell_882_5259965_0while_lstm_cell_882_5259967_0*
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5259925?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_882/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_882/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_882/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_882/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_882_5259963while_lstm_cell_882_5259963_0"<
while_lstm_cell_882_5259965while_lstm_cell_882_5259965_0"<
while_lstm_cell_882_5259967while_lstm_cell_882_5259967_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_882/StatefulPartitionedCall+while/lstm_cell_882/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_5261654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_883_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_883_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_883_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_883_matmul_readvariableop_resource:	d?G
4while_lstm_cell_883_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_883_biasadd_readvariableop_resource:	???*while/lstm_cell_883/BiasAdd/ReadVariableOp?)while/lstm_cell_883/MatMul/ReadVariableOp?+while/lstm_cell_883/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_883/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_883_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_883/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_883_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_883/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_883/addAddV2$while/lstm_cell_883/MatMul:product:0&while/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_883_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_883/BiasAddBiasAddwhile/lstm_cell_883/add:z:02while/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_883/splitSplit,while/lstm_cell_883/split/split_dim:output:0$while/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_883/SigmoidSigmoid"while/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_1Sigmoid"while/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mulMul!while/lstm_cell_883/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_883/ReluRelu"while/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_1Mulwhile/lstm_cell_883/Sigmoid:y:0&while/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/add_1AddV2while/lstm_cell_883/mul:z:0while/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_2Sigmoid"while/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_883/Relu_1Reluwhile/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_2Mul!while/lstm_cell_883/Sigmoid_2:y:0(while/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_883/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_883/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_883/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_883/BiasAdd/ReadVariableOp*^while/lstm_cell_883/MatMul/ReadVariableOp,^while/lstm_cell_883/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_883_biasadd_readvariableop_resource5while_lstm_cell_883_biasadd_readvariableop_resource_0"n
4while_lstm_cell_883_matmul_1_readvariableop_resource6while_lstm_cell_883_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_883_matmul_readvariableop_resource4while_lstm_cell_883_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_883/BiasAdd/ReadVariableOp*while/lstm_cell_883/BiasAdd/ReadVariableOp2V
)while/lstm_cell_883/MatMul/ReadVariableOp)while/lstm_cell_883/MatMul/ReadVariableOp2Z
+while/lstm_cell_883/MatMul_1/ReadVariableOp+while/lstm_cell_883/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_884_layer_call_fn_5264302

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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5261573o
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5260275

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

?
0__inference_sequential_294_layer_call_fn_5262023
lstm_882_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_882_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_294_layer_call_and_return_conditional_losses_5261971o
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
_user_specified_namelstm_882_input
?T
?
*sequential_294_lstm_882_while_body_5259490L
Hsequential_294_lstm_882_while_sequential_294_lstm_882_while_loop_counterR
Nsequential_294_lstm_882_while_sequential_294_lstm_882_while_maximum_iterations-
)sequential_294_lstm_882_while_placeholder/
+sequential_294_lstm_882_while_placeholder_1/
+sequential_294_lstm_882_while_placeholder_2/
+sequential_294_lstm_882_while_placeholder_3K
Gsequential_294_lstm_882_while_sequential_294_lstm_882_strided_slice_1_0?
?sequential_294_lstm_882_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_882_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_294_lstm_882_while_lstm_cell_882_matmul_readvariableop_resource_0:	?a
Nsequential_294_lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource_0:	d?\
Msequential_294_lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource_0:	?*
&sequential_294_lstm_882_while_identity,
(sequential_294_lstm_882_while_identity_1,
(sequential_294_lstm_882_while_identity_2,
(sequential_294_lstm_882_while_identity_3,
(sequential_294_lstm_882_while_identity_4,
(sequential_294_lstm_882_while_identity_5I
Esequential_294_lstm_882_while_sequential_294_lstm_882_strided_slice_1?
?sequential_294_lstm_882_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_882_tensorarrayunstack_tensorlistfromtensor]
Jsequential_294_lstm_882_while_lstm_cell_882_matmul_readvariableop_resource:	?_
Lsequential_294_lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource:	d?Z
Ksequential_294_lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource:	???Bsequential_294/lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp?Asequential_294/lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp?Csequential_294/lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp?
Osequential_294/lstm_882/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_294/lstm_882/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_294_lstm_882_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_882_tensorarrayunstack_tensorlistfromtensor_0)sequential_294_lstm_882_while_placeholderXsequential_294/lstm_882/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_294/lstm_882/while/lstm_cell_882/MatMul/ReadVariableOpReadVariableOpLsequential_294_lstm_882_while_lstm_cell_882_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_294/lstm_882/while/lstm_cell_882/MatMulMatMulHsequential_294/lstm_882/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_294/lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_294/lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOpNsequential_294_lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_294/lstm_882/while/lstm_cell_882/MatMul_1MatMul+sequential_294_lstm_882_while_placeholder_2Ksequential_294/lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_294/lstm_882/while/lstm_cell_882/addAddV2<sequential_294/lstm_882/while/lstm_cell_882/MatMul:product:0>sequential_294/lstm_882/while/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_294/lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOpMsequential_294_lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_294/lstm_882/while/lstm_cell_882/BiasAddBiasAdd3sequential_294/lstm_882/while/lstm_cell_882/add:z:0Jsequential_294/lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_294/lstm_882/while/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_294/lstm_882/while/lstm_cell_882/splitSplitDsequential_294/lstm_882/while/lstm_cell_882/split/split_dim:output:0<sequential_294/lstm_882/while/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_294/lstm_882/while/lstm_cell_882/SigmoidSigmoid:sequential_294/lstm_882/while/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_294/lstm_882/while/lstm_cell_882/Sigmoid_1Sigmoid:sequential_294/lstm_882/while/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_294/lstm_882/while/lstm_cell_882/mulMul9sequential_294/lstm_882/while/lstm_cell_882/Sigmoid_1:y:0+sequential_294_lstm_882_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_294/lstm_882/while/lstm_cell_882/ReluRelu:sequential_294/lstm_882/while/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_294/lstm_882/while/lstm_cell_882/mul_1Mul7sequential_294/lstm_882/while/lstm_cell_882/Sigmoid:y:0>sequential_294/lstm_882/while/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_294/lstm_882/while/lstm_cell_882/add_1AddV23sequential_294/lstm_882/while/lstm_cell_882/mul:z:05sequential_294/lstm_882/while/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_294/lstm_882/while/lstm_cell_882/Sigmoid_2Sigmoid:sequential_294/lstm_882/while/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_294/lstm_882/while/lstm_cell_882/Relu_1Relu5sequential_294/lstm_882/while/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_294/lstm_882/while/lstm_cell_882/mul_2Mul9sequential_294/lstm_882/while/lstm_cell_882/Sigmoid_2:y:0@sequential_294/lstm_882/while/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_294/lstm_882/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_294_lstm_882_while_placeholder_1)sequential_294_lstm_882_while_placeholder5sequential_294/lstm_882/while/lstm_cell_882/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_294/lstm_882/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_294/lstm_882/while/addAddV2)sequential_294_lstm_882_while_placeholder,sequential_294/lstm_882/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_294/lstm_882/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_294/lstm_882/while/add_1AddV2Hsequential_294_lstm_882_while_sequential_294_lstm_882_while_loop_counter.sequential_294/lstm_882/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_294/lstm_882/while/IdentityIdentity'sequential_294/lstm_882/while/add_1:z:0#^sequential_294/lstm_882/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_882/while/Identity_1IdentityNsequential_294_lstm_882_while_sequential_294_lstm_882_while_maximum_iterations#^sequential_294/lstm_882/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_882/while/Identity_2Identity%sequential_294/lstm_882/while/add:z:0#^sequential_294/lstm_882/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_882/while/Identity_3IdentityRsequential_294/lstm_882/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_294/lstm_882/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_882/while/Identity_4Identity5sequential_294/lstm_882/while/lstm_cell_882/mul_2:z:0#^sequential_294/lstm_882/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_294/lstm_882/while/Identity_5Identity5sequential_294/lstm_882/while/lstm_cell_882/add_1:z:0#^sequential_294/lstm_882/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_294/lstm_882/while/NoOpNoOpC^sequential_294/lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOpB^sequential_294/lstm_882/while/lstm_cell_882/MatMul/ReadVariableOpD^sequential_294/lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_294_lstm_882_while_identity/sequential_294/lstm_882/while/Identity:output:0"]
(sequential_294_lstm_882_while_identity_11sequential_294/lstm_882/while/Identity_1:output:0"]
(sequential_294_lstm_882_while_identity_21sequential_294/lstm_882/while/Identity_2:output:0"]
(sequential_294_lstm_882_while_identity_31sequential_294/lstm_882/while/Identity_3:output:0"]
(sequential_294_lstm_882_while_identity_41sequential_294/lstm_882/while/Identity_4:output:0"]
(sequential_294_lstm_882_while_identity_51sequential_294/lstm_882/while/Identity_5:output:0"?
Ksequential_294_lstm_882_while_lstm_cell_882_biasadd_readvariableop_resourceMsequential_294_lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource_0"?
Lsequential_294_lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resourceNsequential_294_lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource_0"?
Jsequential_294_lstm_882_while_lstm_cell_882_matmul_readvariableop_resourceLsequential_294_lstm_882_while_lstm_cell_882_matmul_readvariableop_resource_0"?
Esequential_294_lstm_882_while_sequential_294_lstm_882_strided_slice_1Gsequential_294_lstm_882_while_sequential_294_lstm_882_strided_slice_1_0"?
?sequential_294_lstm_882_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_882_tensorarrayunstack_tensorlistfromtensor?sequential_294_lstm_882_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_882_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_294/lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOpBsequential_294/lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp2?
Asequential_294/lstm_882/while/lstm_cell_882/MatMul/ReadVariableOpAsequential_294/lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp2?
Csequential_294/lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOpCsequential_294/lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263213
inputs_0?
,lstm_cell_882_matmul_readvariableop_resource:	?A
.lstm_cell_882_matmul_1_readvariableop_resource:	d?<
-lstm_cell_882_biasadd_readvariableop_resource:	?
identity??$lstm_cell_882/BiasAdd/ReadVariableOp?#lstm_cell_882/MatMul/ReadVariableOp?%lstm_cell_882/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_882/MatMul/ReadVariableOpReadVariableOp,lstm_cell_882_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_882/MatMulMatMulstrided_slice_2:output:0+lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_882_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_882/MatMul_1MatMulzeros:output:0-lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_882/addAddV2lstm_cell_882/MatMul:product:0 lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_882_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_882/BiasAddBiasAddlstm_cell_882/add:z:0,lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_882/splitSplit&lstm_cell_882/split/split_dim:output:0lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_882/SigmoidSigmoidlstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_1Sigmoidlstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_882/mulMullstm_cell_882/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_882/ReluRelulstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_1Mullstm_cell_882/Sigmoid:y:0 lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_882/add_1AddV2lstm_cell_882/mul:z:0lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_2Sigmoidlstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_882/Relu_1Relulstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_2Mullstm_cell_882/Sigmoid_2:y:0"lstm_cell_882/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_882_matmul_readvariableop_resource.lstm_cell_882_matmul_1_readvariableop_resource-lstm_cell_882_biasadd_readvariableop_resource*
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
while_body_5263129*
condR
while_cond_5263128*K
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
NoOpNoOp%^lstm_cell_882/BiasAdd/ReadVariableOp$^lstm_cell_882/MatMul/ReadVariableOp&^lstm_cell_882/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_882/BiasAdd/ReadVariableOp$lstm_cell_882/BiasAdd/ReadVariableOp2J
#lstm_cell_882/MatMul/ReadVariableOp#lstm_cell_882/MatMul/ReadVariableOp2N
%lstm_cell_882/MatMul_1/ReadVariableOp%lstm_cell_882/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_882_layer_call_and_return_conditional_losses_5261903

inputs?
,lstm_cell_882_matmul_readvariableop_resource:	?A
.lstm_cell_882_matmul_1_readvariableop_resource:	d?<
-lstm_cell_882_biasadd_readvariableop_resource:	?
identity??$lstm_cell_882/BiasAdd/ReadVariableOp?#lstm_cell_882/MatMul/ReadVariableOp?%lstm_cell_882/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_882/MatMul/ReadVariableOpReadVariableOp,lstm_cell_882_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_882/MatMulMatMulstrided_slice_2:output:0+lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_882_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_882/MatMul_1MatMulzeros:output:0-lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_882/addAddV2lstm_cell_882/MatMul:product:0 lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_882_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_882/BiasAddBiasAddlstm_cell_882/add:z:0,lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_882/splitSplit&lstm_cell_882/split/split_dim:output:0lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_882/SigmoidSigmoidlstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_1Sigmoidlstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_882/mulMullstm_cell_882/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_882/ReluRelulstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_1Mullstm_cell_882/Sigmoid:y:0 lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_882/add_1AddV2lstm_cell_882/mul:z:0lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_2Sigmoidlstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_882/Relu_1Relulstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_2Mullstm_cell_882/Sigmoid_2:y:0"lstm_cell_882/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_882_matmul_readvariableop_resource.lstm_cell_882_matmul_1_readvariableop_resource-lstm_cell_882_biasadd_readvariableop_resource*
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
while_body_5261819*
condR
while_cond_5261818*K
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
NoOpNoOp%^lstm_cell_882/BiasAdd/ReadVariableOp$^lstm_cell_882/MatMul/ReadVariableOp&^lstm_cell_882/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_882/BiasAdd/ReadVariableOp$lstm_cell_882/BiasAdd/ReadVariableOp2J
#lstm_cell_882/MatMul/ReadVariableOp#lstm_cell_882/MatMul/ReadVariableOp2N
%lstm_cell_882/MatMul_1/ReadVariableOp%lstm_cell_882/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5261272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5261272___redundant_placeholder05
1while_while_cond_5261272___redundant_placeholder15
1while_while_cond_5261272___redundant_placeholder25
1while_while_cond_5261272___redundant_placeholder3
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
K__inference_sequential_294_layer_call_and_return_conditional_losses_5263026

inputsH
5lstm_882_lstm_cell_882_matmul_readvariableop_resource:	?J
7lstm_882_lstm_cell_882_matmul_1_readvariableop_resource:	d?E
6lstm_882_lstm_cell_882_biasadd_readvariableop_resource:	?H
5lstm_883_lstm_cell_883_matmul_readvariableop_resource:	d?J
7lstm_883_lstm_cell_883_matmul_1_readvariableop_resource:	2?E
6lstm_883_lstm_cell_883_biasadd_readvariableop_resource:	?G
5lstm_884_lstm_cell_884_matmul_readvariableop_resource:2(I
7lstm_884_lstm_cell_884_matmul_1_readvariableop_resource:
(D
6lstm_884_lstm_cell_884_biasadd_readvariableop_resource:(:
(dense_294_matmul_readvariableop_resource:
7
)dense_294_biasadd_readvariableop_resource:
identity?? dense_294/BiasAdd/ReadVariableOp?dense_294/MatMul/ReadVariableOp?-lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp?,lstm_882/lstm_cell_882/MatMul/ReadVariableOp?.lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp?lstm_882/while?-lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp?,lstm_883/lstm_cell_883/MatMul/ReadVariableOp?.lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp?lstm_883/while?-lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp?,lstm_884/lstm_cell_884/MatMul/ReadVariableOp?.lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp?lstm_884/whileD
lstm_882/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_882/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_882/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_882/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_882/strided_sliceStridedSlicelstm_882/Shape:output:0%lstm_882/strided_slice/stack:output:0'lstm_882/strided_slice/stack_1:output:0'lstm_882/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_882/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_882/zeros/packedPacklstm_882/strided_slice:output:0 lstm_882/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_882/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_882/zerosFilllstm_882/zeros/packed:output:0lstm_882/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_882/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_882/zeros_1/packedPacklstm_882/strided_slice:output:0"lstm_882/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_882/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_882/zeros_1Fill lstm_882/zeros_1/packed:output:0lstm_882/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_882/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_882/transpose	Transposeinputs lstm_882/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_882/Shape_1Shapelstm_882/transpose:y:0*
T0*
_output_shapes
:h
lstm_882/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_882/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_882/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_882/strided_slice_1StridedSlicelstm_882/Shape_1:output:0'lstm_882/strided_slice_1/stack:output:0)lstm_882/strided_slice_1/stack_1:output:0)lstm_882/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_882/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_882/TensorArrayV2TensorListReserve-lstm_882/TensorArrayV2/element_shape:output:0!lstm_882/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_882/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_882/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_882/transpose:y:0Glstm_882/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_882/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_882/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_882/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_882/strided_slice_2StridedSlicelstm_882/transpose:y:0'lstm_882/strided_slice_2/stack:output:0)lstm_882/strided_slice_2/stack_1:output:0)lstm_882/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_882/lstm_cell_882/MatMul/ReadVariableOpReadVariableOp5lstm_882_lstm_cell_882_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_882/lstm_cell_882/MatMulMatMul!lstm_882/strided_slice_2:output:04lstm_882/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_882/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp7lstm_882_lstm_cell_882_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_882/lstm_cell_882/MatMul_1MatMullstm_882/zeros:output:06lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_882/lstm_cell_882/addAddV2'lstm_882/lstm_cell_882/MatMul:product:0)lstm_882/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_882/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp6lstm_882_lstm_cell_882_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_882/lstm_cell_882/BiasAddBiasAddlstm_882/lstm_cell_882/add:z:05lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_882/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_882/lstm_cell_882/splitSplit/lstm_882/lstm_cell_882/split/split_dim:output:0'lstm_882/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_882/lstm_cell_882/SigmoidSigmoid%lstm_882/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_882/lstm_cell_882/Sigmoid_1Sigmoid%lstm_882/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_882/lstm_cell_882/mulMul$lstm_882/lstm_cell_882/Sigmoid_1:y:0lstm_882/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_882/lstm_cell_882/ReluRelu%lstm_882/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_882/lstm_cell_882/mul_1Mul"lstm_882/lstm_cell_882/Sigmoid:y:0)lstm_882/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_882/lstm_cell_882/add_1AddV2lstm_882/lstm_cell_882/mul:z:0 lstm_882/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_882/lstm_cell_882/Sigmoid_2Sigmoid%lstm_882/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_882/lstm_cell_882/Relu_1Relu lstm_882/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_882/lstm_cell_882/mul_2Mul$lstm_882/lstm_cell_882/Sigmoid_2:y:0+lstm_882/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_882/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_882/TensorArrayV2_1TensorListReserve/lstm_882/TensorArrayV2_1/element_shape:output:0!lstm_882/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_882/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_882/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_882/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_882/whileWhile$lstm_882/while/loop_counter:output:0*lstm_882/while/maximum_iterations:output:0lstm_882/time:output:0!lstm_882/TensorArrayV2_1:handle:0lstm_882/zeros:output:0lstm_882/zeros_1:output:0!lstm_882/strided_slice_1:output:0@lstm_882/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_882_lstm_cell_882_matmul_readvariableop_resource7lstm_882_lstm_cell_882_matmul_1_readvariableop_resource6lstm_882_lstm_cell_882_biasadd_readvariableop_resource*
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
lstm_882_while_body_5262658*'
condR
lstm_882_while_cond_5262657*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_882/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_882/TensorArrayV2Stack/TensorListStackTensorListStacklstm_882/while:output:3Blstm_882/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_882/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_882/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_882/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_882/strided_slice_3StridedSlice4lstm_882/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_882/strided_slice_3/stack:output:0)lstm_882/strided_slice_3/stack_1:output:0)lstm_882/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_882/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_882/transpose_1	Transpose4lstm_882/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_882/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_882/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_883/ShapeShapelstm_882/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_883/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_883/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_883/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_883/strided_sliceStridedSlicelstm_883/Shape:output:0%lstm_883/strided_slice/stack:output:0'lstm_883/strided_slice/stack_1:output:0'lstm_883/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_883/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_883/zeros/packedPacklstm_883/strided_slice:output:0 lstm_883/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_883/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_883/zerosFilllstm_883/zeros/packed:output:0lstm_883/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_883/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_883/zeros_1/packedPacklstm_883/strided_slice:output:0"lstm_883/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_883/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_883/zeros_1Fill lstm_883/zeros_1/packed:output:0lstm_883/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_883/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_883/transpose	Transposelstm_882/transpose_1:y:0 lstm_883/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_883/Shape_1Shapelstm_883/transpose:y:0*
T0*
_output_shapes
:h
lstm_883/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_883/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_883/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_883/strided_slice_1StridedSlicelstm_883/Shape_1:output:0'lstm_883/strided_slice_1/stack:output:0)lstm_883/strided_slice_1/stack_1:output:0)lstm_883/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_883/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_883/TensorArrayV2TensorListReserve-lstm_883/TensorArrayV2/element_shape:output:0!lstm_883/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_883/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_883/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_883/transpose:y:0Glstm_883/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_883/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_883/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_883/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_883/strided_slice_2StridedSlicelstm_883/transpose:y:0'lstm_883/strided_slice_2/stack:output:0)lstm_883/strided_slice_2/stack_1:output:0)lstm_883/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_883/lstm_cell_883/MatMul/ReadVariableOpReadVariableOp5lstm_883_lstm_cell_883_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_883/lstm_cell_883/MatMulMatMul!lstm_883/strided_slice_2:output:04lstm_883/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_883/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp7lstm_883_lstm_cell_883_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_883/lstm_cell_883/MatMul_1MatMullstm_883/zeros:output:06lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_883/lstm_cell_883/addAddV2'lstm_883/lstm_cell_883/MatMul:product:0)lstm_883/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_883/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp6lstm_883_lstm_cell_883_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_883/lstm_cell_883/BiasAddBiasAddlstm_883/lstm_cell_883/add:z:05lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_883/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_883/lstm_cell_883/splitSplit/lstm_883/lstm_cell_883/split/split_dim:output:0'lstm_883/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_883/lstm_cell_883/SigmoidSigmoid%lstm_883/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_883/lstm_cell_883/Sigmoid_1Sigmoid%lstm_883/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_883/lstm_cell_883/mulMul$lstm_883/lstm_cell_883/Sigmoid_1:y:0lstm_883/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_883/lstm_cell_883/ReluRelu%lstm_883/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_883/lstm_cell_883/mul_1Mul"lstm_883/lstm_cell_883/Sigmoid:y:0)lstm_883/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_883/lstm_cell_883/add_1AddV2lstm_883/lstm_cell_883/mul:z:0 lstm_883/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_883/lstm_cell_883/Sigmoid_2Sigmoid%lstm_883/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_883/lstm_cell_883/Relu_1Relu lstm_883/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_883/lstm_cell_883/mul_2Mul$lstm_883/lstm_cell_883/Sigmoid_2:y:0+lstm_883/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_883/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_883/TensorArrayV2_1TensorListReserve/lstm_883/TensorArrayV2_1/element_shape:output:0!lstm_883/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_883/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_883/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_883/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_883/whileWhile$lstm_883/while/loop_counter:output:0*lstm_883/while/maximum_iterations:output:0lstm_883/time:output:0!lstm_883/TensorArrayV2_1:handle:0lstm_883/zeros:output:0lstm_883/zeros_1:output:0!lstm_883/strided_slice_1:output:0@lstm_883/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_883_lstm_cell_883_matmul_readvariableop_resource7lstm_883_lstm_cell_883_matmul_1_readvariableop_resource6lstm_883_lstm_cell_883_biasadd_readvariableop_resource*
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
lstm_883_while_body_5262797*'
condR
lstm_883_while_cond_5262796*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_883/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_883/TensorArrayV2Stack/TensorListStackTensorListStacklstm_883/while:output:3Blstm_883/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_883/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_883/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_883/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_883/strided_slice_3StridedSlice4lstm_883/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_883/strided_slice_3/stack:output:0)lstm_883/strided_slice_3/stack_1:output:0)lstm_883/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_883/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_883/transpose_1	Transpose4lstm_883/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_883/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_883/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_884/ShapeShapelstm_883/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_884/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_884/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_884/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_884/strided_sliceStridedSlicelstm_884/Shape:output:0%lstm_884/strided_slice/stack:output:0'lstm_884/strided_slice/stack_1:output:0'lstm_884/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_884/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_884/zeros/packedPacklstm_884/strided_slice:output:0 lstm_884/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_884/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_884/zerosFilllstm_884/zeros/packed:output:0lstm_884/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_884/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_884/zeros_1/packedPacklstm_884/strided_slice:output:0"lstm_884/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_884/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_884/zeros_1Fill lstm_884/zeros_1/packed:output:0lstm_884/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_884/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_884/transpose	Transposelstm_883/transpose_1:y:0 lstm_884/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_884/Shape_1Shapelstm_884/transpose:y:0*
T0*
_output_shapes
:h
lstm_884/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_884/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_884/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_884/strided_slice_1StridedSlicelstm_884/Shape_1:output:0'lstm_884/strided_slice_1/stack:output:0)lstm_884/strided_slice_1/stack_1:output:0)lstm_884/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_884/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_884/TensorArrayV2TensorListReserve-lstm_884/TensorArrayV2/element_shape:output:0!lstm_884/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_884/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_884/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_884/transpose:y:0Glstm_884/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_884/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_884/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_884/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_884/strided_slice_2StridedSlicelstm_884/transpose:y:0'lstm_884/strided_slice_2/stack:output:0)lstm_884/strided_slice_2/stack_1:output:0)lstm_884/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_884/lstm_cell_884/MatMul/ReadVariableOpReadVariableOp5lstm_884_lstm_cell_884_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_884/lstm_cell_884/MatMulMatMul!lstm_884/strided_slice_2:output:04lstm_884/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_884/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp7lstm_884_lstm_cell_884_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_884/lstm_cell_884/MatMul_1MatMullstm_884/zeros:output:06lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_884/lstm_cell_884/addAddV2'lstm_884/lstm_cell_884/MatMul:product:0)lstm_884/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_884/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp6lstm_884_lstm_cell_884_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_884/lstm_cell_884/BiasAddBiasAddlstm_884/lstm_cell_884/add:z:05lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_884/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_884/lstm_cell_884/splitSplit/lstm_884/lstm_cell_884/split/split_dim:output:0'lstm_884/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_884/lstm_cell_884/SigmoidSigmoid%lstm_884/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_884/lstm_cell_884/Sigmoid_1Sigmoid%lstm_884/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_884/lstm_cell_884/mulMul$lstm_884/lstm_cell_884/Sigmoid_1:y:0lstm_884/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_884/lstm_cell_884/ReluRelu%lstm_884/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_884/lstm_cell_884/mul_1Mul"lstm_884/lstm_cell_884/Sigmoid:y:0)lstm_884/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_884/lstm_cell_884/add_1AddV2lstm_884/lstm_cell_884/mul:z:0 lstm_884/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_884/lstm_cell_884/Sigmoid_2Sigmoid%lstm_884/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_884/lstm_cell_884/Relu_1Relu lstm_884/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_884/lstm_cell_884/mul_2Mul$lstm_884/lstm_cell_884/Sigmoid_2:y:0+lstm_884/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_884/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_884/TensorArrayV2_1TensorListReserve/lstm_884/TensorArrayV2_1/element_shape:output:0!lstm_884/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_884/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_884/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_884/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_884/whileWhile$lstm_884/while/loop_counter:output:0*lstm_884/while/maximum_iterations:output:0lstm_884/time:output:0!lstm_884/TensorArrayV2_1:handle:0lstm_884/zeros:output:0lstm_884/zeros_1:output:0!lstm_884/strided_slice_1:output:0@lstm_884/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_884_lstm_cell_884_matmul_readvariableop_resource7lstm_884_lstm_cell_884_matmul_1_readvariableop_resource6lstm_884_lstm_cell_884_biasadd_readvariableop_resource*
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
lstm_884_while_body_5262936*'
condR
lstm_884_while_cond_5262935*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_884/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_884/TensorArrayV2Stack/TensorListStackTensorListStacklstm_884/while:output:3Blstm_884/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_884/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_884/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_884/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_884/strided_slice_3StridedSlice4lstm_884/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_884/strided_slice_3/stack:output:0)lstm_884/strided_slice_3/stack_1:output:0)lstm_884/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_884/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_884/transpose_1	Transpose4lstm_884/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_884/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_884/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_294/MatMul/ReadVariableOpReadVariableOp(dense_294_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_294/MatMulMatMul!lstm_884/strided_slice_3:output:0'dense_294/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_294/BiasAdd/ReadVariableOpReadVariableOp)dense_294_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_294/BiasAddBiasAdddense_294/MatMul:product:0(dense_294/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_294/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_294/BiasAdd/ReadVariableOp ^dense_294/MatMul/ReadVariableOp.^lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp-^lstm_882/lstm_cell_882/MatMul/ReadVariableOp/^lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp^lstm_882/while.^lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp-^lstm_883/lstm_cell_883/MatMul/ReadVariableOp/^lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp^lstm_883/while.^lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp-^lstm_884/lstm_cell_884/MatMul/ReadVariableOp/^lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp^lstm_884/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_294/BiasAdd/ReadVariableOp dense_294/BiasAdd/ReadVariableOp2B
dense_294/MatMul/ReadVariableOpdense_294/MatMul/ReadVariableOp2^
-lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp-lstm_882/lstm_cell_882/BiasAdd/ReadVariableOp2\
,lstm_882/lstm_cell_882/MatMul/ReadVariableOp,lstm_882/lstm_cell_882/MatMul/ReadVariableOp2`
.lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp.lstm_882/lstm_cell_882/MatMul_1/ReadVariableOp2 
lstm_882/whilelstm_882/while2^
-lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp-lstm_883/lstm_cell_883/BiasAdd/ReadVariableOp2\
,lstm_883/lstm_cell_883/MatMul/ReadVariableOp,lstm_883/lstm_cell_883/MatMul/ReadVariableOp2`
.lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp.lstm_883/lstm_cell_883/MatMul_1/ReadVariableOp2 
lstm_883/whilelstm_883/while2^
-lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp-lstm_884/lstm_cell_884/BiasAdd/ReadVariableOp2\
,lstm_884/lstm_cell_884/MatMul/ReadVariableOp,lstm_884/lstm_cell_884/MatMul/ReadVariableOp2`
.lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp.lstm_884/lstm_cell_884/MatMul_1/ReadVariableOp2 
lstm_884/whilelstm_884/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_882_layer_call_fn_5264927

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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5260071o
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264731

inputs>
,lstm_cell_884_matmul_readvariableop_resource:2(@
.lstm_cell_884_matmul_1_readvariableop_resource:
(;
-lstm_cell_884_biasadd_readvariableop_resource:(
identity??$lstm_cell_884/BiasAdd/ReadVariableOp?#lstm_cell_884/MatMul/ReadVariableOp?%lstm_cell_884/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_884/MatMul/ReadVariableOpReadVariableOp,lstm_cell_884_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_884/MatMulMatMulstrided_slice_2:output:0+lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_884_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_884/MatMul_1MatMulzeros:output:0-lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_884/addAddV2lstm_cell_884/MatMul:product:0 lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_884_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_884/BiasAddBiasAddlstm_cell_884/add:z:0,lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_884/splitSplit&lstm_cell_884/split/split_dim:output:0lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_884/SigmoidSigmoidlstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_1Sigmoidlstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_884/mulMullstm_cell_884/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_884/ReluRelulstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_1Mullstm_cell_884/Sigmoid:y:0 lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_884/add_1AddV2lstm_cell_884/mul:z:0lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_2Sigmoidlstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_884/Relu_1Relulstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_2Mullstm_cell_884/Sigmoid_2:y:0"lstm_cell_884/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_884_matmul_readvariableop_resource.lstm_cell_884_matmul_1_readvariableop_resource-lstm_cell_884_biasadd_readvariableop_resource*
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
while_body_5264647*
condR
while_cond_5264646*K
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
NoOpNoOp%^lstm_cell_884/BiasAdd/ReadVariableOp$^lstm_cell_884/MatMul/ReadVariableOp&^lstm_cell_884/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_884/BiasAdd/ReadVariableOp$lstm_cell_884/BiasAdd/ReadVariableOp2J
#lstm_cell_884/MatMul/ReadVariableOp#lstm_cell_884/MatMul/ReadVariableOp2N
%lstm_cell_884/MatMul_1/ReadVariableOp%lstm_cell_884/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_294_lstm_884_while_body_5259768L
Hsequential_294_lstm_884_while_sequential_294_lstm_884_while_loop_counterR
Nsequential_294_lstm_884_while_sequential_294_lstm_884_while_maximum_iterations-
)sequential_294_lstm_884_while_placeholder/
+sequential_294_lstm_884_while_placeholder_1/
+sequential_294_lstm_884_while_placeholder_2/
+sequential_294_lstm_884_while_placeholder_3K
Gsequential_294_lstm_884_while_sequential_294_lstm_884_strided_slice_1_0?
?sequential_294_lstm_884_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_884_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_294_lstm_884_while_lstm_cell_884_matmul_readvariableop_resource_0:2(`
Nsequential_294_lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource_0:
([
Msequential_294_lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource_0:(*
&sequential_294_lstm_884_while_identity,
(sequential_294_lstm_884_while_identity_1,
(sequential_294_lstm_884_while_identity_2,
(sequential_294_lstm_884_while_identity_3,
(sequential_294_lstm_884_while_identity_4,
(sequential_294_lstm_884_while_identity_5I
Esequential_294_lstm_884_while_sequential_294_lstm_884_strided_slice_1?
?sequential_294_lstm_884_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_884_tensorarrayunstack_tensorlistfromtensor\
Jsequential_294_lstm_884_while_lstm_cell_884_matmul_readvariableop_resource:2(^
Lsequential_294_lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource:
(Y
Ksequential_294_lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource:(??Bsequential_294/lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp?Asequential_294/lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp?Csequential_294/lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp?
Osequential_294/lstm_884/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_294/lstm_884/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_294_lstm_884_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_884_tensorarrayunstack_tensorlistfromtensor_0)sequential_294_lstm_884_while_placeholderXsequential_294/lstm_884/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_294/lstm_884/while/lstm_cell_884/MatMul/ReadVariableOpReadVariableOpLsequential_294_lstm_884_while_lstm_cell_884_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_294/lstm_884/while/lstm_cell_884/MatMulMatMulHsequential_294/lstm_884/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_294/lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_294/lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOpNsequential_294_lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_294/lstm_884/while/lstm_cell_884/MatMul_1MatMul+sequential_294_lstm_884_while_placeholder_2Ksequential_294/lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_294/lstm_884/while/lstm_cell_884/addAddV2<sequential_294/lstm_884/while/lstm_cell_884/MatMul:product:0>sequential_294/lstm_884/while/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_294/lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOpMsequential_294_lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_294/lstm_884/while/lstm_cell_884/BiasAddBiasAdd3sequential_294/lstm_884/while/lstm_cell_884/add:z:0Jsequential_294/lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_294/lstm_884/while/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_294/lstm_884/while/lstm_cell_884/splitSplitDsequential_294/lstm_884/while/lstm_cell_884/split/split_dim:output:0<sequential_294/lstm_884/while/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_294/lstm_884/while/lstm_cell_884/SigmoidSigmoid:sequential_294/lstm_884/while/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_294/lstm_884/while/lstm_cell_884/Sigmoid_1Sigmoid:sequential_294/lstm_884/while/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_294/lstm_884/while/lstm_cell_884/mulMul9sequential_294/lstm_884/while/lstm_cell_884/Sigmoid_1:y:0+sequential_294_lstm_884_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_294/lstm_884/while/lstm_cell_884/ReluRelu:sequential_294/lstm_884/while/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_294/lstm_884/while/lstm_cell_884/mul_1Mul7sequential_294/lstm_884/while/lstm_cell_884/Sigmoid:y:0>sequential_294/lstm_884/while/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_294/lstm_884/while/lstm_cell_884/add_1AddV23sequential_294/lstm_884/while/lstm_cell_884/mul:z:05sequential_294/lstm_884/while/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_294/lstm_884/while/lstm_cell_884/Sigmoid_2Sigmoid:sequential_294/lstm_884/while/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_294/lstm_884/while/lstm_cell_884/Relu_1Relu5sequential_294/lstm_884/while/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_294/lstm_884/while/lstm_cell_884/mul_2Mul9sequential_294/lstm_884/while/lstm_cell_884/Sigmoid_2:y:0@sequential_294/lstm_884/while/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_294/lstm_884/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_294_lstm_884_while_placeholder_1)sequential_294_lstm_884_while_placeholder5sequential_294/lstm_884/while/lstm_cell_884/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_294/lstm_884/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_294/lstm_884/while/addAddV2)sequential_294_lstm_884_while_placeholder,sequential_294/lstm_884/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_294/lstm_884/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_294/lstm_884/while/add_1AddV2Hsequential_294_lstm_884_while_sequential_294_lstm_884_while_loop_counter.sequential_294/lstm_884/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_294/lstm_884/while/IdentityIdentity'sequential_294/lstm_884/while/add_1:z:0#^sequential_294/lstm_884/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_884/while/Identity_1IdentityNsequential_294_lstm_884_while_sequential_294_lstm_884_while_maximum_iterations#^sequential_294/lstm_884/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_884/while/Identity_2Identity%sequential_294/lstm_884/while/add:z:0#^sequential_294/lstm_884/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_884/while/Identity_3IdentityRsequential_294/lstm_884/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_294/lstm_884/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_884/while/Identity_4Identity5sequential_294/lstm_884/while/lstm_cell_884/mul_2:z:0#^sequential_294/lstm_884/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_294/lstm_884/while/Identity_5Identity5sequential_294/lstm_884/while/lstm_cell_884/add_1:z:0#^sequential_294/lstm_884/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_294/lstm_884/while/NoOpNoOpC^sequential_294/lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOpB^sequential_294/lstm_884/while/lstm_cell_884/MatMul/ReadVariableOpD^sequential_294/lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_294_lstm_884_while_identity/sequential_294/lstm_884/while/Identity:output:0"]
(sequential_294_lstm_884_while_identity_11sequential_294/lstm_884/while/Identity_1:output:0"]
(sequential_294_lstm_884_while_identity_21sequential_294/lstm_884/while/Identity_2:output:0"]
(sequential_294_lstm_884_while_identity_31sequential_294/lstm_884/while/Identity_3:output:0"]
(sequential_294_lstm_884_while_identity_41sequential_294/lstm_884/while/Identity_4:output:0"]
(sequential_294_lstm_884_while_identity_51sequential_294/lstm_884/while/Identity_5:output:0"?
Ksequential_294_lstm_884_while_lstm_cell_884_biasadd_readvariableop_resourceMsequential_294_lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource_0"?
Lsequential_294_lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resourceNsequential_294_lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource_0"?
Jsequential_294_lstm_884_while_lstm_cell_884_matmul_readvariableop_resourceLsequential_294_lstm_884_while_lstm_cell_884_matmul_readvariableop_resource_0"?
Esequential_294_lstm_884_while_sequential_294_lstm_884_strided_slice_1Gsequential_294_lstm_884_while_sequential_294_lstm_884_strided_slice_1_0"?
?sequential_294_lstm_884_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_884_tensorarrayunstack_tensorlistfromtensor?sequential_294_lstm_884_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_884_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_294/lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOpBsequential_294/lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp2?
Asequential_294/lstm_884/while/lstm_cell_884/MatMul/ReadVariableOpAsequential_294/lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp2?
Csequential_294/lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOpCsequential_294/lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5260829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5260829___redundant_placeholder05
1while_while_cond_5260829___redundant_placeholder15
1while_while_cond_5260829___redundant_placeholder25
1while_while_cond_5260829___redundant_placeholder3
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5260071

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
?K
?
E__inference_lstm_883_layer_call_and_return_conditional_losses_5263829
inputs_0?
,lstm_cell_883_matmul_readvariableop_resource:	d?A
.lstm_cell_883_matmul_1_readvariableop_resource:	2?<
-lstm_cell_883_biasadd_readvariableop_resource:	?
identity??$lstm_cell_883/BiasAdd/ReadVariableOp?#lstm_cell_883/MatMul/ReadVariableOp?%lstm_cell_883/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_883/MatMul/ReadVariableOpReadVariableOp,lstm_cell_883_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_883/MatMulMatMulstrided_slice_2:output:0+lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_883_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_883/MatMul_1MatMulzeros:output:0-lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_883/addAddV2lstm_cell_883/MatMul:product:0 lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_883_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_883/BiasAddBiasAddlstm_cell_883/add:z:0,lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_883/splitSplit&lstm_cell_883/split/split_dim:output:0lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_883/SigmoidSigmoidlstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_1Sigmoidlstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_883/mulMullstm_cell_883/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_883/ReluRelulstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_1Mullstm_cell_883/Sigmoid:y:0 lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_883/add_1AddV2lstm_cell_883/mul:z:0lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_2Sigmoidlstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_883/Relu_1Relulstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_2Mullstm_cell_883/Sigmoid_2:y:0"lstm_cell_883/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_883_matmul_readvariableop_resource.lstm_cell_883_matmul_1_readvariableop_resource-lstm_cell_883_biasadd_readvariableop_resource*
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
while_body_5263745*
condR
while_cond_5263744*K
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
NoOpNoOp%^lstm_cell_883/BiasAdd/ReadVariableOp$^lstm_cell_883/MatMul/ReadVariableOp&^lstm_cell_883/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_883/BiasAdd/ReadVariableOp$lstm_cell_883/BiasAdd/ReadVariableOp2J
#lstm_cell_883/MatMul/ReadVariableOp#lstm_cell_883/MatMul/ReadVariableOp2N
%lstm_cell_883/MatMul_1/ReadVariableOp%lstm_cell_883/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_5264361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_884_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_884_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_884_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_884_matmul_readvariableop_resource:2(F
4while_lstm_cell_884_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_884_biasadd_readvariableop_resource:(??*while/lstm_cell_884/BiasAdd/ReadVariableOp?)while/lstm_cell_884/MatMul/ReadVariableOp?+while/lstm_cell_884/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_884/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_884_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_884/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_884_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_884/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_884/addAddV2$while/lstm_cell_884/MatMul:product:0&while/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_884_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_884/BiasAddBiasAddwhile/lstm_cell_884/add:z:02while/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_884/splitSplit,while/lstm_cell_884/split/split_dim:output:0$while/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_884/SigmoidSigmoid"while/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_1Sigmoid"while/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mulMul!while/lstm_cell_884/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_884/ReluRelu"while/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_1Mulwhile/lstm_cell_884/Sigmoid:y:0&while/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/add_1AddV2while/lstm_cell_884/mul:z:0while/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_2Sigmoid"while/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_884/Relu_1Reluwhile/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_2Mul!while/lstm_cell_884/Sigmoid_2:y:0(while/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_884/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_884/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_884/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_884/BiasAdd/ReadVariableOp*^while/lstm_cell_884/MatMul/ReadVariableOp,^while/lstm_cell_884/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_884_biasadd_readvariableop_resource5while_lstm_cell_884_biasadd_readvariableop_resource_0"n
4while_lstm_cell_884_matmul_1_readvariableop_resource6while_lstm_cell_884_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_884_matmul_readvariableop_resource4while_lstm_cell_884_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_884/BiasAdd/ReadVariableOp*while/lstm_cell_884/BiasAdd/ReadVariableOp2V
)while/lstm_cell_884/MatMul/ReadVariableOp)while/lstm_cell_884/MatMul/ReadVariableOp2Z
+while/lstm_cell_884/MatMul_1/ReadVariableOp+while/lstm_cell_884/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5261207

inputs?
,lstm_cell_883_matmul_readvariableop_resource:	d?A
.lstm_cell_883_matmul_1_readvariableop_resource:	2?<
-lstm_cell_883_biasadd_readvariableop_resource:	?
identity??$lstm_cell_883/BiasAdd/ReadVariableOp?#lstm_cell_883/MatMul/ReadVariableOp?%lstm_cell_883/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_883/MatMul/ReadVariableOpReadVariableOp,lstm_cell_883_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_883/MatMulMatMulstrided_slice_2:output:0+lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_883_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_883/MatMul_1MatMulzeros:output:0-lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_883/addAddV2lstm_cell_883/MatMul:product:0 lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_883_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_883/BiasAddBiasAddlstm_cell_883/add:z:0,lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_883/splitSplit&lstm_cell_883/split/split_dim:output:0lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_883/SigmoidSigmoidlstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_1Sigmoidlstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_883/mulMullstm_cell_883/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_883/ReluRelulstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_1Mullstm_cell_883/Sigmoid:y:0 lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_883/add_1AddV2lstm_cell_883/mul:z:0lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_2Sigmoidlstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_883/Relu_1Relulstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_2Mullstm_cell_883/Sigmoid_2:y:0"lstm_cell_883/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_883_matmul_readvariableop_resource.lstm_cell_883_matmul_1_readvariableop_resource-lstm_cell_883_biasadd_readvariableop_resource*
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
while_body_5261123*
condR
while_cond_5261122*K
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
NoOpNoOp%^lstm_cell_883/BiasAdd/ReadVariableOp$^lstm_cell_883/MatMul/ReadVariableOp&^lstm_cell_883/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_883/BiasAdd/ReadVariableOp$lstm_cell_883/BiasAdd/ReadVariableOp2J
#lstm_cell_883/MatMul/ReadVariableOp#lstm_cell_883/MatMul/ReadVariableOp2N
%lstm_cell_883/MatMul_1/ReadVariableOp%lstm_cell_883/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_5260973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_882_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_882_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_882_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_882_matmul_readvariableop_resource:	?G
4while_lstm_cell_882_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_882_biasadd_readvariableop_resource:	???*while/lstm_cell_882/BiasAdd/ReadVariableOp?)while/lstm_cell_882/MatMul/ReadVariableOp?+while/lstm_cell_882/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_882/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_882_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_882/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_882_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_882/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_882/addAddV2$while/lstm_cell_882/MatMul:product:0&while/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_882_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_882/BiasAddBiasAddwhile/lstm_cell_882/add:z:02while/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_882/splitSplit,while/lstm_cell_882/split/split_dim:output:0$while/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_882/SigmoidSigmoid"while/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_1Sigmoid"while/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mulMul!while/lstm_cell_882/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_882/ReluRelu"while/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_1Mulwhile/lstm_cell_882/Sigmoid:y:0&while/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/add_1AddV2while/lstm_cell_882/mul:z:0while/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_2Sigmoid"while/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_882/Relu_1Reluwhile/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_2Mul!while/lstm_cell_882/Sigmoid_2:y:0(while/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_882/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_882/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_882/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_882/BiasAdd/ReadVariableOp*^while/lstm_cell_882/MatMul/ReadVariableOp,^while/lstm_cell_882/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_882_biasadd_readvariableop_resource5while_lstm_cell_882_biasadd_readvariableop_resource_0"n
4while_lstm_cell_882_matmul_1_readvariableop_resource6while_lstm_cell_882_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_882_matmul_readvariableop_resource4while_lstm_cell_882_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_882/BiasAdd/ReadVariableOp*while/lstm_cell_882/BiasAdd/ReadVariableOp2V
)while/lstm_cell_882/MatMul/ReadVariableOp)while/lstm_cell_882/MatMul/ReadVariableOp2Z
+while/lstm_cell_882/MatMul_1/ReadVariableOp+while/lstm_cell_882/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_294_lstm_883_while_body_5259629L
Hsequential_294_lstm_883_while_sequential_294_lstm_883_while_loop_counterR
Nsequential_294_lstm_883_while_sequential_294_lstm_883_while_maximum_iterations-
)sequential_294_lstm_883_while_placeholder/
+sequential_294_lstm_883_while_placeholder_1/
+sequential_294_lstm_883_while_placeholder_2/
+sequential_294_lstm_883_while_placeholder_3K
Gsequential_294_lstm_883_while_sequential_294_lstm_883_strided_slice_1_0?
?sequential_294_lstm_883_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_883_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_294_lstm_883_while_lstm_cell_883_matmul_readvariableop_resource_0:	d?a
Nsequential_294_lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource_0:	2?\
Msequential_294_lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource_0:	?*
&sequential_294_lstm_883_while_identity,
(sequential_294_lstm_883_while_identity_1,
(sequential_294_lstm_883_while_identity_2,
(sequential_294_lstm_883_while_identity_3,
(sequential_294_lstm_883_while_identity_4,
(sequential_294_lstm_883_while_identity_5I
Esequential_294_lstm_883_while_sequential_294_lstm_883_strided_slice_1?
?sequential_294_lstm_883_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_883_tensorarrayunstack_tensorlistfromtensor]
Jsequential_294_lstm_883_while_lstm_cell_883_matmul_readvariableop_resource:	d?_
Lsequential_294_lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource:	2?Z
Ksequential_294_lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource:	???Bsequential_294/lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp?Asequential_294/lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp?Csequential_294/lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp?
Osequential_294/lstm_883/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_294/lstm_883/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_294_lstm_883_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_883_tensorarrayunstack_tensorlistfromtensor_0)sequential_294_lstm_883_while_placeholderXsequential_294/lstm_883/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_294/lstm_883/while/lstm_cell_883/MatMul/ReadVariableOpReadVariableOpLsequential_294_lstm_883_while_lstm_cell_883_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_294/lstm_883/while/lstm_cell_883/MatMulMatMulHsequential_294/lstm_883/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_294/lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_294/lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOpNsequential_294_lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_294/lstm_883/while/lstm_cell_883/MatMul_1MatMul+sequential_294_lstm_883_while_placeholder_2Ksequential_294/lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_294/lstm_883/while/lstm_cell_883/addAddV2<sequential_294/lstm_883/while/lstm_cell_883/MatMul:product:0>sequential_294/lstm_883/while/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_294/lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOpMsequential_294_lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_294/lstm_883/while/lstm_cell_883/BiasAddBiasAdd3sequential_294/lstm_883/while/lstm_cell_883/add:z:0Jsequential_294/lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_294/lstm_883/while/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_294/lstm_883/while/lstm_cell_883/splitSplitDsequential_294/lstm_883/while/lstm_cell_883/split/split_dim:output:0<sequential_294/lstm_883/while/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_294/lstm_883/while/lstm_cell_883/SigmoidSigmoid:sequential_294/lstm_883/while/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_294/lstm_883/while/lstm_cell_883/Sigmoid_1Sigmoid:sequential_294/lstm_883/while/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_294/lstm_883/while/lstm_cell_883/mulMul9sequential_294/lstm_883/while/lstm_cell_883/Sigmoid_1:y:0+sequential_294_lstm_883_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_294/lstm_883/while/lstm_cell_883/ReluRelu:sequential_294/lstm_883/while/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_294/lstm_883/while/lstm_cell_883/mul_1Mul7sequential_294/lstm_883/while/lstm_cell_883/Sigmoid:y:0>sequential_294/lstm_883/while/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_294/lstm_883/while/lstm_cell_883/add_1AddV23sequential_294/lstm_883/while/lstm_cell_883/mul:z:05sequential_294/lstm_883/while/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_294/lstm_883/while/lstm_cell_883/Sigmoid_2Sigmoid:sequential_294/lstm_883/while/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_294/lstm_883/while/lstm_cell_883/Relu_1Relu5sequential_294/lstm_883/while/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_294/lstm_883/while/lstm_cell_883/mul_2Mul9sequential_294/lstm_883/while/lstm_cell_883/Sigmoid_2:y:0@sequential_294/lstm_883/while/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_294/lstm_883/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_294_lstm_883_while_placeholder_1)sequential_294_lstm_883_while_placeholder5sequential_294/lstm_883/while/lstm_cell_883/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_294/lstm_883/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_294/lstm_883/while/addAddV2)sequential_294_lstm_883_while_placeholder,sequential_294/lstm_883/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_294/lstm_883/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_294/lstm_883/while/add_1AddV2Hsequential_294_lstm_883_while_sequential_294_lstm_883_while_loop_counter.sequential_294/lstm_883/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_294/lstm_883/while/IdentityIdentity'sequential_294/lstm_883/while/add_1:z:0#^sequential_294/lstm_883/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_883/while/Identity_1IdentityNsequential_294_lstm_883_while_sequential_294_lstm_883_while_maximum_iterations#^sequential_294/lstm_883/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_883/while/Identity_2Identity%sequential_294/lstm_883/while/add:z:0#^sequential_294/lstm_883/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_883/while/Identity_3IdentityRsequential_294/lstm_883/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_294/lstm_883/while/NoOp*
T0*
_output_shapes
: ?
(sequential_294/lstm_883/while/Identity_4Identity5sequential_294/lstm_883/while/lstm_cell_883/mul_2:z:0#^sequential_294/lstm_883/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_294/lstm_883/while/Identity_5Identity5sequential_294/lstm_883/while/lstm_cell_883/add_1:z:0#^sequential_294/lstm_883/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_294/lstm_883/while/NoOpNoOpC^sequential_294/lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOpB^sequential_294/lstm_883/while/lstm_cell_883/MatMul/ReadVariableOpD^sequential_294/lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_294_lstm_883_while_identity/sequential_294/lstm_883/while/Identity:output:0"]
(sequential_294_lstm_883_while_identity_11sequential_294/lstm_883/while/Identity_1:output:0"]
(sequential_294_lstm_883_while_identity_21sequential_294/lstm_883/while/Identity_2:output:0"]
(sequential_294_lstm_883_while_identity_31sequential_294/lstm_883/while/Identity_3:output:0"]
(sequential_294_lstm_883_while_identity_41sequential_294/lstm_883/while/Identity_4:output:0"]
(sequential_294_lstm_883_while_identity_51sequential_294/lstm_883/while/Identity_5:output:0"?
Ksequential_294_lstm_883_while_lstm_cell_883_biasadd_readvariableop_resourceMsequential_294_lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource_0"?
Lsequential_294_lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resourceNsequential_294_lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource_0"?
Jsequential_294_lstm_883_while_lstm_cell_883_matmul_readvariableop_resourceLsequential_294_lstm_883_while_lstm_cell_883_matmul_readvariableop_resource_0"?
Esequential_294_lstm_883_while_sequential_294_lstm_883_strided_slice_1Gsequential_294_lstm_883_while_sequential_294_lstm_883_strided_slice_1_0"?
?sequential_294_lstm_883_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_883_tensorarrayunstack_tensorlistfromtensor?sequential_294_lstm_883_while_tensorarrayv2read_tensorlistgetitem_sequential_294_lstm_883_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_294/lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOpBsequential_294/lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp2?
Asequential_294/lstm_883/while/lstm_cell_883/MatMul/ReadVariableOpAsequential_294/lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp2?
Csequential_294/lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOpCsequential_294/lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5263972
inputs_0?
,lstm_cell_883_matmul_readvariableop_resource:	d?A
.lstm_cell_883_matmul_1_readvariableop_resource:	2?<
-lstm_cell_883_biasadd_readvariableop_resource:	?
identity??$lstm_cell_883/BiasAdd/ReadVariableOp?#lstm_cell_883/MatMul/ReadVariableOp?%lstm_cell_883/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_883/MatMul/ReadVariableOpReadVariableOp,lstm_cell_883_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_883/MatMulMatMulstrided_slice_2:output:0+lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_883_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_883/MatMul_1MatMulzeros:output:0-lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_883/addAddV2lstm_cell_883/MatMul:product:0 lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_883_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_883/BiasAddBiasAddlstm_cell_883/add:z:0,lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_883/splitSplit&lstm_cell_883/split/split_dim:output:0lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_883/SigmoidSigmoidlstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_1Sigmoidlstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_883/mulMullstm_cell_883/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_883/ReluRelulstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_1Mullstm_cell_883/Sigmoid:y:0 lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_883/add_1AddV2lstm_cell_883/mul:z:0lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_883/Sigmoid_2Sigmoidlstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_883/Relu_1Relulstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_883/mul_2Mullstm_cell_883/Sigmoid_2:y:0"lstm_cell_883/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_883_matmul_readvariableop_resource.lstm_cell_883_matmul_1_readvariableop_resource-lstm_cell_883_biasadd_readvariableop_resource*
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
while_body_5263888*
condR
while_cond_5263887*K
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
NoOpNoOp%^lstm_cell_883/BiasAdd/ReadVariableOp$^lstm_cell_883/MatMul/ReadVariableOp&^lstm_cell_883/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_883/BiasAdd/ReadVariableOp$lstm_cell_883/BiasAdd/ReadVariableOp2J
#lstm_cell_883/MatMul/ReadVariableOp#lstm_cell_883/MatMul/ReadVariableOp2N
%lstm_cell_883/MatMul_1/ReadVariableOp%lstm_cell_883/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_5261122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5261122___redundant_placeholder05
1while_while_cond_5261122___redundant_placeholder15
1while_while_cond_5261122___redundant_placeholder25
1while_while_cond_5261122___redundant_placeholder3
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
while_body_5263272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_882_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_882_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_882_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_882_matmul_readvariableop_resource:	?G
4while_lstm_cell_882_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_882_biasadd_readvariableop_resource:	???*while/lstm_cell_882/BiasAdd/ReadVariableOp?)while/lstm_cell_882/MatMul/ReadVariableOp?+while/lstm_cell_882/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_882/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_882_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_882/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_882_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_882/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_882/addAddV2$while/lstm_cell_882/MatMul:product:0&while/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_882_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_882/BiasAddBiasAddwhile/lstm_cell_882/add:z:02while/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_882/splitSplit,while/lstm_cell_882/split/split_dim:output:0$while/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_882/SigmoidSigmoid"while/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_1Sigmoid"while/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mulMul!while/lstm_cell_882/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_882/ReluRelu"while/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_1Mulwhile/lstm_cell_882/Sigmoid:y:0&while/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/add_1AddV2while/lstm_cell_882/mul:z:0while/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_2Sigmoid"while/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_882/Relu_1Reluwhile/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_2Mul!while/lstm_cell_882/Sigmoid_2:y:0(while/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_882/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_882/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_882/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_882/BiasAdd/ReadVariableOp*^while/lstm_cell_882/MatMul/ReadVariableOp,^while/lstm_cell_882/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_882_biasadd_readvariableop_resource5while_lstm_cell_882_biasadd_readvariableop_resource_0"n
4while_lstm_cell_882_matmul_1_readvariableop_resource6while_lstm_cell_882_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_882_matmul_readvariableop_resource4while_lstm_cell_882_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_882/BiasAdd/ReadVariableOp*while/lstm_cell_882/BiasAdd/ReadVariableOp2V
)while/lstm_cell_882/MatMul/ReadVariableOp)while/lstm_cell_882/MatMul/ReadVariableOp2Z
+while/lstm_cell_882/MatMul_1/ReadVariableOp+while/lstm_cell_882/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5263271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5263271___redundant_placeholder05
1while_while_cond_5263271___redundant_placeholder15
1while_while_cond_5263271___redundant_placeholder25
1while_while_cond_5263271___redundant_placeholder3
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

lstm_882_while_body_5262231.
*lstm_882_while_lstm_882_while_loop_counter4
0lstm_882_while_lstm_882_while_maximum_iterations
lstm_882_while_placeholder 
lstm_882_while_placeholder_1 
lstm_882_while_placeholder_2 
lstm_882_while_placeholder_3-
)lstm_882_while_lstm_882_strided_slice_1_0i
elstm_882_while_tensorarrayv2read_tensorlistgetitem_lstm_882_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_882_while_lstm_cell_882_matmul_readvariableop_resource_0:	?R
?lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource_0:	d?M
>lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource_0:	?
lstm_882_while_identity
lstm_882_while_identity_1
lstm_882_while_identity_2
lstm_882_while_identity_3
lstm_882_while_identity_4
lstm_882_while_identity_5+
'lstm_882_while_lstm_882_strided_slice_1g
clstm_882_while_tensorarrayv2read_tensorlistgetitem_lstm_882_tensorarrayunstack_tensorlistfromtensorN
;lstm_882_while_lstm_cell_882_matmul_readvariableop_resource:	?P
=lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource:	d?K
<lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource:	???3lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp?2lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp?4lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp?
@lstm_882/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_882/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_882_while_tensorarrayv2read_tensorlistgetitem_lstm_882_tensorarrayunstack_tensorlistfromtensor_0lstm_882_while_placeholderIlstm_882/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_882/while/lstm_cell_882/MatMul/ReadVariableOpReadVariableOp=lstm_882_while_lstm_cell_882_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_882/while/lstm_cell_882/MatMulMatMul9lstm_882/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp?lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_882/while/lstm_cell_882/MatMul_1MatMullstm_882_while_placeholder_2<lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_882/while/lstm_cell_882/addAddV2-lstm_882/while/lstm_cell_882/MatMul:product:0/lstm_882/while/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp>lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_882/while/lstm_cell_882/BiasAddBiasAdd$lstm_882/while/lstm_cell_882/add:z:0;lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_882/while/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_882/while/lstm_cell_882/splitSplit5lstm_882/while/lstm_cell_882/split/split_dim:output:0-lstm_882/while/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_882/while/lstm_cell_882/SigmoidSigmoid+lstm_882/while/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_882/while/lstm_cell_882/Sigmoid_1Sigmoid+lstm_882/while/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_882/while/lstm_cell_882/mulMul*lstm_882/while/lstm_cell_882/Sigmoid_1:y:0lstm_882_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_882/while/lstm_cell_882/ReluRelu+lstm_882/while/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_882/while/lstm_cell_882/mul_1Mul(lstm_882/while/lstm_cell_882/Sigmoid:y:0/lstm_882/while/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_882/while/lstm_cell_882/add_1AddV2$lstm_882/while/lstm_cell_882/mul:z:0&lstm_882/while/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_882/while/lstm_cell_882/Sigmoid_2Sigmoid+lstm_882/while/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_882/while/lstm_cell_882/Relu_1Relu&lstm_882/while/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_882/while/lstm_cell_882/mul_2Mul*lstm_882/while/lstm_cell_882/Sigmoid_2:y:01lstm_882/while/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_882/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_882_while_placeholder_1lstm_882_while_placeholder&lstm_882/while/lstm_cell_882/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_882/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_882/while/addAddV2lstm_882_while_placeholderlstm_882/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_882/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_882/while/add_1AddV2*lstm_882_while_lstm_882_while_loop_counterlstm_882/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_882/while/IdentityIdentitylstm_882/while/add_1:z:0^lstm_882/while/NoOp*
T0*
_output_shapes
: ?
lstm_882/while/Identity_1Identity0lstm_882_while_lstm_882_while_maximum_iterations^lstm_882/while/NoOp*
T0*
_output_shapes
: t
lstm_882/while/Identity_2Identitylstm_882/while/add:z:0^lstm_882/while/NoOp*
T0*
_output_shapes
: ?
lstm_882/while/Identity_3IdentityClstm_882/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_882/while/NoOp*
T0*
_output_shapes
: ?
lstm_882/while/Identity_4Identity&lstm_882/while/lstm_cell_882/mul_2:z:0^lstm_882/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_882/while/Identity_5Identity&lstm_882/while/lstm_cell_882/add_1:z:0^lstm_882/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_882/while/NoOpNoOp4^lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp3^lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp5^lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_882_while_identity lstm_882/while/Identity:output:0"?
lstm_882_while_identity_1"lstm_882/while/Identity_1:output:0"?
lstm_882_while_identity_2"lstm_882/while/Identity_2:output:0"?
lstm_882_while_identity_3"lstm_882/while/Identity_3:output:0"?
lstm_882_while_identity_4"lstm_882/while/Identity_4:output:0"?
lstm_882_while_identity_5"lstm_882/while/Identity_5:output:0"T
'lstm_882_while_lstm_882_strided_slice_1)lstm_882_while_lstm_882_strided_slice_1_0"~
<lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource>lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource_0"?
=lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource?lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource_0"|
;lstm_882_while_lstm_cell_882_matmul_readvariableop_resource=lstm_882_while_lstm_cell_882_matmul_readvariableop_resource_0"?
clstm_882_while_tensorarrayv2read_tensorlistgetitem_lstm_882_tensorarrayunstack_tensorlistfromtensorelstm_882_while_tensorarrayv2read_tensorlistgetitem_lstm_882_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp3lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp2h
2lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp2lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp2l
4lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp4lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5264504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_884_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_884_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_884_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_884_matmul_readvariableop_resource:2(F
4while_lstm_cell_884_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_884_biasadd_readvariableop_resource:(??*while/lstm_cell_884/BiasAdd/ReadVariableOp?)while/lstm_cell_884/MatMul/ReadVariableOp?+while/lstm_cell_884/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_884/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_884_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_884/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_884_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_884/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_884/addAddV2$while/lstm_cell_884/MatMul:product:0&while/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_884_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_884/BiasAddBiasAddwhile/lstm_cell_884/add:z:02while/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_884/splitSplit,while/lstm_cell_884/split/split_dim:output:0$while/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_884/SigmoidSigmoid"while/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_1Sigmoid"while/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mulMul!while/lstm_cell_884/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_884/ReluRelu"while/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_1Mulwhile/lstm_cell_884/Sigmoid:y:0&while/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/add_1AddV2while/lstm_cell_884/mul:z:0while/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_2Sigmoid"while/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_884/Relu_1Reluwhile/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_2Mul!while/lstm_cell_884/Sigmoid_2:y:0(while/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_884/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_884/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_884/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_884/BiasAdd/ReadVariableOp*^while/lstm_cell_884/MatMul/ReadVariableOp,^while/lstm_cell_884/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_884_biasadd_readvariableop_resource5while_lstm_cell_884_biasadd_readvariableop_resource_0"n
4while_lstm_cell_884_matmul_1_readvariableop_resource6while_lstm_cell_884_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_884_matmul_readvariableop_resource4while_lstm_cell_884_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_884/BiasAdd/ReadVariableOp*while/lstm_cell_884/BiasAdd/ReadVariableOp2V
)while/lstm_cell_884/MatMul/ReadVariableOp)while/lstm_cell_884/MatMul/ReadVariableOp2Z
+while/lstm_cell_884/MatMul_1/ReadVariableOp+while/lstm_cell_884/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_294_layer_call_fn_5261407
lstm_882_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_882_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_294_layer_call_and_return_conditional_losses_5261382o
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
_user_specified_namelstm_882_input
?8
?
while_body_5261819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_882_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_882_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_882_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_882_matmul_readvariableop_resource:	?G
4while_lstm_cell_882_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_882_biasadd_readvariableop_resource:	???*while/lstm_cell_882/BiasAdd/ReadVariableOp?)while/lstm_cell_882/MatMul/ReadVariableOp?+while/lstm_cell_882/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_882/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_882_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_882/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_882_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_882/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_882/addAddV2$while/lstm_cell_882/MatMul:product:0&while/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_882_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_882/BiasAddBiasAddwhile/lstm_cell_882/add:z:02while/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_882/splitSplit,while/lstm_cell_882/split/split_dim:output:0$while/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_882/SigmoidSigmoid"while/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_1Sigmoid"while/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mulMul!while/lstm_cell_882/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_882/ReluRelu"while/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_1Mulwhile/lstm_cell_882/Sigmoid:y:0&while/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/add_1AddV2while/lstm_cell_882/mul:z:0while/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_2Sigmoid"while/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_882/Relu_1Reluwhile/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_2Mul!while/lstm_cell_882/Sigmoid_2:y:0(while/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_882/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_882/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_882/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_882/BiasAdd/ReadVariableOp*^while/lstm_cell_882/MatMul/ReadVariableOp,^while/lstm_cell_882/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_882_biasadd_readvariableop_resource5while_lstm_cell_882_biasadd_readvariableop_resource_0"n
4while_lstm_cell_882_matmul_1_readvariableop_resource6while_lstm_cell_882_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_882_matmul_readvariableop_resource4while_lstm_cell_882_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_882/BiasAdd/ReadVariableOp*while/lstm_cell_882/BiasAdd/ReadVariableOp2V
)while/lstm_cell_882/MatMul/ReadVariableOp)while/lstm_cell_882/MatMul/ReadVariableOp2Z
+while/lstm_cell_882/MatMul_1/ReadVariableOp+while/lstm_cell_882/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5261818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5261818___redundant_placeholder05
1while_while_cond_5261818___redundant_placeholder15
1while_while_cond_5261818___redundant_placeholder25
1while_while_cond_5261818___redundant_placeholder3
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
lstm_882_while_cond_5262230.
*lstm_882_while_lstm_882_while_loop_counter4
0lstm_882_while_lstm_882_while_maximum_iterations
lstm_882_while_placeholder 
lstm_882_while_placeholder_1 
lstm_882_while_placeholder_2 
lstm_882_while_placeholder_30
,lstm_882_while_less_lstm_882_strided_slice_1G
Clstm_882_while_lstm_882_while_cond_5262230___redundant_placeholder0G
Clstm_882_while_lstm_882_while_cond_5262230___redundant_placeholder1G
Clstm_882_while_lstm_882_while_cond_5262230___redundant_placeholder2G
Clstm_882_while_lstm_882_while_cond_5262230___redundant_placeholder3
lstm_882_while_identity
?
lstm_882/while/LessLesslstm_882_while_placeholder,lstm_882_while_less_lstm_882_strided_slice_1*
T0*
_output_shapes
: ]
lstm_882/while/IdentityIdentitylstm_882/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_882_while_identity lstm_882/while/Identity:output:0*(
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
K__inference_sequential_294_layer_call_and_return_conditional_losses_5261382

inputs#
lstm_882_5261058:	?#
lstm_882_5261060:	d?
lstm_882_5261062:	?#
lstm_883_5261208:	d?#
lstm_883_5261210:	2?
lstm_883_5261212:	?"
lstm_884_5261358:2("
lstm_884_5261360:
(
lstm_884_5261362:(#
dense_294_5261376:

dense_294_5261378:
identity??!dense_294/StatefulPartitionedCall? lstm_882/StatefulPartitionedCall? lstm_883/StatefulPartitionedCall? lstm_884/StatefulPartitionedCall?
 lstm_882/StatefulPartitionedCallStatefulPartitionedCallinputslstm_882_5261058lstm_882_5261060lstm_882_5261062*
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5261057?
 lstm_883/StatefulPartitionedCallStatefulPartitionedCall)lstm_882/StatefulPartitionedCall:output:0lstm_883_5261208lstm_883_5261210lstm_883_5261212*
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5261207?
 lstm_884/StatefulPartitionedCallStatefulPartitionedCall)lstm_883/StatefulPartitionedCall:output:0lstm_884_5261358lstm_884_5261360lstm_884_5261362*
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5261357?
!dense_294/StatefulPartitionedCallStatefulPartitionedCall)lstm_884/StatefulPartitionedCall:output:0dense_294_5261376dense_294_5261378*
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
F__inference_dense_294_layer_call_and_return_conditional_losses_5261375y
IdentityIdentity*dense_294/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_294/StatefulPartitionedCall!^lstm_882/StatefulPartitionedCall!^lstm_883/StatefulPartitionedCall!^lstm_884/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_294/StatefulPartitionedCall!dense_294/StatefulPartitionedCall2D
 lstm_882/StatefulPartitionedCall lstm_882/StatefulPartitionedCall2D
 lstm_883/StatefulPartitionedCall lstm_883/StatefulPartitionedCall2D
 lstm_884/StatefulPartitionedCall lstm_884/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_884_while_cond_5262508.
*lstm_884_while_lstm_884_while_loop_counter4
0lstm_884_while_lstm_884_while_maximum_iterations
lstm_884_while_placeholder 
lstm_884_while_placeholder_1 
lstm_884_while_placeholder_2 
lstm_884_while_placeholder_30
,lstm_884_while_less_lstm_884_strided_slice_1G
Clstm_884_while_lstm_884_while_cond_5262508___redundant_placeholder0G
Clstm_884_while_lstm_884_while_cond_5262508___redundant_placeholder1G
Clstm_884_while_lstm_884_while_cond_5262508___redundant_placeholder2G
Clstm_884_while_lstm_884_while_cond_5262508___redundant_placeholder3
lstm_884_while_identity
?
lstm_884/while/LessLesslstm_884_while_placeholder,lstm_884_while_less_lstm_884_strided_slice_1*
T0*
_output_shapes
: ]
lstm_884/while/IdentityIdentitylstm_884/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_884_while_identity lstm_884/while/Identity:output:0*(
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263642

inputs?
,lstm_cell_882_matmul_readvariableop_resource:	?A
.lstm_cell_882_matmul_1_readvariableop_resource:	d?<
-lstm_cell_882_biasadd_readvariableop_resource:	?
identity??$lstm_cell_882/BiasAdd/ReadVariableOp?#lstm_cell_882/MatMul/ReadVariableOp?%lstm_cell_882/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_882/MatMul/ReadVariableOpReadVariableOp,lstm_cell_882_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_882/MatMulMatMulstrided_slice_2:output:0+lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_882_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_882/MatMul_1MatMulzeros:output:0-lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_882/addAddV2lstm_cell_882/MatMul:product:0 lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_882_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_882/BiasAddBiasAddlstm_cell_882/add:z:0,lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_882/splitSplit&lstm_cell_882/split/split_dim:output:0lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_882/SigmoidSigmoidlstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_1Sigmoidlstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_882/mulMullstm_cell_882/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_882/ReluRelulstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_1Mullstm_cell_882/Sigmoid:y:0 lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_882/add_1AddV2lstm_cell_882/mul:z:0lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_2Sigmoidlstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_882/Relu_1Relulstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_2Mullstm_cell_882/Sigmoid_2:y:0"lstm_cell_882/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_882_matmul_readvariableop_resource.lstm_cell_882_matmul_1_readvariableop_resource-lstm_cell_882_biasadd_readvariableop_resource*
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
while_body_5263558*
condR
while_cond_5263557*K
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
NoOpNoOp%^lstm_cell_882/BiasAdd/ReadVariableOp$^lstm_cell_882/MatMul/ReadVariableOp&^lstm_cell_882/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_882/BiasAdd/ReadVariableOp$lstm_cell_882/BiasAdd/ReadVariableOp2J
#lstm_cell_882/MatMul/ReadVariableOp#lstm_cell_882/MatMul/ReadVariableOp2N
%lstm_cell_882/MatMul_1/ReadVariableOp%lstm_cell_882/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_294_layer_call_fn_5262172

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
K__inference_sequential_294_layer_call_and_return_conditional_losses_5261971o
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263499

inputs?
,lstm_cell_882_matmul_readvariableop_resource:	?A
.lstm_cell_882_matmul_1_readvariableop_resource:	d?<
-lstm_cell_882_biasadd_readvariableop_resource:	?
identity??$lstm_cell_882/BiasAdd/ReadVariableOp?#lstm_cell_882/MatMul/ReadVariableOp?%lstm_cell_882/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_882/MatMul/ReadVariableOpReadVariableOp,lstm_cell_882_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_882/MatMulMatMulstrided_slice_2:output:0+lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_882_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_882/MatMul_1MatMulzeros:output:0-lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_882/addAddV2lstm_cell_882/MatMul:product:0 lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_882_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_882/BiasAddBiasAddlstm_cell_882/add:z:0,lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_882/splitSplit&lstm_cell_882/split/split_dim:output:0lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_882/SigmoidSigmoidlstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_1Sigmoidlstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_882/mulMullstm_cell_882/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_882/ReluRelulstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_1Mullstm_cell_882/Sigmoid:y:0 lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_882/add_1AddV2lstm_cell_882/mul:z:0lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_2Sigmoidlstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_882/Relu_1Relulstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_2Mullstm_cell_882/Sigmoid_2:y:0"lstm_cell_882/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_882_matmul_readvariableop_resource.lstm_cell_882_matmul_1_readvariableop_resource-lstm_cell_882_biasadd_readvariableop_resource*
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
while_body_5263415*
condR
while_cond_5263414*K
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
NoOpNoOp%^lstm_cell_882/BiasAdd/ReadVariableOp$^lstm_cell_882/MatMul/ReadVariableOp&^lstm_cell_882/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_882/BiasAdd/ReadVariableOp$lstm_cell_882/BiasAdd/ReadVariableOp2J
#lstm_cell_882/MatMul/ReadVariableOp#lstm_cell_882/MatMul/ReadVariableOp2N
%lstm_cell_882/MatMul_1/ReadVariableOp%lstm_cell_882/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5264789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5264789___redundant_placeholder05
1while_while_cond_5264789___redundant_placeholder15
1while_while_cond_5264789___redundant_placeholder25
1while_while_cond_5264789___redundant_placeholder3
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
while_body_5263415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_882_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_882_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_882_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_882_matmul_readvariableop_resource:	?G
4while_lstm_cell_882_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_882_biasadd_readvariableop_resource:	???*while/lstm_cell_882/BiasAdd/ReadVariableOp?)while/lstm_cell_882/MatMul/ReadVariableOp?+while/lstm_cell_882/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_882/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_882_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_882/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_882_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_882/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_882/addAddV2$while/lstm_cell_882/MatMul:product:0&while/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_882_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_882/BiasAddBiasAddwhile/lstm_cell_882/add:z:02while/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_882/splitSplit,while/lstm_cell_882/split/split_dim:output:0$while/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_882/SigmoidSigmoid"while/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_1Sigmoid"while/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mulMul!while/lstm_cell_882/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_882/ReluRelu"while/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_1Mulwhile/lstm_cell_882/Sigmoid:y:0&while/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/add_1AddV2while/lstm_cell_882/mul:z:0while/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_2Sigmoid"while/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_882/Relu_1Reluwhile/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_2Mul!while/lstm_cell_882/Sigmoid_2:y:0(while/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_882/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_882/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_882/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_882/BiasAdd/ReadVariableOp*^while/lstm_cell_882/MatMul/ReadVariableOp,^while/lstm_cell_882/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_882_biasadd_readvariableop_resource5while_lstm_cell_882_biasadd_readvariableop_resource_0"n
4while_lstm_cell_882_matmul_1_readvariableop_resource6while_lstm_cell_882_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_882_matmul_readvariableop_resource4while_lstm_cell_882_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_882/BiasAdd/ReadVariableOp*while/lstm_cell_882/BiasAdd/ReadVariableOp2V
)while/lstm_cell_882/MatMul/ReadVariableOp)while/lstm_cell_882/MatMul/ReadVariableOp2Z
+while/lstm_cell_882/MatMul_1/ReadVariableOp+while/lstm_cell_882/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5260421

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
*__inference_lstm_882_layer_call_fn_5263037
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5260008|
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
while_cond_5261653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5261653___redundant_placeholder05
1while_while_cond_5261653___redundant_placeholder15
1while_while_cond_5261653___redundant_placeholder25
1while_while_cond_5261653___redundant_placeholder3
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
while_body_5264031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_883_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_883_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_883_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_883_matmul_readvariableop_resource:	d?G
4while_lstm_cell_883_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_883_biasadd_readvariableop_resource:	???*while/lstm_cell_883/BiasAdd/ReadVariableOp?)while/lstm_cell_883/MatMul/ReadVariableOp?+while/lstm_cell_883/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_883/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_883_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_883/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_883_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_883/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_883/addAddV2$while/lstm_cell_883/MatMul:product:0&while/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_883_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_883/BiasAddBiasAddwhile/lstm_cell_883/add:z:02while/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_883/splitSplit,while/lstm_cell_883/split/split_dim:output:0$while/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_883/SigmoidSigmoid"while/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_1Sigmoid"while/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mulMul!while/lstm_cell_883/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_883/ReluRelu"while/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_1Mulwhile/lstm_cell_883/Sigmoid:y:0&while/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/add_1AddV2while/lstm_cell_883/mul:z:0while/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_2Sigmoid"while/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_883/Relu_1Reluwhile/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_2Mul!while/lstm_cell_883/Sigmoid_2:y:0(while/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_883/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_883/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_883/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_883/BiasAdd/ReadVariableOp*^while/lstm_cell_883/MatMul/ReadVariableOp,^while/lstm_cell_883/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_883_biasadd_readvariableop_resource5while_lstm_cell_883_biasadd_readvariableop_resource_0"n
4while_lstm_cell_883_matmul_1_readvariableop_resource6while_lstm_cell_883_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_883_matmul_readvariableop_resource4while_lstm_cell_883_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_883/BiasAdd/ReadVariableOp*while/lstm_cell_883/BiasAdd/ReadVariableOp2V
)while/lstm_cell_883/MatMul/ReadVariableOp)while/lstm_cell_883/MatMul/ReadVariableOp2Z
+while/lstm_cell_883/MatMul_1/ReadVariableOp+while/lstm_cell_883/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5260625

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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5260199

inputs(
lstm_cell_882_5260117:	?(
lstm_cell_882_5260119:	d?$
lstm_cell_882_5260121:	?
identity??%lstm_cell_882/StatefulPartitionedCall?while;
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
%lstm_cell_882/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_882_5260117lstm_cell_882_5260119lstm_cell_882_5260121*
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5260071n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_882_5260117lstm_cell_882_5260119lstm_cell_882_5260121*
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
while_body_5260130*
condR
while_cond_5260129*K
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
NoOpNoOp&^lstm_cell_882/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_882/StatefulPartitionedCall%lstm_cell_882/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264874

inputs>
,lstm_cell_884_matmul_readvariableop_resource:2(@
.lstm_cell_884_matmul_1_readvariableop_resource:
(;
-lstm_cell_884_biasadd_readvariableop_resource:(
identity??$lstm_cell_884/BiasAdd/ReadVariableOp?#lstm_cell_884/MatMul/ReadVariableOp?%lstm_cell_884/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_884/MatMul/ReadVariableOpReadVariableOp,lstm_cell_884_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_884/MatMulMatMulstrided_slice_2:output:0+lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_884_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_884/MatMul_1MatMulzeros:output:0-lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_884/addAddV2lstm_cell_884/MatMul:product:0 lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_884_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_884/BiasAddBiasAddlstm_cell_884/add:z:0,lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_884/splitSplit&lstm_cell_884/split/split_dim:output:0lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_884/SigmoidSigmoidlstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_1Sigmoidlstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_884/mulMullstm_cell_884/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_884/ReluRelulstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_1Mullstm_cell_884/Sigmoid:y:0 lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_884/add_1AddV2lstm_cell_884/mul:z:0lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_2Sigmoidlstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_884/Relu_1Relulstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_2Mullstm_cell_884/Sigmoid_2:y:0"lstm_cell_884/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_884_matmul_readvariableop_resource.lstm_cell_884_matmul_1_readvariableop_resource-lstm_cell_884_biasadd_readvariableop_resource*
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
while_body_5264790*
condR
while_cond_5264789*K
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
NoOpNoOp%^lstm_cell_884/BiasAdd/ReadVariableOp$^lstm_cell_884/MatMul/ReadVariableOp&^lstm_cell_884/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_884/BiasAdd/ReadVariableOp$lstm_cell_884/BiasAdd/ReadVariableOp2J
#lstm_cell_884/MatMul/ReadVariableOp#lstm_cell_884/MatMul/ReadVariableOp2N
%lstm_cell_884/MatMul_1/ReadVariableOp%lstm_cell_884/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_882_while_body_5262658.
*lstm_882_while_lstm_882_while_loop_counter4
0lstm_882_while_lstm_882_while_maximum_iterations
lstm_882_while_placeholder 
lstm_882_while_placeholder_1 
lstm_882_while_placeholder_2 
lstm_882_while_placeholder_3-
)lstm_882_while_lstm_882_strided_slice_1_0i
elstm_882_while_tensorarrayv2read_tensorlistgetitem_lstm_882_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_882_while_lstm_cell_882_matmul_readvariableop_resource_0:	?R
?lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource_0:	d?M
>lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource_0:	?
lstm_882_while_identity
lstm_882_while_identity_1
lstm_882_while_identity_2
lstm_882_while_identity_3
lstm_882_while_identity_4
lstm_882_while_identity_5+
'lstm_882_while_lstm_882_strided_slice_1g
clstm_882_while_tensorarrayv2read_tensorlistgetitem_lstm_882_tensorarrayunstack_tensorlistfromtensorN
;lstm_882_while_lstm_cell_882_matmul_readvariableop_resource:	?P
=lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource:	d?K
<lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource:	???3lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp?2lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp?4lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp?
@lstm_882/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_882/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_882_while_tensorarrayv2read_tensorlistgetitem_lstm_882_tensorarrayunstack_tensorlistfromtensor_0lstm_882_while_placeholderIlstm_882/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_882/while/lstm_cell_882/MatMul/ReadVariableOpReadVariableOp=lstm_882_while_lstm_cell_882_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_882/while/lstm_cell_882/MatMulMatMul9lstm_882/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp?lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_882/while/lstm_cell_882/MatMul_1MatMullstm_882_while_placeholder_2<lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_882/while/lstm_cell_882/addAddV2-lstm_882/while/lstm_cell_882/MatMul:product:0/lstm_882/while/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp>lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_882/while/lstm_cell_882/BiasAddBiasAdd$lstm_882/while/lstm_cell_882/add:z:0;lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_882/while/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_882/while/lstm_cell_882/splitSplit5lstm_882/while/lstm_cell_882/split/split_dim:output:0-lstm_882/while/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_882/while/lstm_cell_882/SigmoidSigmoid+lstm_882/while/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_882/while/lstm_cell_882/Sigmoid_1Sigmoid+lstm_882/while/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_882/while/lstm_cell_882/mulMul*lstm_882/while/lstm_cell_882/Sigmoid_1:y:0lstm_882_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_882/while/lstm_cell_882/ReluRelu+lstm_882/while/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_882/while/lstm_cell_882/mul_1Mul(lstm_882/while/lstm_cell_882/Sigmoid:y:0/lstm_882/while/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_882/while/lstm_cell_882/add_1AddV2$lstm_882/while/lstm_cell_882/mul:z:0&lstm_882/while/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_882/while/lstm_cell_882/Sigmoid_2Sigmoid+lstm_882/while/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_882/while/lstm_cell_882/Relu_1Relu&lstm_882/while/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_882/while/lstm_cell_882/mul_2Mul*lstm_882/while/lstm_cell_882/Sigmoid_2:y:01lstm_882/while/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_882/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_882_while_placeholder_1lstm_882_while_placeholder&lstm_882/while/lstm_cell_882/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_882/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_882/while/addAddV2lstm_882_while_placeholderlstm_882/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_882/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_882/while/add_1AddV2*lstm_882_while_lstm_882_while_loop_counterlstm_882/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_882/while/IdentityIdentitylstm_882/while/add_1:z:0^lstm_882/while/NoOp*
T0*
_output_shapes
: ?
lstm_882/while/Identity_1Identity0lstm_882_while_lstm_882_while_maximum_iterations^lstm_882/while/NoOp*
T0*
_output_shapes
: t
lstm_882/while/Identity_2Identitylstm_882/while/add:z:0^lstm_882/while/NoOp*
T0*
_output_shapes
: ?
lstm_882/while/Identity_3IdentityClstm_882/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_882/while/NoOp*
T0*
_output_shapes
: ?
lstm_882/while/Identity_4Identity&lstm_882/while/lstm_cell_882/mul_2:z:0^lstm_882/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_882/while/Identity_5Identity&lstm_882/while/lstm_cell_882/add_1:z:0^lstm_882/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_882/while/NoOpNoOp4^lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp3^lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp5^lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_882_while_identity lstm_882/while/Identity:output:0"?
lstm_882_while_identity_1"lstm_882/while/Identity_1:output:0"?
lstm_882_while_identity_2"lstm_882/while/Identity_2:output:0"?
lstm_882_while_identity_3"lstm_882/while/Identity_3:output:0"?
lstm_882_while_identity_4"lstm_882/while/Identity_4:output:0"?
lstm_882_while_identity_5"lstm_882/while/Identity_5:output:0"T
'lstm_882_while_lstm_882_strided_slice_1)lstm_882_while_lstm_882_strided_slice_1_0"~
<lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource>lstm_882_while_lstm_cell_882_biasadd_readvariableop_resource_0"?
=lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource?lstm_882_while_lstm_cell_882_matmul_1_readvariableop_resource_0"|
;lstm_882_while_lstm_cell_882_matmul_readvariableop_resource=lstm_882_while_lstm_cell_882_matmul_readvariableop_resource_0"?
clstm_882_while_tensorarrayv2read_tensorlistgetitem_lstm_882_tensorarrayunstack_tensorlistfromtensorelstm_882_while_tensorarrayv2read_tensorlistgetitem_lstm_882_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp3lstm_882/while/lstm_cell_882/BiasAdd/ReadVariableOp2h
2lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp2lstm_882/while/lstm_cell_882/MatMul/ReadVariableOp2l
4lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp4lstm_882/while/lstm_cell_882/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5263558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_882_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_882_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_882_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_882_matmul_readvariableop_resource:	?G
4while_lstm_cell_882_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_882_biasadd_readvariableop_resource:	???*while/lstm_cell_882/BiasAdd/ReadVariableOp?)while/lstm_cell_882/MatMul/ReadVariableOp?+while/lstm_cell_882/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_882/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_882_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_882/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_882_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_882/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_882/addAddV2$while/lstm_cell_882/MatMul:product:0&while/lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_882_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_882/BiasAddBiasAddwhile/lstm_cell_882/add:z:02while/lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_882/splitSplit,while/lstm_cell_882/split/split_dim:output:0$while/lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_882/SigmoidSigmoid"while/lstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_1Sigmoid"while/lstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mulMul!while/lstm_cell_882/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_882/ReluRelu"while/lstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_1Mulwhile/lstm_cell_882/Sigmoid:y:0&while/lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/add_1AddV2while/lstm_cell_882/mul:z:0while/lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_882/Sigmoid_2Sigmoid"while/lstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_882/Relu_1Reluwhile/lstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_882/mul_2Mul!while/lstm_cell_882/Sigmoid_2:y:0(while/lstm_cell_882/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_882/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_882/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_882/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_882/BiasAdd/ReadVariableOp*^while/lstm_cell_882/MatMul/ReadVariableOp,^while/lstm_cell_882/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_882_biasadd_readvariableop_resource5while_lstm_cell_882_biasadd_readvariableop_resource_0"n
4while_lstm_cell_882_matmul_1_readvariableop_resource6while_lstm_cell_882_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_882_matmul_readvariableop_resource4while_lstm_cell_882_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_882/BiasAdd/ReadVariableOp*while/lstm_cell_882/BiasAdd/ReadVariableOp2V
)while/lstm_cell_882/MatMul/ReadVariableOp)while/lstm_cell_882/MatMul/ReadVariableOp2Z
+while/lstm_cell_882/MatMul_1/ReadVariableOp+while/lstm_cell_882/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5264173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5264173___redundant_placeholder05
1while_while_cond_5264173___redundant_placeholder15
1while_while_cond_5264173___redundant_placeholder25
1while_while_cond_5264173___redundant_placeholder3
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
%__inference_signature_wrapper_5262118
lstm_882_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_882_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_5259858o
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
_user_specified_namelstm_882_input
?W
?
 __inference__traced_save_5265330
file_prefix/
+savev2_dense_294_kernel_read_readvariableop-
)savev2_dense_294_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_882_lstm_cell_882_kernel_read_readvariableopF
Bsavev2_lstm_882_lstm_cell_882_recurrent_kernel_read_readvariableop:
6savev2_lstm_882_lstm_cell_882_bias_read_readvariableop<
8savev2_lstm_883_lstm_cell_883_kernel_read_readvariableopF
Bsavev2_lstm_883_lstm_cell_883_recurrent_kernel_read_readvariableop:
6savev2_lstm_883_lstm_cell_883_bias_read_readvariableop<
8savev2_lstm_884_lstm_cell_884_kernel_read_readvariableopF
Bsavev2_lstm_884_lstm_cell_884_recurrent_kernel_read_readvariableop:
6savev2_lstm_884_lstm_cell_884_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_294_kernel_m_read_readvariableop4
0savev2_adam_dense_294_bias_m_read_readvariableopC
?savev2_adam_lstm_882_lstm_cell_882_kernel_m_read_readvariableopM
Isavev2_adam_lstm_882_lstm_cell_882_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_882_lstm_cell_882_bias_m_read_readvariableopC
?savev2_adam_lstm_883_lstm_cell_883_kernel_m_read_readvariableopM
Isavev2_adam_lstm_883_lstm_cell_883_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_883_lstm_cell_883_bias_m_read_readvariableopC
?savev2_adam_lstm_884_lstm_cell_884_kernel_m_read_readvariableopM
Isavev2_adam_lstm_884_lstm_cell_884_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_884_lstm_cell_884_bias_m_read_readvariableop6
2savev2_adam_dense_294_kernel_v_read_readvariableop4
0savev2_adam_dense_294_bias_v_read_readvariableopC
?savev2_adam_lstm_882_lstm_cell_882_kernel_v_read_readvariableopM
Isavev2_adam_lstm_882_lstm_cell_882_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_882_lstm_cell_882_bias_v_read_readvariableopC
?savev2_adam_lstm_883_lstm_cell_883_kernel_v_read_readvariableopM
Isavev2_adam_lstm_883_lstm_cell_883_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_883_lstm_cell_883_bias_v_read_readvariableopC
?savev2_adam_lstm_884_lstm_cell_884_kernel_v_read_readvariableopM
Isavev2_adam_lstm_884_lstm_cell_884_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_884_lstm_cell_884_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_294_kernel_read_readvariableop)savev2_dense_294_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_882_lstm_cell_882_kernel_read_readvariableopBsavev2_lstm_882_lstm_cell_882_recurrent_kernel_read_readvariableop6savev2_lstm_882_lstm_cell_882_bias_read_readvariableop8savev2_lstm_883_lstm_cell_883_kernel_read_readvariableopBsavev2_lstm_883_lstm_cell_883_recurrent_kernel_read_readvariableop6savev2_lstm_883_lstm_cell_883_bias_read_readvariableop8savev2_lstm_884_lstm_cell_884_kernel_read_readvariableopBsavev2_lstm_884_lstm_cell_884_recurrent_kernel_read_readvariableop6savev2_lstm_884_lstm_cell_884_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_294_kernel_m_read_readvariableop0savev2_adam_dense_294_bias_m_read_readvariableop?savev2_adam_lstm_882_lstm_cell_882_kernel_m_read_readvariableopIsavev2_adam_lstm_882_lstm_cell_882_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_882_lstm_cell_882_bias_m_read_readvariableop?savev2_adam_lstm_883_lstm_cell_883_kernel_m_read_readvariableopIsavev2_adam_lstm_883_lstm_cell_883_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_883_lstm_cell_883_bias_m_read_readvariableop?savev2_adam_lstm_884_lstm_cell_884_kernel_m_read_readvariableopIsavev2_adam_lstm_884_lstm_cell_884_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_884_lstm_cell_884_bias_m_read_readvariableop2savev2_adam_dense_294_kernel_v_read_readvariableop0savev2_adam_dense_294_bias_v_read_readvariableop?savev2_adam_lstm_882_lstm_cell_882_kernel_v_read_readvariableopIsavev2_adam_lstm_882_lstm_cell_882_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_882_lstm_cell_882_bias_v_read_readvariableop?savev2_adam_lstm_883_lstm_cell_883_kernel_v_read_readvariableopIsavev2_adam_lstm_883_lstm_cell_883_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_883_lstm_cell_883_bias_v_read_readvariableop?savev2_adam_lstm_884_lstm_cell_884_kernel_v_read_readvariableopIsavev2_adam_lstm_884_lstm_cell_884_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_884_lstm_cell_884_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5265089

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
while_cond_5263557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5263557___redundant_placeholder05
1while_while_cond_5263557___redundant_placeholder15
1while_while_cond_5263557___redundant_placeholder25
1while_while_cond_5263557___redundant_placeholder3
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
*__inference_lstm_882_layer_call_fn_5263048
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5260199|
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
while_cond_5263128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5263128___redundant_placeholder05
1while_while_cond_5263128___redundant_placeholder15
1while_while_cond_5263128___redundant_placeholder25
1while_while_cond_5263128___redundant_placeholder3
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5260899

inputs'
lstm_cell_884_5260817:2('
lstm_cell_884_5260819:
(#
lstm_cell_884_5260821:(
identity??%lstm_cell_884/StatefulPartitionedCall?while;
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
%lstm_cell_884/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_884_5260817lstm_cell_884_5260819lstm_cell_884_5260821*
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5260771n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_884_5260817lstm_cell_884_5260819lstm_cell_884_5260821*
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
while_body_5260830*
condR
while_cond_5260829*K
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
NoOpNoOp&^lstm_cell_884/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_884/StatefulPartitionedCall%lstm_cell_884/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_294_layer_call_and_return_conditional_losses_5262083
lstm_882_input#
lstm_882_5262056:	?#
lstm_882_5262058:	d?
lstm_882_5262060:	?#
lstm_883_5262063:	d?#
lstm_883_5262065:	2?
lstm_883_5262067:	?"
lstm_884_5262070:2("
lstm_884_5262072:
(
lstm_884_5262074:(#
dense_294_5262077:

dense_294_5262079:
identity??!dense_294/StatefulPartitionedCall? lstm_882/StatefulPartitionedCall? lstm_883/StatefulPartitionedCall? lstm_884/StatefulPartitionedCall?
 lstm_882/StatefulPartitionedCallStatefulPartitionedCalllstm_882_inputlstm_882_5262056lstm_882_5262058lstm_882_5262060*
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5261903?
 lstm_883/StatefulPartitionedCallStatefulPartitionedCall)lstm_882/StatefulPartitionedCall:output:0lstm_883_5262063lstm_883_5262065lstm_883_5262067*
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5261738?
 lstm_884/StatefulPartitionedCallStatefulPartitionedCall)lstm_883/StatefulPartitionedCall:output:0lstm_884_5262070lstm_884_5262072lstm_884_5262074*
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5261573?
!dense_294/StatefulPartitionedCallStatefulPartitionedCall)lstm_884/StatefulPartitionedCall:output:0dense_294_5262077dense_294_5262079*
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
F__inference_dense_294_layer_call_and_return_conditional_losses_5261375y
IdentityIdentity*dense_294/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_294/StatefulPartitionedCall!^lstm_882/StatefulPartitionedCall!^lstm_883/StatefulPartitionedCall!^lstm_884/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_294/StatefulPartitionedCall!dense_294/StatefulPartitionedCall2D
 lstm_882/StatefulPartitionedCall lstm_882/StatefulPartitionedCall2D
 lstm_883/StatefulPartitionedCall lstm_883/StatefulPartitionedCall2D
 lstm_884/StatefulPartitionedCall lstm_884/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_882_input
?
?
*sequential_294_lstm_884_while_cond_5259767L
Hsequential_294_lstm_884_while_sequential_294_lstm_884_while_loop_counterR
Nsequential_294_lstm_884_while_sequential_294_lstm_884_while_maximum_iterations-
)sequential_294_lstm_884_while_placeholder/
+sequential_294_lstm_884_while_placeholder_1/
+sequential_294_lstm_884_while_placeholder_2/
+sequential_294_lstm_884_while_placeholder_3N
Jsequential_294_lstm_884_while_less_sequential_294_lstm_884_strided_slice_1e
asequential_294_lstm_884_while_sequential_294_lstm_884_while_cond_5259767___redundant_placeholder0e
asequential_294_lstm_884_while_sequential_294_lstm_884_while_cond_5259767___redundant_placeholder1e
asequential_294_lstm_884_while_sequential_294_lstm_884_while_cond_5259767___redundant_placeholder2e
asequential_294_lstm_884_while_sequential_294_lstm_884_while_cond_5259767___redundant_placeholder3*
&sequential_294_lstm_884_while_identity
?
"sequential_294/lstm_884/while/LessLess)sequential_294_lstm_884_while_placeholderJsequential_294_lstm_884_while_less_sequential_294_lstm_884_strided_slice_1*
T0*
_output_shapes
: {
&sequential_294/lstm_884/while/IdentityIdentity&sequential_294/lstm_884/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_294_lstm_884_while_identity/sequential_294/lstm_884/while/Identity:output:0*(
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5261357

inputs>
,lstm_cell_884_matmul_readvariableop_resource:2(@
.lstm_cell_884_matmul_1_readvariableop_resource:
(;
-lstm_cell_884_biasadd_readvariableop_resource:(
identity??$lstm_cell_884/BiasAdd/ReadVariableOp?#lstm_cell_884/MatMul/ReadVariableOp?%lstm_cell_884/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_884/MatMul/ReadVariableOpReadVariableOp,lstm_cell_884_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_884/MatMulMatMulstrided_slice_2:output:0+lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_884_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_884/MatMul_1MatMulzeros:output:0-lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_884/addAddV2lstm_cell_884/MatMul:product:0 lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_884_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_884/BiasAddBiasAddlstm_cell_884/add:z:0,lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_884/splitSplit&lstm_cell_884/split/split_dim:output:0lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_884/SigmoidSigmoidlstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_1Sigmoidlstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_884/mulMullstm_cell_884/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_884/ReluRelulstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_1Mullstm_cell_884/Sigmoid:y:0 lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_884/add_1AddV2lstm_cell_884/mul:z:0lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_2Sigmoidlstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_884/Relu_1Relulstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_2Mullstm_cell_884/Sigmoid_2:y:0"lstm_cell_884/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_884_matmul_readvariableop_resource.lstm_cell_884_matmul_1_readvariableop_resource-lstm_cell_884_biasadd_readvariableop_resource*
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
while_body_5261273*
condR
while_cond_5261272*K
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
NoOpNoOp%^lstm_cell_884/BiasAdd/ReadVariableOp$^lstm_cell_884/MatMul/ReadVariableOp&^lstm_cell_884/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_884/BiasAdd/ReadVariableOp$lstm_cell_884/BiasAdd/ReadVariableOp2J
#lstm_cell_884/MatMul/ReadVariableOp#lstm_cell_884/MatMul/ReadVariableOp2N
%lstm_cell_884/MatMul_1/ReadVariableOp%lstm_cell_884/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_884_layer_call_and_return_conditional_losses_5261573

inputs>
,lstm_cell_884_matmul_readvariableop_resource:2(@
.lstm_cell_884_matmul_1_readvariableop_resource:
(;
-lstm_cell_884_biasadd_readvariableop_resource:(
identity??$lstm_cell_884/BiasAdd/ReadVariableOp?#lstm_cell_884/MatMul/ReadVariableOp?%lstm_cell_884/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_884/MatMul/ReadVariableOpReadVariableOp,lstm_cell_884_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_884/MatMulMatMulstrided_slice_2:output:0+lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_884_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_884/MatMul_1MatMulzeros:output:0-lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_884/addAddV2lstm_cell_884/MatMul:product:0 lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_884_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_884/BiasAddBiasAddlstm_cell_884/add:z:0,lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_884/splitSplit&lstm_cell_884/split/split_dim:output:0lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_884/SigmoidSigmoidlstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_1Sigmoidlstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_884/mulMullstm_cell_884/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_884/ReluRelulstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_1Mullstm_cell_884/Sigmoid:y:0 lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_884/add_1AddV2lstm_cell_884/mul:z:0lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_884/Sigmoid_2Sigmoidlstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_884/Relu_1Relulstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_884/mul_2Mullstm_cell_884/Sigmoid_2:y:0"lstm_cell_884/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_884_matmul_readvariableop_resource.lstm_cell_884_matmul_1_readvariableop_resource-lstm_cell_884_biasadd_readvariableop_resource*
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
while_body_5261489*
condR
while_cond_5261488*K
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
NoOpNoOp%^lstm_cell_884/BiasAdd/ReadVariableOp$^lstm_cell_884/MatMul/ReadVariableOp&^lstm_cell_884/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_884/BiasAdd/ReadVariableOp$lstm_cell_884/BiasAdd/ReadVariableOp2J
#lstm_cell_884/MatMul/ReadVariableOp#lstm_cell_884/MatMul/ReadVariableOp2N
%lstm_cell_884/MatMul_1/ReadVariableOp%lstm_cell_884/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_5260638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5260638___redundant_placeholder05
1while_while_cond_5260638___redundant_placeholder15
1while_while_cond_5260638___redundant_placeholder25
1while_while_cond_5260638___redundant_placeholder3
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
while_body_5260480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_883_5260504_0:	d?0
while_lstm_cell_883_5260506_0:	2?,
while_lstm_cell_883_5260508_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_883_5260504:	d?.
while_lstm_cell_883_5260506:	2?*
while_lstm_cell_883_5260508:	???+while/lstm_cell_883/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_883/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_883_5260504_0while_lstm_cell_883_5260506_0while_lstm_cell_883_5260508_0*
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5260421?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_883/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_883/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_883/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_883/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_883_5260504while_lstm_cell_883_5260504_0"<
while_lstm_cell_883_5260506while_lstm_cell_883_5260506_0"<
while_lstm_cell_883_5260508while_lstm_cell_883_5260508_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_883/StatefulPartitionedCall+while/lstm_cell_883/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5263414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5263414___redundant_placeholder05
1while_while_cond_5263414___redundant_placeholder15
1while_while_cond_5263414___redundant_placeholder25
1while_while_cond_5263414___redundant_placeholder3
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
while_body_5264647
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_884_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_884_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_884_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_884_matmul_readvariableop_resource:2(F
4while_lstm_cell_884_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_884_biasadd_readvariableop_resource:(??*while/lstm_cell_884/BiasAdd/ReadVariableOp?)while/lstm_cell_884/MatMul/ReadVariableOp?+while/lstm_cell_884/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_884/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_884_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_884/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_884_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_884/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_884/addAddV2$while/lstm_cell_884/MatMul:product:0&while/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_884_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_884/BiasAddBiasAddwhile/lstm_cell_884/add:z:02while/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_884/splitSplit,while/lstm_cell_884/split/split_dim:output:0$while/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_884/SigmoidSigmoid"while/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_1Sigmoid"while/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mulMul!while/lstm_cell_884/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_884/ReluRelu"while/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_1Mulwhile/lstm_cell_884/Sigmoid:y:0&while/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/add_1AddV2while/lstm_cell_884/mul:z:0while/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_2Sigmoid"while/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_884/Relu_1Reluwhile/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_2Mul!while/lstm_cell_884/Sigmoid_2:y:0(while/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_884/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_884/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_884/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_884/BiasAdd/ReadVariableOp*^while/lstm_cell_884/MatMul/ReadVariableOp,^while/lstm_cell_884/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_884_biasadd_readvariableop_resource5while_lstm_cell_884_biasadd_readvariableop_resource_0"n
4while_lstm_cell_884_matmul_1_readvariableop_resource6while_lstm_cell_884_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_884_matmul_readvariableop_resource4while_lstm_cell_884_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_884/BiasAdd/ReadVariableOp*while/lstm_cell_884/BiasAdd/ReadVariableOp2V
)while/lstm_cell_884/MatMul/ReadVariableOp)while/lstm_cell_884/MatMul/ReadVariableOp2Z
+while/lstm_cell_884/MatMul_1/ReadVariableOp+while/lstm_cell_884/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_294_layer_call_and_return_conditional_losses_5264893

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
+__inference_dense_294_layer_call_fn_5264883

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
F__inference_dense_294_layer_call_and_return_conditional_losses_5261375o
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

?
lstm_884_while_cond_5262935.
*lstm_884_while_lstm_884_while_loop_counter4
0lstm_884_while_lstm_884_while_maximum_iterations
lstm_884_while_placeholder 
lstm_884_while_placeholder_1 
lstm_884_while_placeholder_2 
lstm_884_while_placeholder_30
,lstm_884_while_less_lstm_884_strided_slice_1G
Clstm_884_while_lstm_884_while_cond_5262935___redundant_placeholder0G
Clstm_884_while_lstm_884_while_cond_5262935___redundant_placeholder1G
Clstm_884_while_lstm_884_while_cond_5262935___redundant_placeholder2G
Clstm_884_while_lstm_884_while_cond_5262935___redundant_placeholder3
lstm_884_while_identity
?
lstm_884/while/LessLesslstm_884_while_placeholder,lstm_884_while_less_lstm_884_strided_slice_1*
T0*
_output_shapes
: ]
lstm_884/while/IdentityIdentitylstm_884/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_884_while_identity lstm_884/while/Identity:output:0*(
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5260549

inputs(
lstm_cell_883_5260467:	d?(
lstm_cell_883_5260469:	2?$
lstm_cell_883_5260471:	?
identity??%lstm_cell_883/StatefulPartitionedCall?while;
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
%lstm_cell_883/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_883_5260467lstm_cell_883_5260469lstm_cell_883_5260471*
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5260421n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_883_5260467lstm_cell_883_5260469lstm_cell_883_5260471*
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
while_body_5260480*
condR
while_cond_5260479*K
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
NoOpNoOp&^lstm_cell_883/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_883/StatefulPartitionedCall%lstm_cell_883/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263356
inputs_0?
,lstm_cell_882_matmul_readvariableop_resource:	?A
.lstm_cell_882_matmul_1_readvariableop_resource:	d?<
-lstm_cell_882_biasadd_readvariableop_resource:	?
identity??$lstm_cell_882/BiasAdd/ReadVariableOp?#lstm_cell_882/MatMul/ReadVariableOp?%lstm_cell_882/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_882/MatMul/ReadVariableOpReadVariableOp,lstm_cell_882_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_882/MatMulMatMulstrided_slice_2:output:0+lstm_cell_882/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_882/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_882_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_882/MatMul_1MatMulzeros:output:0-lstm_cell_882/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_882/addAddV2lstm_cell_882/MatMul:product:0 lstm_cell_882/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_882/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_882_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_882/BiasAddBiasAddlstm_cell_882/add:z:0,lstm_cell_882/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_882/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_882/splitSplit&lstm_cell_882/split/split_dim:output:0lstm_cell_882/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_882/SigmoidSigmoidlstm_cell_882/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_1Sigmoidlstm_cell_882/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_882/mulMullstm_cell_882/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_882/ReluRelulstm_cell_882/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_1Mullstm_cell_882/Sigmoid:y:0 lstm_cell_882/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_882/add_1AddV2lstm_cell_882/mul:z:0lstm_cell_882/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_882/Sigmoid_2Sigmoidlstm_cell_882/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_882/Relu_1Relulstm_cell_882/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_882/mul_2Mullstm_cell_882/Sigmoid_2:y:0"lstm_cell_882/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_882_matmul_readvariableop_resource.lstm_cell_882_matmul_1_readvariableop_resource-lstm_cell_882_biasadd_readvariableop_resource*
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
while_body_5263272*
condR
while_cond_5263271*K
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
NoOpNoOp%^lstm_cell_882/BiasAdd/ReadVariableOp$^lstm_cell_882/MatMul/ReadVariableOp&^lstm_cell_882/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_882/BiasAdd/ReadVariableOp$lstm_cell_882/BiasAdd/ReadVariableOp2J
#lstm_cell_882/MatMul/ReadVariableOp#lstm_cell_882/MatMul/ReadVariableOp2N
%lstm_cell_882/MatMul_1/ReadVariableOp%lstm_cell_882/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_5263888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_883_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_883_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_883_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_883_matmul_readvariableop_resource:	d?G
4while_lstm_cell_883_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_883_biasadd_readvariableop_resource:	???*while/lstm_cell_883/BiasAdd/ReadVariableOp?)while/lstm_cell_883/MatMul/ReadVariableOp?+while/lstm_cell_883/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_883/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_883_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_883/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_883_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_883/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_883/addAddV2$while/lstm_cell_883/MatMul:product:0&while/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_883_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_883/BiasAddBiasAddwhile/lstm_cell_883/add:z:02while/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_883/splitSplit,while/lstm_cell_883/split/split_dim:output:0$while/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_883/SigmoidSigmoid"while/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_1Sigmoid"while/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mulMul!while/lstm_cell_883/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_883/ReluRelu"while/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_1Mulwhile/lstm_cell_883/Sigmoid:y:0&while/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/add_1AddV2while/lstm_cell_883/mul:z:0while/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_883/Sigmoid_2Sigmoid"while/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_883/Relu_1Reluwhile/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_883/mul_2Mul!while/lstm_cell_883/Sigmoid_2:y:0(while/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_883/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_883/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_883/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_883/BiasAdd/ReadVariableOp*^while/lstm_cell_883/MatMul/ReadVariableOp,^while/lstm_cell_883/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_883_biasadd_readvariableop_resource5while_lstm_cell_883_biasadd_readvariableop_resource_0"n
4while_lstm_cell_883_matmul_1_readvariableop_resource6while_lstm_cell_883_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_883_matmul_readvariableop_resource4while_lstm_cell_883_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_883/BiasAdd/ReadVariableOp*while/lstm_cell_883/BiasAdd/ReadVariableOp2V
)while/lstm_cell_883/MatMul/ReadVariableOp)while/lstm_cell_883/MatMul/ReadVariableOp2Z
+while/lstm_cell_883/MatMul_1/ReadVariableOp+while/lstm_cell_883/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_883_while_body_5262370.
*lstm_883_while_lstm_883_while_loop_counter4
0lstm_883_while_lstm_883_while_maximum_iterations
lstm_883_while_placeholder 
lstm_883_while_placeholder_1 
lstm_883_while_placeholder_2 
lstm_883_while_placeholder_3-
)lstm_883_while_lstm_883_strided_slice_1_0i
elstm_883_while_tensorarrayv2read_tensorlistgetitem_lstm_883_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_883_while_lstm_cell_883_matmul_readvariableop_resource_0:	d?R
?lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource_0:	2?M
>lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource_0:	?
lstm_883_while_identity
lstm_883_while_identity_1
lstm_883_while_identity_2
lstm_883_while_identity_3
lstm_883_while_identity_4
lstm_883_while_identity_5+
'lstm_883_while_lstm_883_strided_slice_1g
clstm_883_while_tensorarrayv2read_tensorlistgetitem_lstm_883_tensorarrayunstack_tensorlistfromtensorN
;lstm_883_while_lstm_cell_883_matmul_readvariableop_resource:	d?P
=lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource:	2?K
<lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource:	???3lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp?2lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp?4lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp?
@lstm_883/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_883/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_883_while_tensorarrayv2read_tensorlistgetitem_lstm_883_tensorarrayunstack_tensorlistfromtensor_0lstm_883_while_placeholderIlstm_883/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_883/while/lstm_cell_883/MatMul/ReadVariableOpReadVariableOp=lstm_883_while_lstm_cell_883_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_883/while/lstm_cell_883/MatMulMatMul9lstm_883/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOpReadVariableOp?lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_883/while/lstm_cell_883/MatMul_1MatMullstm_883_while_placeholder_2<lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_883/while/lstm_cell_883/addAddV2-lstm_883/while/lstm_cell_883/MatMul:product:0/lstm_883/while/lstm_cell_883/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOpReadVariableOp>lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_883/while/lstm_cell_883/BiasAddBiasAdd$lstm_883/while/lstm_cell_883/add:z:0;lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_883/while/lstm_cell_883/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_883/while/lstm_cell_883/splitSplit5lstm_883/while/lstm_cell_883/split/split_dim:output:0-lstm_883/while/lstm_cell_883/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_883/while/lstm_cell_883/SigmoidSigmoid+lstm_883/while/lstm_cell_883/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_883/while/lstm_cell_883/Sigmoid_1Sigmoid+lstm_883/while/lstm_cell_883/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_883/while/lstm_cell_883/mulMul*lstm_883/while/lstm_cell_883/Sigmoid_1:y:0lstm_883_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_883/while/lstm_cell_883/ReluRelu+lstm_883/while/lstm_cell_883/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_883/while/lstm_cell_883/mul_1Mul(lstm_883/while/lstm_cell_883/Sigmoid:y:0/lstm_883/while/lstm_cell_883/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_883/while/lstm_cell_883/add_1AddV2$lstm_883/while/lstm_cell_883/mul:z:0&lstm_883/while/lstm_cell_883/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_883/while/lstm_cell_883/Sigmoid_2Sigmoid+lstm_883/while/lstm_cell_883/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_883/while/lstm_cell_883/Relu_1Relu&lstm_883/while/lstm_cell_883/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_883/while/lstm_cell_883/mul_2Mul*lstm_883/while/lstm_cell_883/Sigmoid_2:y:01lstm_883/while/lstm_cell_883/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_883/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_883_while_placeholder_1lstm_883_while_placeholder&lstm_883/while/lstm_cell_883/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_883/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_883/while/addAddV2lstm_883_while_placeholderlstm_883/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_883/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_883/while/add_1AddV2*lstm_883_while_lstm_883_while_loop_counterlstm_883/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_883/while/IdentityIdentitylstm_883/while/add_1:z:0^lstm_883/while/NoOp*
T0*
_output_shapes
: ?
lstm_883/while/Identity_1Identity0lstm_883_while_lstm_883_while_maximum_iterations^lstm_883/while/NoOp*
T0*
_output_shapes
: t
lstm_883/while/Identity_2Identitylstm_883/while/add:z:0^lstm_883/while/NoOp*
T0*
_output_shapes
: ?
lstm_883/while/Identity_3IdentityClstm_883/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_883/while/NoOp*
T0*
_output_shapes
: ?
lstm_883/while/Identity_4Identity&lstm_883/while/lstm_cell_883/mul_2:z:0^lstm_883/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_883/while/Identity_5Identity&lstm_883/while/lstm_cell_883/add_1:z:0^lstm_883/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_883/while/NoOpNoOp4^lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp3^lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp5^lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_883_while_identity lstm_883/while/Identity:output:0"?
lstm_883_while_identity_1"lstm_883/while/Identity_1:output:0"?
lstm_883_while_identity_2"lstm_883/while/Identity_2:output:0"?
lstm_883_while_identity_3"lstm_883/while/Identity_3:output:0"?
lstm_883_while_identity_4"lstm_883/while/Identity_4:output:0"?
lstm_883_while_identity_5"lstm_883/while/Identity_5:output:0"T
'lstm_883_while_lstm_883_strided_slice_1)lstm_883_while_lstm_883_strided_slice_1_0"~
<lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource>lstm_883_while_lstm_cell_883_biasadd_readvariableop_resource_0"?
=lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource?lstm_883_while_lstm_cell_883_matmul_1_readvariableop_resource_0"|
;lstm_883_while_lstm_cell_883_matmul_readvariableop_resource=lstm_883_while_lstm_cell_883_matmul_readvariableop_resource_0"?
clstm_883_while_tensorarrayv2read_tensorlistgetitem_lstm_883_tensorarrayunstack_tensorlistfromtensorelstm_883_while_tensorarrayv2read_tensorlistgetitem_lstm_883_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp3lstm_883/while/lstm_cell_883/BiasAdd/ReadVariableOp2h
2lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp2lstm_883/while/lstm_cell_883/MatMul/ReadVariableOp2l
4lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp4lstm_883/while/lstm_cell_883/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5260972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5260972___redundant_placeholder05
1while_while_cond_5260972___redundant_placeholder15
1while_while_cond_5260972___redundant_placeholder25
1while_while_cond_5260972___redundant_placeholder3
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
*__inference_lstm_883_layer_call_fn_5263686

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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5261738s
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5260708

inputs'
lstm_cell_884_5260626:2('
lstm_cell_884_5260628:
(#
lstm_cell_884_5260630:(
identity??%lstm_cell_884/StatefulPartitionedCall?while;
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
%lstm_cell_884/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_884_5260626lstm_cell_884_5260628lstm_cell_884_5260630*
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5260625n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_884_5260626lstm_cell_884_5260628lstm_cell_884_5260630*
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
while_body_5260639*
condR
while_cond_5260638*K
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
NoOpNoOp&^lstm_cell_884/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_884/StatefulPartitionedCall%lstm_cell_884/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_5264790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_884_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_884_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_884_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_884_matmul_readvariableop_resource:2(F
4while_lstm_cell_884_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_884_biasadd_readvariableop_resource:(??*while/lstm_cell_884/BiasAdd/ReadVariableOp?)while/lstm_cell_884/MatMul/ReadVariableOp?+while/lstm_cell_884/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_884/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_884_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_884/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_884_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_884/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_884/addAddV2$while/lstm_cell_884/MatMul:product:0&while/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_884_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_884/BiasAddBiasAddwhile/lstm_cell_884/add:z:02while/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_884/splitSplit,while/lstm_cell_884/split/split_dim:output:0$while/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_884/SigmoidSigmoid"while/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_1Sigmoid"while/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mulMul!while/lstm_cell_884/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_884/ReluRelu"while/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_1Mulwhile/lstm_cell_884/Sigmoid:y:0&while/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/add_1AddV2while/lstm_cell_884/mul:z:0while/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_884/Sigmoid_2Sigmoid"while/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_884/Relu_1Reluwhile/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_884/mul_2Mul!while/lstm_cell_884/Sigmoid_2:y:0(while/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_884/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_884/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_884/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_884/BiasAdd/ReadVariableOp*^while/lstm_cell_884/MatMul/ReadVariableOp,^while/lstm_cell_884/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_884_biasadd_readvariableop_resource5while_lstm_cell_884_biasadd_readvariableop_resource_0"n
4while_lstm_cell_884_matmul_1_readvariableop_resource6while_lstm_cell_884_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_884_matmul_readvariableop_resource4while_lstm_cell_884_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_884/BiasAdd/ReadVariableOp*while/lstm_cell_884/BiasAdd/ReadVariableOp2V
)while/lstm_cell_884/MatMul/ReadVariableOp)while/lstm_cell_884/MatMul/ReadVariableOp2Z
+while/lstm_cell_884/MatMul_1/ReadVariableOp+while/lstm_cell_884/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_884_while_body_5262509.
*lstm_884_while_lstm_884_while_loop_counter4
0lstm_884_while_lstm_884_while_maximum_iterations
lstm_884_while_placeholder 
lstm_884_while_placeholder_1 
lstm_884_while_placeholder_2 
lstm_884_while_placeholder_3-
)lstm_884_while_lstm_884_strided_slice_1_0i
elstm_884_while_tensorarrayv2read_tensorlistgetitem_lstm_884_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_884_while_lstm_cell_884_matmul_readvariableop_resource_0:2(Q
?lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource_0:
(L
>lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource_0:(
lstm_884_while_identity
lstm_884_while_identity_1
lstm_884_while_identity_2
lstm_884_while_identity_3
lstm_884_while_identity_4
lstm_884_while_identity_5+
'lstm_884_while_lstm_884_strided_slice_1g
clstm_884_while_tensorarrayv2read_tensorlistgetitem_lstm_884_tensorarrayunstack_tensorlistfromtensorM
;lstm_884_while_lstm_cell_884_matmul_readvariableop_resource:2(O
=lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource:
(J
<lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource:(??3lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp?2lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp?4lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp?
@lstm_884/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_884/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_884_while_tensorarrayv2read_tensorlistgetitem_lstm_884_tensorarrayunstack_tensorlistfromtensor_0lstm_884_while_placeholderIlstm_884/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_884/while/lstm_cell_884/MatMul/ReadVariableOpReadVariableOp=lstm_884_while_lstm_cell_884_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_884/while/lstm_cell_884/MatMulMatMul9lstm_884/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOpReadVariableOp?lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_884/while/lstm_cell_884/MatMul_1MatMullstm_884_while_placeholder_2<lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_884/while/lstm_cell_884/addAddV2-lstm_884/while/lstm_cell_884/MatMul:product:0/lstm_884/while/lstm_cell_884/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOpReadVariableOp>lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_884/while/lstm_cell_884/BiasAddBiasAdd$lstm_884/while/lstm_cell_884/add:z:0;lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_884/while/lstm_cell_884/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_884/while/lstm_cell_884/splitSplit5lstm_884/while/lstm_cell_884/split/split_dim:output:0-lstm_884/while/lstm_cell_884/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_884/while/lstm_cell_884/SigmoidSigmoid+lstm_884/while/lstm_cell_884/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_884/while/lstm_cell_884/Sigmoid_1Sigmoid+lstm_884/while/lstm_cell_884/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_884/while/lstm_cell_884/mulMul*lstm_884/while/lstm_cell_884/Sigmoid_1:y:0lstm_884_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_884/while/lstm_cell_884/ReluRelu+lstm_884/while/lstm_cell_884/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_884/while/lstm_cell_884/mul_1Mul(lstm_884/while/lstm_cell_884/Sigmoid:y:0/lstm_884/while/lstm_cell_884/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_884/while/lstm_cell_884/add_1AddV2$lstm_884/while/lstm_cell_884/mul:z:0&lstm_884/while/lstm_cell_884/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_884/while/lstm_cell_884/Sigmoid_2Sigmoid+lstm_884/while/lstm_cell_884/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_884/while/lstm_cell_884/Relu_1Relu&lstm_884/while/lstm_cell_884/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_884/while/lstm_cell_884/mul_2Mul*lstm_884/while/lstm_cell_884/Sigmoid_2:y:01lstm_884/while/lstm_cell_884/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_884/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_884_while_placeholder_1lstm_884_while_placeholder&lstm_884/while/lstm_cell_884/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_884/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_884/while/addAddV2lstm_884_while_placeholderlstm_884/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_884/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_884/while/add_1AddV2*lstm_884_while_lstm_884_while_loop_counterlstm_884/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_884/while/IdentityIdentitylstm_884/while/add_1:z:0^lstm_884/while/NoOp*
T0*
_output_shapes
: ?
lstm_884/while/Identity_1Identity0lstm_884_while_lstm_884_while_maximum_iterations^lstm_884/while/NoOp*
T0*
_output_shapes
: t
lstm_884/while/Identity_2Identitylstm_884/while/add:z:0^lstm_884/while/NoOp*
T0*
_output_shapes
: ?
lstm_884/while/Identity_3IdentityClstm_884/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_884/while/NoOp*
T0*
_output_shapes
: ?
lstm_884/while/Identity_4Identity&lstm_884/while/lstm_cell_884/mul_2:z:0^lstm_884/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_884/while/Identity_5Identity&lstm_884/while/lstm_cell_884/add_1:z:0^lstm_884/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_884/while/NoOpNoOp4^lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp3^lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp5^lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_884_while_identity lstm_884/while/Identity:output:0"?
lstm_884_while_identity_1"lstm_884/while/Identity_1:output:0"?
lstm_884_while_identity_2"lstm_884/while/Identity_2:output:0"?
lstm_884_while_identity_3"lstm_884/while/Identity_3:output:0"?
lstm_884_while_identity_4"lstm_884/while/Identity_4:output:0"?
lstm_884_while_identity_5"lstm_884/while/Identity_5:output:0"T
'lstm_884_while_lstm_884_strided_slice_1)lstm_884_while_lstm_884_strided_slice_1_0"~
<lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource>lstm_884_while_lstm_cell_884_biasadd_readvariableop_resource_0"?
=lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource?lstm_884_while_lstm_cell_884_matmul_1_readvariableop_resource_0"|
;lstm_884_while_lstm_cell_884_matmul_readvariableop_resource=lstm_884_while_lstm_cell_884_matmul_readvariableop_resource_0"?
clstm_884_while_tensorarrayv2read_tensorlistgetitem_lstm_884_tensorarrayunstack_tensorlistfromtensorelstm_884_while_tensorarrayv2read_tensorlistgetitem_lstm_884_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp3lstm_884/while/lstm_cell_884/BiasAdd/ReadVariableOp2h
2lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp2lstm_884/while/lstm_cell_884/MatMul/ReadVariableOp2l
4lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp4lstm_884/while/lstm_cell_884/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5260639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_884_5260663_0:2(/
while_lstm_cell_884_5260665_0:
(+
while_lstm_cell_884_5260667_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_884_5260663:2(-
while_lstm_cell_884_5260665:
()
while_lstm_cell_884_5260667:(??+while/lstm_cell_884/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_884/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_884_5260663_0while_lstm_cell_884_5260665_0while_lstm_cell_884_5260667_0*
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5260625?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_884/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_884/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_884/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_884/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_884_5260663while_lstm_cell_884_5260663_0"<
while_lstm_cell_884_5260665while_lstm_cell_884_5260665_0"<
while_lstm_cell_884_5260667while_lstm_cell_884_5260667_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_884/StatefulPartitionedCall+while/lstm_cell_884/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_5265460
file_prefix3
!assignvariableop_dense_294_kernel:
/
!assignvariableop_1_dense_294_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_882_lstm_cell_882_kernel:	?M
:assignvariableop_8_lstm_882_lstm_cell_882_recurrent_kernel:	d?=
.assignvariableop_9_lstm_882_lstm_cell_882_bias:	?D
1assignvariableop_10_lstm_883_lstm_cell_883_kernel:	d?N
;assignvariableop_11_lstm_883_lstm_cell_883_recurrent_kernel:	2?>
/assignvariableop_12_lstm_883_lstm_cell_883_bias:	?C
1assignvariableop_13_lstm_884_lstm_cell_884_kernel:2(M
;assignvariableop_14_lstm_884_lstm_cell_884_recurrent_kernel:
(=
/assignvariableop_15_lstm_884_lstm_cell_884_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_294_kernel_m:
7
)assignvariableop_19_adam_dense_294_bias_m:K
8assignvariableop_20_adam_lstm_882_lstm_cell_882_kernel_m:	?U
Bassignvariableop_21_adam_lstm_882_lstm_cell_882_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_882_lstm_cell_882_bias_m:	?K
8assignvariableop_23_adam_lstm_883_lstm_cell_883_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_883_lstm_cell_883_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_883_lstm_cell_883_bias_m:	?J
8assignvariableop_26_adam_lstm_884_lstm_cell_884_kernel_m:2(T
Bassignvariableop_27_adam_lstm_884_lstm_cell_884_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_884_lstm_cell_884_bias_m:(=
+assignvariableop_29_adam_dense_294_kernel_v:
7
)assignvariableop_30_adam_dense_294_bias_v:K
8assignvariableop_31_adam_lstm_882_lstm_cell_882_kernel_v:	?U
Bassignvariableop_32_adam_lstm_882_lstm_cell_882_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_882_lstm_cell_882_bias_v:	?K
8assignvariableop_34_adam_lstm_883_lstm_cell_883_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_883_lstm_cell_883_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_883_lstm_cell_883_bias_v:	?J
8assignvariableop_37_adam_lstm_884_lstm_cell_884_kernel_v:2(T
Bassignvariableop_38_adam_lstm_884_lstm_cell_884_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_884_lstm_cell_884_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_294_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_294_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_882_lstm_cell_882_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_882_lstm_cell_882_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_882_lstm_cell_882_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_883_lstm_cell_883_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_883_lstm_cell_883_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_883_lstm_cell_883_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_884_lstm_cell_884_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_884_lstm_cell_884_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_884_lstm_cell_884_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_294_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_294_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_882_lstm_cell_882_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_882_lstm_cell_882_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_882_lstm_cell_882_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_883_lstm_cell_883_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_883_lstm_cell_883_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_883_lstm_cell_883_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_884_lstm_cell_884_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_884_lstm_cell_884_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_884_lstm_cell_884_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_294_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_294_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_882_lstm_cell_882_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_882_lstm_cell_882_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_882_lstm_cell_882_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_883_lstm_cell_883_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_883_lstm_cell_883_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_883_lstm_cell_883_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_884_lstm_cell_884_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_884_lstm_cell_884_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_884_lstm_cell_884_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_5260479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5260479___redundant_placeholder05
1while_while_cond_5260479___redundant_placeholder15
1while_while_cond_5260479___redundant_placeholder25
1while_while_cond_5260479___redundant_placeholder3
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5259925

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
lstm_882_input;
 serving_default_lstm_882_input:0?????????=
	dense_2940
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
2dense_294/kernel
:2dense_294/bias
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
0:.	?2lstm_882/lstm_cell_882/kernel
::8	d?2'lstm_882/lstm_cell_882/recurrent_kernel
*:(?2lstm_882/lstm_cell_882/bias
0:.	d?2lstm_883/lstm_cell_883/kernel
::8	2?2'lstm_883/lstm_cell_883/recurrent_kernel
*:(?2lstm_883/lstm_cell_883/bias
/:-2(2lstm_884/lstm_cell_884/kernel
9:7
(2'lstm_884/lstm_cell_884/recurrent_kernel
):'(2lstm_884/lstm_cell_884/bias
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
2Adam/dense_294/kernel/m
!:2Adam/dense_294/bias/m
5:3	?2$Adam/lstm_882/lstm_cell_882/kernel/m
?:=	d?2.Adam/lstm_882/lstm_cell_882/recurrent_kernel/m
/:-?2"Adam/lstm_882/lstm_cell_882/bias/m
5:3	d?2$Adam/lstm_883/lstm_cell_883/kernel/m
?:=	2?2.Adam/lstm_883/lstm_cell_883/recurrent_kernel/m
/:-?2"Adam/lstm_883/lstm_cell_883/bias/m
4:22(2$Adam/lstm_884/lstm_cell_884/kernel/m
>:<
(2.Adam/lstm_884/lstm_cell_884/recurrent_kernel/m
.:,(2"Adam/lstm_884/lstm_cell_884/bias/m
':%
2Adam/dense_294/kernel/v
!:2Adam/dense_294/bias/v
5:3	?2$Adam/lstm_882/lstm_cell_882/kernel/v
?:=	d?2.Adam/lstm_882/lstm_cell_882/recurrent_kernel/v
/:-?2"Adam/lstm_882/lstm_cell_882/bias/v
5:3	d?2$Adam/lstm_883/lstm_cell_883/kernel/v
?:=	2?2.Adam/lstm_883/lstm_cell_883/recurrent_kernel/v
/:-?2"Adam/lstm_883/lstm_cell_883/bias/v
4:22(2$Adam/lstm_884/lstm_cell_884/kernel/v
>:<
(2.Adam/lstm_884/lstm_cell_884/recurrent_kernel/v
.:,(2"Adam/lstm_884/lstm_cell_884/bias/v
?2?
0__inference_sequential_294_layer_call_fn_5261407
0__inference_sequential_294_layer_call_fn_5262145
0__inference_sequential_294_layer_call_fn_5262172
0__inference_sequential_294_layer_call_fn_5262023?
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
K__inference_sequential_294_layer_call_and_return_conditional_losses_5262599
K__inference_sequential_294_layer_call_and_return_conditional_losses_5263026
K__inference_sequential_294_layer_call_and_return_conditional_losses_5262053
K__inference_sequential_294_layer_call_and_return_conditional_losses_5262083?
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
"__inference__wrapped_model_5259858lstm_882_input"?
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
*__inference_lstm_882_layer_call_fn_5263037
*__inference_lstm_882_layer_call_fn_5263048
*__inference_lstm_882_layer_call_fn_5263059
*__inference_lstm_882_layer_call_fn_5263070?
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263213
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263356
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263499
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263642?
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
*__inference_lstm_883_layer_call_fn_5263653
*__inference_lstm_883_layer_call_fn_5263664
*__inference_lstm_883_layer_call_fn_5263675
*__inference_lstm_883_layer_call_fn_5263686?
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5263829
E__inference_lstm_883_layer_call_and_return_conditional_losses_5263972
E__inference_lstm_883_layer_call_and_return_conditional_losses_5264115
E__inference_lstm_883_layer_call_and_return_conditional_losses_5264258?
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
*__inference_lstm_884_layer_call_fn_5264269
*__inference_lstm_884_layer_call_fn_5264280
*__inference_lstm_884_layer_call_fn_5264291
*__inference_lstm_884_layer_call_fn_5264302?
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264445
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264588
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264731
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264874?
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
+__inference_dense_294_layer_call_fn_5264883?
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
F__inference_dense_294_layer_call_and_return_conditional_losses_5264893?
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
%__inference_signature_wrapper_5262118lstm_882_input"?
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
/__inference_lstm_cell_882_layer_call_fn_5264910
/__inference_lstm_cell_882_layer_call_fn_5264927?
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5264959
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5264991?
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
/__inference_lstm_cell_883_layer_call_fn_5265008
/__inference_lstm_cell_883_layer_call_fn_5265025?
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5265057
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5265089?
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
/__inference_lstm_cell_884_layer_call_fn_5265106
/__inference_lstm_cell_884_layer_call_fn_5265123?
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5265155
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5265187?
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
"__inference__wrapped_model_5259858?()*+,-./0;?8
1?.
,?)
lstm_882_input?????????
? "5?2
0
	dense_294#? 
	dense_294??????????
F__inference_dense_294_layer_call_and_return_conditional_losses_5264893\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_294_layer_call_fn_5264883O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263213?()*O?L
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263356?()*O?L
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263499q()*??<
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
E__inference_lstm_882_layer_call_and_return_conditional_losses_5263642q()*??<
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
*__inference_lstm_882_layer_call_fn_5263037}()*O?L
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
*__inference_lstm_882_layer_call_fn_5263048}()*O?L
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
*__inference_lstm_882_layer_call_fn_5263059d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_882_layer_call_fn_5263070d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_883_layer_call_and_return_conditional_losses_5263829?+,-O?L
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5263972?+,-O?L
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5264115q+,-??<
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
E__inference_lstm_883_layer_call_and_return_conditional_losses_5264258q+,-??<
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
*__inference_lstm_883_layer_call_fn_5263653}+,-O?L
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
*__inference_lstm_883_layer_call_fn_5263664}+,-O?L
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
*__inference_lstm_883_layer_call_fn_5263675d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_883_layer_call_fn_5263686d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264445}./0O?L
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264588}./0O?L
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264731m./0??<
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
E__inference_lstm_884_layer_call_and_return_conditional_losses_5264874m./0??<
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
*__inference_lstm_884_layer_call_fn_5264269p./0O?L
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
*__inference_lstm_884_layer_call_fn_5264280p./0O?L
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
*__inference_lstm_884_layer_call_fn_5264291`./0??<
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
*__inference_lstm_884_layer_call_fn_5264302`./0??<
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5264959?()*??}
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
J__inference_lstm_cell_882_layer_call_and_return_conditional_losses_5264991?()*??}
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
/__inference_lstm_cell_882_layer_call_fn_5264910?()*??}
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
/__inference_lstm_cell_882_layer_call_fn_5264927?()*??}
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5265057?+,-??}
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
J__inference_lstm_cell_883_layer_call_and_return_conditional_losses_5265089?+,-??}
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
/__inference_lstm_cell_883_layer_call_fn_5265008?+,-??}
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
/__inference_lstm_cell_883_layer_call_fn_5265025?+,-??}
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5265155?./0??}
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
J__inference_lstm_cell_884_layer_call_and_return_conditional_losses_5265187?./0??}
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
/__inference_lstm_cell_884_layer_call_fn_5265106?./0??}
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
/__inference_lstm_cell_884_layer_call_fn_5265123?./0??}
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
K__inference_sequential_294_layer_call_and_return_conditional_losses_5262053y()*+,-./0C?@
9?6
,?)
lstm_882_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_294_layer_call_and_return_conditional_losses_5262083y()*+,-./0C?@
9?6
,?)
lstm_882_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_294_layer_call_and_return_conditional_losses_5262599q()*+,-./0;?8
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
K__inference_sequential_294_layer_call_and_return_conditional_losses_5263026q()*+,-./0;?8
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
0__inference_sequential_294_layer_call_fn_5261407l()*+,-./0C?@
9?6
,?)
lstm_882_input?????????
p 

 
? "???????????
0__inference_sequential_294_layer_call_fn_5262023l()*+,-./0C?@
9?6
,?)
lstm_882_input?????????
p

 
? "???????????
0__inference_sequential_294_layer_call_fn_5262145d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_294_layer_call_fn_5262172d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5262118?()*+,-./0M?J
? 
C?@
>
lstm_882_input,?)
lstm_882_input?????????"5?2
0
	dense_294#? 
	dense_294?????????