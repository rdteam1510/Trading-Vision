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
dense_204/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_204/kernel
u
$dense_204/kernel/Read/ReadVariableOpReadVariableOpdense_204/kernel*
_output_shapes

:
*
dtype0
t
dense_204/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_204/bias
m
"dense_204/bias/Read/ReadVariableOpReadVariableOpdense_204/bias*
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
lstm_612/lstm_cell_612/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_612/lstm_cell_612/kernel
?
1lstm_612/lstm_cell_612/kernel/Read/ReadVariableOpReadVariableOplstm_612/lstm_cell_612/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_612/lstm_cell_612/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_612/lstm_cell_612/recurrent_kernel
?
;lstm_612/lstm_cell_612/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_612/lstm_cell_612/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_612/lstm_cell_612/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_612/lstm_cell_612/bias
?
/lstm_612/lstm_cell_612/bias/Read/ReadVariableOpReadVariableOplstm_612/lstm_cell_612/bias*
_output_shapes	
:?*
dtype0
?
lstm_613/lstm_cell_613/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_613/lstm_cell_613/kernel
?
1lstm_613/lstm_cell_613/kernel/Read/ReadVariableOpReadVariableOplstm_613/lstm_cell_613/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_613/lstm_cell_613/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_613/lstm_cell_613/recurrent_kernel
?
;lstm_613/lstm_cell_613/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_613/lstm_cell_613/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_613/lstm_cell_613/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_613/lstm_cell_613/bias
?
/lstm_613/lstm_cell_613/bias/Read/ReadVariableOpReadVariableOplstm_613/lstm_cell_613/bias*
_output_shapes	
:?*
dtype0
?
lstm_614/lstm_cell_614/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_614/lstm_cell_614/kernel
?
1lstm_614/lstm_cell_614/kernel/Read/ReadVariableOpReadVariableOplstm_614/lstm_cell_614/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_614/lstm_cell_614/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_614/lstm_cell_614/recurrent_kernel
?
;lstm_614/lstm_cell_614/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_614/lstm_cell_614/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_614/lstm_cell_614/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_614/lstm_cell_614/bias
?
/lstm_614/lstm_cell_614/bias/Read/ReadVariableOpReadVariableOplstm_614/lstm_cell_614/bias*
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
Adam/dense_204/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_204/kernel/m
?
+Adam/dense_204/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_204/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_204/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_204/bias/m
{
)Adam/dense_204/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_204/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_612/lstm_cell_612/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_612/lstm_cell_612/kernel/m
?
8Adam/lstm_612/lstm_cell_612/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_612/lstm_cell_612/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_612/lstm_cell_612/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_612/lstm_cell_612/recurrent_kernel/m
?
BAdam/lstm_612/lstm_cell_612/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_612/lstm_cell_612/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_612/lstm_cell_612/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_612/lstm_cell_612/bias/m
?
6Adam/lstm_612/lstm_cell_612/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_612/lstm_cell_612/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_613/lstm_cell_613/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_613/lstm_cell_613/kernel/m
?
8Adam/lstm_613/lstm_cell_613/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_613/lstm_cell_613/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_613/lstm_cell_613/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_613/lstm_cell_613/recurrent_kernel/m
?
BAdam/lstm_613/lstm_cell_613/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_613/lstm_cell_613/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_613/lstm_cell_613/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_613/lstm_cell_613/bias/m
?
6Adam/lstm_613/lstm_cell_613/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_613/lstm_cell_613/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_614/lstm_cell_614/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_614/lstm_cell_614/kernel/m
?
8Adam/lstm_614/lstm_cell_614/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_614/lstm_cell_614/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_614/lstm_cell_614/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_614/lstm_cell_614/recurrent_kernel/m
?
BAdam/lstm_614/lstm_cell_614/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_614/lstm_cell_614/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_614/lstm_cell_614/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_614/lstm_cell_614/bias/m
?
6Adam/lstm_614/lstm_cell_614/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_614/lstm_cell_614/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_204/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_204/kernel/v
?
+Adam/dense_204/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_204/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_204/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_204/bias/v
{
)Adam/dense_204/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_204/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_612/lstm_cell_612/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_612/lstm_cell_612/kernel/v
?
8Adam/lstm_612/lstm_cell_612/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_612/lstm_cell_612/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_612/lstm_cell_612/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_612/lstm_cell_612/recurrent_kernel/v
?
BAdam/lstm_612/lstm_cell_612/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_612/lstm_cell_612/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_612/lstm_cell_612/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_612/lstm_cell_612/bias/v
?
6Adam/lstm_612/lstm_cell_612/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_612/lstm_cell_612/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_613/lstm_cell_613/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_613/lstm_cell_613/kernel/v
?
8Adam/lstm_613/lstm_cell_613/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_613/lstm_cell_613/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_613/lstm_cell_613/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_613/lstm_cell_613/recurrent_kernel/v
?
BAdam/lstm_613/lstm_cell_613/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_613/lstm_cell_613/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_613/lstm_cell_613/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_613/lstm_cell_613/bias/v
?
6Adam/lstm_613/lstm_cell_613/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_613/lstm_cell_613/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_614/lstm_cell_614/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_614/lstm_cell_614/kernel/v
?
8Adam/lstm_614/lstm_cell_614/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_614/lstm_cell_614/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_614/lstm_cell_614/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_614/lstm_cell_614/recurrent_kernel/v
?
BAdam/lstm_614/lstm_cell_614/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_614/lstm_cell_614/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_614/lstm_cell_614/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_614/lstm_cell_614/bias/v
?
6Adam/lstm_614/lstm_cell_614/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_614/lstm_cell_614/bias/v*
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
VARIABLE_VALUEdense_204/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_204/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_612/lstm_cell_612/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_612/lstm_cell_612/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_612/lstm_cell_612/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_613/lstm_cell_613/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_613/lstm_cell_613/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_613/lstm_cell_613/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_614/lstm_cell_614/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_614/lstm_cell_614/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_614/lstm_cell_614/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_204/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_204/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_612/lstm_cell_612/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_612/lstm_cell_612/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_612/lstm_cell_612/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_613/lstm_cell_613/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_613/lstm_cell_613/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_613/lstm_cell_613/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_614/lstm_cell_614/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_614/lstm_cell_614/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_614/lstm_cell_614/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_204/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_204/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_612/lstm_cell_612/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_612/lstm_cell_612/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_612/lstm_cell_612/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_613/lstm_cell_613/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_613/lstm_cell_613/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_613/lstm_cell_613/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_614/lstm_cell_614/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_614/lstm_cell_614/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_614/lstm_cell_614/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_612_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_612_inputlstm_612/lstm_cell_612/kernel'lstm_612/lstm_cell_612/recurrent_kernellstm_612/lstm_cell_612/biaslstm_613/lstm_cell_613/kernel'lstm_613/lstm_cell_613/recurrent_kernellstm_613/lstm_cell_613/biaslstm_614/lstm_cell_614/kernel'lstm_614/lstm_cell_614/recurrent_kernellstm_614/lstm_cell_614/biasdense_204/kerneldense_204/bias*
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
%__inference_signature_wrapper_3981238
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_204/kernel/Read/ReadVariableOp"dense_204/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_612/lstm_cell_612/kernel/Read/ReadVariableOp;lstm_612/lstm_cell_612/recurrent_kernel/Read/ReadVariableOp/lstm_612/lstm_cell_612/bias/Read/ReadVariableOp1lstm_613/lstm_cell_613/kernel/Read/ReadVariableOp;lstm_613/lstm_cell_613/recurrent_kernel/Read/ReadVariableOp/lstm_613/lstm_cell_613/bias/Read/ReadVariableOp1lstm_614/lstm_cell_614/kernel/Read/ReadVariableOp;lstm_614/lstm_cell_614/recurrent_kernel/Read/ReadVariableOp/lstm_614/lstm_cell_614/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_204/kernel/m/Read/ReadVariableOp)Adam/dense_204/bias/m/Read/ReadVariableOp8Adam/lstm_612/lstm_cell_612/kernel/m/Read/ReadVariableOpBAdam/lstm_612/lstm_cell_612/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_612/lstm_cell_612/bias/m/Read/ReadVariableOp8Adam/lstm_613/lstm_cell_613/kernel/m/Read/ReadVariableOpBAdam/lstm_613/lstm_cell_613/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_613/lstm_cell_613/bias/m/Read/ReadVariableOp8Adam/lstm_614/lstm_cell_614/kernel/m/Read/ReadVariableOpBAdam/lstm_614/lstm_cell_614/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_614/lstm_cell_614/bias/m/Read/ReadVariableOp+Adam/dense_204/kernel/v/Read/ReadVariableOp)Adam/dense_204/bias/v/Read/ReadVariableOp8Adam/lstm_612/lstm_cell_612/kernel/v/Read/ReadVariableOpBAdam/lstm_612/lstm_cell_612/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_612/lstm_cell_612/bias/v/Read/ReadVariableOp8Adam/lstm_613/lstm_cell_613/kernel/v/Read/ReadVariableOpBAdam/lstm_613/lstm_cell_613/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_613/lstm_cell_613/bias/v/Read/ReadVariableOp8Adam/lstm_614/lstm_cell_614/kernel/v/Read/ReadVariableOpBAdam/lstm_614/lstm_cell_614/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_614/lstm_cell_614/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3984450
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_204/kerneldense_204/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_612/lstm_cell_612/kernel'lstm_612/lstm_cell_612/recurrent_kernellstm_612/lstm_cell_612/biaslstm_613/lstm_cell_613/kernel'lstm_613/lstm_cell_613/recurrent_kernellstm_613/lstm_cell_613/biaslstm_614/lstm_cell_614/kernel'lstm_614/lstm_cell_614/recurrent_kernellstm_614/lstm_cell_614/biastotalcountAdam/dense_204/kernel/mAdam/dense_204/bias/m$Adam/lstm_612/lstm_cell_612/kernel/m.Adam/lstm_612/lstm_cell_612/recurrent_kernel/m"Adam/lstm_612/lstm_cell_612/bias/m$Adam/lstm_613/lstm_cell_613/kernel/m.Adam/lstm_613/lstm_cell_613/recurrent_kernel/m"Adam/lstm_613/lstm_cell_613/bias/m$Adam/lstm_614/lstm_cell_614/kernel/m.Adam/lstm_614/lstm_cell_614/recurrent_kernel/m"Adam/lstm_614/lstm_cell_614/bias/mAdam/dense_204/kernel/vAdam/dense_204/bias/v$Adam/lstm_612/lstm_cell_612/kernel/v.Adam/lstm_612/lstm_cell_612/recurrent_kernel/v"Adam/lstm_612/lstm_cell_612/bias/v$Adam/lstm_613/lstm_cell_613/kernel/v.Adam/lstm_613/lstm_cell_613/recurrent_kernel/v"Adam/lstm_613/lstm_cell_613/bias/v$Adam/lstm_614/lstm_cell_614/kernel/v.Adam/lstm_614/lstm_cell_614/recurrent_kernel/v"Adam/lstm_614/lstm_cell_614/bias/v*4
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
#__inference__traced_restore_3984580??+
?T
?
*sequential_204_lstm_614_while_body_3978888L
Hsequential_204_lstm_614_while_sequential_204_lstm_614_while_loop_counterR
Nsequential_204_lstm_614_while_sequential_204_lstm_614_while_maximum_iterations-
)sequential_204_lstm_614_while_placeholder/
+sequential_204_lstm_614_while_placeholder_1/
+sequential_204_lstm_614_while_placeholder_2/
+sequential_204_lstm_614_while_placeholder_3K
Gsequential_204_lstm_614_while_sequential_204_lstm_614_strided_slice_1_0?
?sequential_204_lstm_614_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_614_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_204_lstm_614_while_lstm_cell_614_matmul_readvariableop_resource_0:2(`
Nsequential_204_lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource_0:
([
Msequential_204_lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource_0:(*
&sequential_204_lstm_614_while_identity,
(sequential_204_lstm_614_while_identity_1,
(sequential_204_lstm_614_while_identity_2,
(sequential_204_lstm_614_while_identity_3,
(sequential_204_lstm_614_while_identity_4,
(sequential_204_lstm_614_while_identity_5I
Esequential_204_lstm_614_while_sequential_204_lstm_614_strided_slice_1?
?sequential_204_lstm_614_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_614_tensorarrayunstack_tensorlistfromtensor\
Jsequential_204_lstm_614_while_lstm_cell_614_matmul_readvariableop_resource:2(^
Lsequential_204_lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource:
(Y
Ksequential_204_lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource:(??Bsequential_204/lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp?Asequential_204/lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp?Csequential_204/lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp?
Osequential_204/lstm_614/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_204/lstm_614/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_204_lstm_614_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_614_tensorarrayunstack_tensorlistfromtensor_0)sequential_204_lstm_614_while_placeholderXsequential_204/lstm_614/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_204/lstm_614/while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOpLsequential_204_lstm_614_while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_204/lstm_614/while/lstm_cell_614/MatMulMatMulHsequential_204/lstm_614/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_204/lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_204/lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOpNsequential_204_lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_204/lstm_614/while/lstm_cell_614/MatMul_1MatMul+sequential_204_lstm_614_while_placeholder_2Ksequential_204/lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_204/lstm_614/while/lstm_cell_614/addAddV2<sequential_204/lstm_614/while/lstm_cell_614/MatMul:product:0>sequential_204/lstm_614/while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_204/lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOpMsequential_204_lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_204/lstm_614/while/lstm_cell_614/BiasAddBiasAdd3sequential_204/lstm_614/while/lstm_cell_614/add:z:0Jsequential_204/lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_204/lstm_614/while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_204/lstm_614/while/lstm_cell_614/splitSplitDsequential_204/lstm_614/while/lstm_cell_614/split/split_dim:output:0<sequential_204/lstm_614/while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_204/lstm_614/while/lstm_cell_614/SigmoidSigmoid:sequential_204/lstm_614/while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_204/lstm_614/while/lstm_cell_614/Sigmoid_1Sigmoid:sequential_204/lstm_614/while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_204/lstm_614/while/lstm_cell_614/mulMul9sequential_204/lstm_614/while/lstm_cell_614/Sigmoid_1:y:0+sequential_204_lstm_614_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_204/lstm_614/while/lstm_cell_614/ReluRelu:sequential_204/lstm_614/while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_204/lstm_614/while/lstm_cell_614/mul_1Mul7sequential_204/lstm_614/while/lstm_cell_614/Sigmoid:y:0>sequential_204/lstm_614/while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_204/lstm_614/while/lstm_cell_614/add_1AddV23sequential_204/lstm_614/while/lstm_cell_614/mul:z:05sequential_204/lstm_614/while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_204/lstm_614/while/lstm_cell_614/Sigmoid_2Sigmoid:sequential_204/lstm_614/while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_204/lstm_614/while/lstm_cell_614/Relu_1Relu5sequential_204/lstm_614/while/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_204/lstm_614/while/lstm_cell_614/mul_2Mul9sequential_204/lstm_614/while/lstm_cell_614/Sigmoid_2:y:0@sequential_204/lstm_614/while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_204/lstm_614/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_204_lstm_614_while_placeholder_1)sequential_204_lstm_614_while_placeholder5sequential_204/lstm_614/while/lstm_cell_614/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_204/lstm_614/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_204/lstm_614/while/addAddV2)sequential_204_lstm_614_while_placeholder,sequential_204/lstm_614/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_204/lstm_614/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_204/lstm_614/while/add_1AddV2Hsequential_204_lstm_614_while_sequential_204_lstm_614_while_loop_counter.sequential_204/lstm_614/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_204/lstm_614/while/IdentityIdentity'sequential_204/lstm_614/while/add_1:z:0#^sequential_204/lstm_614/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_614/while/Identity_1IdentityNsequential_204_lstm_614_while_sequential_204_lstm_614_while_maximum_iterations#^sequential_204/lstm_614/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_614/while/Identity_2Identity%sequential_204/lstm_614/while/add:z:0#^sequential_204/lstm_614/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_614/while/Identity_3IdentityRsequential_204/lstm_614/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_204/lstm_614/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_614/while/Identity_4Identity5sequential_204/lstm_614/while/lstm_cell_614/mul_2:z:0#^sequential_204/lstm_614/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_204/lstm_614/while/Identity_5Identity5sequential_204/lstm_614/while/lstm_cell_614/add_1:z:0#^sequential_204/lstm_614/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_204/lstm_614/while/NoOpNoOpC^sequential_204/lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOpB^sequential_204/lstm_614/while/lstm_cell_614/MatMul/ReadVariableOpD^sequential_204/lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_204_lstm_614_while_identity/sequential_204/lstm_614/while/Identity:output:0"]
(sequential_204_lstm_614_while_identity_11sequential_204/lstm_614/while/Identity_1:output:0"]
(sequential_204_lstm_614_while_identity_21sequential_204/lstm_614/while/Identity_2:output:0"]
(sequential_204_lstm_614_while_identity_31sequential_204/lstm_614/while/Identity_3:output:0"]
(sequential_204_lstm_614_while_identity_41sequential_204/lstm_614/while/Identity_4:output:0"]
(sequential_204_lstm_614_while_identity_51sequential_204/lstm_614/while/Identity_5:output:0"?
Ksequential_204_lstm_614_while_lstm_cell_614_biasadd_readvariableop_resourceMsequential_204_lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource_0"?
Lsequential_204_lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resourceNsequential_204_lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource_0"?
Jsequential_204_lstm_614_while_lstm_cell_614_matmul_readvariableop_resourceLsequential_204_lstm_614_while_lstm_cell_614_matmul_readvariableop_resource_0"?
Esequential_204_lstm_614_while_sequential_204_lstm_614_strided_slice_1Gsequential_204_lstm_614_while_sequential_204_lstm_614_strided_slice_1_0"?
?sequential_204_lstm_614_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_614_tensorarrayunstack_tensorlistfromtensor?sequential_204_lstm_614_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_614_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_204/lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOpBsequential_204/lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp2?
Asequential_204/lstm_614/while/lstm_cell_614/MatMul/ReadVariableOpAsequential_204/lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp2?
Csequential_204/lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOpCsequential_204/lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_614_while_cond_3981628.
*lstm_614_while_lstm_614_while_loop_counter4
0lstm_614_while_lstm_614_while_maximum_iterations
lstm_614_while_placeholder 
lstm_614_while_placeholder_1 
lstm_614_while_placeholder_2 
lstm_614_while_placeholder_30
,lstm_614_while_less_lstm_614_strided_slice_1G
Clstm_614_while_lstm_614_while_cond_3981628___redundant_placeholder0G
Clstm_614_while_lstm_614_while_cond_3981628___redundant_placeholder1G
Clstm_614_while_lstm_614_while_cond_3981628___redundant_placeholder2G
Clstm_614_while_lstm_614_while_cond_3981628___redundant_placeholder3
lstm_614_while_identity
?
lstm_614/while/LessLesslstm_614_while_placeholder,lstm_614_while_less_lstm_614_strided_slice_1*
T0*
_output_shapes
: ]
lstm_614/while/IdentityIdentitylstm_614/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_614_while_identity lstm_614/while/Identity:output:0*(
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
while_cond_3980242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3980242___redundant_placeholder05
1while_while_cond_3980242___redundant_placeholder15
1while_while_cond_3980242___redundant_placeholder25
1while_while_cond_3980242___redundant_placeholder3
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

lstm_612_while_body_3981351.
*lstm_612_while_lstm_612_while_loop_counter4
0lstm_612_while_lstm_612_while_maximum_iterations
lstm_612_while_placeholder 
lstm_612_while_placeholder_1 
lstm_612_while_placeholder_2 
lstm_612_while_placeholder_3-
)lstm_612_while_lstm_612_strided_slice_1_0i
elstm_612_while_tensorarrayv2read_tensorlistgetitem_lstm_612_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_612_while_lstm_cell_612_matmul_readvariableop_resource_0:	?R
?lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d?M
>lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource_0:	?
lstm_612_while_identity
lstm_612_while_identity_1
lstm_612_while_identity_2
lstm_612_while_identity_3
lstm_612_while_identity_4
lstm_612_while_identity_5+
'lstm_612_while_lstm_612_strided_slice_1g
clstm_612_while_tensorarrayv2read_tensorlistgetitem_lstm_612_tensorarrayunstack_tensorlistfromtensorN
;lstm_612_while_lstm_cell_612_matmul_readvariableop_resource:	?P
=lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource:	d?K
<lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource:	???3lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp?2lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp?4lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp?
@lstm_612/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_612/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_612_while_tensorarrayv2read_tensorlistgetitem_lstm_612_tensorarrayunstack_tensorlistfromtensor_0lstm_612_while_placeholderIlstm_612/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_612/while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp=lstm_612_while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_612/while/lstm_cell_612/MatMulMatMul9lstm_612/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp?lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_612/while/lstm_cell_612/MatMul_1MatMullstm_612_while_placeholder_2<lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_612/while/lstm_cell_612/addAddV2-lstm_612/while/lstm_cell_612/MatMul:product:0/lstm_612/while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp>lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_612/while/lstm_cell_612/BiasAddBiasAdd$lstm_612/while/lstm_cell_612/add:z:0;lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_612/while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_612/while/lstm_cell_612/splitSplit5lstm_612/while/lstm_cell_612/split/split_dim:output:0-lstm_612/while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_612/while/lstm_cell_612/SigmoidSigmoid+lstm_612/while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_612/while/lstm_cell_612/Sigmoid_1Sigmoid+lstm_612/while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_612/while/lstm_cell_612/mulMul*lstm_612/while/lstm_cell_612/Sigmoid_1:y:0lstm_612_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_612/while/lstm_cell_612/ReluRelu+lstm_612/while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_612/while/lstm_cell_612/mul_1Mul(lstm_612/while/lstm_cell_612/Sigmoid:y:0/lstm_612/while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_612/while/lstm_cell_612/add_1AddV2$lstm_612/while/lstm_cell_612/mul:z:0&lstm_612/while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_612/while/lstm_cell_612/Sigmoid_2Sigmoid+lstm_612/while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_612/while/lstm_cell_612/Relu_1Relu&lstm_612/while/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_612/while/lstm_cell_612/mul_2Mul*lstm_612/while/lstm_cell_612/Sigmoid_2:y:01lstm_612/while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_612/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_612_while_placeholder_1lstm_612_while_placeholder&lstm_612/while/lstm_cell_612/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_612/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_612/while/addAddV2lstm_612_while_placeholderlstm_612/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_612/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_612/while/add_1AddV2*lstm_612_while_lstm_612_while_loop_counterlstm_612/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_612/while/IdentityIdentitylstm_612/while/add_1:z:0^lstm_612/while/NoOp*
T0*
_output_shapes
: ?
lstm_612/while/Identity_1Identity0lstm_612_while_lstm_612_while_maximum_iterations^lstm_612/while/NoOp*
T0*
_output_shapes
: t
lstm_612/while/Identity_2Identitylstm_612/while/add:z:0^lstm_612/while/NoOp*
T0*
_output_shapes
: ?
lstm_612/while/Identity_3IdentityClstm_612/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_612/while/NoOp*
T0*
_output_shapes
: ?
lstm_612/while/Identity_4Identity&lstm_612/while/lstm_cell_612/mul_2:z:0^lstm_612/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_612/while/Identity_5Identity&lstm_612/while/lstm_cell_612/add_1:z:0^lstm_612/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_612/while/NoOpNoOp4^lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp3^lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp5^lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_612_while_identity lstm_612/while/Identity:output:0"?
lstm_612_while_identity_1"lstm_612/while/Identity_1:output:0"?
lstm_612_while_identity_2"lstm_612/while/Identity_2:output:0"?
lstm_612_while_identity_3"lstm_612/while/Identity_3:output:0"?
lstm_612_while_identity_4"lstm_612/while/Identity_4:output:0"?
lstm_612_while_identity_5"lstm_612/while/Identity_5:output:0"T
'lstm_612_while_lstm_612_strided_slice_1)lstm_612_while_lstm_612_strided_slice_1_0"~
<lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource>lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource_0"?
=lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource?lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource_0"|
;lstm_612_while_lstm_cell_612_matmul_readvariableop_resource=lstm_612_while_lstm_cell_612_matmul_readvariableop_resource_0"?
clstm_612_while_tensorarrayv2read_tensorlistgetitem_lstm_612_tensorarrayunstack_tensorlistfromtensorelstm_612_while_tensorarrayv2read_tensorlistgetitem_lstm_612_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp3lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp2h
2lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp2lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp2l
4lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp4lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_612_layer_call_fn_3984047

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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3979191o
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
while_cond_3983007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3983007___redundant_placeholder05
1while_while_cond_3983007___redundant_placeholder15
1while_while_cond_3983007___redundant_placeholder25
1while_while_cond_3983007___redundant_placeholder3
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
while_cond_3979058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3979058___redundant_placeholder05
1while_while_cond_3979058___redundant_placeholder15
1while_while_cond_3979058___redundant_placeholder25
1while_while_cond_3979058___redundant_placeholder3
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

lstm_614_while_body_3982056.
*lstm_614_while_lstm_614_while_loop_counter4
0lstm_614_while_lstm_614_while_maximum_iterations
lstm_614_while_placeholder 
lstm_614_while_placeholder_1 
lstm_614_while_placeholder_2 
lstm_614_while_placeholder_3-
)lstm_614_while_lstm_614_strided_slice_1_0i
elstm_614_while_tensorarrayv2read_tensorlistgetitem_lstm_614_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_614_while_lstm_cell_614_matmul_readvariableop_resource_0:2(Q
?lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(L
>lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource_0:(
lstm_614_while_identity
lstm_614_while_identity_1
lstm_614_while_identity_2
lstm_614_while_identity_3
lstm_614_while_identity_4
lstm_614_while_identity_5+
'lstm_614_while_lstm_614_strided_slice_1g
clstm_614_while_tensorarrayv2read_tensorlistgetitem_lstm_614_tensorarrayunstack_tensorlistfromtensorM
;lstm_614_while_lstm_cell_614_matmul_readvariableop_resource:2(O
=lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource:
(J
<lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource:(??3lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp?2lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp?4lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp?
@lstm_614/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_614/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_614_while_tensorarrayv2read_tensorlistgetitem_lstm_614_tensorarrayunstack_tensorlistfromtensor_0lstm_614_while_placeholderIlstm_614/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_614/while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp=lstm_614_while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_614/while/lstm_cell_614/MatMulMatMul9lstm_614/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp?lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_614/while/lstm_cell_614/MatMul_1MatMullstm_614_while_placeholder_2<lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_614/while/lstm_cell_614/addAddV2-lstm_614/while/lstm_cell_614/MatMul:product:0/lstm_614/while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp>lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_614/while/lstm_cell_614/BiasAddBiasAdd$lstm_614/while/lstm_cell_614/add:z:0;lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_614/while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_614/while/lstm_cell_614/splitSplit5lstm_614/while/lstm_cell_614/split/split_dim:output:0-lstm_614/while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_614/while/lstm_cell_614/SigmoidSigmoid+lstm_614/while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_614/while/lstm_cell_614/Sigmoid_1Sigmoid+lstm_614/while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_614/while/lstm_cell_614/mulMul*lstm_614/while/lstm_cell_614/Sigmoid_1:y:0lstm_614_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_614/while/lstm_cell_614/ReluRelu+lstm_614/while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_614/while/lstm_cell_614/mul_1Mul(lstm_614/while/lstm_cell_614/Sigmoid:y:0/lstm_614/while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_614/while/lstm_cell_614/add_1AddV2$lstm_614/while/lstm_cell_614/mul:z:0&lstm_614/while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_614/while/lstm_cell_614/Sigmoid_2Sigmoid+lstm_614/while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_614/while/lstm_cell_614/Relu_1Relu&lstm_614/while/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_614/while/lstm_cell_614/mul_2Mul*lstm_614/while/lstm_cell_614/Sigmoid_2:y:01lstm_614/while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_614/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_614_while_placeholder_1lstm_614_while_placeholder&lstm_614/while/lstm_cell_614/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_614/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_614/while/addAddV2lstm_614_while_placeholderlstm_614/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_614/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_614/while/add_1AddV2*lstm_614_while_lstm_614_while_loop_counterlstm_614/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_614/while/IdentityIdentitylstm_614/while/add_1:z:0^lstm_614/while/NoOp*
T0*
_output_shapes
: ?
lstm_614/while/Identity_1Identity0lstm_614_while_lstm_614_while_maximum_iterations^lstm_614/while/NoOp*
T0*
_output_shapes
: t
lstm_614/while/Identity_2Identitylstm_614/while/add:z:0^lstm_614/while/NoOp*
T0*
_output_shapes
: ?
lstm_614/while/Identity_3IdentityClstm_614/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_614/while/NoOp*
T0*
_output_shapes
: ?
lstm_614/while/Identity_4Identity&lstm_614/while/lstm_cell_614/mul_2:z:0^lstm_614/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_614/while/Identity_5Identity&lstm_614/while/lstm_cell_614/add_1:z:0^lstm_614/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_614/while/NoOpNoOp4^lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp3^lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp5^lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_614_while_identity lstm_614/while/Identity:output:0"?
lstm_614_while_identity_1"lstm_614/while/Identity_1:output:0"?
lstm_614_while_identity_2"lstm_614/while/Identity_2:output:0"?
lstm_614_while_identity_3"lstm_614/while/Identity_3:output:0"?
lstm_614_while_identity_4"lstm_614/while/Identity_4:output:0"?
lstm_614_while_identity_5"lstm_614/while/Identity_5:output:0"T
'lstm_614_while_lstm_614_strided_slice_1)lstm_614_while_lstm_614_strided_slice_1_0"~
<lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource>lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource_0"?
=lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource?lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource_0"|
;lstm_614_while_lstm_cell_614_matmul_readvariableop_resource=lstm_614_while_lstm_cell_614_matmul_readvariableop_resource_0"?
clstm_614_while_tensorarrayv2read_tensorlistgetitem_lstm_614_tensorarrayunstack_tensorlistfromtensorelstm_614_while_tensorarrayv2read_tensorlistgetitem_lstm_614_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp3lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp2h
2lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp2lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp2l
4lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp4lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_614_layer_call_fn_3983411

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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3980477o
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
while_cond_3983909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3983909___redundant_placeholder05
1while_while_cond_3983909___redundant_placeholder15
1while_while_cond_3983909___redundant_placeholder25
1while_while_cond_3983909___redundant_placeholder3
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982619

inputs?
,lstm_cell_612_matmul_readvariableop_resource:	?A
.lstm_cell_612_matmul_1_readvariableop_resource:	d?<
-lstm_cell_612_biasadd_readvariableop_resource:	?
identity??$lstm_cell_612/BiasAdd/ReadVariableOp?#lstm_cell_612/MatMul/ReadVariableOp?%lstm_cell_612/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3982535*
condR
while_cond_3982534*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_204_layer_call_and_return_conditional_losses_3984013

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
?
?
while_cond_3980773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3980773___redundant_placeholder05
1while_while_cond_3980773___redundant_placeholder15
1while_while_cond_3980773___redundant_placeholder25
1while_while_cond_3980773___redundant_placeholder3
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3980327

inputs?
,lstm_cell_613_matmul_readvariableop_resource:	d?A
.lstm_cell_613_matmul_1_readvariableop_resource:	2?<
-lstm_cell_613_biasadd_readvariableop_resource:	?
identity??$lstm_cell_613/BiasAdd/ReadVariableOp?#lstm_cell_613/MatMul/ReadVariableOp?%lstm_cell_613/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3980243*
condR
while_cond_3980242*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3980609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(??*while/lstm_cell_614/BiasAdd/ReadVariableOp?)while/lstm_cell_614/MatMul/ReadVariableOp?+while/lstm_cell_614/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_204_lstm_612_while_cond_3978609L
Hsequential_204_lstm_612_while_sequential_204_lstm_612_while_loop_counterR
Nsequential_204_lstm_612_while_sequential_204_lstm_612_while_maximum_iterations-
)sequential_204_lstm_612_while_placeholder/
+sequential_204_lstm_612_while_placeholder_1/
+sequential_204_lstm_612_while_placeholder_2/
+sequential_204_lstm_612_while_placeholder_3N
Jsequential_204_lstm_612_while_less_sequential_204_lstm_612_strided_slice_1e
asequential_204_lstm_612_while_sequential_204_lstm_612_while_cond_3978609___redundant_placeholder0e
asequential_204_lstm_612_while_sequential_204_lstm_612_while_cond_3978609___redundant_placeholder1e
asequential_204_lstm_612_while_sequential_204_lstm_612_while_cond_3978609___redundant_placeholder2e
asequential_204_lstm_612_while_sequential_204_lstm_612_while_cond_3978609___redundant_placeholder3*
&sequential_204_lstm_612_while_identity
?
"sequential_204/lstm_612/while/LessLess)sequential_204_lstm_612_while_placeholderJsequential_204_lstm_612_while_less_sequential_204_lstm_612_strided_slice_1*
T0*
_output_shapes
: {
&sequential_204/lstm_612/while/IdentityIdentity&sequential_204/lstm_612/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_204_lstm_612_while_identity/sequential_204/lstm_612/while/Identity:output:0*(
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
while_cond_3979408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3979408___redundant_placeholder05
1while_while_cond_3979408___redundant_placeholder15
1while_while_cond_3979408___redundant_placeholder25
1while_while_cond_3979408___redundant_placeholder3
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
while_cond_3982391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3982391___redundant_placeholder05
1while_while_cond_3982391___redundant_placeholder15
1while_while_cond_3982391___redundant_placeholder25
1while_while_cond_3982391___redundant_placeholder3
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
"__inference__wrapped_model_3978978
lstm_612_inputW
Dsequential_204_lstm_612_lstm_cell_612_matmul_readvariableop_resource:	?Y
Fsequential_204_lstm_612_lstm_cell_612_matmul_1_readvariableop_resource:	d?T
Esequential_204_lstm_612_lstm_cell_612_biasadd_readvariableop_resource:	?W
Dsequential_204_lstm_613_lstm_cell_613_matmul_readvariableop_resource:	d?Y
Fsequential_204_lstm_613_lstm_cell_613_matmul_1_readvariableop_resource:	2?T
Esequential_204_lstm_613_lstm_cell_613_biasadd_readvariableop_resource:	?V
Dsequential_204_lstm_614_lstm_cell_614_matmul_readvariableop_resource:2(X
Fsequential_204_lstm_614_lstm_cell_614_matmul_1_readvariableop_resource:
(S
Esequential_204_lstm_614_lstm_cell_614_biasadd_readvariableop_resource:(I
7sequential_204_dense_204_matmul_readvariableop_resource:
F
8sequential_204_dense_204_biasadd_readvariableop_resource:
identity??/sequential_204/dense_204/BiasAdd/ReadVariableOp?.sequential_204/dense_204/MatMul/ReadVariableOp?<sequential_204/lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp?;sequential_204/lstm_612/lstm_cell_612/MatMul/ReadVariableOp?=sequential_204/lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp?sequential_204/lstm_612/while?<sequential_204/lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp?;sequential_204/lstm_613/lstm_cell_613/MatMul/ReadVariableOp?=sequential_204/lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp?sequential_204/lstm_613/while?<sequential_204/lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp?;sequential_204/lstm_614/lstm_cell_614/MatMul/ReadVariableOp?=sequential_204/lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp?sequential_204/lstm_614/while[
sequential_204/lstm_612/ShapeShapelstm_612_input*
T0*
_output_shapes
:u
+sequential_204/lstm_612/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_204/lstm_612/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_204/lstm_612/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_204/lstm_612/strided_sliceStridedSlice&sequential_204/lstm_612/Shape:output:04sequential_204/lstm_612/strided_slice/stack:output:06sequential_204/lstm_612/strided_slice/stack_1:output:06sequential_204/lstm_612/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_204/lstm_612/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_204/lstm_612/zeros/packedPack.sequential_204/lstm_612/strided_slice:output:0/sequential_204/lstm_612/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_204/lstm_612/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_204/lstm_612/zerosFill-sequential_204/lstm_612/zeros/packed:output:0,sequential_204/lstm_612/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_204/lstm_612/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_204/lstm_612/zeros_1/packedPack.sequential_204/lstm_612/strided_slice:output:01sequential_204/lstm_612/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_204/lstm_612/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_204/lstm_612/zeros_1Fill/sequential_204/lstm_612/zeros_1/packed:output:0.sequential_204/lstm_612/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_204/lstm_612/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_204/lstm_612/transpose	Transposelstm_612_input/sequential_204/lstm_612/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_204/lstm_612/Shape_1Shape%sequential_204/lstm_612/transpose:y:0*
T0*
_output_shapes
:w
-sequential_204/lstm_612/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_204/lstm_612/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_204/lstm_612/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_204/lstm_612/strided_slice_1StridedSlice(sequential_204/lstm_612/Shape_1:output:06sequential_204/lstm_612/strided_slice_1/stack:output:08sequential_204/lstm_612/strided_slice_1/stack_1:output:08sequential_204/lstm_612/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_204/lstm_612/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_204/lstm_612/TensorArrayV2TensorListReserve<sequential_204/lstm_612/TensorArrayV2/element_shape:output:00sequential_204/lstm_612/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_204/lstm_612/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_204/lstm_612/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_204/lstm_612/transpose:y:0Vsequential_204/lstm_612/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_204/lstm_612/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_204/lstm_612/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_204/lstm_612/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_204/lstm_612/strided_slice_2StridedSlice%sequential_204/lstm_612/transpose:y:06sequential_204/lstm_612/strided_slice_2/stack:output:08sequential_204/lstm_612/strided_slice_2/stack_1:output:08sequential_204/lstm_612/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_204/lstm_612/lstm_cell_612/MatMul/ReadVariableOpReadVariableOpDsequential_204_lstm_612_lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_204/lstm_612/lstm_cell_612/MatMulMatMul0sequential_204/lstm_612/strided_slice_2:output:0Csequential_204/lstm_612/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_204/lstm_612/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOpFsequential_204_lstm_612_lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_204/lstm_612/lstm_cell_612/MatMul_1MatMul&sequential_204/lstm_612/zeros:output:0Esequential_204/lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_204/lstm_612/lstm_cell_612/addAddV26sequential_204/lstm_612/lstm_cell_612/MatMul:product:08sequential_204/lstm_612/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_204/lstm_612/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOpEsequential_204_lstm_612_lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_204/lstm_612/lstm_cell_612/BiasAddBiasAdd-sequential_204/lstm_612/lstm_cell_612/add:z:0Dsequential_204/lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_204/lstm_612/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_204/lstm_612/lstm_cell_612/splitSplit>sequential_204/lstm_612/lstm_cell_612/split/split_dim:output:06sequential_204/lstm_612/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_204/lstm_612/lstm_cell_612/SigmoidSigmoid4sequential_204/lstm_612/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_204/lstm_612/lstm_cell_612/Sigmoid_1Sigmoid4sequential_204/lstm_612/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_204/lstm_612/lstm_cell_612/mulMul3sequential_204/lstm_612/lstm_cell_612/Sigmoid_1:y:0(sequential_204/lstm_612/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_204/lstm_612/lstm_cell_612/ReluRelu4sequential_204/lstm_612/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_204/lstm_612/lstm_cell_612/mul_1Mul1sequential_204/lstm_612/lstm_cell_612/Sigmoid:y:08sequential_204/lstm_612/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_204/lstm_612/lstm_cell_612/add_1AddV2-sequential_204/lstm_612/lstm_cell_612/mul:z:0/sequential_204/lstm_612/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_204/lstm_612/lstm_cell_612/Sigmoid_2Sigmoid4sequential_204/lstm_612/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_204/lstm_612/lstm_cell_612/Relu_1Relu/sequential_204/lstm_612/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_204/lstm_612/lstm_cell_612/mul_2Mul3sequential_204/lstm_612/lstm_cell_612/Sigmoid_2:y:0:sequential_204/lstm_612/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_204/lstm_612/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_204/lstm_612/TensorArrayV2_1TensorListReserve>sequential_204/lstm_612/TensorArrayV2_1/element_shape:output:00sequential_204/lstm_612/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_204/lstm_612/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_204/lstm_612/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_204/lstm_612/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_204/lstm_612/whileWhile3sequential_204/lstm_612/while/loop_counter:output:09sequential_204/lstm_612/while/maximum_iterations:output:0%sequential_204/lstm_612/time:output:00sequential_204/lstm_612/TensorArrayV2_1:handle:0&sequential_204/lstm_612/zeros:output:0(sequential_204/lstm_612/zeros_1:output:00sequential_204/lstm_612/strided_slice_1:output:0Osequential_204/lstm_612/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_204_lstm_612_lstm_cell_612_matmul_readvariableop_resourceFsequential_204_lstm_612_lstm_cell_612_matmul_1_readvariableop_resourceEsequential_204_lstm_612_lstm_cell_612_biasadd_readvariableop_resource*
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
*sequential_204_lstm_612_while_body_3978610*6
cond.R,
*sequential_204_lstm_612_while_cond_3978609*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_204/lstm_612/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_204/lstm_612/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_204/lstm_612/while:output:3Qsequential_204/lstm_612/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_204/lstm_612/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_204/lstm_612/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_204/lstm_612/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_204/lstm_612/strided_slice_3StridedSliceCsequential_204/lstm_612/TensorArrayV2Stack/TensorListStack:tensor:06sequential_204/lstm_612/strided_slice_3/stack:output:08sequential_204/lstm_612/strided_slice_3/stack_1:output:08sequential_204/lstm_612/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_204/lstm_612/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_204/lstm_612/transpose_1	TransposeCsequential_204/lstm_612/TensorArrayV2Stack/TensorListStack:tensor:01sequential_204/lstm_612/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_204/lstm_612/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_204/lstm_613/ShapeShape'sequential_204/lstm_612/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_204/lstm_613/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_204/lstm_613/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_204/lstm_613/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_204/lstm_613/strided_sliceStridedSlice&sequential_204/lstm_613/Shape:output:04sequential_204/lstm_613/strided_slice/stack:output:06sequential_204/lstm_613/strided_slice/stack_1:output:06sequential_204/lstm_613/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_204/lstm_613/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_204/lstm_613/zeros/packedPack.sequential_204/lstm_613/strided_slice:output:0/sequential_204/lstm_613/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_204/lstm_613/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_204/lstm_613/zerosFill-sequential_204/lstm_613/zeros/packed:output:0,sequential_204/lstm_613/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_204/lstm_613/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_204/lstm_613/zeros_1/packedPack.sequential_204/lstm_613/strided_slice:output:01sequential_204/lstm_613/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_204/lstm_613/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_204/lstm_613/zeros_1Fill/sequential_204/lstm_613/zeros_1/packed:output:0.sequential_204/lstm_613/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_204/lstm_613/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_204/lstm_613/transpose	Transpose'sequential_204/lstm_612/transpose_1:y:0/sequential_204/lstm_613/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_204/lstm_613/Shape_1Shape%sequential_204/lstm_613/transpose:y:0*
T0*
_output_shapes
:w
-sequential_204/lstm_613/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_204/lstm_613/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_204/lstm_613/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_204/lstm_613/strided_slice_1StridedSlice(sequential_204/lstm_613/Shape_1:output:06sequential_204/lstm_613/strided_slice_1/stack:output:08sequential_204/lstm_613/strided_slice_1/stack_1:output:08sequential_204/lstm_613/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_204/lstm_613/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_204/lstm_613/TensorArrayV2TensorListReserve<sequential_204/lstm_613/TensorArrayV2/element_shape:output:00sequential_204/lstm_613/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_204/lstm_613/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_204/lstm_613/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_204/lstm_613/transpose:y:0Vsequential_204/lstm_613/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_204/lstm_613/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_204/lstm_613/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_204/lstm_613/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_204/lstm_613/strided_slice_2StridedSlice%sequential_204/lstm_613/transpose:y:06sequential_204/lstm_613/strided_slice_2/stack:output:08sequential_204/lstm_613/strided_slice_2/stack_1:output:08sequential_204/lstm_613/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_204/lstm_613/lstm_cell_613/MatMul/ReadVariableOpReadVariableOpDsequential_204_lstm_613_lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_204/lstm_613/lstm_cell_613/MatMulMatMul0sequential_204/lstm_613/strided_slice_2:output:0Csequential_204/lstm_613/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_204/lstm_613/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOpFsequential_204_lstm_613_lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_204/lstm_613/lstm_cell_613/MatMul_1MatMul&sequential_204/lstm_613/zeros:output:0Esequential_204/lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_204/lstm_613/lstm_cell_613/addAddV26sequential_204/lstm_613/lstm_cell_613/MatMul:product:08sequential_204/lstm_613/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_204/lstm_613/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOpEsequential_204_lstm_613_lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_204/lstm_613/lstm_cell_613/BiasAddBiasAdd-sequential_204/lstm_613/lstm_cell_613/add:z:0Dsequential_204/lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_204/lstm_613/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_204/lstm_613/lstm_cell_613/splitSplit>sequential_204/lstm_613/lstm_cell_613/split/split_dim:output:06sequential_204/lstm_613/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_204/lstm_613/lstm_cell_613/SigmoidSigmoid4sequential_204/lstm_613/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_204/lstm_613/lstm_cell_613/Sigmoid_1Sigmoid4sequential_204/lstm_613/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_204/lstm_613/lstm_cell_613/mulMul3sequential_204/lstm_613/lstm_cell_613/Sigmoid_1:y:0(sequential_204/lstm_613/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_204/lstm_613/lstm_cell_613/ReluRelu4sequential_204/lstm_613/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_204/lstm_613/lstm_cell_613/mul_1Mul1sequential_204/lstm_613/lstm_cell_613/Sigmoid:y:08sequential_204/lstm_613/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_204/lstm_613/lstm_cell_613/add_1AddV2-sequential_204/lstm_613/lstm_cell_613/mul:z:0/sequential_204/lstm_613/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_204/lstm_613/lstm_cell_613/Sigmoid_2Sigmoid4sequential_204/lstm_613/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_204/lstm_613/lstm_cell_613/Relu_1Relu/sequential_204/lstm_613/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_204/lstm_613/lstm_cell_613/mul_2Mul3sequential_204/lstm_613/lstm_cell_613/Sigmoid_2:y:0:sequential_204/lstm_613/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_204/lstm_613/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_204/lstm_613/TensorArrayV2_1TensorListReserve>sequential_204/lstm_613/TensorArrayV2_1/element_shape:output:00sequential_204/lstm_613/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_204/lstm_613/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_204/lstm_613/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_204/lstm_613/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_204/lstm_613/whileWhile3sequential_204/lstm_613/while/loop_counter:output:09sequential_204/lstm_613/while/maximum_iterations:output:0%sequential_204/lstm_613/time:output:00sequential_204/lstm_613/TensorArrayV2_1:handle:0&sequential_204/lstm_613/zeros:output:0(sequential_204/lstm_613/zeros_1:output:00sequential_204/lstm_613/strided_slice_1:output:0Osequential_204/lstm_613/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_204_lstm_613_lstm_cell_613_matmul_readvariableop_resourceFsequential_204_lstm_613_lstm_cell_613_matmul_1_readvariableop_resourceEsequential_204_lstm_613_lstm_cell_613_biasadd_readvariableop_resource*
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
*sequential_204_lstm_613_while_body_3978749*6
cond.R,
*sequential_204_lstm_613_while_cond_3978748*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_204/lstm_613/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_204/lstm_613/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_204/lstm_613/while:output:3Qsequential_204/lstm_613/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_204/lstm_613/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_204/lstm_613/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_204/lstm_613/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_204/lstm_613/strided_slice_3StridedSliceCsequential_204/lstm_613/TensorArrayV2Stack/TensorListStack:tensor:06sequential_204/lstm_613/strided_slice_3/stack:output:08sequential_204/lstm_613/strided_slice_3/stack_1:output:08sequential_204/lstm_613/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_204/lstm_613/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_204/lstm_613/transpose_1	TransposeCsequential_204/lstm_613/TensorArrayV2Stack/TensorListStack:tensor:01sequential_204/lstm_613/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_204/lstm_613/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_204/lstm_614/ShapeShape'sequential_204/lstm_613/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_204/lstm_614/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_204/lstm_614/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_204/lstm_614/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_204/lstm_614/strided_sliceStridedSlice&sequential_204/lstm_614/Shape:output:04sequential_204/lstm_614/strided_slice/stack:output:06sequential_204/lstm_614/strided_slice/stack_1:output:06sequential_204/lstm_614/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_204/lstm_614/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_204/lstm_614/zeros/packedPack.sequential_204/lstm_614/strided_slice:output:0/sequential_204/lstm_614/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_204/lstm_614/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_204/lstm_614/zerosFill-sequential_204/lstm_614/zeros/packed:output:0,sequential_204/lstm_614/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_204/lstm_614/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_204/lstm_614/zeros_1/packedPack.sequential_204/lstm_614/strided_slice:output:01sequential_204/lstm_614/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_204/lstm_614/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_204/lstm_614/zeros_1Fill/sequential_204/lstm_614/zeros_1/packed:output:0.sequential_204/lstm_614/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_204/lstm_614/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_204/lstm_614/transpose	Transpose'sequential_204/lstm_613/transpose_1:y:0/sequential_204/lstm_614/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_204/lstm_614/Shape_1Shape%sequential_204/lstm_614/transpose:y:0*
T0*
_output_shapes
:w
-sequential_204/lstm_614/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_204/lstm_614/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_204/lstm_614/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_204/lstm_614/strided_slice_1StridedSlice(sequential_204/lstm_614/Shape_1:output:06sequential_204/lstm_614/strided_slice_1/stack:output:08sequential_204/lstm_614/strided_slice_1/stack_1:output:08sequential_204/lstm_614/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_204/lstm_614/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_204/lstm_614/TensorArrayV2TensorListReserve<sequential_204/lstm_614/TensorArrayV2/element_shape:output:00sequential_204/lstm_614/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_204/lstm_614/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_204/lstm_614/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_204/lstm_614/transpose:y:0Vsequential_204/lstm_614/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_204/lstm_614/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_204/lstm_614/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_204/lstm_614/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_204/lstm_614/strided_slice_2StridedSlice%sequential_204/lstm_614/transpose:y:06sequential_204/lstm_614/strided_slice_2/stack:output:08sequential_204/lstm_614/strided_slice_2/stack_1:output:08sequential_204/lstm_614/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_204/lstm_614/lstm_cell_614/MatMul/ReadVariableOpReadVariableOpDsequential_204_lstm_614_lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_204/lstm_614/lstm_cell_614/MatMulMatMul0sequential_204/lstm_614/strided_slice_2:output:0Csequential_204/lstm_614/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_204/lstm_614/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOpFsequential_204_lstm_614_lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_204/lstm_614/lstm_cell_614/MatMul_1MatMul&sequential_204/lstm_614/zeros:output:0Esequential_204/lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_204/lstm_614/lstm_cell_614/addAddV26sequential_204/lstm_614/lstm_cell_614/MatMul:product:08sequential_204/lstm_614/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_204/lstm_614/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOpEsequential_204_lstm_614_lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_204/lstm_614/lstm_cell_614/BiasAddBiasAdd-sequential_204/lstm_614/lstm_cell_614/add:z:0Dsequential_204/lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_204/lstm_614/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_204/lstm_614/lstm_cell_614/splitSplit>sequential_204/lstm_614/lstm_cell_614/split/split_dim:output:06sequential_204/lstm_614/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_204/lstm_614/lstm_cell_614/SigmoidSigmoid4sequential_204/lstm_614/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_204/lstm_614/lstm_cell_614/Sigmoid_1Sigmoid4sequential_204/lstm_614/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_204/lstm_614/lstm_cell_614/mulMul3sequential_204/lstm_614/lstm_cell_614/Sigmoid_1:y:0(sequential_204/lstm_614/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_204/lstm_614/lstm_cell_614/ReluRelu4sequential_204/lstm_614/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_204/lstm_614/lstm_cell_614/mul_1Mul1sequential_204/lstm_614/lstm_cell_614/Sigmoid:y:08sequential_204/lstm_614/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_204/lstm_614/lstm_cell_614/add_1AddV2-sequential_204/lstm_614/lstm_cell_614/mul:z:0/sequential_204/lstm_614/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_204/lstm_614/lstm_cell_614/Sigmoid_2Sigmoid4sequential_204/lstm_614/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_204/lstm_614/lstm_cell_614/Relu_1Relu/sequential_204/lstm_614/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_204/lstm_614/lstm_cell_614/mul_2Mul3sequential_204/lstm_614/lstm_cell_614/Sigmoid_2:y:0:sequential_204/lstm_614/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_204/lstm_614/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_204/lstm_614/TensorArrayV2_1TensorListReserve>sequential_204/lstm_614/TensorArrayV2_1/element_shape:output:00sequential_204/lstm_614/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_204/lstm_614/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_204/lstm_614/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_204/lstm_614/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_204/lstm_614/whileWhile3sequential_204/lstm_614/while/loop_counter:output:09sequential_204/lstm_614/while/maximum_iterations:output:0%sequential_204/lstm_614/time:output:00sequential_204/lstm_614/TensorArrayV2_1:handle:0&sequential_204/lstm_614/zeros:output:0(sequential_204/lstm_614/zeros_1:output:00sequential_204/lstm_614/strided_slice_1:output:0Osequential_204/lstm_614/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_204_lstm_614_lstm_cell_614_matmul_readvariableop_resourceFsequential_204_lstm_614_lstm_cell_614_matmul_1_readvariableop_resourceEsequential_204_lstm_614_lstm_cell_614_biasadd_readvariableop_resource*
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
*sequential_204_lstm_614_while_body_3978888*6
cond.R,
*sequential_204_lstm_614_while_cond_3978887*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_204/lstm_614/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_204/lstm_614/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_204/lstm_614/while:output:3Qsequential_204/lstm_614/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_204/lstm_614/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_204/lstm_614/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_204/lstm_614/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_204/lstm_614/strided_slice_3StridedSliceCsequential_204/lstm_614/TensorArrayV2Stack/TensorListStack:tensor:06sequential_204/lstm_614/strided_slice_3/stack:output:08sequential_204/lstm_614/strided_slice_3/stack_1:output:08sequential_204/lstm_614/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_204/lstm_614/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_204/lstm_614/transpose_1	TransposeCsequential_204/lstm_614/TensorArrayV2Stack/TensorListStack:tensor:01sequential_204/lstm_614/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_204/lstm_614/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_204/dense_204/MatMul/ReadVariableOpReadVariableOp7sequential_204_dense_204_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_204/dense_204/MatMulMatMul0sequential_204/lstm_614/strided_slice_3:output:06sequential_204/dense_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_204/dense_204/BiasAdd/ReadVariableOpReadVariableOp8sequential_204_dense_204_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_204/dense_204/BiasAddBiasAdd)sequential_204/dense_204/MatMul:product:07sequential_204/dense_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_204/dense_204/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_204/dense_204/BiasAdd/ReadVariableOp/^sequential_204/dense_204/MatMul/ReadVariableOp=^sequential_204/lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp<^sequential_204/lstm_612/lstm_cell_612/MatMul/ReadVariableOp>^sequential_204/lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp^sequential_204/lstm_612/while=^sequential_204/lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp<^sequential_204/lstm_613/lstm_cell_613/MatMul/ReadVariableOp>^sequential_204/lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp^sequential_204/lstm_613/while=^sequential_204/lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp<^sequential_204/lstm_614/lstm_cell_614/MatMul/ReadVariableOp>^sequential_204/lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp^sequential_204/lstm_614/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_204/dense_204/BiasAdd/ReadVariableOp/sequential_204/dense_204/BiasAdd/ReadVariableOp2`
.sequential_204/dense_204/MatMul/ReadVariableOp.sequential_204/dense_204/MatMul/ReadVariableOp2|
<sequential_204/lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp<sequential_204/lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp2z
;sequential_204/lstm_612/lstm_cell_612/MatMul/ReadVariableOp;sequential_204/lstm_612/lstm_cell_612/MatMul/ReadVariableOp2~
=sequential_204/lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp=sequential_204/lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp2>
sequential_204/lstm_612/whilesequential_204/lstm_612/while2|
<sequential_204/lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp<sequential_204/lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp2z
;sequential_204/lstm_613/lstm_cell_613/MatMul/ReadVariableOp;sequential_204/lstm_613/lstm_cell_613/MatMul/ReadVariableOp2~
=sequential_204/lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp=sequential_204/lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp2>
sequential_204/lstm_613/whilesequential_204/lstm_613/while2|
<sequential_204/lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp<sequential_204/lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp2z
;sequential_204/lstm_614/lstm_cell_614/MatMul/ReadVariableOp;sequential_204/lstm_614/lstm_cell_614/MatMul/ReadVariableOp2~
=sequential_204/lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp=sequential_204/lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp2>
sequential_204/lstm_614/whilesequential_204/lstm_614/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_612_input
?
?
while_cond_3980392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3980392___redundant_placeholder05
1while_while_cond_3980392___redundant_placeholder15
1while_while_cond_3980392___redundant_placeholder25
1while_while_cond_3980392___redundant_placeholder3
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
while_body_3979059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_612_3979083_0:	?0
while_lstm_cell_612_3979085_0:	d?,
while_lstm_cell_612_3979087_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_612_3979083:	?.
while_lstm_cell_612_3979085:	d?*
while_lstm_cell_612_3979087:	???+while/lstm_cell_612/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_612/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_612_3979083_0while_lstm_cell_612_3979085_0while_lstm_cell_612_3979087_0*
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3979045?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_612/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_612/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_612/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_612/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_612_3979083while_lstm_cell_612_3979083_0"<
while_lstm_cell_612_3979085while_lstm_cell_612_3979085_0"<
while_lstm_cell_612_3979087while_lstm_cell_612_3979087_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_612/StatefulPartitionedCall+while/lstm_cell_612/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3979745

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
?T
?
*sequential_204_lstm_613_while_body_3978749L
Hsequential_204_lstm_613_while_sequential_204_lstm_613_while_loop_counterR
Nsequential_204_lstm_613_while_sequential_204_lstm_613_while_maximum_iterations-
)sequential_204_lstm_613_while_placeholder/
+sequential_204_lstm_613_while_placeholder_1/
+sequential_204_lstm_613_while_placeholder_2/
+sequential_204_lstm_613_while_placeholder_3K
Gsequential_204_lstm_613_while_sequential_204_lstm_613_strided_slice_1_0?
?sequential_204_lstm_613_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_613_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_204_lstm_613_while_lstm_cell_613_matmul_readvariableop_resource_0:	d?a
Nsequential_204_lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2?\
Msequential_204_lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource_0:	?*
&sequential_204_lstm_613_while_identity,
(sequential_204_lstm_613_while_identity_1,
(sequential_204_lstm_613_while_identity_2,
(sequential_204_lstm_613_while_identity_3,
(sequential_204_lstm_613_while_identity_4,
(sequential_204_lstm_613_while_identity_5I
Esequential_204_lstm_613_while_sequential_204_lstm_613_strided_slice_1?
?sequential_204_lstm_613_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_613_tensorarrayunstack_tensorlistfromtensor]
Jsequential_204_lstm_613_while_lstm_cell_613_matmul_readvariableop_resource:	d?_
Lsequential_204_lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource:	2?Z
Ksequential_204_lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource:	???Bsequential_204/lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp?Asequential_204/lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp?Csequential_204/lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp?
Osequential_204/lstm_613/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_204/lstm_613/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_204_lstm_613_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_613_tensorarrayunstack_tensorlistfromtensor_0)sequential_204_lstm_613_while_placeholderXsequential_204/lstm_613/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_204/lstm_613/while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOpLsequential_204_lstm_613_while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_204/lstm_613/while/lstm_cell_613/MatMulMatMulHsequential_204/lstm_613/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_204/lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_204/lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOpNsequential_204_lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_204/lstm_613/while/lstm_cell_613/MatMul_1MatMul+sequential_204_lstm_613_while_placeholder_2Ksequential_204/lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_204/lstm_613/while/lstm_cell_613/addAddV2<sequential_204/lstm_613/while/lstm_cell_613/MatMul:product:0>sequential_204/lstm_613/while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_204/lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOpMsequential_204_lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_204/lstm_613/while/lstm_cell_613/BiasAddBiasAdd3sequential_204/lstm_613/while/lstm_cell_613/add:z:0Jsequential_204/lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_204/lstm_613/while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_204/lstm_613/while/lstm_cell_613/splitSplitDsequential_204/lstm_613/while/lstm_cell_613/split/split_dim:output:0<sequential_204/lstm_613/while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_204/lstm_613/while/lstm_cell_613/SigmoidSigmoid:sequential_204/lstm_613/while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_204/lstm_613/while/lstm_cell_613/Sigmoid_1Sigmoid:sequential_204/lstm_613/while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_204/lstm_613/while/lstm_cell_613/mulMul9sequential_204/lstm_613/while/lstm_cell_613/Sigmoid_1:y:0+sequential_204_lstm_613_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_204/lstm_613/while/lstm_cell_613/ReluRelu:sequential_204/lstm_613/while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_204/lstm_613/while/lstm_cell_613/mul_1Mul7sequential_204/lstm_613/while/lstm_cell_613/Sigmoid:y:0>sequential_204/lstm_613/while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_204/lstm_613/while/lstm_cell_613/add_1AddV23sequential_204/lstm_613/while/lstm_cell_613/mul:z:05sequential_204/lstm_613/while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_204/lstm_613/while/lstm_cell_613/Sigmoid_2Sigmoid:sequential_204/lstm_613/while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_204/lstm_613/while/lstm_cell_613/Relu_1Relu5sequential_204/lstm_613/while/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_204/lstm_613/while/lstm_cell_613/mul_2Mul9sequential_204/lstm_613/while/lstm_cell_613/Sigmoid_2:y:0@sequential_204/lstm_613/while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_204/lstm_613/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_204_lstm_613_while_placeholder_1)sequential_204_lstm_613_while_placeholder5sequential_204/lstm_613/while/lstm_cell_613/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_204/lstm_613/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_204/lstm_613/while/addAddV2)sequential_204_lstm_613_while_placeholder,sequential_204/lstm_613/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_204/lstm_613/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_204/lstm_613/while/add_1AddV2Hsequential_204_lstm_613_while_sequential_204_lstm_613_while_loop_counter.sequential_204/lstm_613/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_204/lstm_613/while/IdentityIdentity'sequential_204/lstm_613/while/add_1:z:0#^sequential_204/lstm_613/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_613/while/Identity_1IdentityNsequential_204_lstm_613_while_sequential_204_lstm_613_while_maximum_iterations#^sequential_204/lstm_613/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_613/while/Identity_2Identity%sequential_204/lstm_613/while/add:z:0#^sequential_204/lstm_613/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_613/while/Identity_3IdentityRsequential_204/lstm_613/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_204/lstm_613/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_613/while/Identity_4Identity5sequential_204/lstm_613/while/lstm_cell_613/mul_2:z:0#^sequential_204/lstm_613/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_204/lstm_613/while/Identity_5Identity5sequential_204/lstm_613/while/lstm_cell_613/add_1:z:0#^sequential_204/lstm_613/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_204/lstm_613/while/NoOpNoOpC^sequential_204/lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOpB^sequential_204/lstm_613/while/lstm_cell_613/MatMul/ReadVariableOpD^sequential_204/lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_204_lstm_613_while_identity/sequential_204/lstm_613/while/Identity:output:0"]
(sequential_204_lstm_613_while_identity_11sequential_204/lstm_613/while/Identity_1:output:0"]
(sequential_204_lstm_613_while_identity_21sequential_204/lstm_613/while/Identity_2:output:0"]
(sequential_204_lstm_613_while_identity_31sequential_204/lstm_613/while/Identity_3:output:0"]
(sequential_204_lstm_613_while_identity_41sequential_204/lstm_613/while/Identity_4:output:0"]
(sequential_204_lstm_613_while_identity_51sequential_204/lstm_613/while/Identity_5:output:0"?
Ksequential_204_lstm_613_while_lstm_cell_613_biasadd_readvariableop_resourceMsequential_204_lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource_0"?
Lsequential_204_lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resourceNsequential_204_lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource_0"?
Jsequential_204_lstm_613_while_lstm_cell_613_matmul_readvariableop_resourceLsequential_204_lstm_613_while_lstm_cell_613_matmul_readvariableop_resource_0"?
Esequential_204_lstm_613_while_sequential_204_lstm_613_strided_slice_1Gsequential_204_lstm_613_while_sequential_204_lstm_613_strided_slice_1_0"?
?sequential_204_lstm_613_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_613_tensorarrayunstack_tensorlistfromtensor?sequential_204_lstm_613_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_613_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_204/lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOpBsequential_204/lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp2?
Asequential_204/lstm_613/while/lstm_cell_613/MatMul/ReadVariableOpAsequential_204/lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp2?
Csequential_204/lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOpCsequential_204/lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_613_layer_call_fn_3982795

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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3980327s
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3984079

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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3984177

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
?#
?
while_body_3979600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_613_3979624_0:	d?0
while_lstm_cell_613_3979626_0:	2?,
while_lstm_cell_613_3979628_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_613_3979624:	d?.
while_lstm_cell_613_3979626:	2?*
while_lstm_cell_613_3979628:	???+while/lstm_cell_613/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_613/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_613_3979624_0while_lstm_cell_613_3979626_0while_lstm_cell_613_3979628_0*
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3979541?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_613/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_613/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_613/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_613/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_613_3979624while_lstm_cell_613_3979624_0"<
while_lstm_cell_613_3979626while_lstm_cell_613_3979626_0"<
while_lstm_cell_613_3979628while_lstm_cell_613_3979628_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_613/StatefulPartitionedCall+while/lstm_cell_613/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3979319

inputs(
lstm_cell_612_3979237:	?(
lstm_cell_612_3979239:	d?$
lstm_cell_612_3979241:	?
identity??%lstm_cell_612/StatefulPartitionedCall?while;
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
%lstm_cell_612/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_612_3979237lstm_cell_612_3979239lstm_cell_612_3979241*
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3979191n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_612_3979237lstm_cell_612_3979239lstm_cell_612_3979241*
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
while_body_3979250*
condR
while_cond_3979249*K
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
NoOpNoOp&^lstm_cell_612/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_612/StatefulPartitionedCall%lstm_cell_612/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
+__inference_dense_204_layer_call_fn_3984003

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
F__inference_dense_204_layer_call_and_return_conditional_losses_3980495o
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
while_body_3982678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	?G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_612_biasadd_readvariableop_resource:	???*while/lstm_cell_612/BiasAdd/ReadVariableOp?)while/lstm_cell_612/MatMul/ReadVariableOp?+while/lstm_cell_612/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_204_lstm_612_while_body_3978610L
Hsequential_204_lstm_612_while_sequential_204_lstm_612_while_loop_counterR
Nsequential_204_lstm_612_while_sequential_204_lstm_612_while_maximum_iterations-
)sequential_204_lstm_612_while_placeholder/
+sequential_204_lstm_612_while_placeholder_1/
+sequential_204_lstm_612_while_placeholder_2/
+sequential_204_lstm_612_while_placeholder_3K
Gsequential_204_lstm_612_while_sequential_204_lstm_612_strided_slice_1_0?
?sequential_204_lstm_612_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_612_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_204_lstm_612_while_lstm_cell_612_matmul_readvariableop_resource_0:	?a
Nsequential_204_lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d?\
Msequential_204_lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource_0:	?*
&sequential_204_lstm_612_while_identity,
(sequential_204_lstm_612_while_identity_1,
(sequential_204_lstm_612_while_identity_2,
(sequential_204_lstm_612_while_identity_3,
(sequential_204_lstm_612_while_identity_4,
(sequential_204_lstm_612_while_identity_5I
Esequential_204_lstm_612_while_sequential_204_lstm_612_strided_slice_1?
?sequential_204_lstm_612_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_612_tensorarrayunstack_tensorlistfromtensor]
Jsequential_204_lstm_612_while_lstm_cell_612_matmul_readvariableop_resource:	?_
Lsequential_204_lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource:	d?Z
Ksequential_204_lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource:	???Bsequential_204/lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp?Asequential_204/lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp?Csequential_204/lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp?
Osequential_204/lstm_612/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_204/lstm_612/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_204_lstm_612_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_612_tensorarrayunstack_tensorlistfromtensor_0)sequential_204_lstm_612_while_placeholderXsequential_204/lstm_612/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_204/lstm_612/while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOpLsequential_204_lstm_612_while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_204/lstm_612/while/lstm_cell_612/MatMulMatMulHsequential_204/lstm_612/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_204/lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_204/lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOpNsequential_204_lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_204/lstm_612/while/lstm_cell_612/MatMul_1MatMul+sequential_204_lstm_612_while_placeholder_2Ksequential_204/lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_204/lstm_612/while/lstm_cell_612/addAddV2<sequential_204/lstm_612/while/lstm_cell_612/MatMul:product:0>sequential_204/lstm_612/while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_204/lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOpMsequential_204_lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_204/lstm_612/while/lstm_cell_612/BiasAddBiasAdd3sequential_204/lstm_612/while/lstm_cell_612/add:z:0Jsequential_204/lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_204/lstm_612/while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_204/lstm_612/while/lstm_cell_612/splitSplitDsequential_204/lstm_612/while/lstm_cell_612/split/split_dim:output:0<sequential_204/lstm_612/while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_204/lstm_612/while/lstm_cell_612/SigmoidSigmoid:sequential_204/lstm_612/while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_204/lstm_612/while/lstm_cell_612/Sigmoid_1Sigmoid:sequential_204/lstm_612/while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_204/lstm_612/while/lstm_cell_612/mulMul9sequential_204/lstm_612/while/lstm_cell_612/Sigmoid_1:y:0+sequential_204_lstm_612_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_204/lstm_612/while/lstm_cell_612/ReluRelu:sequential_204/lstm_612/while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_204/lstm_612/while/lstm_cell_612/mul_1Mul7sequential_204/lstm_612/while/lstm_cell_612/Sigmoid:y:0>sequential_204/lstm_612/while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_204/lstm_612/while/lstm_cell_612/add_1AddV23sequential_204/lstm_612/while/lstm_cell_612/mul:z:05sequential_204/lstm_612/while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_204/lstm_612/while/lstm_cell_612/Sigmoid_2Sigmoid:sequential_204/lstm_612/while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_204/lstm_612/while/lstm_cell_612/Relu_1Relu5sequential_204/lstm_612/while/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_204/lstm_612/while/lstm_cell_612/mul_2Mul9sequential_204/lstm_612/while/lstm_cell_612/Sigmoid_2:y:0@sequential_204/lstm_612/while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_204/lstm_612/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_204_lstm_612_while_placeholder_1)sequential_204_lstm_612_while_placeholder5sequential_204/lstm_612/while/lstm_cell_612/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_204/lstm_612/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_204/lstm_612/while/addAddV2)sequential_204_lstm_612_while_placeholder,sequential_204/lstm_612/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_204/lstm_612/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_204/lstm_612/while/add_1AddV2Hsequential_204_lstm_612_while_sequential_204_lstm_612_while_loop_counter.sequential_204/lstm_612/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_204/lstm_612/while/IdentityIdentity'sequential_204/lstm_612/while/add_1:z:0#^sequential_204/lstm_612/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_612/while/Identity_1IdentityNsequential_204_lstm_612_while_sequential_204_lstm_612_while_maximum_iterations#^sequential_204/lstm_612/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_612/while/Identity_2Identity%sequential_204/lstm_612/while/add:z:0#^sequential_204/lstm_612/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_612/while/Identity_3IdentityRsequential_204/lstm_612/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_204/lstm_612/while/NoOp*
T0*
_output_shapes
: ?
(sequential_204/lstm_612/while/Identity_4Identity5sequential_204/lstm_612/while/lstm_cell_612/mul_2:z:0#^sequential_204/lstm_612/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_204/lstm_612/while/Identity_5Identity5sequential_204/lstm_612/while/lstm_cell_612/add_1:z:0#^sequential_204/lstm_612/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_204/lstm_612/while/NoOpNoOpC^sequential_204/lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOpB^sequential_204/lstm_612/while/lstm_cell_612/MatMul/ReadVariableOpD^sequential_204/lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_204_lstm_612_while_identity/sequential_204/lstm_612/while/Identity:output:0"]
(sequential_204_lstm_612_while_identity_11sequential_204/lstm_612/while/Identity_1:output:0"]
(sequential_204_lstm_612_while_identity_21sequential_204/lstm_612/while/Identity_2:output:0"]
(sequential_204_lstm_612_while_identity_31sequential_204/lstm_612/while/Identity_3:output:0"]
(sequential_204_lstm_612_while_identity_41sequential_204/lstm_612/while/Identity_4:output:0"]
(sequential_204_lstm_612_while_identity_51sequential_204/lstm_612/while/Identity_5:output:0"?
Ksequential_204_lstm_612_while_lstm_cell_612_biasadd_readvariableop_resourceMsequential_204_lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource_0"?
Lsequential_204_lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resourceNsequential_204_lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource_0"?
Jsequential_204_lstm_612_while_lstm_cell_612_matmul_readvariableop_resourceLsequential_204_lstm_612_while_lstm_cell_612_matmul_readvariableop_resource_0"?
Esequential_204_lstm_612_while_sequential_204_lstm_612_strided_slice_1Gsequential_204_lstm_612_while_sequential_204_lstm_612_strided_slice_1_0"?
?sequential_204_lstm_612_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_612_tensorarrayunstack_tensorlistfromtensor?sequential_204_lstm_612_while_tensorarrayv2read_tensorlistgetitem_sequential_204_lstm_612_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_204/lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOpBsequential_204/lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp2?
Asequential_204/lstm_612/while/lstm_cell_612/MatMul/ReadVariableOpAsequential_204/lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp2?
Csequential_204/lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOpCsequential_204/lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_613_layer_call_fn_3984128

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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3979395o
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
?
?
*__inference_lstm_614_layer_call_fn_3983422

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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3980693o
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
while_body_3983767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(??*while/lstm_cell_614/BiasAdd/ReadVariableOp?)while/lstm_cell_614/MatMul/ReadVariableOp?+while/lstm_cell_614/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3979395

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
?J
?
E__inference_lstm_613_layer_call_and_return_conditional_losses_3980858

inputs?
,lstm_cell_613_matmul_readvariableop_resource:	d?A
.lstm_cell_613_matmul_1_readvariableop_resource:	2?<
-lstm_cell_613_biasadd_readvariableop_resource:	?
identity??$lstm_cell_613/BiasAdd/ReadVariableOp?#lstm_cell_613/MatMul/ReadVariableOp?%lstm_cell_613/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3980774*
condR
while_cond_3980773*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3980774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d?G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_613_biasadd_readvariableop_resource:	???*while/lstm_cell_613/BiasAdd/ReadVariableOp?)while/lstm_cell_613/MatMul/ReadVariableOp?+while/lstm_cell_613/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3980608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3980608___redundant_placeholder05
1while_while_cond_3980608___redundant_placeholder15
1while_while_cond_3980608___redundant_placeholder25
1while_while_cond_3980608___redundant_placeholder3
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
while_body_3980939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	?G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_612_biasadd_readvariableop_resource:	???*while/lstm_cell_612/BiasAdd/ReadVariableOp?)while/lstm_cell_612/MatMul/ReadVariableOp?+while/lstm_cell_612/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_3984450
file_prefix/
+savev2_dense_204_kernel_read_readvariableop-
)savev2_dense_204_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_612_lstm_cell_612_kernel_read_readvariableopF
Bsavev2_lstm_612_lstm_cell_612_recurrent_kernel_read_readvariableop:
6savev2_lstm_612_lstm_cell_612_bias_read_readvariableop<
8savev2_lstm_613_lstm_cell_613_kernel_read_readvariableopF
Bsavev2_lstm_613_lstm_cell_613_recurrent_kernel_read_readvariableop:
6savev2_lstm_613_lstm_cell_613_bias_read_readvariableop<
8savev2_lstm_614_lstm_cell_614_kernel_read_readvariableopF
Bsavev2_lstm_614_lstm_cell_614_recurrent_kernel_read_readvariableop:
6savev2_lstm_614_lstm_cell_614_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_204_kernel_m_read_readvariableop4
0savev2_adam_dense_204_bias_m_read_readvariableopC
?savev2_adam_lstm_612_lstm_cell_612_kernel_m_read_readvariableopM
Isavev2_adam_lstm_612_lstm_cell_612_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_612_lstm_cell_612_bias_m_read_readvariableopC
?savev2_adam_lstm_613_lstm_cell_613_kernel_m_read_readvariableopM
Isavev2_adam_lstm_613_lstm_cell_613_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_613_lstm_cell_613_bias_m_read_readvariableopC
?savev2_adam_lstm_614_lstm_cell_614_kernel_m_read_readvariableopM
Isavev2_adam_lstm_614_lstm_cell_614_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_614_lstm_cell_614_bias_m_read_readvariableop6
2savev2_adam_dense_204_kernel_v_read_readvariableop4
0savev2_adam_dense_204_bias_v_read_readvariableopC
?savev2_adam_lstm_612_lstm_cell_612_kernel_v_read_readvariableopM
Isavev2_adam_lstm_612_lstm_cell_612_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_612_lstm_cell_612_bias_v_read_readvariableopC
?savev2_adam_lstm_613_lstm_cell_613_kernel_v_read_readvariableopM
Isavev2_adam_lstm_613_lstm_cell_613_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_613_lstm_cell_613_bias_v_read_readvariableopC
?savev2_adam_lstm_614_lstm_cell_614_kernel_v_read_readvariableopM
Isavev2_adam_lstm_614_lstm_cell_614_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_614_lstm_cell_614_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_204_kernel_read_readvariableop)savev2_dense_204_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_612_lstm_cell_612_kernel_read_readvariableopBsavev2_lstm_612_lstm_cell_612_recurrent_kernel_read_readvariableop6savev2_lstm_612_lstm_cell_612_bias_read_readvariableop8savev2_lstm_613_lstm_cell_613_kernel_read_readvariableopBsavev2_lstm_613_lstm_cell_613_recurrent_kernel_read_readvariableop6savev2_lstm_613_lstm_cell_613_bias_read_readvariableop8savev2_lstm_614_lstm_cell_614_kernel_read_readvariableopBsavev2_lstm_614_lstm_cell_614_recurrent_kernel_read_readvariableop6savev2_lstm_614_lstm_cell_614_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_204_kernel_m_read_readvariableop0savev2_adam_dense_204_bias_m_read_readvariableop?savev2_adam_lstm_612_lstm_cell_612_kernel_m_read_readvariableopIsavev2_adam_lstm_612_lstm_cell_612_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_612_lstm_cell_612_bias_m_read_readvariableop?savev2_adam_lstm_613_lstm_cell_613_kernel_m_read_readvariableopIsavev2_adam_lstm_613_lstm_cell_613_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_613_lstm_cell_613_bias_m_read_readvariableop?savev2_adam_lstm_614_lstm_cell_614_kernel_m_read_readvariableopIsavev2_adam_lstm_614_lstm_cell_614_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_614_lstm_cell_614_bias_m_read_readvariableop2savev2_adam_dense_204_kernel_v_read_readvariableop0savev2_adam_dense_204_bias_v_read_readvariableop?savev2_adam_lstm_612_lstm_cell_612_kernel_v_read_readvariableopIsavev2_adam_lstm_612_lstm_cell_612_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_612_lstm_cell_612_bias_v_read_readvariableop?savev2_adam_lstm_613_lstm_cell_613_kernel_v_read_readvariableopIsavev2_adam_lstm_613_lstm_cell_613_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_613_lstm_cell_613_bias_v_read_readvariableop?savev2_adam_lstm_614_lstm_cell_614_kernel_v_read_readvariableopIsavev2_adam_lstm_614_lstm_cell_614_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_614_lstm_cell_614_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_3982248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3982248___redundant_placeholder05
1while_while_cond_3982248___redundant_placeholder15
1while_while_cond_3982248___redundant_placeholder25
1while_while_cond_3982248___redundant_placeholder3
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3983378

inputs?
,lstm_cell_613_matmul_readvariableop_resource:	d?A
.lstm_cell_613_matmul_1_readvariableop_resource:	2?<
-lstm_cell_613_biasadd_readvariableop_resource:	?
identity??$lstm_cell_613/BiasAdd/ReadVariableOp?#lstm_cell_613/MatMul/ReadVariableOp?%lstm_cell_613/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3983294*
condR
while_cond_3983293*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3979191

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
*__inference_lstm_613_layer_call_fn_3982806

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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3980858s
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982476
inputs_0?
,lstm_cell_612_matmul_readvariableop_resource:	?A
.lstm_cell_612_matmul_1_readvariableop_resource:	d?<
-lstm_cell_612_biasadd_readvariableop_resource:	?
identity??$lstm_cell_612/BiasAdd/ReadVariableOp?#lstm_cell_612/MatMul/ReadVariableOp?%lstm_cell_612/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3982392*
condR
while_cond_3982391*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3979599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3979599___redundant_placeholder05
1while_while_cond_3979599___redundant_placeholder15
1while_while_cond_3979599___redundant_placeholder25
1while_while_cond_3979599___redundant_placeholder3
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
while_cond_3983623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3983623___redundant_placeholder05
1while_while_cond_3983623___redundant_placeholder15
1while_while_cond_3983623___redundant_placeholder25
1while_while_cond_3983623___redundant_placeholder3
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
while_body_3983151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d?G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_613_biasadd_readvariableop_resource:	???*while/lstm_cell_613/BiasAdd/ReadVariableOp?)while/lstm_cell_613/MatMul/ReadVariableOp?+while/lstm_cell_613/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_614_layer_call_fn_3984243

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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3979891o
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
?C
?

lstm_612_while_body_3981778.
*lstm_612_while_lstm_612_while_loop_counter4
0lstm_612_while_lstm_612_while_maximum_iterations
lstm_612_while_placeholder 
lstm_612_while_placeholder_1 
lstm_612_while_placeholder_2 
lstm_612_while_placeholder_3-
)lstm_612_while_lstm_612_strided_slice_1_0i
elstm_612_while_tensorarrayv2read_tensorlistgetitem_lstm_612_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_612_while_lstm_cell_612_matmul_readvariableop_resource_0:	?R
?lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d?M
>lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource_0:	?
lstm_612_while_identity
lstm_612_while_identity_1
lstm_612_while_identity_2
lstm_612_while_identity_3
lstm_612_while_identity_4
lstm_612_while_identity_5+
'lstm_612_while_lstm_612_strided_slice_1g
clstm_612_while_tensorarrayv2read_tensorlistgetitem_lstm_612_tensorarrayunstack_tensorlistfromtensorN
;lstm_612_while_lstm_cell_612_matmul_readvariableop_resource:	?P
=lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource:	d?K
<lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource:	???3lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp?2lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp?4lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp?
@lstm_612/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_612/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_612_while_tensorarrayv2read_tensorlistgetitem_lstm_612_tensorarrayunstack_tensorlistfromtensor_0lstm_612_while_placeholderIlstm_612/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_612/while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp=lstm_612_while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_612/while/lstm_cell_612/MatMulMatMul9lstm_612/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp?lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_612/while/lstm_cell_612/MatMul_1MatMullstm_612_while_placeholder_2<lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_612/while/lstm_cell_612/addAddV2-lstm_612/while/lstm_cell_612/MatMul:product:0/lstm_612/while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp>lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_612/while/lstm_cell_612/BiasAddBiasAdd$lstm_612/while/lstm_cell_612/add:z:0;lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_612/while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_612/while/lstm_cell_612/splitSplit5lstm_612/while/lstm_cell_612/split/split_dim:output:0-lstm_612/while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_612/while/lstm_cell_612/SigmoidSigmoid+lstm_612/while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_612/while/lstm_cell_612/Sigmoid_1Sigmoid+lstm_612/while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_612/while/lstm_cell_612/mulMul*lstm_612/while/lstm_cell_612/Sigmoid_1:y:0lstm_612_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_612/while/lstm_cell_612/ReluRelu+lstm_612/while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_612/while/lstm_cell_612/mul_1Mul(lstm_612/while/lstm_cell_612/Sigmoid:y:0/lstm_612/while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_612/while/lstm_cell_612/add_1AddV2$lstm_612/while/lstm_cell_612/mul:z:0&lstm_612/while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_612/while/lstm_cell_612/Sigmoid_2Sigmoid+lstm_612/while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_612/while/lstm_cell_612/Relu_1Relu&lstm_612/while/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_612/while/lstm_cell_612/mul_2Mul*lstm_612/while/lstm_cell_612/Sigmoid_2:y:01lstm_612/while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_612/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_612_while_placeholder_1lstm_612_while_placeholder&lstm_612/while/lstm_cell_612/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_612/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_612/while/addAddV2lstm_612_while_placeholderlstm_612/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_612/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_612/while/add_1AddV2*lstm_612_while_lstm_612_while_loop_counterlstm_612/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_612/while/IdentityIdentitylstm_612/while/add_1:z:0^lstm_612/while/NoOp*
T0*
_output_shapes
: ?
lstm_612/while/Identity_1Identity0lstm_612_while_lstm_612_while_maximum_iterations^lstm_612/while/NoOp*
T0*
_output_shapes
: t
lstm_612/while/Identity_2Identitylstm_612/while/add:z:0^lstm_612/while/NoOp*
T0*
_output_shapes
: ?
lstm_612/while/Identity_3IdentityClstm_612/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_612/while/NoOp*
T0*
_output_shapes
: ?
lstm_612/while/Identity_4Identity&lstm_612/while/lstm_cell_612/mul_2:z:0^lstm_612/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_612/while/Identity_5Identity&lstm_612/while/lstm_cell_612/add_1:z:0^lstm_612/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_612/while/NoOpNoOp4^lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp3^lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp5^lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_612_while_identity lstm_612/while/Identity:output:0"?
lstm_612_while_identity_1"lstm_612/while/Identity_1:output:0"?
lstm_612_while_identity_2"lstm_612/while/Identity_2:output:0"?
lstm_612_while_identity_3"lstm_612/while/Identity_3:output:0"?
lstm_612_while_identity_4"lstm_612/while/Identity_4:output:0"?
lstm_612_while_identity_5"lstm_612/while/Identity_5:output:0"T
'lstm_612_while_lstm_612_strided_slice_1)lstm_612_while_lstm_612_strided_slice_1_0"~
<lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource>lstm_612_while_lstm_cell_612_biasadd_readvariableop_resource_0"?
=lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource?lstm_612_while_lstm_cell_612_matmul_1_readvariableop_resource_0"|
;lstm_612_while_lstm_cell_612_matmul_readvariableop_resource=lstm_612_while_lstm_cell_612_matmul_readvariableop_resource_0"?
clstm_612_while_tensorarrayv2read_tensorlistgetitem_lstm_612_tensorarrayunstack_tensorlistfromtensorelstm_612_while_tensorarrayv2read_tensorlistgetitem_lstm_612_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp3lstm_612/while/lstm_cell_612/BiasAdd/ReadVariableOp2h
2lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp2lstm_612/while/lstm_cell_612/MatMul/ReadVariableOp2l
4lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp4lstm_612/while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3979950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_614_3979974_0:2(/
while_lstm_cell_614_3979976_0:
(+
while_lstm_cell_614_3979978_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_614_3979974:2(-
while_lstm_cell_614_3979976:
()
while_lstm_cell_614_3979978:(??+while/lstm_cell_614/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_614/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_614_3979974_0while_lstm_cell_614_3979976_0while_lstm_cell_614_3979978_0*
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3979891?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_614/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_614/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_614/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_614/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_614_3979974while_lstm_cell_614_3979974_0"<
while_lstm_cell_614_3979976while_lstm_cell_614_3979976_0"<
while_lstm_cell_614_3979978while_lstm_cell_614_3979978_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_614/StatefulPartitionedCall+while/lstm_cell_614/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3984307

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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3980019

inputs'
lstm_cell_614_3979937:2('
lstm_cell_614_3979939:
(#
lstm_cell_614_3979941:(
identity??%lstm_cell_614/StatefulPartitionedCall?while;
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
%lstm_cell_614/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_614_3979937lstm_cell_614_3979939lstm_cell_614_3979941*
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3979891n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_614_3979937lstm_cell_614_3979939lstm_cell_614_3979941*
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
while_body_3979950*
condR
while_cond_3979949*K
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
NoOpNoOp&^lstm_cell_614/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_614/StatefulPartitionedCall%lstm_cell_614/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_613_layer_call_and_return_conditional_losses_3983235

inputs?
,lstm_cell_613_matmul_readvariableop_resource:	d?A
.lstm_cell_613_matmul_1_readvariableop_resource:	2?<
-lstm_cell_613_biasadd_readvariableop_resource:	?
identity??$lstm_cell_613/BiasAdd/ReadVariableOp?#lstm_cell_613/MatMul/ReadVariableOp?%lstm_cell_613/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3983151*
condR
while_cond_3983150*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_613_layer_call_and_return_conditional_losses_3979669

inputs(
lstm_cell_613_3979587:	d?(
lstm_cell_613_3979589:	2?$
lstm_cell_613_3979591:	?
identity??%lstm_cell_613/StatefulPartitionedCall?while;
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
%lstm_cell_613/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_613_3979587lstm_cell_613_3979589lstm_cell_613_3979591*
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3979541n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_613_3979587lstm_cell_613_3979589lstm_cell_613_3979591*
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
while_body_3979600*
condR
while_cond_3979599*K
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
NoOpNoOp&^lstm_cell_613/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_613/StatefulPartitionedCall%lstm_cell_613/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_3982677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3982677___redundant_placeholder05
1while_while_cond_3982677___redundant_placeholder15
1while_while_cond_3982677___redundant_placeholder25
1while_while_cond_3982677___redundant_placeholder3
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
while_cond_3983150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3983150___redundant_placeholder05
1while_while_cond_3983150___redundant_placeholder15
1while_while_cond_3983150___redundant_placeholder25
1while_while_cond_3983150___redundant_placeholder3
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
while_body_3983294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d?G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_613_biasadd_readvariableop_resource:	???*while/lstm_cell_613/BiasAdd/ReadVariableOp?)while/lstm_cell_613/MatMul/ReadVariableOp?+while/lstm_cell_613/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3983624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(??*while/lstm_cell_614/BiasAdd/ReadVariableOp?)while/lstm_cell_614/MatMul/ReadVariableOp?+while/lstm_cell_614/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3982534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3982534___redundant_placeholder05
1while_while_cond_3982534___redundant_placeholder15
1while_while_cond_3982534___redundant_placeholder25
1while_while_cond_3982534___redundant_placeholder3
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
*__inference_lstm_613_layer_call_fn_3982784
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3979669|
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
?
?
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3984275

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
?
?
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3984209

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
while_body_3980093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	?G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_612_biasadd_readvariableop_resource:	???*while/lstm_cell_612/BiasAdd/ReadVariableOp?)while/lstm_cell_612/MatMul/ReadVariableOp?+while/lstm_cell_612/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3979949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3979949___redundant_placeholder05
1while_while_cond_3979949___redundant_placeholder15
1while_while_cond_3979949___redundant_placeholder25
1while_while_cond_3979949___redundant_placeholder3
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
while_cond_3983293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3983293___redundant_placeholder05
1while_while_cond_3983293___redundant_placeholder15
1while_while_cond_3983293___redundant_placeholder25
1while_while_cond_3983293___redundant_placeholder3
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
while_body_3982249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	?G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_612_biasadd_readvariableop_resource:	???*while/lstm_cell_612/BiasAdd/ReadVariableOp?)while/lstm_cell_612/MatMul/ReadVariableOp?+while/lstm_cell_612/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3982392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	?G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_612_biasadd_readvariableop_resource:	???*while/lstm_cell_612/BiasAdd/ReadVariableOp?)while/lstm_cell_612/MatMul/ReadVariableOp?+while/lstm_cell_612/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3979828

inputs'
lstm_cell_614_3979746:2('
lstm_cell_614_3979748:
(#
lstm_cell_614_3979750:(
identity??%lstm_cell_614/StatefulPartitionedCall?while;
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
%lstm_cell_614/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_614_3979746lstm_cell_614_3979748lstm_cell_614_3979750*
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3979745n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_614_3979746lstm_cell_614_3979748lstm_cell_614_3979750*
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
while_body_3979759*
condR
while_cond_3979758*K
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
NoOpNoOp&^lstm_cell_614/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_614/StatefulPartitionedCall%lstm_cell_614/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983994

inputs>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity??$lstm_cell_614/BiasAdd/ReadVariableOp?#lstm_cell_614/MatMul/ReadVariableOp?%lstm_cell_614/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3983910*
condR
while_cond_3983909*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_614_layer_call_fn_3983400
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3980019o
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
??
?
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981719

inputsH
5lstm_612_lstm_cell_612_matmul_readvariableop_resource:	?J
7lstm_612_lstm_cell_612_matmul_1_readvariableop_resource:	d?E
6lstm_612_lstm_cell_612_biasadd_readvariableop_resource:	?H
5lstm_613_lstm_cell_613_matmul_readvariableop_resource:	d?J
7lstm_613_lstm_cell_613_matmul_1_readvariableop_resource:	2?E
6lstm_613_lstm_cell_613_biasadd_readvariableop_resource:	?G
5lstm_614_lstm_cell_614_matmul_readvariableop_resource:2(I
7lstm_614_lstm_cell_614_matmul_1_readvariableop_resource:
(D
6lstm_614_lstm_cell_614_biasadd_readvariableop_resource:(:
(dense_204_matmul_readvariableop_resource:
7
)dense_204_biasadd_readvariableop_resource:
identity?? dense_204/BiasAdd/ReadVariableOp?dense_204/MatMul/ReadVariableOp?-lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp?,lstm_612/lstm_cell_612/MatMul/ReadVariableOp?.lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp?lstm_612/while?-lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp?,lstm_613/lstm_cell_613/MatMul/ReadVariableOp?.lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp?lstm_613/while?-lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp?,lstm_614/lstm_cell_614/MatMul/ReadVariableOp?.lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp?lstm_614/whileD
lstm_612/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_612/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_612/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_612/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_612/strided_sliceStridedSlicelstm_612/Shape:output:0%lstm_612/strided_slice/stack:output:0'lstm_612/strided_slice/stack_1:output:0'lstm_612/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_612/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_612/zeros/packedPacklstm_612/strided_slice:output:0 lstm_612/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_612/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_612/zerosFilllstm_612/zeros/packed:output:0lstm_612/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_612/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_612/zeros_1/packedPacklstm_612/strided_slice:output:0"lstm_612/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_612/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_612/zeros_1Fill lstm_612/zeros_1/packed:output:0lstm_612/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_612/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_612/transpose	Transposeinputs lstm_612/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_612/Shape_1Shapelstm_612/transpose:y:0*
T0*
_output_shapes
:h
lstm_612/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_612/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_612/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_612/strided_slice_1StridedSlicelstm_612/Shape_1:output:0'lstm_612/strided_slice_1/stack:output:0)lstm_612/strided_slice_1/stack_1:output:0)lstm_612/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_612/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_612/TensorArrayV2TensorListReserve-lstm_612/TensorArrayV2/element_shape:output:0!lstm_612/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_612/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_612/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_612/transpose:y:0Glstm_612/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_612/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_612/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_612/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_612/strided_slice_2StridedSlicelstm_612/transpose:y:0'lstm_612/strided_slice_2/stack:output:0)lstm_612/strided_slice_2/stack_1:output:0)lstm_612/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_612/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp5lstm_612_lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_612/lstm_cell_612/MatMulMatMul!lstm_612/strided_slice_2:output:04lstm_612/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_612/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp7lstm_612_lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_612/lstm_cell_612/MatMul_1MatMullstm_612/zeros:output:06lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_612/lstm_cell_612/addAddV2'lstm_612/lstm_cell_612/MatMul:product:0)lstm_612/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_612/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp6lstm_612_lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_612/lstm_cell_612/BiasAddBiasAddlstm_612/lstm_cell_612/add:z:05lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_612/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_612/lstm_cell_612/splitSplit/lstm_612/lstm_cell_612/split/split_dim:output:0'lstm_612/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_612/lstm_cell_612/SigmoidSigmoid%lstm_612/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_612/lstm_cell_612/Sigmoid_1Sigmoid%lstm_612/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_612/lstm_cell_612/mulMul$lstm_612/lstm_cell_612/Sigmoid_1:y:0lstm_612/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_612/lstm_cell_612/ReluRelu%lstm_612/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_612/lstm_cell_612/mul_1Mul"lstm_612/lstm_cell_612/Sigmoid:y:0)lstm_612/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_612/lstm_cell_612/add_1AddV2lstm_612/lstm_cell_612/mul:z:0 lstm_612/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_612/lstm_cell_612/Sigmoid_2Sigmoid%lstm_612/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_612/lstm_cell_612/Relu_1Relu lstm_612/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_612/lstm_cell_612/mul_2Mul$lstm_612/lstm_cell_612/Sigmoid_2:y:0+lstm_612/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_612/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_612/TensorArrayV2_1TensorListReserve/lstm_612/TensorArrayV2_1/element_shape:output:0!lstm_612/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_612/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_612/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_612/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_612/whileWhile$lstm_612/while/loop_counter:output:0*lstm_612/while/maximum_iterations:output:0lstm_612/time:output:0!lstm_612/TensorArrayV2_1:handle:0lstm_612/zeros:output:0lstm_612/zeros_1:output:0!lstm_612/strided_slice_1:output:0@lstm_612/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_612_lstm_cell_612_matmul_readvariableop_resource7lstm_612_lstm_cell_612_matmul_1_readvariableop_resource6lstm_612_lstm_cell_612_biasadd_readvariableop_resource*
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
lstm_612_while_body_3981351*'
condR
lstm_612_while_cond_3981350*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_612/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_612/TensorArrayV2Stack/TensorListStackTensorListStacklstm_612/while:output:3Blstm_612/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_612/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_612/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_612/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_612/strided_slice_3StridedSlice4lstm_612/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_612/strided_slice_3/stack:output:0)lstm_612/strided_slice_3/stack_1:output:0)lstm_612/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_612/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_612/transpose_1	Transpose4lstm_612/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_612/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_612/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_613/ShapeShapelstm_612/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_613/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_613/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_613/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_613/strided_sliceStridedSlicelstm_613/Shape:output:0%lstm_613/strided_slice/stack:output:0'lstm_613/strided_slice/stack_1:output:0'lstm_613/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_613/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_613/zeros/packedPacklstm_613/strided_slice:output:0 lstm_613/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_613/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_613/zerosFilllstm_613/zeros/packed:output:0lstm_613/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_613/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_613/zeros_1/packedPacklstm_613/strided_slice:output:0"lstm_613/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_613/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_613/zeros_1Fill lstm_613/zeros_1/packed:output:0lstm_613/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_613/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_613/transpose	Transposelstm_612/transpose_1:y:0 lstm_613/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_613/Shape_1Shapelstm_613/transpose:y:0*
T0*
_output_shapes
:h
lstm_613/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_613/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_613/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_613/strided_slice_1StridedSlicelstm_613/Shape_1:output:0'lstm_613/strided_slice_1/stack:output:0)lstm_613/strided_slice_1/stack_1:output:0)lstm_613/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_613/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_613/TensorArrayV2TensorListReserve-lstm_613/TensorArrayV2/element_shape:output:0!lstm_613/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_613/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_613/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_613/transpose:y:0Glstm_613/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_613/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_613/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_613/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_613/strided_slice_2StridedSlicelstm_613/transpose:y:0'lstm_613/strided_slice_2/stack:output:0)lstm_613/strided_slice_2/stack_1:output:0)lstm_613/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_613/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp5lstm_613_lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_613/lstm_cell_613/MatMulMatMul!lstm_613/strided_slice_2:output:04lstm_613/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_613/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp7lstm_613_lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_613/lstm_cell_613/MatMul_1MatMullstm_613/zeros:output:06lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_613/lstm_cell_613/addAddV2'lstm_613/lstm_cell_613/MatMul:product:0)lstm_613/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_613/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp6lstm_613_lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_613/lstm_cell_613/BiasAddBiasAddlstm_613/lstm_cell_613/add:z:05lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_613/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_613/lstm_cell_613/splitSplit/lstm_613/lstm_cell_613/split/split_dim:output:0'lstm_613/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_613/lstm_cell_613/SigmoidSigmoid%lstm_613/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_613/lstm_cell_613/Sigmoid_1Sigmoid%lstm_613/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_613/lstm_cell_613/mulMul$lstm_613/lstm_cell_613/Sigmoid_1:y:0lstm_613/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_613/lstm_cell_613/ReluRelu%lstm_613/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_613/lstm_cell_613/mul_1Mul"lstm_613/lstm_cell_613/Sigmoid:y:0)lstm_613/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_613/lstm_cell_613/add_1AddV2lstm_613/lstm_cell_613/mul:z:0 lstm_613/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_613/lstm_cell_613/Sigmoid_2Sigmoid%lstm_613/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_613/lstm_cell_613/Relu_1Relu lstm_613/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_613/lstm_cell_613/mul_2Mul$lstm_613/lstm_cell_613/Sigmoid_2:y:0+lstm_613/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_613/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_613/TensorArrayV2_1TensorListReserve/lstm_613/TensorArrayV2_1/element_shape:output:0!lstm_613/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_613/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_613/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_613/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_613/whileWhile$lstm_613/while/loop_counter:output:0*lstm_613/while/maximum_iterations:output:0lstm_613/time:output:0!lstm_613/TensorArrayV2_1:handle:0lstm_613/zeros:output:0lstm_613/zeros_1:output:0!lstm_613/strided_slice_1:output:0@lstm_613/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_613_lstm_cell_613_matmul_readvariableop_resource7lstm_613_lstm_cell_613_matmul_1_readvariableop_resource6lstm_613_lstm_cell_613_biasadd_readvariableop_resource*
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
lstm_613_while_body_3981490*'
condR
lstm_613_while_cond_3981489*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_613/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_613/TensorArrayV2Stack/TensorListStackTensorListStacklstm_613/while:output:3Blstm_613/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_613/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_613/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_613/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_613/strided_slice_3StridedSlice4lstm_613/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_613/strided_slice_3/stack:output:0)lstm_613/strided_slice_3/stack_1:output:0)lstm_613/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_613/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_613/transpose_1	Transpose4lstm_613/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_613/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_613/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_614/ShapeShapelstm_613/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_614/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_614/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_614/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_614/strided_sliceStridedSlicelstm_614/Shape:output:0%lstm_614/strided_slice/stack:output:0'lstm_614/strided_slice/stack_1:output:0'lstm_614/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_614/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_614/zeros/packedPacklstm_614/strided_slice:output:0 lstm_614/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_614/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_614/zerosFilllstm_614/zeros/packed:output:0lstm_614/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_614/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_614/zeros_1/packedPacklstm_614/strided_slice:output:0"lstm_614/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_614/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_614/zeros_1Fill lstm_614/zeros_1/packed:output:0lstm_614/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_614/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_614/transpose	Transposelstm_613/transpose_1:y:0 lstm_614/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_614/Shape_1Shapelstm_614/transpose:y:0*
T0*
_output_shapes
:h
lstm_614/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_614/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_614/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_614/strided_slice_1StridedSlicelstm_614/Shape_1:output:0'lstm_614/strided_slice_1/stack:output:0)lstm_614/strided_slice_1/stack_1:output:0)lstm_614/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_614/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_614/TensorArrayV2TensorListReserve-lstm_614/TensorArrayV2/element_shape:output:0!lstm_614/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_614/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_614/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_614/transpose:y:0Glstm_614/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_614/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_614/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_614/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_614/strided_slice_2StridedSlicelstm_614/transpose:y:0'lstm_614/strided_slice_2/stack:output:0)lstm_614/strided_slice_2/stack_1:output:0)lstm_614/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_614/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp5lstm_614_lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_614/lstm_cell_614/MatMulMatMul!lstm_614/strided_slice_2:output:04lstm_614/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_614/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp7lstm_614_lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_614/lstm_cell_614/MatMul_1MatMullstm_614/zeros:output:06lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_614/lstm_cell_614/addAddV2'lstm_614/lstm_cell_614/MatMul:product:0)lstm_614/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_614/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp6lstm_614_lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_614/lstm_cell_614/BiasAddBiasAddlstm_614/lstm_cell_614/add:z:05lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_614/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_614/lstm_cell_614/splitSplit/lstm_614/lstm_cell_614/split/split_dim:output:0'lstm_614/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_614/lstm_cell_614/SigmoidSigmoid%lstm_614/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_614/lstm_cell_614/Sigmoid_1Sigmoid%lstm_614/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_614/lstm_cell_614/mulMul$lstm_614/lstm_cell_614/Sigmoid_1:y:0lstm_614/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_614/lstm_cell_614/ReluRelu%lstm_614/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_614/lstm_cell_614/mul_1Mul"lstm_614/lstm_cell_614/Sigmoid:y:0)lstm_614/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_614/lstm_cell_614/add_1AddV2lstm_614/lstm_cell_614/mul:z:0 lstm_614/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_614/lstm_cell_614/Sigmoid_2Sigmoid%lstm_614/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_614/lstm_cell_614/Relu_1Relu lstm_614/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_614/lstm_cell_614/mul_2Mul$lstm_614/lstm_cell_614/Sigmoid_2:y:0+lstm_614/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_614/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_614/TensorArrayV2_1TensorListReserve/lstm_614/TensorArrayV2_1/element_shape:output:0!lstm_614/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_614/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_614/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_614/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_614/whileWhile$lstm_614/while/loop_counter:output:0*lstm_614/while/maximum_iterations:output:0lstm_614/time:output:0!lstm_614/TensorArrayV2_1:handle:0lstm_614/zeros:output:0lstm_614/zeros_1:output:0!lstm_614/strided_slice_1:output:0@lstm_614/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_614_lstm_cell_614_matmul_readvariableop_resource7lstm_614_lstm_cell_614_matmul_1_readvariableop_resource6lstm_614_lstm_cell_614_biasadd_readvariableop_resource*
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
lstm_614_while_body_3981629*'
condR
lstm_614_while_cond_3981628*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_614/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_614/TensorArrayV2Stack/TensorListStackTensorListStacklstm_614/while:output:3Blstm_614/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_614/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_614/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_614/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_614/strided_slice_3StridedSlice4lstm_614/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_614/strided_slice_3/stack:output:0)lstm_614/strided_slice_3/stack_1:output:0)lstm_614/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_614/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_614/transpose_1	Transpose4lstm_614/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_614/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_614/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_204/MatMul/ReadVariableOpReadVariableOp(dense_204_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_204/MatMulMatMul!lstm_614/strided_slice_3:output:0'dense_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_204/BiasAdd/ReadVariableOpReadVariableOp)dense_204_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_204/BiasAddBiasAdddense_204/MatMul:product:0(dense_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_204/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_204/BiasAdd/ReadVariableOp ^dense_204/MatMul/ReadVariableOp.^lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp-^lstm_612/lstm_cell_612/MatMul/ReadVariableOp/^lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp^lstm_612/while.^lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp-^lstm_613/lstm_cell_613/MatMul/ReadVariableOp/^lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp^lstm_613/while.^lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp-^lstm_614/lstm_cell_614/MatMul/ReadVariableOp/^lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp^lstm_614/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_204/BiasAdd/ReadVariableOp dense_204/BiasAdd/ReadVariableOp2B
dense_204/MatMul/ReadVariableOpdense_204/MatMul/ReadVariableOp2^
-lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp-lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp2\
,lstm_612/lstm_cell_612/MatMul/ReadVariableOp,lstm_612/lstm_cell_612/MatMul/ReadVariableOp2`
.lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp.lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp2 
lstm_612/whilelstm_612/while2^
-lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp-lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp2\
,lstm_613/lstm_cell_613/MatMul/ReadVariableOp,lstm_613/lstm_cell_613/MatMul/ReadVariableOp2`
.lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp.lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp2 
lstm_613/whilelstm_613/while2^
-lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp-lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp2\
,lstm_614/lstm_cell_614/MatMul/ReadVariableOp,lstm_614/lstm_cell_614/MatMul/ReadVariableOp2`
.lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp.lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp2 
lstm_614/whilelstm_614/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_612_while_cond_3981777.
*lstm_612_while_lstm_612_while_loop_counter4
0lstm_612_while_lstm_612_while_maximum_iterations
lstm_612_while_placeholder 
lstm_612_while_placeholder_1 
lstm_612_while_placeholder_2 
lstm_612_while_placeholder_30
,lstm_612_while_less_lstm_612_strided_slice_1G
Clstm_612_while_lstm_612_while_cond_3981777___redundant_placeholder0G
Clstm_612_while_lstm_612_while_cond_3981777___redundant_placeholder1G
Clstm_612_while_lstm_612_while_cond_3981777___redundant_placeholder2G
Clstm_612_while_lstm_612_while_cond_3981777___redundant_placeholder3
lstm_612_while_identity
?
lstm_612/while/LessLesslstm_612_while_placeholder,lstm_612_while_less_lstm_612_strided_slice_1*
T0*
_output_shapes
: ]
lstm_612/while/IdentityIdentitylstm_612/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_612_while_identity lstm_612/while/Identity:output:0*(
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
while_body_3983008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d?G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_613_biasadd_readvariableop_resource:	???*while/lstm_cell_613/BiasAdd/ReadVariableOp?)while/lstm_cell_613/MatMul/ReadVariableOp?+while/lstm_cell_613/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981173
lstm_612_input#
lstm_612_3981146:	?#
lstm_612_3981148:	d?
lstm_612_3981150:	?#
lstm_613_3981153:	d?#
lstm_613_3981155:	2?
lstm_613_3981157:	?"
lstm_614_3981160:2("
lstm_614_3981162:
(
lstm_614_3981164:(#
dense_204_3981167:

dense_204_3981169:
identity??!dense_204/StatefulPartitionedCall? lstm_612/StatefulPartitionedCall? lstm_613/StatefulPartitionedCall? lstm_614/StatefulPartitionedCall?
 lstm_612/StatefulPartitionedCallStatefulPartitionedCalllstm_612_inputlstm_612_3981146lstm_612_3981148lstm_612_3981150*
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3980177?
 lstm_613/StatefulPartitionedCallStatefulPartitionedCall)lstm_612/StatefulPartitionedCall:output:0lstm_613_3981153lstm_613_3981155lstm_613_3981157*
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3980327?
 lstm_614/StatefulPartitionedCallStatefulPartitionedCall)lstm_613/StatefulPartitionedCall:output:0lstm_614_3981160lstm_614_3981162lstm_614_3981164*
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3980477?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_614/StatefulPartitionedCall:output:0dense_204_3981167dense_204_3981169*
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
F__inference_dense_204_layer_call_and_return_conditional_losses_3980495y
IdentityIdentity*dense_204/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_204/StatefulPartitionedCall!^lstm_612/StatefulPartitionedCall!^lstm_613/StatefulPartitionedCall!^lstm_614/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2D
 lstm_612/StatefulPartitionedCall lstm_612/StatefulPartitionedCall2D
 lstm_613/StatefulPartitionedCall lstm_613/StatefulPartitionedCall2D
 lstm_614/StatefulPartitionedCall lstm_614/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_612_input
?
?
while_cond_3982864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3982864___redundant_placeholder05
1while_while_cond_3982864___redundant_placeholder15
1while_while_cond_3982864___redundant_placeholder25
1while_while_cond_3982864___redundant_placeholder3
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3979045

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
/__inference_lstm_cell_614_layer_call_fn_3984226

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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3979745o
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
?

?
lstm_614_while_cond_3982055.
*lstm_614_while_lstm_614_while_loop_counter4
0lstm_614_while_lstm_614_while_maximum_iterations
lstm_614_while_placeholder 
lstm_614_while_placeholder_1 
lstm_614_while_placeholder_2 
lstm_614_while_placeholder_30
,lstm_614_while_less_lstm_614_strided_slice_1G
Clstm_614_while_lstm_614_while_cond_3982055___redundant_placeholder0G
Clstm_614_while_lstm_614_while_cond_3982055___redundant_placeholder1G
Clstm_614_while_lstm_614_while_cond_3982055___redundant_placeholder2G
Clstm_614_while_lstm_614_while_cond_3982055___redundant_placeholder3
lstm_614_while_identity
?
lstm_614/while/LessLesslstm_614_while_placeholder,lstm_614_while_less_lstm_614_strided_slice_1*
T0*
_output_shapes
: ]
lstm_614/while/IdentityIdentitylstm_614/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_614_while_identity lstm_614/while/Identity:output:0*(
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3980477

inputs>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity??$lstm_cell_614/BiasAdd/ReadVariableOp?#lstm_cell_614/MatMul/ReadVariableOp?%lstm_cell_614/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3980393*
condR
while_cond_3980392*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3980092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3980092___redundant_placeholder05
1while_while_cond_3980092___redundant_placeholder15
1while_while_cond_3980092___redundant_placeholder25
1while_while_cond_3980092___redundant_placeholder3
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
lstm_612_while_cond_3981350.
*lstm_612_while_lstm_612_while_loop_counter4
0lstm_612_while_lstm_612_while_maximum_iterations
lstm_612_while_placeholder 
lstm_612_while_placeholder_1 
lstm_612_while_placeholder_2 
lstm_612_while_placeholder_30
,lstm_612_while_less_lstm_612_strided_slice_1G
Clstm_612_while_lstm_612_while_cond_3981350___redundant_placeholder0G
Clstm_612_while_lstm_612_while_cond_3981350___redundant_placeholder1G
Clstm_612_while_lstm_612_while_cond_3981350___redundant_placeholder2G
Clstm_612_while_lstm_612_while_cond_3981350___redundant_placeholder3
lstm_612_while_identity
?
lstm_612/while/LessLesslstm_612_while_placeholder,lstm_612_while_less_lstm_612_strided_slice_1*
T0*
_output_shapes
: ]
lstm_612/while/IdentityIdentitylstm_612/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_612_while_identity lstm_612/while/Identity:output:0*(
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
*__inference_lstm_612_layer_call_fn_3982157
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3979128|
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

?
0__inference_sequential_204_layer_call_fn_3980527
lstm_612_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_612_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_204_layer_call_and_return_conditional_losses_3980502o
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
_user_specified_namelstm_612_input
?
?
*__inference_lstm_612_layer_call_fn_3982179

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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3980177s
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
while_body_3982535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_612_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_612_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_612_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_612_matmul_readvariableop_resource:	?G
4while_lstm_cell_612_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_612_biasadd_readvariableop_resource:	???*while/lstm_cell_612/BiasAdd/ReadVariableOp?)while/lstm_cell_612/MatMul/ReadVariableOp?+while/lstm_cell_612/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_612_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_612/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_612_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_612/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_612/addAddV2$while/lstm_cell_612/MatMul:product:0&while/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_612_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_612/BiasAddBiasAddwhile/lstm_cell_612/add:z:02while/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_612/splitSplit,while/lstm_cell_612/split/split_dim:output:0$while/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_612/SigmoidSigmoid"while/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_1Sigmoid"while/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mulMul!while/lstm_cell_612/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_612/ReluRelu"while/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_1Mulwhile/lstm_cell_612/Sigmoid:y:0&while/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/add_1AddV2while/lstm_cell_612/mul:z:0while/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_612/Sigmoid_2Sigmoid"while/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_612/Relu_1Reluwhile/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_612/mul_2Mul!while/lstm_cell_612/Sigmoid_2:y:0(while/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_612/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_612/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_612/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_612/BiasAdd/ReadVariableOp*^while/lstm_cell_612/MatMul/ReadVariableOp,^while/lstm_cell_612/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_612_biasadd_readvariableop_resource5while_lstm_cell_612_biasadd_readvariableop_resource_0"n
4while_lstm_cell_612_matmul_1_readvariableop_resource6while_lstm_cell_612_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_612_matmul_readvariableop_resource4while_lstm_cell_612_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_612/BiasAdd/ReadVariableOp*while/lstm_cell_612/BiasAdd/ReadVariableOp2V
)while/lstm_cell_612/MatMul/ReadVariableOp)while/lstm_cell_612/MatMul/ReadVariableOp2Z
+while/lstm_cell_612/MatMul_1/ReadVariableOp+while/lstm_cell_612/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_204_layer_call_fn_3981265

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
K__inference_sequential_204_layer_call_and_return_conditional_losses_3980502o
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3982949
inputs_0?
,lstm_cell_613_matmul_readvariableop_resource:	d?A
.lstm_cell_613_matmul_1_readvariableop_resource:	2?<
-lstm_cell_613_biasadd_readvariableop_resource:	?
identity??$lstm_cell_613/BiasAdd/ReadVariableOp?#lstm_cell_613/MatMul/ReadVariableOp?%lstm_cell_613/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3982865*
condR
while_cond_3982864*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_614_layer_call_fn_3983389
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3979828o
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982762

inputs?
,lstm_cell_612_matmul_readvariableop_resource:	?A
.lstm_cell_612_matmul_1_readvariableop_resource:	d?<
-lstm_cell_612_biasadd_readvariableop_resource:	?
identity??$lstm_cell_612/BiasAdd/ReadVariableOp?#lstm_cell_612/MatMul/ReadVariableOp?%lstm_cell_612/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3982678*
condR
while_cond_3982677*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_613_while_cond_3981489.
*lstm_613_while_lstm_613_while_loop_counter4
0lstm_613_while_lstm_613_while_maximum_iterations
lstm_613_while_placeholder 
lstm_613_while_placeholder_1 
lstm_613_while_placeholder_2 
lstm_613_while_placeholder_30
,lstm_613_while_less_lstm_613_strided_slice_1G
Clstm_613_while_lstm_613_while_cond_3981489___redundant_placeholder0G
Clstm_613_while_lstm_613_while_cond_3981489___redundant_placeholder1G
Clstm_613_while_lstm_613_while_cond_3981489___redundant_placeholder2G
Clstm_613_while_lstm_613_while_cond_3981489___redundant_placeholder3
lstm_613_while_identity
?
lstm_613/while/LessLesslstm_613_while_placeholder,lstm_613_while_less_lstm_613_strided_slice_1*
T0*
_output_shapes
: ]
lstm_613/while/IdentityIdentitylstm_613/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_613_while_identity lstm_613/while/Identity:output:0*(
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
while_body_3983481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(??*while/lstm_cell_614/BiasAdd/ReadVariableOp?)while/lstm_cell_614/MatMul/ReadVariableOp?+while/lstm_cell_614/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3979759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_614_3979783_0:2(/
while_lstm_cell_614_3979785_0:
(+
while_lstm_cell_614_3979787_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_614_3979783:2(-
while_lstm_cell_614_3979785:
()
while_lstm_cell_614_3979787:(??+while/lstm_cell_614/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_614/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_614_3979783_0while_lstm_cell_614_3979785_0while_lstm_cell_614_3979787_0*
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3979745?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_614/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_614/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_614/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_614/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_614_3979783while_lstm_cell_614_3979783_0"<
while_lstm_cell_614_3979785while_lstm_cell_614_3979785_0"<
while_lstm_cell_614_3979787while_lstm_cell_614_3979787_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_614/StatefulPartitionedCall+while/lstm_cell_614/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3980393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(??*while/lstm_cell_614/BiasAdd/ReadVariableOp?)while/lstm_cell_614/MatMul/ReadVariableOp?+while/lstm_cell_614/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_204_layer_call_fn_3981292

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
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981091o
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
0__inference_sequential_204_layer_call_fn_3981143
lstm_612_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_612_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981091o
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
_user_specified_namelstm_612_input
?
?
while_cond_3979249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3979249___redundant_placeholder05
1while_while_cond_3979249___redundant_placeholder15
1while_while_cond_3979249___redundant_placeholder25
1while_while_cond_3979249___redundant_placeholder3
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
lstm_613_while_cond_3981916.
*lstm_613_while_lstm_613_while_loop_counter4
0lstm_613_while_lstm_613_while_maximum_iterations
lstm_613_while_placeholder 
lstm_613_while_placeholder_1 
lstm_613_while_placeholder_2 
lstm_613_while_placeholder_30
,lstm_613_while_less_lstm_613_strided_slice_1G
Clstm_613_while_lstm_613_while_cond_3981916___redundant_placeholder0G
Clstm_613_while_lstm_613_while_cond_3981916___redundant_placeholder1G
Clstm_613_while_lstm_613_while_cond_3981916___redundant_placeholder2G
Clstm_613_while_lstm_613_while_cond_3981916___redundant_placeholder3
lstm_613_while_identity
?
lstm_613/while/LessLesslstm_613_while_placeholder,lstm_613_while_less_lstm_613_strided_slice_1*
T0*
_output_shapes
: ]
lstm_613/while/IdentityIdentitylstm_613/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_613_while_identity lstm_613/while/Identity:output:0*(
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
/__inference_lstm_cell_613_layer_call_fn_3984145

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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3979541o
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
?
*sequential_204_lstm_614_while_cond_3978887L
Hsequential_204_lstm_614_while_sequential_204_lstm_614_while_loop_counterR
Nsequential_204_lstm_614_while_sequential_204_lstm_614_while_maximum_iterations-
)sequential_204_lstm_614_while_placeholder/
+sequential_204_lstm_614_while_placeholder_1/
+sequential_204_lstm_614_while_placeholder_2/
+sequential_204_lstm_614_while_placeholder_3N
Jsequential_204_lstm_614_while_less_sequential_204_lstm_614_strided_slice_1e
asequential_204_lstm_614_while_sequential_204_lstm_614_while_cond_3978887___redundant_placeholder0e
asequential_204_lstm_614_while_sequential_204_lstm_614_while_cond_3978887___redundant_placeholder1e
asequential_204_lstm_614_while_sequential_204_lstm_614_while_cond_3978887___redundant_placeholder2e
asequential_204_lstm_614_while_sequential_204_lstm_614_while_cond_3978887___redundant_placeholder3*
&sequential_204_lstm_614_while_identity
?
"sequential_204/lstm_614/while/LessLess)sequential_204_lstm_614_while_placeholderJsequential_204_lstm_614_while_less_sequential_204_lstm_614_strided_slice_1*
T0*
_output_shapes
: {
&sequential_204/lstm_614/while/IdentityIdentity&sequential_204/lstm_614/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_204_lstm_614_while_identity/sequential_204/lstm_614/while/Identity:output:0*(
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
K__inference_sequential_204_layer_call_and_return_conditional_losses_3980502

inputs#
lstm_612_3980178:	?#
lstm_612_3980180:	d?
lstm_612_3980182:	?#
lstm_613_3980328:	d?#
lstm_613_3980330:	2?
lstm_613_3980332:	?"
lstm_614_3980478:2("
lstm_614_3980480:
(
lstm_614_3980482:(#
dense_204_3980496:

dense_204_3980498:
identity??!dense_204/StatefulPartitionedCall? lstm_612/StatefulPartitionedCall? lstm_613/StatefulPartitionedCall? lstm_614/StatefulPartitionedCall?
 lstm_612/StatefulPartitionedCallStatefulPartitionedCallinputslstm_612_3980178lstm_612_3980180lstm_612_3980182*
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3980177?
 lstm_613/StatefulPartitionedCallStatefulPartitionedCall)lstm_612/StatefulPartitionedCall:output:0lstm_613_3980328lstm_613_3980330lstm_613_3980332*
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3980327?
 lstm_614/StatefulPartitionedCallStatefulPartitionedCall)lstm_613/StatefulPartitionedCall:output:0lstm_614_3980478lstm_614_3980480lstm_614_3980482*
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3980477?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_614/StatefulPartitionedCall:output:0dense_204_3980496dense_204_3980498*
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
F__inference_dense_204_layer_call_and_return_conditional_losses_3980495y
IdentityIdentity*dense_204/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_204/StatefulPartitionedCall!^lstm_612/StatefulPartitionedCall!^lstm_613/StatefulPartitionedCall!^lstm_614/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2D
 lstm_612/StatefulPartitionedCall lstm_612/StatefulPartitionedCall2D
 lstm_613/StatefulPartitionedCall lstm_613/StatefulPartitionedCall2D
 lstm_614/StatefulPartitionedCall lstm_614/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_3981238
lstm_612_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_612_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3978978o
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
_user_specified_namelstm_612_input
?
?
/__inference_lstm_cell_612_layer_call_fn_3984030

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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3979045o
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
?K
?
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983708
inputs_0>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity??$lstm_cell_614/BiasAdd/ReadVariableOp?#lstm_cell_614/MatMul/ReadVariableOp?%lstm_cell_614/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3983624*
condR
while_cond_3983623*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981203
lstm_612_input#
lstm_612_3981176:	?#
lstm_612_3981178:	d?
lstm_612_3981180:	?#
lstm_613_3981183:	d?#
lstm_613_3981185:	2?
lstm_613_3981187:	?"
lstm_614_3981190:2("
lstm_614_3981192:
(
lstm_614_3981194:(#
dense_204_3981197:

dense_204_3981199:
identity??!dense_204/StatefulPartitionedCall? lstm_612/StatefulPartitionedCall? lstm_613/StatefulPartitionedCall? lstm_614/StatefulPartitionedCall?
 lstm_612/StatefulPartitionedCallStatefulPartitionedCalllstm_612_inputlstm_612_3981176lstm_612_3981178lstm_612_3981180*
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3981023?
 lstm_613/StatefulPartitionedCallStatefulPartitionedCall)lstm_612/StatefulPartitionedCall:output:0lstm_613_3981183lstm_613_3981185lstm_613_3981187*
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3980858?
 lstm_614/StatefulPartitionedCallStatefulPartitionedCall)lstm_613/StatefulPartitionedCall:output:0lstm_614_3981190lstm_614_3981192lstm_614_3981194*
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3980693?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_614/StatefulPartitionedCall:output:0dense_204_3981197dense_204_3981199*
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
F__inference_dense_204_layer_call_and_return_conditional_losses_3980495y
IdentityIdentity*dense_204/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_204/StatefulPartitionedCall!^lstm_612/StatefulPartitionedCall!^lstm_613/StatefulPartitionedCall!^lstm_614/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2D
 lstm_612/StatefulPartitionedCall lstm_612/StatefulPartitionedCall2D
 lstm_613/StatefulPartitionedCall lstm_613/StatefulPartitionedCall2D
 lstm_614/StatefulPartitionedCall lstm_614/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_612_input
?#
?
while_body_3979409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_613_3979433_0:	d?0
while_lstm_cell_613_3979435_0:	2?,
while_lstm_cell_613_3979437_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_613_3979433:	d?.
while_lstm_cell_613_3979435:	2?*
while_lstm_cell_613_3979437:	???+while/lstm_cell_613/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_613/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_613_3979433_0while_lstm_cell_613_3979435_0while_lstm_cell_613_3979437_0*
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3979395?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_613/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_613/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_613/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_613/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_613_3979433while_lstm_cell_613_3979433_0"<
while_lstm_cell_613_3979435while_lstm_cell_613_3979435_0"<
while_lstm_cell_613_3979437while_lstm_cell_613_3979437_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_613/StatefulPartitionedCall+while/lstm_cell_613/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3979250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_612_3979274_0:	?0
while_lstm_cell_612_3979276_0:	d?,
while_lstm_cell_612_3979278_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_612_3979274:	?.
while_lstm_cell_612_3979276:	d?*
while_lstm_cell_612_3979278:	???+while/lstm_cell_612/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_612/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_612_3979274_0while_lstm_cell_612_3979276_0while_lstm_cell_612_3979278_0*
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3979191?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_612/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_612/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_612/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_612/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_612_3979274while_lstm_cell_612_3979274_0"<
while_lstm_cell_612_3979276while_lstm_cell_612_3979276_0"<
while_lstm_cell_612_3979278while_lstm_cell_612_3979278_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_612/StatefulPartitionedCall+while/lstm_cell_612/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983565
inputs_0>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity??$lstm_cell_614/BiasAdd/ReadVariableOp?#lstm_cell_614/MatMul/ReadVariableOp?%lstm_cell_614/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3983481*
condR
while_cond_3983480*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_613_while_body_3981917.
*lstm_613_while_lstm_613_while_loop_counter4
0lstm_613_while_lstm_613_while_maximum_iterations
lstm_613_while_placeholder 
lstm_613_while_placeholder_1 
lstm_613_while_placeholder_2 
lstm_613_while_placeholder_3-
)lstm_613_while_lstm_613_strided_slice_1_0i
elstm_613_while_tensorarrayv2read_tensorlistgetitem_lstm_613_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_613_while_lstm_cell_613_matmul_readvariableop_resource_0:	d?R
?lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2?M
>lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource_0:	?
lstm_613_while_identity
lstm_613_while_identity_1
lstm_613_while_identity_2
lstm_613_while_identity_3
lstm_613_while_identity_4
lstm_613_while_identity_5+
'lstm_613_while_lstm_613_strided_slice_1g
clstm_613_while_tensorarrayv2read_tensorlistgetitem_lstm_613_tensorarrayunstack_tensorlistfromtensorN
;lstm_613_while_lstm_cell_613_matmul_readvariableop_resource:	d?P
=lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource:	2?K
<lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource:	???3lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp?2lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp?4lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp?
@lstm_613/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_613/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_613_while_tensorarrayv2read_tensorlistgetitem_lstm_613_tensorarrayunstack_tensorlistfromtensor_0lstm_613_while_placeholderIlstm_613/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_613/while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp=lstm_613_while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_613/while/lstm_cell_613/MatMulMatMul9lstm_613/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp?lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_613/while/lstm_cell_613/MatMul_1MatMullstm_613_while_placeholder_2<lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_613/while/lstm_cell_613/addAddV2-lstm_613/while/lstm_cell_613/MatMul:product:0/lstm_613/while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp>lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_613/while/lstm_cell_613/BiasAddBiasAdd$lstm_613/while/lstm_cell_613/add:z:0;lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_613/while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_613/while/lstm_cell_613/splitSplit5lstm_613/while/lstm_cell_613/split/split_dim:output:0-lstm_613/while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_613/while/lstm_cell_613/SigmoidSigmoid+lstm_613/while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_613/while/lstm_cell_613/Sigmoid_1Sigmoid+lstm_613/while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_613/while/lstm_cell_613/mulMul*lstm_613/while/lstm_cell_613/Sigmoid_1:y:0lstm_613_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_613/while/lstm_cell_613/ReluRelu+lstm_613/while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_613/while/lstm_cell_613/mul_1Mul(lstm_613/while/lstm_cell_613/Sigmoid:y:0/lstm_613/while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_613/while/lstm_cell_613/add_1AddV2$lstm_613/while/lstm_cell_613/mul:z:0&lstm_613/while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_613/while/lstm_cell_613/Sigmoid_2Sigmoid+lstm_613/while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_613/while/lstm_cell_613/Relu_1Relu&lstm_613/while/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_613/while/lstm_cell_613/mul_2Mul*lstm_613/while/lstm_cell_613/Sigmoid_2:y:01lstm_613/while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_613/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_613_while_placeholder_1lstm_613_while_placeholder&lstm_613/while/lstm_cell_613/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_613/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_613/while/addAddV2lstm_613_while_placeholderlstm_613/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_613/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_613/while/add_1AddV2*lstm_613_while_lstm_613_while_loop_counterlstm_613/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_613/while/IdentityIdentitylstm_613/while/add_1:z:0^lstm_613/while/NoOp*
T0*
_output_shapes
: ?
lstm_613/while/Identity_1Identity0lstm_613_while_lstm_613_while_maximum_iterations^lstm_613/while/NoOp*
T0*
_output_shapes
: t
lstm_613/while/Identity_2Identitylstm_613/while/add:z:0^lstm_613/while/NoOp*
T0*
_output_shapes
: ?
lstm_613/while/Identity_3IdentityClstm_613/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_613/while/NoOp*
T0*
_output_shapes
: ?
lstm_613/while/Identity_4Identity&lstm_613/while/lstm_cell_613/mul_2:z:0^lstm_613/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_613/while/Identity_5Identity&lstm_613/while/lstm_cell_613/add_1:z:0^lstm_613/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_613/while/NoOpNoOp4^lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp3^lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp5^lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_613_while_identity lstm_613/while/Identity:output:0"?
lstm_613_while_identity_1"lstm_613/while/Identity_1:output:0"?
lstm_613_while_identity_2"lstm_613/while/Identity_2:output:0"?
lstm_613_while_identity_3"lstm_613/while/Identity_3:output:0"?
lstm_613_while_identity_4"lstm_613/while/Identity_4:output:0"?
lstm_613_while_identity_5"lstm_613/while/Identity_5:output:0"T
'lstm_613_while_lstm_613_strided_slice_1)lstm_613_while_lstm_613_strided_slice_1_0"~
<lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource>lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource_0"?
=lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource?lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource_0"|
;lstm_613_while_lstm_cell_613_matmul_readvariableop_resource=lstm_613_while_lstm_cell_613_matmul_readvariableop_resource_0"?
clstm_613_while_tensorarrayv2read_tensorlistgetitem_lstm_613_tensorarrayunstack_tensorlistfromtensorelstm_613_while_tensorarrayv2read_tensorlistgetitem_lstm_613_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp3lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp2h
2lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp2lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp2l
4lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp4lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981091

inputs#
lstm_612_3981064:	?#
lstm_612_3981066:	d?
lstm_612_3981068:	?#
lstm_613_3981071:	d?#
lstm_613_3981073:	2?
lstm_613_3981075:	?"
lstm_614_3981078:2("
lstm_614_3981080:
(
lstm_614_3981082:(#
dense_204_3981085:

dense_204_3981087:
identity??!dense_204/StatefulPartitionedCall? lstm_612/StatefulPartitionedCall? lstm_613/StatefulPartitionedCall? lstm_614/StatefulPartitionedCall?
 lstm_612/StatefulPartitionedCallStatefulPartitionedCallinputslstm_612_3981064lstm_612_3981066lstm_612_3981068*
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3981023?
 lstm_613/StatefulPartitionedCallStatefulPartitionedCall)lstm_612/StatefulPartitionedCall:output:0lstm_613_3981071lstm_613_3981073lstm_613_3981075*
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3980858?
 lstm_614/StatefulPartitionedCallStatefulPartitionedCall)lstm_613/StatefulPartitionedCall:output:0lstm_614_3981078lstm_614_3981080lstm_614_3981082*
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3980693?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_614/StatefulPartitionedCall:output:0dense_204_3981085dense_204_3981087*
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
F__inference_dense_204_layer_call_and_return_conditional_losses_3980495y
IdentityIdentity*dense_204/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_204/StatefulPartitionedCall!^lstm_612/StatefulPartitionedCall!^lstm_613/StatefulPartitionedCall!^lstm_614/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2D
 lstm_612/StatefulPartitionedCall lstm_612/StatefulPartitionedCall2D
 lstm_613/StatefulPartitionedCall lstm_613/StatefulPartitionedCall2D
 lstm_614/StatefulPartitionedCall lstm_614/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_613_layer_call_and_return_conditional_losses_3979478

inputs(
lstm_cell_613_3979396:	d?(
lstm_cell_613_3979398:	2?$
lstm_cell_613_3979400:	?
identity??%lstm_cell_613/StatefulPartitionedCall?while;
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
%lstm_cell_613/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_613_3979396lstm_cell_613_3979398lstm_cell_613_3979400*
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3979395n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_613_3979396lstm_cell_613_3979398lstm_cell_613_3979400*
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
while_body_3979409*
condR
while_cond_3979408*K
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
NoOpNoOp&^lstm_cell_613/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_613/StatefulPartitionedCall%lstm_cell_613/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_613_layer_call_and_return_conditional_losses_3983092
inputs_0?
,lstm_cell_613_matmul_readvariableop_resource:	d?A
.lstm_cell_613_matmul_1_readvariableop_resource:	2?<
-lstm_cell_613_biasadd_readvariableop_resource:	?
identity??$lstm_cell_613/BiasAdd/ReadVariableOp?#lstm_cell_613/MatMul/ReadVariableOp?%lstm_cell_613/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_613/MatMul/ReadVariableOpReadVariableOp,lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_613/MatMulMatMulstrided_slice_2:output:0+lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_613/MatMul_1MatMulzeros:output:0-lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_613/addAddV2lstm_cell_613/MatMul:product:0 lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_613/BiasAddBiasAddlstm_cell_613/add:z:0,lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_613/splitSplit&lstm_cell_613/split/split_dim:output:0lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_613/SigmoidSigmoidlstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_1Sigmoidlstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_613/mulMullstm_cell_613/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_613/ReluRelulstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_1Mullstm_cell_613/Sigmoid:y:0 lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_613/add_1AddV2lstm_cell_613/mul:z:0lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_613/Sigmoid_2Sigmoidlstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_613/Relu_1Relulstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_613/mul_2Mullstm_cell_613/Sigmoid_2:y:0"lstm_cell_613/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_613_matmul_readvariableop_resource.lstm_cell_613_matmul_1_readvariableop_resource-lstm_cell_613_biasadd_readvariableop_resource*
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
while_body_3983008*
condR
while_cond_3983007*K
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
NoOpNoOp%^lstm_cell_613/BiasAdd/ReadVariableOp$^lstm_cell_613/MatMul/ReadVariableOp&^lstm_cell_613/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_613/BiasAdd/ReadVariableOp$lstm_cell_613/BiasAdd/ReadVariableOp2J
#lstm_cell_613/MatMul/ReadVariableOp#lstm_cell_613/MatMul/ReadVariableOp2N
%lstm_cell_613/MatMul_1/ReadVariableOp%lstm_cell_613/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3982865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d?G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_613_biasadd_readvariableop_resource:	???*while/lstm_cell_613/BiasAdd/ReadVariableOp?)while/lstm_cell_613/MatMul/ReadVariableOp?+while/lstm_cell_613/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_613_layer_call_fn_3982773
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3979478|
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
while_cond_3983766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3983766___redundant_placeholder05
1while_while_cond_3983766___redundant_placeholder15
1while_while_cond_3983766___redundant_placeholder25
1while_while_cond_3983766___redundant_placeholder3
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
while_body_3983910
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_614_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_614_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_614_matmul_readvariableop_resource:2(F
4while_lstm_cell_614_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_614_biasadd_readvariableop_resource:(??*while/lstm_cell_614/BiasAdd/ReadVariableOp?)while/lstm_cell_614/MatMul/ReadVariableOp?+while/lstm_cell_614/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_614/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_614/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_614/addAddV2$while/lstm_cell_614/MatMul:product:0&while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_614/BiasAddBiasAddwhile/lstm_cell_614/add:z:02while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_614/splitSplit,while/lstm_cell_614/split/split_dim:output:0$while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_614/SigmoidSigmoid"while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_1Sigmoid"while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mulMul!while/lstm_cell_614/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_614/ReluRelu"while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_1Mulwhile/lstm_cell_614/Sigmoid:y:0&while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/add_1AddV2while/lstm_cell_614/mul:z:0while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_614/Sigmoid_2Sigmoid"while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_614/Relu_1Reluwhile/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_614/mul_2Mul!while/lstm_cell_614/Sigmoid_2:y:0(while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_614/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_614/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_614/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_614/BiasAdd/ReadVariableOp*^while/lstm_cell_614/MatMul/ReadVariableOp,^while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_614_biasadd_readvariableop_resource5while_lstm_cell_614_biasadd_readvariableop_resource_0"n
4while_lstm_cell_614_matmul_1_readvariableop_resource6while_lstm_cell_614_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_614_matmul_readvariableop_resource4while_lstm_cell_614_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_614/BiasAdd/ReadVariableOp*while/lstm_cell_614/BiasAdd/ReadVariableOp2V
)while/lstm_cell_614/MatMul/ReadVariableOp)while/lstm_cell_614/MatMul/ReadVariableOp2Z
+while/lstm_cell_614/MatMul_1/ReadVariableOp+while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_613_while_body_3981490.
*lstm_613_while_lstm_613_while_loop_counter4
0lstm_613_while_lstm_613_while_maximum_iterations
lstm_613_while_placeholder 
lstm_613_while_placeholder_1 
lstm_613_while_placeholder_2 
lstm_613_while_placeholder_3-
)lstm_613_while_lstm_613_strided_slice_1_0i
elstm_613_while_tensorarrayv2read_tensorlistgetitem_lstm_613_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_613_while_lstm_cell_613_matmul_readvariableop_resource_0:	d?R
?lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2?M
>lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource_0:	?
lstm_613_while_identity
lstm_613_while_identity_1
lstm_613_while_identity_2
lstm_613_while_identity_3
lstm_613_while_identity_4
lstm_613_while_identity_5+
'lstm_613_while_lstm_613_strided_slice_1g
clstm_613_while_tensorarrayv2read_tensorlistgetitem_lstm_613_tensorarrayunstack_tensorlistfromtensorN
;lstm_613_while_lstm_cell_613_matmul_readvariableop_resource:	d?P
=lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource:	2?K
<lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource:	???3lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp?2lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp?4lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp?
@lstm_613/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_613/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_613_while_tensorarrayv2read_tensorlistgetitem_lstm_613_tensorarrayunstack_tensorlistfromtensor_0lstm_613_while_placeholderIlstm_613/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_613/while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp=lstm_613_while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_613/while/lstm_cell_613/MatMulMatMul9lstm_613/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp?lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_613/while/lstm_cell_613/MatMul_1MatMullstm_613_while_placeholder_2<lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_613/while/lstm_cell_613/addAddV2-lstm_613/while/lstm_cell_613/MatMul:product:0/lstm_613/while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp>lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_613/while/lstm_cell_613/BiasAddBiasAdd$lstm_613/while/lstm_cell_613/add:z:0;lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_613/while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_613/while/lstm_cell_613/splitSplit5lstm_613/while/lstm_cell_613/split/split_dim:output:0-lstm_613/while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_613/while/lstm_cell_613/SigmoidSigmoid+lstm_613/while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_613/while/lstm_cell_613/Sigmoid_1Sigmoid+lstm_613/while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_613/while/lstm_cell_613/mulMul*lstm_613/while/lstm_cell_613/Sigmoid_1:y:0lstm_613_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_613/while/lstm_cell_613/ReluRelu+lstm_613/while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_613/while/lstm_cell_613/mul_1Mul(lstm_613/while/lstm_cell_613/Sigmoid:y:0/lstm_613/while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_613/while/lstm_cell_613/add_1AddV2$lstm_613/while/lstm_cell_613/mul:z:0&lstm_613/while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_613/while/lstm_cell_613/Sigmoid_2Sigmoid+lstm_613/while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_613/while/lstm_cell_613/Relu_1Relu&lstm_613/while/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_613/while/lstm_cell_613/mul_2Mul*lstm_613/while/lstm_cell_613/Sigmoid_2:y:01lstm_613/while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_613/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_613_while_placeholder_1lstm_613_while_placeholder&lstm_613/while/lstm_cell_613/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_613/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_613/while/addAddV2lstm_613_while_placeholderlstm_613/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_613/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_613/while/add_1AddV2*lstm_613_while_lstm_613_while_loop_counterlstm_613/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_613/while/IdentityIdentitylstm_613/while/add_1:z:0^lstm_613/while/NoOp*
T0*
_output_shapes
: ?
lstm_613/while/Identity_1Identity0lstm_613_while_lstm_613_while_maximum_iterations^lstm_613/while/NoOp*
T0*
_output_shapes
: t
lstm_613/while/Identity_2Identitylstm_613/while/add:z:0^lstm_613/while/NoOp*
T0*
_output_shapes
: ?
lstm_613/while/Identity_3IdentityClstm_613/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_613/while/NoOp*
T0*
_output_shapes
: ?
lstm_613/while/Identity_4Identity&lstm_613/while/lstm_cell_613/mul_2:z:0^lstm_613/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_613/while/Identity_5Identity&lstm_613/while/lstm_cell_613/add_1:z:0^lstm_613/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_613/while/NoOpNoOp4^lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp3^lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp5^lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_613_while_identity lstm_613/while/Identity:output:0"?
lstm_613_while_identity_1"lstm_613/while/Identity_1:output:0"?
lstm_613_while_identity_2"lstm_613/while/Identity_2:output:0"?
lstm_613_while_identity_3"lstm_613/while/Identity_3:output:0"?
lstm_613_while_identity_4"lstm_613/while/Identity_4:output:0"?
lstm_613_while_identity_5"lstm_613/while/Identity_5:output:0"T
'lstm_613_while_lstm_613_strided_slice_1)lstm_613_while_lstm_613_strided_slice_1_0"~
<lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource>lstm_613_while_lstm_cell_613_biasadd_readvariableop_resource_0"?
=lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource?lstm_613_while_lstm_cell_613_matmul_1_readvariableop_resource_0"|
;lstm_613_while_lstm_cell_613_matmul_readvariableop_resource=lstm_613_while_lstm_cell_613_matmul_readvariableop_resource_0"?
clstm_613_while_tensorarrayv2read_tensorlistgetitem_lstm_613_tensorarrayunstack_tensorlistfromtensorelstm_613_while_tensorarrayv2read_tensorlistgetitem_lstm_613_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp3lstm_613/while/lstm_cell_613/BiasAdd/ReadVariableOp2h
2lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp2lstm_613/while/lstm_cell_613/MatMul/ReadVariableOp2l
4lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp4lstm_613/while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3980693

inputs>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity??$lstm_cell_614/BiasAdd/ReadVariableOp?#lstm_cell_614/MatMul/ReadVariableOp?%lstm_cell_614/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3980609*
condR
while_cond_3980608*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3983480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3983480___redundant_placeholder05
1while_while_cond_3983480___redundant_placeholder15
1while_while_cond_3983480___redundant_placeholder25
1while_while_cond_3983480___redundant_placeholder3
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
K__inference_sequential_204_layer_call_and_return_conditional_losses_3982146

inputsH
5lstm_612_lstm_cell_612_matmul_readvariableop_resource:	?J
7lstm_612_lstm_cell_612_matmul_1_readvariableop_resource:	d?E
6lstm_612_lstm_cell_612_biasadd_readvariableop_resource:	?H
5lstm_613_lstm_cell_613_matmul_readvariableop_resource:	d?J
7lstm_613_lstm_cell_613_matmul_1_readvariableop_resource:	2?E
6lstm_613_lstm_cell_613_biasadd_readvariableop_resource:	?G
5lstm_614_lstm_cell_614_matmul_readvariableop_resource:2(I
7lstm_614_lstm_cell_614_matmul_1_readvariableop_resource:
(D
6lstm_614_lstm_cell_614_biasadd_readvariableop_resource:(:
(dense_204_matmul_readvariableop_resource:
7
)dense_204_biasadd_readvariableop_resource:
identity?? dense_204/BiasAdd/ReadVariableOp?dense_204/MatMul/ReadVariableOp?-lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp?,lstm_612/lstm_cell_612/MatMul/ReadVariableOp?.lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp?lstm_612/while?-lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp?,lstm_613/lstm_cell_613/MatMul/ReadVariableOp?.lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp?lstm_613/while?-lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp?,lstm_614/lstm_cell_614/MatMul/ReadVariableOp?.lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp?lstm_614/whileD
lstm_612/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_612/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_612/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_612/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_612/strided_sliceStridedSlicelstm_612/Shape:output:0%lstm_612/strided_slice/stack:output:0'lstm_612/strided_slice/stack_1:output:0'lstm_612/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_612/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_612/zeros/packedPacklstm_612/strided_slice:output:0 lstm_612/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_612/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_612/zerosFilllstm_612/zeros/packed:output:0lstm_612/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_612/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_612/zeros_1/packedPacklstm_612/strided_slice:output:0"lstm_612/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_612/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_612/zeros_1Fill lstm_612/zeros_1/packed:output:0lstm_612/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_612/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_612/transpose	Transposeinputs lstm_612/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_612/Shape_1Shapelstm_612/transpose:y:0*
T0*
_output_shapes
:h
lstm_612/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_612/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_612/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_612/strided_slice_1StridedSlicelstm_612/Shape_1:output:0'lstm_612/strided_slice_1/stack:output:0)lstm_612/strided_slice_1/stack_1:output:0)lstm_612/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_612/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_612/TensorArrayV2TensorListReserve-lstm_612/TensorArrayV2/element_shape:output:0!lstm_612/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_612/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_612/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_612/transpose:y:0Glstm_612/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_612/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_612/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_612/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_612/strided_slice_2StridedSlicelstm_612/transpose:y:0'lstm_612/strided_slice_2/stack:output:0)lstm_612/strided_slice_2/stack_1:output:0)lstm_612/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_612/lstm_cell_612/MatMul/ReadVariableOpReadVariableOp5lstm_612_lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_612/lstm_cell_612/MatMulMatMul!lstm_612/strided_slice_2:output:04lstm_612/lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_612/lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp7lstm_612_lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_612/lstm_cell_612/MatMul_1MatMullstm_612/zeros:output:06lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_612/lstm_cell_612/addAddV2'lstm_612/lstm_cell_612/MatMul:product:0)lstm_612/lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_612/lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp6lstm_612_lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_612/lstm_cell_612/BiasAddBiasAddlstm_612/lstm_cell_612/add:z:05lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_612/lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_612/lstm_cell_612/splitSplit/lstm_612/lstm_cell_612/split/split_dim:output:0'lstm_612/lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_612/lstm_cell_612/SigmoidSigmoid%lstm_612/lstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_612/lstm_cell_612/Sigmoid_1Sigmoid%lstm_612/lstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_612/lstm_cell_612/mulMul$lstm_612/lstm_cell_612/Sigmoid_1:y:0lstm_612/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_612/lstm_cell_612/ReluRelu%lstm_612/lstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_612/lstm_cell_612/mul_1Mul"lstm_612/lstm_cell_612/Sigmoid:y:0)lstm_612/lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_612/lstm_cell_612/add_1AddV2lstm_612/lstm_cell_612/mul:z:0 lstm_612/lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_612/lstm_cell_612/Sigmoid_2Sigmoid%lstm_612/lstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_612/lstm_cell_612/Relu_1Relu lstm_612/lstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_612/lstm_cell_612/mul_2Mul$lstm_612/lstm_cell_612/Sigmoid_2:y:0+lstm_612/lstm_cell_612/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_612/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_612/TensorArrayV2_1TensorListReserve/lstm_612/TensorArrayV2_1/element_shape:output:0!lstm_612/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_612/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_612/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_612/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_612/whileWhile$lstm_612/while/loop_counter:output:0*lstm_612/while/maximum_iterations:output:0lstm_612/time:output:0!lstm_612/TensorArrayV2_1:handle:0lstm_612/zeros:output:0lstm_612/zeros_1:output:0!lstm_612/strided_slice_1:output:0@lstm_612/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_612_lstm_cell_612_matmul_readvariableop_resource7lstm_612_lstm_cell_612_matmul_1_readvariableop_resource6lstm_612_lstm_cell_612_biasadd_readvariableop_resource*
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
lstm_612_while_body_3981778*'
condR
lstm_612_while_cond_3981777*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_612/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_612/TensorArrayV2Stack/TensorListStackTensorListStacklstm_612/while:output:3Blstm_612/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_612/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_612/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_612/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_612/strided_slice_3StridedSlice4lstm_612/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_612/strided_slice_3/stack:output:0)lstm_612/strided_slice_3/stack_1:output:0)lstm_612/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_612/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_612/transpose_1	Transpose4lstm_612/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_612/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_612/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_613/ShapeShapelstm_612/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_613/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_613/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_613/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_613/strided_sliceStridedSlicelstm_613/Shape:output:0%lstm_613/strided_slice/stack:output:0'lstm_613/strided_slice/stack_1:output:0'lstm_613/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_613/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_613/zeros/packedPacklstm_613/strided_slice:output:0 lstm_613/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_613/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_613/zerosFilllstm_613/zeros/packed:output:0lstm_613/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_613/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_613/zeros_1/packedPacklstm_613/strided_slice:output:0"lstm_613/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_613/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_613/zeros_1Fill lstm_613/zeros_1/packed:output:0lstm_613/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_613/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_613/transpose	Transposelstm_612/transpose_1:y:0 lstm_613/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_613/Shape_1Shapelstm_613/transpose:y:0*
T0*
_output_shapes
:h
lstm_613/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_613/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_613/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_613/strided_slice_1StridedSlicelstm_613/Shape_1:output:0'lstm_613/strided_slice_1/stack:output:0)lstm_613/strided_slice_1/stack_1:output:0)lstm_613/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_613/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_613/TensorArrayV2TensorListReserve-lstm_613/TensorArrayV2/element_shape:output:0!lstm_613/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_613/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_613/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_613/transpose:y:0Glstm_613/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_613/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_613/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_613/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_613/strided_slice_2StridedSlicelstm_613/transpose:y:0'lstm_613/strided_slice_2/stack:output:0)lstm_613/strided_slice_2/stack_1:output:0)lstm_613/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_613/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp5lstm_613_lstm_cell_613_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_613/lstm_cell_613/MatMulMatMul!lstm_613/strided_slice_2:output:04lstm_613/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_613/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp7lstm_613_lstm_cell_613_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_613/lstm_cell_613/MatMul_1MatMullstm_613/zeros:output:06lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_613/lstm_cell_613/addAddV2'lstm_613/lstm_cell_613/MatMul:product:0)lstm_613/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_613/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp6lstm_613_lstm_cell_613_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_613/lstm_cell_613/BiasAddBiasAddlstm_613/lstm_cell_613/add:z:05lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_613/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_613/lstm_cell_613/splitSplit/lstm_613/lstm_cell_613/split/split_dim:output:0'lstm_613/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_613/lstm_cell_613/SigmoidSigmoid%lstm_613/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_613/lstm_cell_613/Sigmoid_1Sigmoid%lstm_613/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_613/lstm_cell_613/mulMul$lstm_613/lstm_cell_613/Sigmoid_1:y:0lstm_613/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_613/lstm_cell_613/ReluRelu%lstm_613/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_613/lstm_cell_613/mul_1Mul"lstm_613/lstm_cell_613/Sigmoid:y:0)lstm_613/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_613/lstm_cell_613/add_1AddV2lstm_613/lstm_cell_613/mul:z:0 lstm_613/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_613/lstm_cell_613/Sigmoid_2Sigmoid%lstm_613/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_613/lstm_cell_613/Relu_1Relu lstm_613/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_613/lstm_cell_613/mul_2Mul$lstm_613/lstm_cell_613/Sigmoid_2:y:0+lstm_613/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_613/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_613/TensorArrayV2_1TensorListReserve/lstm_613/TensorArrayV2_1/element_shape:output:0!lstm_613/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_613/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_613/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_613/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_613/whileWhile$lstm_613/while/loop_counter:output:0*lstm_613/while/maximum_iterations:output:0lstm_613/time:output:0!lstm_613/TensorArrayV2_1:handle:0lstm_613/zeros:output:0lstm_613/zeros_1:output:0!lstm_613/strided_slice_1:output:0@lstm_613/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_613_lstm_cell_613_matmul_readvariableop_resource7lstm_613_lstm_cell_613_matmul_1_readvariableop_resource6lstm_613_lstm_cell_613_biasadd_readvariableop_resource*
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
lstm_613_while_body_3981917*'
condR
lstm_613_while_cond_3981916*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_613/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_613/TensorArrayV2Stack/TensorListStackTensorListStacklstm_613/while:output:3Blstm_613/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_613/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_613/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_613/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_613/strided_slice_3StridedSlice4lstm_613/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_613/strided_slice_3/stack:output:0)lstm_613/strided_slice_3/stack_1:output:0)lstm_613/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_613/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_613/transpose_1	Transpose4lstm_613/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_613/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_613/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_614/ShapeShapelstm_613/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_614/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_614/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_614/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_614/strided_sliceStridedSlicelstm_614/Shape:output:0%lstm_614/strided_slice/stack:output:0'lstm_614/strided_slice/stack_1:output:0'lstm_614/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_614/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_614/zeros/packedPacklstm_614/strided_slice:output:0 lstm_614/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_614/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_614/zerosFilllstm_614/zeros/packed:output:0lstm_614/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_614/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_614/zeros_1/packedPacklstm_614/strided_slice:output:0"lstm_614/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_614/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_614/zeros_1Fill lstm_614/zeros_1/packed:output:0lstm_614/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_614/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_614/transpose	Transposelstm_613/transpose_1:y:0 lstm_614/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_614/Shape_1Shapelstm_614/transpose:y:0*
T0*
_output_shapes
:h
lstm_614/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_614/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_614/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_614/strided_slice_1StridedSlicelstm_614/Shape_1:output:0'lstm_614/strided_slice_1/stack:output:0)lstm_614/strided_slice_1/stack_1:output:0)lstm_614/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_614/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_614/TensorArrayV2TensorListReserve-lstm_614/TensorArrayV2/element_shape:output:0!lstm_614/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_614/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_614/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_614/transpose:y:0Glstm_614/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_614/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_614/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_614/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_614/strided_slice_2StridedSlicelstm_614/transpose:y:0'lstm_614/strided_slice_2/stack:output:0)lstm_614/strided_slice_2/stack_1:output:0)lstm_614/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_614/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp5lstm_614_lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_614/lstm_cell_614/MatMulMatMul!lstm_614/strided_slice_2:output:04lstm_614/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_614/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp7lstm_614_lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_614/lstm_cell_614/MatMul_1MatMullstm_614/zeros:output:06lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_614/lstm_cell_614/addAddV2'lstm_614/lstm_cell_614/MatMul:product:0)lstm_614/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_614/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp6lstm_614_lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_614/lstm_cell_614/BiasAddBiasAddlstm_614/lstm_cell_614/add:z:05lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_614/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_614/lstm_cell_614/splitSplit/lstm_614/lstm_cell_614/split/split_dim:output:0'lstm_614/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_614/lstm_cell_614/SigmoidSigmoid%lstm_614/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_614/lstm_cell_614/Sigmoid_1Sigmoid%lstm_614/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_614/lstm_cell_614/mulMul$lstm_614/lstm_cell_614/Sigmoid_1:y:0lstm_614/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_614/lstm_cell_614/ReluRelu%lstm_614/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_614/lstm_cell_614/mul_1Mul"lstm_614/lstm_cell_614/Sigmoid:y:0)lstm_614/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_614/lstm_cell_614/add_1AddV2lstm_614/lstm_cell_614/mul:z:0 lstm_614/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_614/lstm_cell_614/Sigmoid_2Sigmoid%lstm_614/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_614/lstm_cell_614/Relu_1Relu lstm_614/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_614/lstm_cell_614/mul_2Mul$lstm_614/lstm_cell_614/Sigmoid_2:y:0+lstm_614/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_614/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_614/TensorArrayV2_1TensorListReserve/lstm_614/TensorArrayV2_1/element_shape:output:0!lstm_614/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_614/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_614/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_614/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_614/whileWhile$lstm_614/while/loop_counter:output:0*lstm_614/while/maximum_iterations:output:0lstm_614/time:output:0!lstm_614/TensorArrayV2_1:handle:0lstm_614/zeros:output:0lstm_614/zeros_1:output:0!lstm_614/strided_slice_1:output:0@lstm_614/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_614_lstm_cell_614_matmul_readvariableop_resource7lstm_614_lstm_cell_614_matmul_1_readvariableop_resource6lstm_614_lstm_cell_614_biasadd_readvariableop_resource*
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
lstm_614_while_body_3982056*'
condR
lstm_614_while_cond_3982055*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_614/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_614/TensorArrayV2Stack/TensorListStackTensorListStacklstm_614/while:output:3Blstm_614/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_614/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_614/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_614/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_614/strided_slice_3StridedSlice4lstm_614/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_614/strided_slice_3/stack:output:0)lstm_614/strided_slice_3/stack_1:output:0)lstm_614/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_614/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_614/transpose_1	Transpose4lstm_614/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_614/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_614/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_204/MatMul/ReadVariableOpReadVariableOp(dense_204_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_204/MatMulMatMul!lstm_614/strided_slice_3:output:0'dense_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_204/BiasAdd/ReadVariableOpReadVariableOp)dense_204_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_204/BiasAddBiasAdddense_204/MatMul:product:0(dense_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_204/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_204/BiasAdd/ReadVariableOp ^dense_204/MatMul/ReadVariableOp.^lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp-^lstm_612/lstm_cell_612/MatMul/ReadVariableOp/^lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp^lstm_612/while.^lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp-^lstm_613/lstm_cell_613/MatMul/ReadVariableOp/^lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp^lstm_613/while.^lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp-^lstm_614/lstm_cell_614/MatMul/ReadVariableOp/^lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp^lstm_614/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_204/BiasAdd/ReadVariableOp dense_204/BiasAdd/ReadVariableOp2B
dense_204/MatMul/ReadVariableOpdense_204/MatMul/ReadVariableOp2^
-lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp-lstm_612/lstm_cell_612/BiasAdd/ReadVariableOp2\
,lstm_612/lstm_cell_612/MatMul/ReadVariableOp,lstm_612/lstm_cell_612/MatMul/ReadVariableOp2`
.lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp.lstm_612/lstm_cell_612/MatMul_1/ReadVariableOp2 
lstm_612/whilelstm_612/while2^
-lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp-lstm_613/lstm_cell_613/BiasAdd/ReadVariableOp2\
,lstm_613/lstm_cell_613/MatMul/ReadVariableOp,lstm_613/lstm_cell_613/MatMul/ReadVariableOp2`
.lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp.lstm_613/lstm_cell_613/MatMul_1/ReadVariableOp2 
lstm_613/whilelstm_613/while2^
-lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp-lstm_614/lstm_cell_614/BiasAdd/ReadVariableOp2\
,lstm_614/lstm_cell_614/MatMul/ReadVariableOp,lstm_614/lstm_cell_614/MatMul/ReadVariableOp2`
.lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp.lstm_614/lstm_cell_614/MatMul_1/ReadVariableOp2 
lstm_614/whilelstm_614/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3979758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3979758___redundant_placeholder05
1while_while_cond_3979758___redundant_placeholder15
1while_while_cond_3979758___redundant_placeholder25
1while_while_cond_3979758___redundant_placeholder3
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
??
?
#__inference__traced_restore_3984580
file_prefix3
!assignvariableop_dense_204_kernel:
/
!assignvariableop_1_dense_204_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_612_lstm_cell_612_kernel:	?M
:assignvariableop_8_lstm_612_lstm_cell_612_recurrent_kernel:	d?=
.assignvariableop_9_lstm_612_lstm_cell_612_bias:	?D
1assignvariableop_10_lstm_613_lstm_cell_613_kernel:	d?N
;assignvariableop_11_lstm_613_lstm_cell_613_recurrent_kernel:	2?>
/assignvariableop_12_lstm_613_lstm_cell_613_bias:	?C
1assignvariableop_13_lstm_614_lstm_cell_614_kernel:2(M
;assignvariableop_14_lstm_614_lstm_cell_614_recurrent_kernel:
(=
/assignvariableop_15_lstm_614_lstm_cell_614_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_204_kernel_m:
7
)assignvariableop_19_adam_dense_204_bias_m:K
8assignvariableop_20_adam_lstm_612_lstm_cell_612_kernel_m:	?U
Bassignvariableop_21_adam_lstm_612_lstm_cell_612_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_612_lstm_cell_612_bias_m:	?K
8assignvariableop_23_adam_lstm_613_lstm_cell_613_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_613_lstm_cell_613_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_613_lstm_cell_613_bias_m:	?J
8assignvariableop_26_adam_lstm_614_lstm_cell_614_kernel_m:2(T
Bassignvariableop_27_adam_lstm_614_lstm_cell_614_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_614_lstm_cell_614_bias_m:(=
+assignvariableop_29_adam_dense_204_kernel_v:
7
)assignvariableop_30_adam_dense_204_bias_v:K
8assignvariableop_31_adam_lstm_612_lstm_cell_612_kernel_v:	?U
Bassignvariableop_32_adam_lstm_612_lstm_cell_612_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_612_lstm_cell_612_bias_v:	?K
8assignvariableop_34_adam_lstm_613_lstm_cell_613_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_613_lstm_cell_613_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_613_lstm_cell_613_bias_v:	?J
8assignvariableop_37_adam_lstm_614_lstm_cell_614_kernel_v:2(T
Bassignvariableop_38_adam_lstm_614_lstm_cell_614_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_614_lstm_cell_614_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_204_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_204_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_612_lstm_cell_612_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_612_lstm_cell_612_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_612_lstm_cell_612_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_613_lstm_cell_613_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_613_lstm_cell_613_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_613_lstm_cell_613_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_614_lstm_cell_614_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_614_lstm_cell_614_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_614_lstm_cell_614_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_204_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_204_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_612_lstm_cell_612_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_612_lstm_cell_612_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_612_lstm_cell_612_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_613_lstm_cell_613_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_613_lstm_cell_613_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_613_lstm_cell_613_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_614_lstm_cell_614_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_614_lstm_cell_614_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_614_lstm_cell_614_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_204_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_204_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_612_lstm_cell_612_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_612_lstm_cell_612_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_612_lstm_cell_612_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_613_lstm_cell_613_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_613_lstm_cell_613_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_613_lstm_cell_613_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_614_lstm_cell_614_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_614_lstm_cell_614_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_614_lstm_cell_614_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
F__inference_dense_204_layer_call_and_return_conditional_losses_3980495

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
?
?
while_cond_3980938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3980938___redundant_placeholder05
1while_while_cond_3980938___redundant_placeholder15
1while_while_cond_3980938___redundant_placeholder25
1while_while_cond_3980938___redundant_placeholder3
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3979541

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
*sequential_204_lstm_613_while_cond_3978748L
Hsequential_204_lstm_613_while_sequential_204_lstm_613_while_loop_counterR
Nsequential_204_lstm_613_while_sequential_204_lstm_613_while_maximum_iterations-
)sequential_204_lstm_613_while_placeholder/
+sequential_204_lstm_613_while_placeholder_1/
+sequential_204_lstm_613_while_placeholder_2/
+sequential_204_lstm_613_while_placeholder_3N
Jsequential_204_lstm_613_while_less_sequential_204_lstm_613_strided_slice_1e
asequential_204_lstm_613_while_sequential_204_lstm_613_while_cond_3978748___redundant_placeholder0e
asequential_204_lstm_613_while_sequential_204_lstm_613_while_cond_3978748___redundant_placeholder1e
asequential_204_lstm_613_while_sequential_204_lstm_613_while_cond_3978748___redundant_placeholder2e
asequential_204_lstm_613_while_sequential_204_lstm_613_while_cond_3978748___redundant_placeholder3*
&sequential_204_lstm_613_while_identity
?
"sequential_204/lstm_613/while/LessLess)sequential_204_lstm_613_while_placeholderJsequential_204_lstm_613_while_less_sequential_204_lstm_613_strided_slice_1*
T0*
_output_shapes
: {
&sequential_204/lstm_613/while/IdentityIdentity&sequential_204/lstm_613/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_204_lstm_613_while_identity/sequential_204/lstm_613/while/Identity:output:0*(
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3979128

inputs(
lstm_cell_612_3979046:	?(
lstm_cell_612_3979048:	d?$
lstm_cell_612_3979050:	?
identity??%lstm_cell_612/StatefulPartitionedCall?while;
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
%lstm_cell_612/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_612_3979046lstm_cell_612_3979048lstm_cell_612_3979050*
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3979045n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_612_3979046lstm_cell_612_3979048lstm_cell_612_3979050*
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
while_body_3979059*
condR
while_cond_3979058*K
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
NoOpNoOp&^lstm_cell_612/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_612/StatefulPartitionedCall%lstm_cell_612/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3979891

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
?
?
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3984111

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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3981023

inputs?
,lstm_cell_612_matmul_readvariableop_resource:	?A
.lstm_cell_612_matmul_1_readvariableop_resource:	d?<
-lstm_cell_612_biasadd_readvariableop_resource:	?
identity??$lstm_cell_612/BiasAdd/ReadVariableOp?#lstm_cell_612/MatMul/ReadVariableOp?%lstm_cell_612/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3980939*
condR
while_cond_3980938*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_612_layer_call_and_return_conditional_losses_3980177

inputs?
,lstm_cell_612_matmul_readvariableop_resource:	?A
.lstm_cell_612_matmul_1_readvariableop_resource:	d?<
-lstm_cell_612_biasadd_readvariableop_resource:	?
identity??$lstm_cell_612/BiasAdd/ReadVariableOp?#lstm_cell_612/MatMul/ReadVariableOp?%lstm_cell_612/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3980093*
condR
while_cond_3980092*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3980243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_613_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_613_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_613_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_613_matmul_readvariableop_resource:	d?G
4while_lstm_cell_613_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_613_biasadd_readvariableop_resource:	???*while/lstm_cell_613/BiasAdd/ReadVariableOp?)while/lstm_cell_613/MatMul/ReadVariableOp?+while/lstm_cell_613/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_613/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_613_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_613/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_613/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_613/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_613_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_613/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_613/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_613/addAddV2$while/lstm_cell_613/MatMul:product:0&while/lstm_cell_613/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_613/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_613_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_613/BiasAddBiasAddwhile/lstm_cell_613/add:z:02while/lstm_cell_613/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_613/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_613/splitSplit,while/lstm_cell_613/split/split_dim:output:0$while/lstm_cell_613/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_613/SigmoidSigmoid"while/lstm_cell_613/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_1Sigmoid"while/lstm_cell_613/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mulMul!while/lstm_cell_613/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_613/ReluRelu"while/lstm_cell_613/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_1Mulwhile/lstm_cell_613/Sigmoid:y:0&while/lstm_cell_613/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/add_1AddV2while/lstm_cell_613/mul:z:0while/lstm_cell_613/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_613/Sigmoid_2Sigmoid"while/lstm_cell_613/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_613/Relu_1Reluwhile/lstm_cell_613/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_613/mul_2Mul!while/lstm_cell_613/Sigmoid_2:y:0(while/lstm_cell_613/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_613/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_613/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_613/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_613/BiasAdd/ReadVariableOp*^while/lstm_cell_613/MatMul/ReadVariableOp,^while/lstm_cell_613/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_613_biasadd_readvariableop_resource5while_lstm_cell_613_biasadd_readvariableop_resource_0"n
4while_lstm_cell_613_matmul_1_readvariableop_resource6while_lstm_cell_613_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_613_matmul_readvariableop_resource4while_lstm_cell_613_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_613/BiasAdd/ReadVariableOp*while/lstm_cell_613/BiasAdd/ReadVariableOp2V
)while/lstm_cell_613/MatMul/ReadVariableOp)while/lstm_cell_613/MatMul/ReadVariableOp2Z
+while/lstm_cell_613/MatMul_1/ReadVariableOp+while/lstm_cell_613/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982333
inputs_0?
,lstm_cell_612_matmul_readvariableop_resource:	?A
.lstm_cell_612_matmul_1_readvariableop_resource:	d?<
-lstm_cell_612_biasadd_readvariableop_resource:	?
identity??$lstm_cell_612/BiasAdd/ReadVariableOp?#lstm_cell_612/MatMul/ReadVariableOp?%lstm_cell_612/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_612/MatMul/ReadVariableOpReadVariableOp,lstm_cell_612_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_612/MatMulMatMulstrided_slice_2:output:0+lstm_cell_612/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_612/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_612_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_612/MatMul_1MatMulzeros:output:0-lstm_cell_612/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_612/addAddV2lstm_cell_612/MatMul:product:0 lstm_cell_612/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_612/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_612_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_612/BiasAddBiasAddlstm_cell_612/add:z:0,lstm_cell_612/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_612/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_612/splitSplit&lstm_cell_612/split/split_dim:output:0lstm_cell_612/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_612/SigmoidSigmoidlstm_cell_612/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_1Sigmoidlstm_cell_612/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_612/mulMullstm_cell_612/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_612/ReluRelulstm_cell_612/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_1Mullstm_cell_612/Sigmoid:y:0 lstm_cell_612/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_612/add_1AddV2lstm_cell_612/mul:z:0lstm_cell_612/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_612/Sigmoid_2Sigmoidlstm_cell_612/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_612/Relu_1Relulstm_cell_612/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_612/mul_2Mullstm_cell_612/Sigmoid_2:y:0"lstm_cell_612/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_612_matmul_readvariableop_resource.lstm_cell_612_matmul_1_readvariableop_resource-lstm_cell_612_biasadd_readvariableop_resource*
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
while_body_3982249*
condR
while_cond_3982248*K
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
NoOpNoOp%^lstm_cell_612/BiasAdd/ReadVariableOp$^lstm_cell_612/MatMul/ReadVariableOp&^lstm_cell_612/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_612/BiasAdd/ReadVariableOp$lstm_cell_612/BiasAdd/ReadVariableOp2J
#lstm_cell_612/MatMul/ReadVariableOp#lstm_cell_612/MatMul/ReadVariableOp2N
%lstm_cell_612/MatMul_1/ReadVariableOp%lstm_cell_612/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_612_layer_call_fn_3982168
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3979319|
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983851

inputs>
,lstm_cell_614_matmul_readvariableop_resource:2(@
.lstm_cell_614_matmul_1_readvariableop_resource:
(;
-lstm_cell_614_biasadd_readvariableop_resource:(
identity??$lstm_cell_614/BiasAdd/ReadVariableOp?#lstm_cell_614/MatMul/ReadVariableOp?%lstm_cell_614/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_614/MatMul/ReadVariableOpReadVariableOp,lstm_cell_614_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_614/MatMulMatMulstrided_slice_2:output:0+lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_614_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_614/MatMul_1MatMulzeros:output:0-lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_614/addAddV2lstm_cell_614/MatMul:product:0 lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_614_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_614/BiasAddBiasAddlstm_cell_614/add:z:0,lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_614/splitSplit&lstm_cell_614/split/split_dim:output:0lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_614/SigmoidSigmoidlstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_1Sigmoidlstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_614/mulMullstm_cell_614/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_614/ReluRelulstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_1Mullstm_cell_614/Sigmoid:y:0 lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_614/add_1AddV2lstm_cell_614/mul:z:0lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_614/Sigmoid_2Sigmoidlstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_614/Relu_1Relulstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_614/mul_2Mullstm_cell_614/Sigmoid_2:y:0"lstm_cell_614/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_614_matmul_readvariableop_resource.lstm_cell_614_matmul_1_readvariableop_resource-lstm_cell_614_biasadd_readvariableop_resource*
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
while_body_3983767*
condR
while_cond_3983766*K
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
NoOpNoOp%^lstm_cell_614/BiasAdd/ReadVariableOp$^lstm_cell_614/MatMul/ReadVariableOp&^lstm_cell_614/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_614/BiasAdd/ReadVariableOp$lstm_cell_614/BiasAdd/ReadVariableOp2J
#lstm_cell_614/MatMul/ReadVariableOp#lstm_cell_614/MatMul/ReadVariableOp2N
%lstm_cell_614/MatMul_1/ReadVariableOp%lstm_cell_614/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_612_layer_call_fn_3982190

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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3981023s
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
?C
?

lstm_614_while_body_3981629.
*lstm_614_while_lstm_614_while_loop_counter4
0lstm_614_while_lstm_614_while_maximum_iterations
lstm_614_while_placeholder 
lstm_614_while_placeholder_1 
lstm_614_while_placeholder_2 
lstm_614_while_placeholder_3-
)lstm_614_while_lstm_614_strided_slice_1_0i
elstm_614_while_tensorarrayv2read_tensorlistgetitem_lstm_614_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_614_while_lstm_cell_614_matmul_readvariableop_resource_0:2(Q
?lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource_0:
(L
>lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource_0:(
lstm_614_while_identity
lstm_614_while_identity_1
lstm_614_while_identity_2
lstm_614_while_identity_3
lstm_614_while_identity_4
lstm_614_while_identity_5+
'lstm_614_while_lstm_614_strided_slice_1g
clstm_614_while_tensorarrayv2read_tensorlistgetitem_lstm_614_tensorarrayunstack_tensorlistfromtensorM
;lstm_614_while_lstm_cell_614_matmul_readvariableop_resource:2(O
=lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource:
(J
<lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource:(??3lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp?2lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp?4lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp?
@lstm_614/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_614/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_614_while_tensorarrayv2read_tensorlistgetitem_lstm_614_tensorarrayunstack_tensorlistfromtensor_0lstm_614_while_placeholderIlstm_614/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_614/while/lstm_cell_614/MatMul/ReadVariableOpReadVariableOp=lstm_614_while_lstm_cell_614_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_614/while/lstm_cell_614/MatMulMatMul9lstm_614/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOpReadVariableOp?lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_614/while/lstm_cell_614/MatMul_1MatMullstm_614_while_placeholder_2<lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_614/while/lstm_cell_614/addAddV2-lstm_614/while/lstm_cell_614/MatMul:product:0/lstm_614/while/lstm_cell_614/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOpReadVariableOp>lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_614/while/lstm_cell_614/BiasAddBiasAdd$lstm_614/while/lstm_cell_614/add:z:0;lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_614/while/lstm_cell_614/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_614/while/lstm_cell_614/splitSplit5lstm_614/while/lstm_cell_614/split/split_dim:output:0-lstm_614/while/lstm_cell_614/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_614/while/lstm_cell_614/SigmoidSigmoid+lstm_614/while/lstm_cell_614/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_614/while/lstm_cell_614/Sigmoid_1Sigmoid+lstm_614/while/lstm_cell_614/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_614/while/lstm_cell_614/mulMul*lstm_614/while/lstm_cell_614/Sigmoid_1:y:0lstm_614_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_614/while/lstm_cell_614/ReluRelu+lstm_614/while/lstm_cell_614/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_614/while/lstm_cell_614/mul_1Mul(lstm_614/while/lstm_cell_614/Sigmoid:y:0/lstm_614/while/lstm_cell_614/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_614/while/lstm_cell_614/add_1AddV2$lstm_614/while/lstm_cell_614/mul:z:0&lstm_614/while/lstm_cell_614/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_614/while/lstm_cell_614/Sigmoid_2Sigmoid+lstm_614/while/lstm_cell_614/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_614/while/lstm_cell_614/Relu_1Relu&lstm_614/while/lstm_cell_614/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_614/while/lstm_cell_614/mul_2Mul*lstm_614/while/lstm_cell_614/Sigmoid_2:y:01lstm_614/while/lstm_cell_614/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_614/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_614_while_placeholder_1lstm_614_while_placeholder&lstm_614/while/lstm_cell_614/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_614/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_614/while/addAddV2lstm_614_while_placeholderlstm_614/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_614/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_614/while/add_1AddV2*lstm_614_while_lstm_614_while_loop_counterlstm_614/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_614/while/IdentityIdentitylstm_614/while/add_1:z:0^lstm_614/while/NoOp*
T0*
_output_shapes
: ?
lstm_614/while/Identity_1Identity0lstm_614_while_lstm_614_while_maximum_iterations^lstm_614/while/NoOp*
T0*
_output_shapes
: t
lstm_614/while/Identity_2Identitylstm_614/while/add:z:0^lstm_614/while/NoOp*
T0*
_output_shapes
: ?
lstm_614/while/Identity_3IdentityClstm_614/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_614/while/NoOp*
T0*
_output_shapes
: ?
lstm_614/while/Identity_4Identity&lstm_614/while/lstm_cell_614/mul_2:z:0^lstm_614/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_614/while/Identity_5Identity&lstm_614/while/lstm_cell_614/add_1:z:0^lstm_614/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_614/while/NoOpNoOp4^lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp3^lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp5^lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_614_while_identity lstm_614/while/Identity:output:0"?
lstm_614_while_identity_1"lstm_614/while/Identity_1:output:0"?
lstm_614_while_identity_2"lstm_614/while/Identity_2:output:0"?
lstm_614_while_identity_3"lstm_614/while/Identity_3:output:0"?
lstm_614_while_identity_4"lstm_614/while/Identity_4:output:0"?
lstm_614_while_identity_5"lstm_614/while/Identity_5:output:0"T
'lstm_614_while_lstm_614_strided_slice_1)lstm_614_while_lstm_614_strided_slice_1_0"~
<lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource>lstm_614_while_lstm_cell_614_biasadd_readvariableop_resource_0"?
=lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource?lstm_614_while_lstm_cell_614_matmul_1_readvariableop_resource_0"|
;lstm_614_while_lstm_cell_614_matmul_readvariableop_resource=lstm_614_while_lstm_cell_614_matmul_readvariableop_resource_0"?
clstm_614_while_tensorarrayv2read_tensorlistgetitem_lstm_614_tensorarrayunstack_tensorlistfromtensorelstm_614_while_tensorarrayv2read_tensorlistgetitem_lstm_614_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp3lstm_614/while/lstm_cell_614/BiasAdd/ReadVariableOp2h
2lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp2lstm_614/while/lstm_cell_614/MatMul/ReadVariableOp2l
4lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp4lstm_614/while/lstm_cell_614/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_612_input;
 serving_default_lstm_612_input:0?????????=
	dense_2040
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
2dense_204/kernel
:2dense_204/bias
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
0:.	?2lstm_612/lstm_cell_612/kernel
::8	d?2'lstm_612/lstm_cell_612/recurrent_kernel
*:(?2lstm_612/lstm_cell_612/bias
0:.	d?2lstm_613/lstm_cell_613/kernel
::8	2?2'lstm_613/lstm_cell_613/recurrent_kernel
*:(?2lstm_613/lstm_cell_613/bias
/:-2(2lstm_614/lstm_cell_614/kernel
9:7
(2'lstm_614/lstm_cell_614/recurrent_kernel
):'(2lstm_614/lstm_cell_614/bias
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
2Adam/dense_204/kernel/m
!:2Adam/dense_204/bias/m
5:3	?2$Adam/lstm_612/lstm_cell_612/kernel/m
?:=	d?2.Adam/lstm_612/lstm_cell_612/recurrent_kernel/m
/:-?2"Adam/lstm_612/lstm_cell_612/bias/m
5:3	d?2$Adam/lstm_613/lstm_cell_613/kernel/m
?:=	2?2.Adam/lstm_613/lstm_cell_613/recurrent_kernel/m
/:-?2"Adam/lstm_613/lstm_cell_613/bias/m
4:22(2$Adam/lstm_614/lstm_cell_614/kernel/m
>:<
(2.Adam/lstm_614/lstm_cell_614/recurrent_kernel/m
.:,(2"Adam/lstm_614/lstm_cell_614/bias/m
':%
2Adam/dense_204/kernel/v
!:2Adam/dense_204/bias/v
5:3	?2$Adam/lstm_612/lstm_cell_612/kernel/v
?:=	d?2.Adam/lstm_612/lstm_cell_612/recurrent_kernel/v
/:-?2"Adam/lstm_612/lstm_cell_612/bias/v
5:3	d?2$Adam/lstm_613/lstm_cell_613/kernel/v
?:=	2?2.Adam/lstm_613/lstm_cell_613/recurrent_kernel/v
/:-?2"Adam/lstm_613/lstm_cell_613/bias/v
4:22(2$Adam/lstm_614/lstm_cell_614/kernel/v
>:<
(2.Adam/lstm_614/lstm_cell_614/recurrent_kernel/v
.:,(2"Adam/lstm_614/lstm_cell_614/bias/v
?2?
0__inference_sequential_204_layer_call_fn_3980527
0__inference_sequential_204_layer_call_fn_3981265
0__inference_sequential_204_layer_call_fn_3981292
0__inference_sequential_204_layer_call_fn_3981143?
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
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981719
K__inference_sequential_204_layer_call_and_return_conditional_losses_3982146
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981173
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981203?
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
"__inference__wrapped_model_3978978lstm_612_input"?
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
*__inference_lstm_612_layer_call_fn_3982157
*__inference_lstm_612_layer_call_fn_3982168
*__inference_lstm_612_layer_call_fn_3982179
*__inference_lstm_612_layer_call_fn_3982190?
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982333
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982476
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982619
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982762?
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
*__inference_lstm_613_layer_call_fn_3982773
*__inference_lstm_613_layer_call_fn_3982784
*__inference_lstm_613_layer_call_fn_3982795
*__inference_lstm_613_layer_call_fn_3982806?
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3982949
E__inference_lstm_613_layer_call_and_return_conditional_losses_3983092
E__inference_lstm_613_layer_call_and_return_conditional_losses_3983235
E__inference_lstm_613_layer_call_and_return_conditional_losses_3983378?
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
*__inference_lstm_614_layer_call_fn_3983389
*__inference_lstm_614_layer_call_fn_3983400
*__inference_lstm_614_layer_call_fn_3983411
*__inference_lstm_614_layer_call_fn_3983422?
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983565
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983708
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983851
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983994?
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
+__inference_dense_204_layer_call_fn_3984003?
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
F__inference_dense_204_layer_call_and_return_conditional_losses_3984013?
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
%__inference_signature_wrapper_3981238lstm_612_input"?
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
/__inference_lstm_cell_612_layer_call_fn_3984030
/__inference_lstm_cell_612_layer_call_fn_3984047?
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3984079
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3984111?
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
/__inference_lstm_cell_613_layer_call_fn_3984128
/__inference_lstm_cell_613_layer_call_fn_3984145?
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3984177
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3984209?
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
/__inference_lstm_cell_614_layer_call_fn_3984226
/__inference_lstm_cell_614_layer_call_fn_3984243?
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3984275
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3984307?
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
"__inference__wrapped_model_3978978?()*+,-./0;?8
1?.
,?)
lstm_612_input?????????
? "5?2
0
	dense_204#? 
	dense_204??????????
F__inference_dense_204_layer_call_and_return_conditional_losses_3984013\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_204_layer_call_fn_3984003O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982333?()*O?L
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982476?()*O?L
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982619q()*??<
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
E__inference_lstm_612_layer_call_and_return_conditional_losses_3982762q()*??<
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
*__inference_lstm_612_layer_call_fn_3982157}()*O?L
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
*__inference_lstm_612_layer_call_fn_3982168}()*O?L
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
*__inference_lstm_612_layer_call_fn_3982179d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_612_layer_call_fn_3982190d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_613_layer_call_and_return_conditional_losses_3982949?+,-O?L
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3983092?+,-O?L
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3983235q+,-??<
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
E__inference_lstm_613_layer_call_and_return_conditional_losses_3983378q+,-??<
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
*__inference_lstm_613_layer_call_fn_3982773}+,-O?L
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
*__inference_lstm_613_layer_call_fn_3982784}+,-O?L
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
*__inference_lstm_613_layer_call_fn_3982795d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_613_layer_call_fn_3982806d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983565}./0O?L
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983708}./0O?L
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983851m./0??<
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
E__inference_lstm_614_layer_call_and_return_conditional_losses_3983994m./0??<
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
*__inference_lstm_614_layer_call_fn_3983389p./0O?L
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
*__inference_lstm_614_layer_call_fn_3983400p./0O?L
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
*__inference_lstm_614_layer_call_fn_3983411`./0??<
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
*__inference_lstm_614_layer_call_fn_3983422`./0??<
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3984079?()*??}
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
J__inference_lstm_cell_612_layer_call_and_return_conditional_losses_3984111?()*??}
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
/__inference_lstm_cell_612_layer_call_fn_3984030?()*??}
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
/__inference_lstm_cell_612_layer_call_fn_3984047?()*??}
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3984177?+,-??}
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
J__inference_lstm_cell_613_layer_call_and_return_conditional_losses_3984209?+,-??}
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
/__inference_lstm_cell_613_layer_call_fn_3984128?+,-??}
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
/__inference_lstm_cell_613_layer_call_fn_3984145?+,-??}
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3984275?./0??}
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
J__inference_lstm_cell_614_layer_call_and_return_conditional_losses_3984307?./0??}
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
/__inference_lstm_cell_614_layer_call_fn_3984226?./0??}
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
/__inference_lstm_cell_614_layer_call_fn_3984243?./0??}
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
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981173y()*+,-./0C?@
9?6
,?)
lstm_612_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981203y()*+,-./0C?@
9?6
,?)
lstm_612_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_204_layer_call_and_return_conditional_losses_3981719q()*+,-./0;?8
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
K__inference_sequential_204_layer_call_and_return_conditional_losses_3982146q()*+,-./0;?8
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
0__inference_sequential_204_layer_call_fn_3980527l()*+,-./0C?@
9?6
,?)
lstm_612_input?????????
p 

 
? "???????????
0__inference_sequential_204_layer_call_fn_3981143l()*+,-./0C?@
9?6
,?)
lstm_612_input?????????
p

 
? "???????????
0__inference_sequential_204_layer_call_fn_3981265d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_204_layer_call_fn_3981292d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3981238?()*+,-./0M?J
? 
C?@
>
lstm_612_input,?)
lstm_612_input?????????"5?2
0
	dense_204#? 
	dense_204?????????