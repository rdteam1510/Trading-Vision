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
dense_216/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_216/kernel
u
$dense_216/kernel/Read/ReadVariableOpReadVariableOpdense_216/kernel*
_output_shapes

:
*
dtype0
t
dense_216/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_216/bias
m
"dense_216/bias/Read/ReadVariableOpReadVariableOpdense_216/bias*
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
lstm_648/lstm_cell_648/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_648/lstm_cell_648/kernel
?
1lstm_648/lstm_cell_648/kernel/Read/ReadVariableOpReadVariableOplstm_648/lstm_cell_648/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_648/lstm_cell_648/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_648/lstm_cell_648/recurrent_kernel
?
;lstm_648/lstm_cell_648/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_648/lstm_cell_648/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_648/lstm_cell_648/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_648/lstm_cell_648/bias
?
/lstm_648/lstm_cell_648/bias/Read/ReadVariableOpReadVariableOplstm_648/lstm_cell_648/bias*
_output_shapes	
:?*
dtype0
?
lstm_649/lstm_cell_649/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_649/lstm_cell_649/kernel
?
1lstm_649/lstm_cell_649/kernel/Read/ReadVariableOpReadVariableOplstm_649/lstm_cell_649/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_649/lstm_cell_649/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_649/lstm_cell_649/recurrent_kernel
?
;lstm_649/lstm_cell_649/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_649/lstm_cell_649/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_649/lstm_cell_649/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_649/lstm_cell_649/bias
?
/lstm_649/lstm_cell_649/bias/Read/ReadVariableOpReadVariableOplstm_649/lstm_cell_649/bias*
_output_shapes	
:?*
dtype0
?
lstm_650/lstm_cell_650/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_650/lstm_cell_650/kernel
?
1lstm_650/lstm_cell_650/kernel/Read/ReadVariableOpReadVariableOplstm_650/lstm_cell_650/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_650/lstm_cell_650/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_650/lstm_cell_650/recurrent_kernel
?
;lstm_650/lstm_cell_650/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_650/lstm_cell_650/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_650/lstm_cell_650/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_650/lstm_cell_650/bias
?
/lstm_650/lstm_cell_650/bias/Read/ReadVariableOpReadVariableOplstm_650/lstm_cell_650/bias*
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
Adam/dense_216/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_216/kernel/m
?
+Adam/dense_216/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_216/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_216/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_216/bias/m
{
)Adam/dense_216/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_216/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_648/lstm_cell_648/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_648/lstm_cell_648/kernel/m
?
8Adam/lstm_648/lstm_cell_648/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_648/lstm_cell_648/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_648/lstm_cell_648/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_648/lstm_cell_648/recurrent_kernel/m
?
BAdam/lstm_648/lstm_cell_648/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_648/lstm_cell_648/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_648/lstm_cell_648/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_648/lstm_cell_648/bias/m
?
6Adam/lstm_648/lstm_cell_648/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_648/lstm_cell_648/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_649/lstm_cell_649/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_649/lstm_cell_649/kernel/m
?
8Adam/lstm_649/lstm_cell_649/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_649/lstm_cell_649/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_649/lstm_cell_649/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_649/lstm_cell_649/recurrent_kernel/m
?
BAdam/lstm_649/lstm_cell_649/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_649/lstm_cell_649/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_649/lstm_cell_649/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_649/lstm_cell_649/bias/m
?
6Adam/lstm_649/lstm_cell_649/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_649/lstm_cell_649/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_650/lstm_cell_650/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_650/lstm_cell_650/kernel/m
?
8Adam/lstm_650/lstm_cell_650/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_650/lstm_cell_650/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_650/lstm_cell_650/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_650/lstm_cell_650/recurrent_kernel/m
?
BAdam/lstm_650/lstm_cell_650/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_650/lstm_cell_650/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_650/lstm_cell_650/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_650/lstm_cell_650/bias/m
?
6Adam/lstm_650/lstm_cell_650/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_650/lstm_cell_650/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_216/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_216/kernel/v
?
+Adam/dense_216/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_216/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_216/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_216/bias/v
{
)Adam/dense_216/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_216/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_648/lstm_cell_648/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_648/lstm_cell_648/kernel/v
?
8Adam/lstm_648/lstm_cell_648/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_648/lstm_cell_648/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_648/lstm_cell_648/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_648/lstm_cell_648/recurrent_kernel/v
?
BAdam/lstm_648/lstm_cell_648/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_648/lstm_cell_648/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_648/lstm_cell_648/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_648/lstm_cell_648/bias/v
?
6Adam/lstm_648/lstm_cell_648/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_648/lstm_cell_648/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_649/lstm_cell_649/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_649/lstm_cell_649/kernel/v
?
8Adam/lstm_649/lstm_cell_649/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_649/lstm_cell_649/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_649/lstm_cell_649/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_649/lstm_cell_649/recurrent_kernel/v
?
BAdam/lstm_649/lstm_cell_649/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_649/lstm_cell_649/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_649/lstm_cell_649/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_649/lstm_cell_649/bias/v
?
6Adam/lstm_649/lstm_cell_649/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_649/lstm_cell_649/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_650/lstm_cell_650/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_650/lstm_cell_650/kernel/v
?
8Adam/lstm_650/lstm_cell_650/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_650/lstm_cell_650/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_650/lstm_cell_650/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_650/lstm_cell_650/recurrent_kernel/v
?
BAdam/lstm_650/lstm_cell_650/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_650/lstm_cell_650/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_650/lstm_cell_650/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_650/lstm_cell_650/bias/v
?
6Adam/lstm_650/lstm_cell_650/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_650/lstm_cell_650/bias/v*
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
VARIABLE_VALUEdense_216/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_216/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_648/lstm_cell_648/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_648/lstm_cell_648/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_648/lstm_cell_648/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_649/lstm_cell_649/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_649/lstm_cell_649/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_649/lstm_cell_649/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_650/lstm_cell_650/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_650/lstm_cell_650/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_650/lstm_cell_650/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_216/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_216/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_648/lstm_cell_648/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_648/lstm_cell_648/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_648/lstm_cell_648/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_649/lstm_cell_649/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_649/lstm_cell_649/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_649/lstm_cell_649/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_650/lstm_cell_650/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_650/lstm_cell_650/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_650/lstm_cell_650/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_216/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_216/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_648/lstm_cell_648/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_648/lstm_cell_648/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_648/lstm_cell_648/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_649/lstm_cell_649/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_649/lstm_cell_649/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_649/lstm_cell_649/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_650/lstm_cell_650/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_650/lstm_cell_650/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_650/lstm_cell_650/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_648_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_648_inputlstm_648/lstm_cell_648/kernel'lstm_648/lstm_cell_648/recurrent_kernellstm_648/lstm_cell_648/biaslstm_649/lstm_cell_649/kernel'lstm_649/lstm_cell_649/recurrent_kernellstm_649/lstm_cell_649/biaslstm_650/lstm_cell_650/kernel'lstm_650/lstm_cell_650/recurrent_kernellstm_650/lstm_cell_650/biasdense_216/kerneldense_216/bias*
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
%__inference_signature_wrapper_4147942
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_216/kernel/Read/ReadVariableOp"dense_216/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_648/lstm_cell_648/kernel/Read/ReadVariableOp;lstm_648/lstm_cell_648/recurrent_kernel/Read/ReadVariableOp/lstm_648/lstm_cell_648/bias/Read/ReadVariableOp1lstm_649/lstm_cell_649/kernel/Read/ReadVariableOp;lstm_649/lstm_cell_649/recurrent_kernel/Read/ReadVariableOp/lstm_649/lstm_cell_649/bias/Read/ReadVariableOp1lstm_650/lstm_cell_650/kernel/Read/ReadVariableOp;lstm_650/lstm_cell_650/recurrent_kernel/Read/ReadVariableOp/lstm_650/lstm_cell_650/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_216/kernel/m/Read/ReadVariableOp)Adam/dense_216/bias/m/Read/ReadVariableOp8Adam/lstm_648/lstm_cell_648/kernel/m/Read/ReadVariableOpBAdam/lstm_648/lstm_cell_648/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_648/lstm_cell_648/bias/m/Read/ReadVariableOp8Adam/lstm_649/lstm_cell_649/kernel/m/Read/ReadVariableOpBAdam/lstm_649/lstm_cell_649/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_649/lstm_cell_649/bias/m/Read/ReadVariableOp8Adam/lstm_650/lstm_cell_650/kernel/m/Read/ReadVariableOpBAdam/lstm_650/lstm_cell_650/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_650/lstm_cell_650/bias/m/Read/ReadVariableOp+Adam/dense_216/kernel/v/Read/ReadVariableOp)Adam/dense_216/bias/v/Read/ReadVariableOp8Adam/lstm_648/lstm_cell_648/kernel/v/Read/ReadVariableOpBAdam/lstm_648/lstm_cell_648/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_648/lstm_cell_648/bias/v/Read/ReadVariableOp8Adam/lstm_649/lstm_cell_649/kernel/v/Read/ReadVariableOpBAdam/lstm_649/lstm_cell_649/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_649/lstm_cell_649/bias/v/Read/ReadVariableOp8Adam/lstm_650/lstm_cell_650/kernel/v/Read/ReadVariableOpBAdam/lstm_650/lstm_cell_650/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_650/lstm_cell_650/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4151154
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_216/kerneldense_216/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_648/lstm_cell_648/kernel'lstm_648/lstm_cell_648/recurrent_kernellstm_648/lstm_cell_648/biaslstm_649/lstm_cell_649/kernel'lstm_649/lstm_cell_649/recurrent_kernellstm_649/lstm_cell_649/biaslstm_650/lstm_cell_650/kernel'lstm_650/lstm_cell_650/recurrent_kernellstm_650/lstm_cell_650/biastotalcountAdam/dense_216/kernel/mAdam/dense_216/bias/m$Adam/lstm_648/lstm_cell_648/kernel/m.Adam/lstm_648/lstm_cell_648/recurrent_kernel/m"Adam/lstm_648/lstm_cell_648/bias/m$Adam/lstm_649/lstm_cell_649/kernel/m.Adam/lstm_649/lstm_cell_649/recurrent_kernel/m"Adam/lstm_649/lstm_cell_649/bias/m$Adam/lstm_650/lstm_cell_650/kernel/m.Adam/lstm_650/lstm_cell_650/recurrent_kernel/m"Adam/lstm_650/lstm_cell_650/bias/mAdam/dense_216/kernel/vAdam/dense_216/bias/v$Adam/lstm_648/lstm_cell_648/kernel/v.Adam/lstm_648/lstm_cell_648/recurrent_kernel/v"Adam/lstm_648/lstm_cell_648/bias/v$Adam/lstm_649/lstm_cell_649/kernel/v.Adam/lstm_649/lstm_cell_649/recurrent_kernel/v"Adam/lstm_649/lstm_cell_649/bias/v$Adam/lstm_650/lstm_cell_650/kernel/v.Adam/lstm_650/lstm_cell_650/recurrent_kernel/v"Adam/lstm_650/lstm_cell_650/bias/v*4
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
#__inference__traced_restore_4151284??+
?

?
0__inference_sequential_216_layer_call_fn_4147996

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
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147795o
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
while_cond_4148952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4148952___redundant_placeholder05
1while_while_cond_4148952___redundant_placeholder15
1while_while_cond_4148952___redundant_placeholder25
1while_while_cond_4148952___redundant_placeholder3
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
while_body_4150328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_216_layer_call_and_return_conditional_losses_4148850

inputsH
5lstm_648_lstm_cell_648_matmul_readvariableop_resource:	?J
7lstm_648_lstm_cell_648_matmul_1_readvariableop_resource:	d?E
6lstm_648_lstm_cell_648_biasadd_readvariableop_resource:	?H
5lstm_649_lstm_cell_649_matmul_readvariableop_resource:	d?J
7lstm_649_lstm_cell_649_matmul_1_readvariableop_resource:	2?E
6lstm_649_lstm_cell_649_biasadd_readvariableop_resource:	?G
5lstm_650_lstm_cell_650_matmul_readvariableop_resource:2(I
7lstm_650_lstm_cell_650_matmul_1_readvariableop_resource:
(D
6lstm_650_lstm_cell_650_biasadd_readvariableop_resource:(:
(dense_216_matmul_readvariableop_resource:
7
)dense_216_biasadd_readvariableop_resource:
identity?? dense_216/BiasAdd/ReadVariableOp?dense_216/MatMul/ReadVariableOp?-lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp?,lstm_648/lstm_cell_648/MatMul/ReadVariableOp?.lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp?lstm_648/while?-lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp?,lstm_649/lstm_cell_649/MatMul/ReadVariableOp?.lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp?lstm_649/while?-lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp?,lstm_650/lstm_cell_650/MatMul/ReadVariableOp?.lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp?lstm_650/whileD
lstm_648/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_648/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_648/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_648/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_648/strided_sliceStridedSlicelstm_648/Shape:output:0%lstm_648/strided_slice/stack:output:0'lstm_648/strided_slice/stack_1:output:0'lstm_648/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_648/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_648/zeros/packedPacklstm_648/strided_slice:output:0 lstm_648/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_648/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_648/zerosFilllstm_648/zeros/packed:output:0lstm_648/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_648/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_648/zeros_1/packedPacklstm_648/strided_slice:output:0"lstm_648/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_648/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_648/zeros_1Fill lstm_648/zeros_1/packed:output:0lstm_648/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_648/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_648/transpose	Transposeinputs lstm_648/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_648/Shape_1Shapelstm_648/transpose:y:0*
T0*
_output_shapes
:h
lstm_648/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_648/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_648/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_648/strided_slice_1StridedSlicelstm_648/Shape_1:output:0'lstm_648/strided_slice_1/stack:output:0)lstm_648/strided_slice_1/stack_1:output:0)lstm_648/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_648/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_648/TensorArrayV2TensorListReserve-lstm_648/TensorArrayV2/element_shape:output:0!lstm_648/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_648/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_648/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_648/transpose:y:0Glstm_648/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_648/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_648/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_648/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_648/strided_slice_2StridedSlicelstm_648/transpose:y:0'lstm_648/strided_slice_2/stack:output:0)lstm_648/strided_slice_2/stack_1:output:0)lstm_648/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_648/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp5lstm_648_lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_648/lstm_cell_648/MatMulMatMul!lstm_648/strided_slice_2:output:04lstm_648/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_648/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp7lstm_648_lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_648/lstm_cell_648/MatMul_1MatMullstm_648/zeros:output:06lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_648/lstm_cell_648/addAddV2'lstm_648/lstm_cell_648/MatMul:product:0)lstm_648/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_648/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp6lstm_648_lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_648/lstm_cell_648/BiasAddBiasAddlstm_648/lstm_cell_648/add:z:05lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_648/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_648/lstm_cell_648/splitSplit/lstm_648/lstm_cell_648/split/split_dim:output:0'lstm_648/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_648/lstm_cell_648/SigmoidSigmoid%lstm_648/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_648/lstm_cell_648/Sigmoid_1Sigmoid%lstm_648/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_648/lstm_cell_648/mulMul$lstm_648/lstm_cell_648/Sigmoid_1:y:0lstm_648/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_648/lstm_cell_648/ReluRelu%lstm_648/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_648/lstm_cell_648/mul_1Mul"lstm_648/lstm_cell_648/Sigmoid:y:0)lstm_648/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_648/lstm_cell_648/add_1AddV2lstm_648/lstm_cell_648/mul:z:0 lstm_648/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_648/lstm_cell_648/Sigmoid_2Sigmoid%lstm_648/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_648/lstm_cell_648/Relu_1Relu lstm_648/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_648/lstm_cell_648/mul_2Mul$lstm_648/lstm_cell_648/Sigmoid_2:y:0+lstm_648/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_648/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_648/TensorArrayV2_1TensorListReserve/lstm_648/TensorArrayV2_1/element_shape:output:0!lstm_648/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_648/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_648/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_648/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_648/whileWhile$lstm_648/while/loop_counter:output:0*lstm_648/while/maximum_iterations:output:0lstm_648/time:output:0!lstm_648/TensorArrayV2_1:handle:0lstm_648/zeros:output:0lstm_648/zeros_1:output:0!lstm_648/strided_slice_1:output:0@lstm_648/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_648_lstm_cell_648_matmul_readvariableop_resource7lstm_648_lstm_cell_648_matmul_1_readvariableop_resource6lstm_648_lstm_cell_648_biasadd_readvariableop_resource*
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
lstm_648_while_body_4148482*'
condR
lstm_648_while_cond_4148481*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_648/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_648/TensorArrayV2Stack/TensorListStackTensorListStacklstm_648/while:output:3Blstm_648/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_648/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_648/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_648/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_648/strided_slice_3StridedSlice4lstm_648/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_648/strided_slice_3/stack:output:0)lstm_648/strided_slice_3/stack_1:output:0)lstm_648/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_648/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_648/transpose_1	Transpose4lstm_648/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_648/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_648/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_649/ShapeShapelstm_648/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_649/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_649/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_649/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_649/strided_sliceStridedSlicelstm_649/Shape:output:0%lstm_649/strided_slice/stack:output:0'lstm_649/strided_slice/stack_1:output:0'lstm_649/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_649/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_649/zeros/packedPacklstm_649/strided_slice:output:0 lstm_649/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_649/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_649/zerosFilllstm_649/zeros/packed:output:0lstm_649/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_649/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_649/zeros_1/packedPacklstm_649/strided_slice:output:0"lstm_649/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_649/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_649/zeros_1Fill lstm_649/zeros_1/packed:output:0lstm_649/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_649/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_649/transpose	Transposelstm_648/transpose_1:y:0 lstm_649/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_649/Shape_1Shapelstm_649/transpose:y:0*
T0*
_output_shapes
:h
lstm_649/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_649/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_649/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_649/strided_slice_1StridedSlicelstm_649/Shape_1:output:0'lstm_649/strided_slice_1/stack:output:0)lstm_649/strided_slice_1/stack_1:output:0)lstm_649/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_649/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_649/TensorArrayV2TensorListReserve-lstm_649/TensorArrayV2/element_shape:output:0!lstm_649/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_649/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_649/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_649/transpose:y:0Glstm_649/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_649/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_649/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_649/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_649/strided_slice_2StridedSlicelstm_649/transpose:y:0'lstm_649/strided_slice_2/stack:output:0)lstm_649/strided_slice_2/stack_1:output:0)lstm_649/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_649/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp5lstm_649_lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_649/lstm_cell_649/MatMulMatMul!lstm_649/strided_slice_2:output:04lstm_649/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_649/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp7lstm_649_lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_649/lstm_cell_649/MatMul_1MatMullstm_649/zeros:output:06lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_649/lstm_cell_649/addAddV2'lstm_649/lstm_cell_649/MatMul:product:0)lstm_649/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_649/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp6lstm_649_lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_649/lstm_cell_649/BiasAddBiasAddlstm_649/lstm_cell_649/add:z:05lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_649/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_649/lstm_cell_649/splitSplit/lstm_649/lstm_cell_649/split/split_dim:output:0'lstm_649/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_649/lstm_cell_649/SigmoidSigmoid%lstm_649/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_649/lstm_cell_649/Sigmoid_1Sigmoid%lstm_649/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_649/lstm_cell_649/mulMul$lstm_649/lstm_cell_649/Sigmoid_1:y:0lstm_649/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_649/lstm_cell_649/ReluRelu%lstm_649/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_649/lstm_cell_649/mul_1Mul"lstm_649/lstm_cell_649/Sigmoid:y:0)lstm_649/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_649/lstm_cell_649/add_1AddV2lstm_649/lstm_cell_649/mul:z:0 lstm_649/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_649/lstm_cell_649/Sigmoid_2Sigmoid%lstm_649/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_649/lstm_cell_649/Relu_1Relu lstm_649/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_649/lstm_cell_649/mul_2Mul$lstm_649/lstm_cell_649/Sigmoid_2:y:0+lstm_649/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_649/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_649/TensorArrayV2_1TensorListReserve/lstm_649/TensorArrayV2_1/element_shape:output:0!lstm_649/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_649/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_649/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_649/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_649/whileWhile$lstm_649/while/loop_counter:output:0*lstm_649/while/maximum_iterations:output:0lstm_649/time:output:0!lstm_649/TensorArrayV2_1:handle:0lstm_649/zeros:output:0lstm_649/zeros_1:output:0!lstm_649/strided_slice_1:output:0@lstm_649/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_649_lstm_cell_649_matmul_readvariableop_resource7lstm_649_lstm_cell_649_matmul_1_readvariableop_resource6lstm_649_lstm_cell_649_biasadd_readvariableop_resource*
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
lstm_649_while_body_4148621*'
condR
lstm_649_while_cond_4148620*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_649/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_649/TensorArrayV2Stack/TensorListStackTensorListStacklstm_649/while:output:3Blstm_649/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_649/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_649/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_649/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_649/strided_slice_3StridedSlice4lstm_649/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_649/strided_slice_3/stack:output:0)lstm_649/strided_slice_3/stack_1:output:0)lstm_649/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_649/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_649/transpose_1	Transpose4lstm_649/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_649/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_649/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_650/ShapeShapelstm_649/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_650/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_650/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_650/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_650/strided_sliceStridedSlicelstm_650/Shape:output:0%lstm_650/strided_slice/stack:output:0'lstm_650/strided_slice/stack_1:output:0'lstm_650/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_650/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_650/zeros/packedPacklstm_650/strided_slice:output:0 lstm_650/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_650/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_650/zerosFilllstm_650/zeros/packed:output:0lstm_650/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_650/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_650/zeros_1/packedPacklstm_650/strided_slice:output:0"lstm_650/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_650/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_650/zeros_1Fill lstm_650/zeros_1/packed:output:0lstm_650/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_650/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_650/transpose	Transposelstm_649/transpose_1:y:0 lstm_650/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_650/Shape_1Shapelstm_650/transpose:y:0*
T0*
_output_shapes
:h
lstm_650/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_650/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_650/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_650/strided_slice_1StridedSlicelstm_650/Shape_1:output:0'lstm_650/strided_slice_1/stack:output:0)lstm_650/strided_slice_1/stack_1:output:0)lstm_650/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_650/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_650/TensorArrayV2TensorListReserve-lstm_650/TensorArrayV2/element_shape:output:0!lstm_650/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_650/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_650/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_650/transpose:y:0Glstm_650/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_650/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_650/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_650/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_650/strided_slice_2StridedSlicelstm_650/transpose:y:0'lstm_650/strided_slice_2/stack:output:0)lstm_650/strided_slice_2/stack_1:output:0)lstm_650/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_650/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp5lstm_650_lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_650/lstm_cell_650/MatMulMatMul!lstm_650/strided_slice_2:output:04lstm_650/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_650/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp7lstm_650_lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_650/lstm_cell_650/MatMul_1MatMullstm_650/zeros:output:06lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_650/lstm_cell_650/addAddV2'lstm_650/lstm_cell_650/MatMul:product:0)lstm_650/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_650/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp6lstm_650_lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_650/lstm_cell_650/BiasAddBiasAddlstm_650/lstm_cell_650/add:z:05lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_650/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_650/lstm_cell_650/splitSplit/lstm_650/lstm_cell_650/split/split_dim:output:0'lstm_650/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_650/lstm_cell_650/SigmoidSigmoid%lstm_650/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_650/lstm_cell_650/Sigmoid_1Sigmoid%lstm_650/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_650/lstm_cell_650/mulMul$lstm_650/lstm_cell_650/Sigmoid_1:y:0lstm_650/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_650/lstm_cell_650/ReluRelu%lstm_650/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_650/lstm_cell_650/mul_1Mul"lstm_650/lstm_cell_650/Sigmoid:y:0)lstm_650/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_650/lstm_cell_650/add_1AddV2lstm_650/lstm_cell_650/mul:z:0 lstm_650/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_650/lstm_cell_650/Sigmoid_2Sigmoid%lstm_650/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_650/lstm_cell_650/Relu_1Relu lstm_650/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_650/lstm_cell_650/mul_2Mul$lstm_650/lstm_cell_650/Sigmoid_2:y:0+lstm_650/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_650/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_650/TensorArrayV2_1TensorListReserve/lstm_650/TensorArrayV2_1/element_shape:output:0!lstm_650/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_650/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_650/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_650/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_650/whileWhile$lstm_650/while/loop_counter:output:0*lstm_650/while/maximum_iterations:output:0lstm_650/time:output:0!lstm_650/TensorArrayV2_1:handle:0lstm_650/zeros:output:0lstm_650/zeros_1:output:0!lstm_650/strided_slice_1:output:0@lstm_650/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_650_lstm_cell_650_matmul_readvariableop_resource7lstm_650_lstm_cell_650_matmul_1_readvariableop_resource6lstm_650_lstm_cell_650_biasadd_readvariableop_resource*
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
lstm_650_while_body_4148760*'
condR
lstm_650_while_cond_4148759*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_650/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_650/TensorArrayV2Stack/TensorListStackTensorListStacklstm_650/while:output:3Blstm_650/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_650/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_650/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_650/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_650/strided_slice_3StridedSlice4lstm_650/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_650/strided_slice_3/stack:output:0)lstm_650/strided_slice_3/stack_1:output:0)lstm_650/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_650/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_650/transpose_1	Transpose4lstm_650/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_650/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_650/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_216/MatMul/ReadVariableOpReadVariableOp(dense_216_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_216/MatMulMatMul!lstm_650/strided_slice_3:output:0'dense_216/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_216/BiasAdd/ReadVariableOpReadVariableOp)dense_216_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_216/BiasAddBiasAdddense_216/MatMul:product:0(dense_216/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_216/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_216/BiasAdd/ReadVariableOp ^dense_216/MatMul/ReadVariableOp.^lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp-^lstm_648/lstm_cell_648/MatMul/ReadVariableOp/^lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp^lstm_648/while.^lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp-^lstm_649/lstm_cell_649/MatMul/ReadVariableOp/^lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp^lstm_649/while.^lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp-^lstm_650/lstm_cell_650/MatMul/ReadVariableOp/^lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp^lstm_650/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_216/BiasAdd/ReadVariableOp dense_216/BiasAdd/ReadVariableOp2B
dense_216/MatMul/ReadVariableOpdense_216/MatMul/ReadVariableOp2^
-lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp-lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp2\
,lstm_648/lstm_cell_648/MatMul/ReadVariableOp,lstm_648/lstm_cell_648/MatMul/ReadVariableOp2`
.lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp.lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp2 
lstm_648/whilelstm_648/while2^
-lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp-lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp2\
,lstm_649/lstm_cell_649/MatMul/ReadVariableOp,lstm_649/lstm_cell_649/MatMul/ReadVariableOp2`
.lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp.lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp2 
lstm_649/whilelstm_649/while2^
-lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp-lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp2\
,lstm_650/lstm_cell_650/MatMul/ReadVariableOp,lstm_650/lstm_cell_650/MatMul/ReadVariableOp2`
.lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp.lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp2 
lstm_650/whilelstm_650/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4146947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_650_layer_call_fn_4150104
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4146723o
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
?C
?

lstm_650_while_body_4148760.
*lstm_650_while_lstm_650_while_loop_counter4
0lstm_650_while_lstm_650_while_maximum_iterations
lstm_650_while_placeholder 
lstm_650_while_placeholder_1 
lstm_650_while_placeholder_2 
lstm_650_while_placeholder_3-
)lstm_650_while_lstm_650_strided_slice_1_0i
elstm_650_while_tensorarrayv2read_tensorlistgetitem_lstm_650_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_650_while_lstm_cell_650_matmul_readvariableop_resource_0:2(Q
?lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(L
>lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource_0:(
lstm_650_while_identity
lstm_650_while_identity_1
lstm_650_while_identity_2
lstm_650_while_identity_3
lstm_650_while_identity_4
lstm_650_while_identity_5+
'lstm_650_while_lstm_650_strided_slice_1g
clstm_650_while_tensorarrayv2read_tensorlistgetitem_lstm_650_tensorarrayunstack_tensorlistfromtensorM
;lstm_650_while_lstm_cell_650_matmul_readvariableop_resource:2(O
=lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource:
(J
<lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource:(??3lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp?2lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp?4lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp?
@lstm_650/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_650/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_650_while_tensorarrayv2read_tensorlistgetitem_lstm_650_tensorarrayunstack_tensorlistfromtensor_0lstm_650_while_placeholderIlstm_650/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_650/while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp=lstm_650_while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_650/while/lstm_cell_650/MatMulMatMul9lstm_650/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp?lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_650/while/lstm_cell_650/MatMul_1MatMullstm_650_while_placeholder_2<lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_650/while/lstm_cell_650/addAddV2-lstm_650/while/lstm_cell_650/MatMul:product:0/lstm_650/while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp>lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_650/while/lstm_cell_650/BiasAddBiasAdd$lstm_650/while/lstm_cell_650/add:z:0;lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_650/while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_650/while/lstm_cell_650/splitSplit5lstm_650/while/lstm_cell_650/split/split_dim:output:0-lstm_650/while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_650/while/lstm_cell_650/SigmoidSigmoid+lstm_650/while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_650/while/lstm_cell_650/Sigmoid_1Sigmoid+lstm_650/while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_650/while/lstm_cell_650/mulMul*lstm_650/while/lstm_cell_650/Sigmoid_1:y:0lstm_650_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_650/while/lstm_cell_650/ReluRelu+lstm_650/while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_650/while/lstm_cell_650/mul_1Mul(lstm_650/while/lstm_cell_650/Sigmoid:y:0/lstm_650/while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_650/while/lstm_cell_650/add_1AddV2$lstm_650/while/lstm_cell_650/mul:z:0&lstm_650/while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_650/while/lstm_cell_650/Sigmoid_2Sigmoid+lstm_650/while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_650/while/lstm_cell_650/Relu_1Relu&lstm_650/while/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_650/while/lstm_cell_650/mul_2Mul*lstm_650/while/lstm_cell_650/Sigmoid_2:y:01lstm_650/while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_650/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_650_while_placeholder_1lstm_650_while_placeholder&lstm_650/while/lstm_cell_650/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_650/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_650/while/addAddV2lstm_650_while_placeholderlstm_650/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_650/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_650/while/add_1AddV2*lstm_650_while_lstm_650_while_loop_counterlstm_650/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_650/while/IdentityIdentitylstm_650/while/add_1:z:0^lstm_650/while/NoOp*
T0*
_output_shapes
: ?
lstm_650/while/Identity_1Identity0lstm_650_while_lstm_650_while_maximum_iterations^lstm_650/while/NoOp*
T0*
_output_shapes
: t
lstm_650/while/Identity_2Identitylstm_650/while/add:z:0^lstm_650/while/NoOp*
T0*
_output_shapes
: ?
lstm_650/while/Identity_3IdentityClstm_650/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_650/while/NoOp*
T0*
_output_shapes
: ?
lstm_650/while/Identity_4Identity&lstm_650/while/lstm_cell_650/mul_2:z:0^lstm_650/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_650/while/Identity_5Identity&lstm_650/while/lstm_cell_650/add_1:z:0^lstm_650/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_650/while/NoOpNoOp4^lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp3^lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp5^lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_650_while_identity lstm_650/while/Identity:output:0"?
lstm_650_while_identity_1"lstm_650/while/Identity_1:output:0"?
lstm_650_while_identity_2"lstm_650/while/Identity_2:output:0"?
lstm_650_while_identity_3"lstm_650/while/Identity_3:output:0"?
lstm_650_while_identity_4"lstm_650/while/Identity_4:output:0"?
lstm_650_while_identity_5"lstm_650/while/Identity_5:output:0"T
'lstm_650_while_lstm_650_strided_slice_1)lstm_650_while_lstm_650_strided_slice_1_0"~
<lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource>lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource_0"?
=lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource?lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource_0"|
;lstm_650_while_lstm_cell_650_matmul_readvariableop_resource=lstm_650_while_lstm_cell_650_matmul_readvariableop_resource_0"?
clstm_650_while_tensorarrayv2read_tensorlistgetitem_lstm_650_tensorarrayunstack_tensorlistfromtensorelstm_650_while_tensorarrayv2read_tensorlistgetitem_lstm_650_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp3lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp2h
2lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp2lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp2l
4lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp4lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149037
inputs_0?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_4148953*
condR
while_cond_4148952*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4150979

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
?C
?

lstm_648_while_body_4148055.
*lstm_648_while_lstm_648_while_loop_counter4
0lstm_648_while_lstm_648_while_maximum_iterations
lstm_648_while_placeholder 
lstm_648_while_placeholder_1 
lstm_648_while_placeholder_2 
lstm_648_while_placeholder_3-
)lstm_648_while_lstm_648_strided_slice_1_0i
elstm_648_while_tensorarrayv2read_tensorlistgetitem_lstm_648_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_648_while_lstm_cell_648_matmul_readvariableop_resource_0:	?R
?lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?M
>lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
lstm_648_while_identity
lstm_648_while_identity_1
lstm_648_while_identity_2
lstm_648_while_identity_3
lstm_648_while_identity_4
lstm_648_while_identity_5+
'lstm_648_while_lstm_648_strided_slice_1g
clstm_648_while_tensorarrayv2read_tensorlistgetitem_lstm_648_tensorarrayunstack_tensorlistfromtensorN
;lstm_648_while_lstm_cell_648_matmul_readvariableop_resource:	?P
=lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource:	d?K
<lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource:	???3lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp?2lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp?4lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp?
@lstm_648/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_648/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_648_while_tensorarrayv2read_tensorlistgetitem_lstm_648_tensorarrayunstack_tensorlistfromtensor_0lstm_648_while_placeholderIlstm_648/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_648/while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp=lstm_648_while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_648/while/lstm_cell_648/MatMulMatMul9lstm_648/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp?lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_648/while/lstm_cell_648/MatMul_1MatMullstm_648_while_placeholder_2<lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_648/while/lstm_cell_648/addAddV2-lstm_648/while/lstm_cell_648/MatMul:product:0/lstm_648/while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp>lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_648/while/lstm_cell_648/BiasAddBiasAdd$lstm_648/while/lstm_cell_648/add:z:0;lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_648/while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_648/while/lstm_cell_648/splitSplit5lstm_648/while/lstm_cell_648/split/split_dim:output:0-lstm_648/while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_648/while/lstm_cell_648/SigmoidSigmoid+lstm_648/while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_648/while/lstm_cell_648/Sigmoid_1Sigmoid+lstm_648/while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_648/while/lstm_cell_648/mulMul*lstm_648/while/lstm_cell_648/Sigmoid_1:y:0lstm_648_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_648/while/lstm_cell_648/ReluRelu+lstm_648/while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_648/while/lstm_cell_648/mul_1Mul(lstm_648/while/lstm_cell_648/Sigmoid:y:0/lstm_648/while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_648/while/lstm_cell_648/add_1AddV2$lstm_648/while/lstm_cell_648/mul:z:0&lstm_648/while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_648/while/lstm_cell_648/Sigmoid_2Sigmoid+lstm_648/while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_648/while/lstm_cell_648/Relu_1Relu&lstm_648/while/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_648/while/lstm_cell_648/mul_2Mul*lstm_648/while/lstm_cell_648/Sigmoid_2:y:01lstm_648/while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_648/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_648_while_placeholder_1lstm_648_while_placeholder&lstm_648/while/lstm_cell_648/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_648/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_648/while/addAddV2lstm_648_while_placeholderlstm_648/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_648/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_648/while/add_1AddV2*lstm_648_while_lstm_648_while_loop_counterlstm_648/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_648/while/IdentityIdentitylstm_648/while/add_1:z:0^lstm_648/while/NoOp*
T0*
_output_shapes
: ?
lstm_648/while/Identity_1Identity0lstm_648_while_lstm_648_while_maximum_iterations^lstm_648/while/NoOp*
T0*
_output_shapes
: t
lstm_648/while/Identity_2Identitylstm_648/while/add:z:0^lstm_648/while/NoOp*
T0*
_output_shapes
: ?
lstm_648/while/Identity_3IdentityClstm_648/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_648/while/NoOp*
T0*
_output_shapes
: ?
lstm_648/while/Identity_4Identity&lstm_648/while/lstm_cell_648/mul_2:z:0^lstm_648/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_648/while/Identity_5Identity&lstm_648/while/lstm_cell_648/add_1:z:0^lstm_648/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_648/while/NoOpNoOp4^lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp3^lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp5^lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_648_while_identity lstm_648/while/Identity:output:0"?
lstm_648_while_identity_1"lstm_648/while/Identity_1:output:0"?
lstm_648_while_identity_2"lstm_648/while/Identity_2:output:0"?
lstm_648_while_identity_3"lstm_648/while/Identity_3:output:0"?
lstm_648_while_identity_4"lstm_648/while/Identity_4:output:0"?
lstm_648_while_identity_5"lstm_648/while/Identity_5:output:0"T
'lstm_648_while_lstm_648_strided_slice_1)lstm_648_while_lstm_648_strided_slice_1_0"~
<lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource>lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource_0"?
=lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource?lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource_0"|
;lstm_648_while_lstm_cell_648_matmul_readvariableop_resource=lstm_648_while_lstm_cell_648_matmul_readvariableop_resource_0"?
clstm_648_while_tensorarrayv2read_tensorlistgetitem_lstm_648_tensorarrayunstack_tensorlistfromtensorelstm_648_while_tensorarrayv2read_tensorlistgetitem_lstm_648_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp3lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp2h
2lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp2lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp2l
4lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp4lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4147562

inputs?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_4147478*
condR
while_cond_4147477*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147877
lstm_648_input#
lstm_648_4147850:	?#
lstm_648_4147852:	d?
lstm_648_4147854:	?#
lstm_649_4147857:	d?#
lstm_649_4147859:	2?
lstm_649_4147861:	?"
lstm_650_4147864:2("
lstm_650_4147866:
(
lstm_650_4147868:(#
dense_216_4147871:

dense_216_4147873:
identity??!dense_216/StatefulPartitionedCall? lstm_648/StatefulPartitionedCall? lstm_649/StatefulPartitionedCall? lstm_650/StatefulPartitionedCall?
 lstm_648/StatefulPartitionedCallStatefulPartitionedCalllstm_648_inputlstm_648_4147850lstm_648_4147852lstm_648_4147854*
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4146881?
 lstm_649/StatefulPartitionedCallStatefulPartitionedCall)lstm_648/StatefulPartitionedCall:output:0lstm_649_4147857lstm_649_4147859lstm_649_4147861*
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4147031?
 lstm_650/StatefulPartitionedCallStatefulPartitionedCall)lstm_649/StatefulPartitionedCall:output:0lstm_650_4147864lstm_650_4147866lstm_650_4147868*
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4147181?
!dense_216/StatefulPartitionedCallStatefulPartitionedCall)lstm_650/StatefulPartitionedCall:output:0dense_216_4147871dense_216_4147873*
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
F__inference_dense_216_layer_call_and_return_conditional_losses_4147199y
IdentityIdentity*dense_216/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_216/StatefulPartitionedCall!^lstm_648/StatefulPartitionedCall!^lstm_649/StatefulPartitionedCall!^lstm_650/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_216/StatefulPartitionedCall!dense_216/StatefulPartitionedCall2D
 lstm_648/StatefulPartitionedCall lstm_648/StatefulPartitionedCall2D
 lstm_649/StatefulPartitionedCall lstm_649/StatefulPartitionedCall2D
 lstm_650/StatefulPartitionedCall lstm_650/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_648_input
?
?
*__inference_lstm_648_layer_call_fn_4148883

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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4146881s
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
?
?
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147206

inputs#
lstm_648_4146882:	?#
lstm_648_4146884:	d?
lstm_648_4146886:	?#
lstm_649_4147032:	d?#
lstm_649_4147034:	2?
lstm_649_4147036:	?"
lstm_650_4147182:2("
lstm_650_4147184:
(
lstm_650_4147186:(#
dense_216_4147200:

dense_216_4147202:
identity??!dense_216/StatefulPartitionedCall? lstm_648/StatefulPartitionedCall? lstm_649/StatefulPartitionedCall? lstm_650/StatefulPartitionedCall?
 lstm_648/StatefulPartitionedCallStatefulPartitionedCallinputslstm_648_4146882lstm_648_4146884lstm_648_4146886*
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4146881?
 lstm_649/StatefulPartitionedCallStatefulPartitionedCall)lstm_648/StatefulPartitionedCall:output:0lstm_649_4147032lstm_649_4147034lstm_649_4147036*
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4147031?
 lstm_650/StatefulPartitionedCallStatefulPartitionedCall)lstm_649/StatefulPartitionedCall:output:0lstm_650_4147182lstm_650_4147184lstm_650_4147186*
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4147181?
!dense_216/StatefulPartitionedCallStatefulPartitionedCall)lstm_650/StatefulPartitionedCall:output:0dense_216_4147200dense_216_4147202*
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
F__inference_dense_216_layer_call_and_return_conditional_losses_4147199y
IdentityIdentity*dense_216/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_216/StatefulPartitionedCall!^lstm_648/StatefulPartitionedCall!^lstm_649/StatefulPartitionedCall!^lstm_650/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_216/StatefulPartitionedCall!dense_216/StatefulPartitionedCall2D
 lstm_648/StatefulPartitionedCall lstm_648/StatefulPartitionedCall2D
 lstm_649/StatefulPartitionedCall lstm_649/StatefulPartitionedCall2D
 lstm_650/StatefulPartitionedCall lstm_650/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_649_layer_call_fn_4149499

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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4147031s
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
?
*sequential_216_lstm_649_while_cond_4145452L
Hsequential_216_lstm_649_while_sequential_216_lstm_649_while_loop_counterR
Nsequential_216_lstm_649_while_sequential_216_lstm_649_while_maximum_iterations-
)sequential_216_lstm_649_while_placeholder/
+sequential_216_lstm_649_while_placeholder_1/
+sequential_216_lstm_649_while_placeholder_2/
+sequential_216_lstm_649_while_placeholder_3N
Jsequential_216_lstm_649_while_less_sequential_216_lstm_649_strided_slice_1e
asequential_216_lstm_649_while_sequential_216_lstm_649_while_cond_4145452___redundant_placeholder0e
asequential_216_lstm_649_while_sequential_216_lstm_649_while_cond_4145452___redundant_placeholder1e
asequential_216_lstm_649_while_sequential_216_lstm_649_while_cond_4145452___redundant_placeholder2e
asequential_216_lstm_649_while_sequential_216_lstm_649_while_cond_4145452___redundant_placeholder3*
&sequential_216_lstm_649_while_identity
?
"sequential_216/lstm_649/while/LessLess)sequential_216_lstm_649_while_placeholderJsequential_216_lstm_649_while_less_sequential_216_lstm_649_strided_slice_1*
T0*
_output_shapes
: {
&sequential_216/lstm_649/while/IdentityIdentity&sequential_216/lstm_649/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_216_lstm_649_while_identity/sequential_216/lstm_649/while/Identity:output:0*(
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
/__inference_lstm_cell_649_layer_call_fn_4150832

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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4146099o
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150698

inputs>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_4150614*
condR
while_cond_4150613*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_650_layer_call_and_return_conditional_losses_4147181

inputs>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_4147097*
condR
while_cond_4147096*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4150783

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
while_cond_4147477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4147477___redundant_placeholder05
1while_while_cond_4147477___redundant_placeholder15
1while_while_cond_4147477___redundant_placeholder25
1while_while_cond_4147477___redundant_placeholder3
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
K__inference_sequential_216_layer_call_and_return_conditional_losses_4148423

inputsH
5lstm_648_lstm_cell_648_matmul_readvariableop_resource:	?J
7lstm_648_lstm_cell_648_matmul_1_readvariableop_resource:	d?E
6lstm_648_lstm_cell_648_biasadd_readvariableop_resource:	?H
5lstm_649_lstm_cell_649_matmul_readvariableop_resource:	d?J
7lstm_649_lstm_cell_649_matmul_1_readvariableop_resource:	2?E
6lstm_649_lstm_cell_649_biasadd_readvariableop_resource:	?G
5lstm_650_lstm_cell_650_matmul_readvariableop_resource:2(I
7lstm_650_lstm_cell_650_matmul_1_readvariableop_resource:
(D
6lstm_650_lstm_cell_650_biasadd_readvariableop_resource:(:
(dense_216_matmul_readvariableop_resource:
7
)dense_216_biasadd_readvariableop_resource:
identity?? dense_216/BiasAdd/ReadVariableOp?dense_216/MatMul/ReadVariableOp?-lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp?,lstm_648/lstm_cell_648/MatMul/ReadVariableOp?.lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp?lstm_648/while?-lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp?,lstm_649/lstm_cell_649/MatMul/ReadVariableOp?.lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp?lstm_649/while?-lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp?,lstm_650/lstm_cell_650/MatMul/ReadVariableOp?.lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp?lstm_650/whileD
lstm_648/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_648/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_648/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_648/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_648/strided_sliceStridedSlicelstm_648/Shape:output:0%lstm_648/strided_slice/stack:output:0'lstm_648/strided_slice/stack_1:output:0'lstm_648/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_648/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_648/zeros/packedPacklstm_648/strided_slice:output:0 lstm_648/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_648/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_648/zerosFilllstm_648/zeros/packed:output:0lstm_648/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_648/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_648/zeros_1/packedPacklstm_648/strided_slice:output:0"lstm_648/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_648/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_648/zeros_1Fill lstm_648/zeros_1/packed:output:0lstm_648/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_648/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_648/transpose	Transposeinputs lstm_648/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_648/Shape_1Shapelstm_648/transpose:y:0*
T0*
_output_shapes
:h
lstm_648/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_648/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_648/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_648/strided_slice_1StridedSlicelstm_648/Shape_1:output:0'lstm_648/strided_slice_1/stack:output:0)lstm_648/strided_slice_1/stack_1:output:0)lstm_648/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_648/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_648/TensorArrayV2TensorListReserve-lstm_648/TensorArrayV2/element_shape:output:0!lstm_648/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_648/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_648/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_648/transpose:y:0Glstm_648/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_648/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_648/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_648/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_648/strided_slice_2StridedSlicelstm_648/transpose:y:0'lstm_648/strided_slice_2/stack:output:0)lstm_648/strided_slice_2/stack_1:output:0)lstm_648/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_648/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp5lstm_648_lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_648/lstm_cell_648/MatMulMatMul!lstm_648/strided_slice_2:output:04lstm_648/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_648/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp7lstm_648_lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_648/lstm_cell_648/MatMul_1MatMullstm_648/zeros:output:06lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_648/lstm_cell_648/addAddV2'lstm_648/lstm_cell_648/MatMul:product:0)lstm_648/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_648/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp6lstm_648_lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_648/lstm_cell_648/BiasAddBiasAddlstm_648/lstm_cell_648/add:z:05lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_648/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_648/lstm_cell_648/splitSplit/lstm_648/lstm_cell_648/split/split_dim:output:0'lstm_648/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_648/lstm_cell_648/SigmoidSigmoid%lstm_648/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_648/lstm_cell_648/Sigmoid_1Sigmoid%lstm_648/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_648/lstm_cell_648/mulMul$lstm_648/lstm_cell_648/Sigmoid_1:y:0lstm_648/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_648/lstm_cell_648/ReluRelu%lstm_648/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_648/lstm_cell_648/mul_1Mul"lstm_648/lstm_cell_648/Sigmoid:y:0)lstm_648/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_648/lstm_cell_648/add_1AddV2lstm_648/lstm_cell_648/mul:z:0 lstm_648/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_648/lstm_cell_648/Sigmoid_2Sigmoid%lstm_648/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_648/lstm_cell_648/Relu_1Relu lstm_648/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_648/lstm_cell_648/mul_2Mul$lstm_648/lstm_cell_648/Sigmoid_2:y:0+lstm_648/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_648/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_648/TensorArrayV2_1TensorListReserve/lstm_648/TensorArrayV2_1/element_shape:output:0!lstm_648/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_648/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_648/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_648/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_648/whileWhile$lstm_648/while/loop_counter:output:0*lstm_648/while/maximum_iterations:output:0lstm_648/time:output:0!lstm_648/TensorArrayV2_1:handle:0lstm_648/zeros:output:0lstm_648/zeros_1:output:0!lstm_648/strided_slice_1:output:0@lstm_648/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_648_lstm_cell_648_matmul_readvariableop_resource7lstm_648_lstm_cell_648_matmul_1_readvariableop_resource6lstm_648_lstm_cell_648_biasadd_readvariableop_resource*
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
lstm_648_while_body_4148055*'
condR
lstm_648_while_cond_4148054*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_648/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_648/TensorArrayV2Stack/TensorListStackTensorListStacklstm_648/while:output:3Blstm_648/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_648/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_648/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_648/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_648/strided_slice_3StridedSlice4lstm_648/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_648/strided_slice_3/stack:output:0)lstm_648/strided_slice_3/stack_1:output:0)lstm_648/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_648/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_648/transpose_1	Transpose4lstm_648/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_648/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_648/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_649/ShapeShapelstm_648/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_649/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_649/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_649/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_649/strided_sliceStridedSlicelstm_649/Shape:output:0%lstm_649/strided_slice/stack:output:0'lstm_649/strided_slice/stack_1:output:0'lstm_649/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_649/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_649/zeros/packedPacklstm_649/strided_slice:output:0 lstm_649/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_649/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_649/zerosFilllstm_649/zeros/packed:output:0lstm_649/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_649/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_649/zeros_1/packedPacklstm_649/strided_slice:output:0"lstm_649/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_649/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_649/zeros_1Fill lstm_649/zeros_1/packed:output:0lstm_649/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_649/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_649/transpose	Transposelstm_648/transpose_1:y:0 lstm_649/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_649/Shape_1Shapelstm_649/transpose:y:0*
T0*
_output_shapes
:h
lstm_649/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_649/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_649/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_649/strided_slice_1StridedSlicelstm_649/Shape_1:output:0'lstm_649/strided_slice_1/stack:output:0)lstm_649/strided_slice_1/stack_1:output:0)lstm_649/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_649/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_649/TensorArrayV2TensorListReserve-lstm_649/TensorArrayV2/element_shape:output:0!lstm_649/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_649/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_649/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_649/transpose:y:0Glstm_649/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_649/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_649/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_649/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_649/strided_slice_2StridedSlicelstm_649/transpose:y:0'lstm_649/strided_slice_2/stack:output:0)lstm_649/strided_slice_2/stack_1:output:0)lstm_649/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_649/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp5lstm_649_lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_649/lstm_cell_649/MatMulMatMul!lstm_649/strided_slice_2:output:04lstm_649/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_649/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp7lstm_649_lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_649/lstm_cell_649/MatMul_1MatMullstm_649/zeros:output:06lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_649/lstm_cell_649/addAddV2'lstm_649/lstm_cell_649/MatMul:product:0)lstm_649/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_649/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp6lstm_649_lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_649/lstm_cell_649/BiasAddBiasAddlstm_649/lstm_cell_649/add:z:05lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_649/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_649/lstm_cell_649/splitSplit/lstm_649/lstm_cell_649/split/split_dim:output:0'lstm_649/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_649/lstm_cell_649/SigmoidSigmoid%lstm_649/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_649/lstm_cell_649/Sigmoid_1Sigmoid%lstm_649/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_649/lstm_cell_649/mulMul$lstm_649/lstm_cell_649/Sigmoid_1:y:0lstm_649/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_649/lstm_cell_649/ReluRelu%lstm_649/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_649/lstm_cell_649/mul_1Mul"lstm_649/lstm_cell_649/Sigmoid:y:0)lstm_649/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_649/lstm_cell_649/add_1AddV2lstm_649/lstm_cell_649/mul:z:0 lstm_649/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_649/lstm_cell_649/Sigmoid_2Sigmoid%lstm_649/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_649/lstm_cell_649/Relu_1Relu lstm_649/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_649/lstm_cell_649/mul_2Mul$lstm_649/lstm_cell_649/Sigmoid_2:y:0+lstm_649/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_649/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_649/TensorArrayV2_1TensorListReserve/lstm_649/TensorArrayV2_1/element_shape:output:0!lstm_649/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_649/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_649/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_649/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_649/whileWhile$lstm_649/while/loop_counter:output:0*lstm_649/while/maximum_iterations:output:0lstm_649/time:output:0!lstm_649/TensorArrayV2_1:handle:0lstm_649/zeros:output:0lstm_649/zeros_1:output:0!lstm_649/strided_slice_1:output:0@lstm_649/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_649_lstm_cell_649_matmul_readvariableop_resource7lstm_649_lstm_cell_649_matmul_1_readvariableop_resource6lstm_649_lstm_cell_649_biasadd_readvariableop_resource*
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
lstm_649_while_body_4148194*'
condR
lstm_649_while_cond_4148193*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_649/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_649/TensorArrayV2Stack/TensorListStackTensorListStacklstm_649/while:output:3Blstm_649/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_649/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_649/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_649/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_649/strided_slice_3StridedSlice4lstm_649/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_649/strided_slice_3/stack:output:0)lstm_649/strided_slice_3/stack_1:output:0)lstm_649/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_649/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_649/transpose_1	Transpose4lstm_649/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_649/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_649/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_650/ShapeShapelstm_649/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_650/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_650/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_650/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_650/strided_sliceStridedSlicelstm_650/Shape:output:0%lstm_650/strided_slice/stack:output:0'lstm_650/strided_slice/stack_1:output:0'lstm_650/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_650/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_650/zeros/packedPacklstm_650/strided_slice:output:0 lstm_650/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_650/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_650/zerosFilllstm_650/zeros/packed:output:0lstm_650/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_650/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_650/zeros_1/packedPacklstm_650/strided_slice:output:0"lstm_650/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_650/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_650/zeros_1Fill lstm_650/zeros_1/packed:output:0lstm_650/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_650/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_650/transpose	Transposelstm_649/transpose_1:y:0 lstm_650/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_650/Shape_1Shapelstm_650/transpose:y:0*
T0*
_output_shapes
:h
lstm_650/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_650/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_650/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_650/strided_slice_1StridedSlicelstm_650/Shape_1:output:0'lstm_650/strided_slice_1/stack:output:0)lstm_650/strided_slice_1/stack_1:output:0)lstm_650/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_650/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_650/TensorArrayV2TensorListReserve-lstm_650/TensorArrayV2/element_shape:output:0!lstm_650/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_650/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_650/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_650/transpose:y:0Glstm_650/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_650/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_650/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_650/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_650/strided_slice_2StridedSlicelstm_650/transpose:y:0'lstm_650/strided_slice_2/stack:output:0)lstm_650/strided_slice_2/stack_1:output:0)lstm_650/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_650/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp5lstm_650_lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_650/lstm_cell_650/MatMulMatMul!lstm_650/strided_slice_2:output:04lstm_650/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_650/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp7lstm_650_lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_650/lstm_cell_650/MatMul_1MatMullstm_650/zeros:output:06lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_650/lstm_cell_650/addAddV2'lstm_650/lstm_cell_650/MatMul:product:0)lstm_650/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_650/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp6lstm_650_lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_650/lstm_cell_650/BiasAddBiasAddlstm_650/lstm_cell_650/add:z:05lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_650/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_650/lstm_cell_650/splitSplit/lstm_650/lstm_cell_650/split/split_dim:output:0'lstm_650/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_650/lstm_cell_650/SigmoidSigmoid%lstm_650/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_650/lstm_cell_650/Sigmoid_1Sigmoid%lstm_650/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_650/lstm_cell_650/mulMul$lstm_650/lstm_cell_650/Sigmoid_1:y:0lstm_650/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_650/lstm_cell_650/ReluRelu%lstm_650/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_650/lstm_cell_650/mul_1Mul"lstm_650/lstm_cell_650/Sigmoid:y:0)lstm_650/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_650/lstm_cell_650/add_1AddV2lstm_650/lstm_cell_650/mul:z:0 lstm_650/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_650/lstm_cell_650/Sigmoid_2Sigmoid%lstm_650/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_650/lstm_cell_650/Relu_1Relu lstm_650/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_650/lstm_cell_650/mul_2Mul$lstm_650/lstm_cell_650/Sigmoid_2:y:0+lstm_650/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_650/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_650/TensorArrayV2_1TensorListReserve/lstm_650/TensorArrayV2_1/element_shape:output:0!lstm_650/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_650/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_650/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_650/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_650/whileWhile$lstm_650/while/loop_counter:output:0*lstm_650/while/maximum_iterations:output:0lstm_650/time:output:0!lstm_650/TensorArrayV2_1:handle:0lstm_650/zeros:output:0lstm_650/zeros_1:output:0!lstm_650/strided_slice_1:output:0@lstm_650/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_650_lstm_cell_650_matmul_readvariableop_resource7lstm_650_lstm_cell_650_matmul_1_readvariableop_resource6lstm_650_lstm_cell_650_biasadd_readvariableop_resource*
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
lstm_650_while_body_4148333*'
condR
lstm_650_while_cond_4148332*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_650/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_650/TensorArrayV2Stack/TensorListStackTensorListStacklstm_650/while:output:3Blstm_650/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_650/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_650/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_650/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_650/strided_slice_3StridedSlice4lstm_650/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_650/strided_slice_3/stack:output:0)lstm_650/strided_slice_3/stack_1:output:0)lstm_650/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_650/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_650/transpose_1	Transpose4lstm_650/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_650/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_650/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_216/MatMul/ReadVariableOpReadVariableOp(dense_216_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_216/MatMulMatMul!lstm_650/strided_slice_3:output:0'dense_216/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_216/BiasAdd/ReadVariableOpReadVariableOp)dense_216_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_216/BiasAddBiasAdddense_216/MatMul:product:0(dense_216/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_216/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_216/BiasAdd/ReadVariableOp ^dense_216/MatMul/ReadVariableOp.^lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp-^lstm_648/lstm_cell_648/MatMul/ReadVariableOp/^lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp^lstm_648/while.^lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp-^lstm_649/lstm_cell_649/MatMul/ReadVariableOp/^lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp^lstm_649/while.^lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp-^lstm_650/lstm_cell_650/MatMul/ReadVariableOp/^lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp^lstm_650/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_216/BiasAdd/ReadVariableOp dense_216/BiasAdd/ReadVariableOp2B
dense_216/MatMul/ReadVariableOpdense_216/MatMul/ReadVariableOp2^
-lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp-lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp2\
,lstm_648/lstm_cell_648/MatMul/ReadVariableOp,lstm_648/lstm_cell_648/MatMul/ReadVariableOp2`
.lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp.lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp2 
lstm_648/whilelstm_648/while2^
-lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp-lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp2\
,lstm_649/lstm_cell_649/MatMul/ReadVariableOp,lstm_649/lstm_cell_649/MatMul/ReadVariableOp2`
.lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp.lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp2 
lstm_649/whilelstm_649/while2^
-lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp-lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp2\
,lstm_650/lstm_cell_650/MatMul/ReadVariableOp,lstm_650/lstm_cell_650/MatMul/ReadVariableOp2`
.lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp.lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp2 
lstm_650/whilelstm_650/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4145749

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
while_cond_4150184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4150184___redundant_placeholder05
1while_while_cond_4150184___redundant_placeholder15
1while_while_cond_4150184___redundant_placeholder25
1while_while_cond_4150184___redundant_placeholder3
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4146723

inputs'
lstm_cell_650_4146641:2('
lstm_cell_650_4146643:
(#
lstm_cell_650_4146645:(
identity??%lstm_cell_650/StatefulPartitionedCall?while;
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
%lstm_cell_650/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_650_4146641lstm_cell_650_4146643lstm_cell_650_4146645*
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4146595n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_650_4146641lstm_cell_650_4146643lstm_cell_650_4146645*
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
while_body_4146654*
condR
while_cond_4146653*K
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
NoOpNoOp&^lstm_cell_650/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_650/StatefulPartitionedCall%lstm_cell_650/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_648_layer_call_and_return_conditional_losses_4146881

inputs?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_4146797*
condR
while_cond_4146796*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4146245

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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4149653
inputs_0?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_4149569*
condR
while_cond_4149568*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_649_layer_call_fn_4150849

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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4146245o
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
while_cond_4150327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4150327___redundant_placeholder05
1while_while_cond_4150327___redundant_placeholder15
1while_while_cond_4150327___redundant_placeholder25
1while_while_cond_4150327___redundant_placeholder3
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4146099

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
??
?
#__inference__traced_restore_4151284
file_prefix3
!assignvariableop_dense_216_kernel:
/
!assignvariableop_1_dense_216_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_648_lstm_cell_648_kernel:	?M
:assignvariableop_8_lstm_648_lstm_cell_648_recurrent_kernel:	d?=
.assignvariableop_9_lstm_648_lstm_cell_648_bias:	?D
1assignvariableop_10_lstm_649_lstm_cell_649_kernel:	d?N
;assignvariableop_11_lstm_649_lstm_cell_649_recurrent_kernel:	2?>
/assignvariableop_12_lstm_649_lstm_cell_649_bias:	?C
1assignvariableop_13_lstm_650_lstm_cell_650_kernel:2(M
;assignvariableop_14_lstm_650_lstm_cell_650_recurrent_kernel:
(=
/assignvariableop_15_lstm_650_lstm_cell_650_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_216_kernel_m:
7
)assignvariableop_19_adam_dense_216_bias_m:K
8assignvariableop_20_adam_lstm_648_lstm_cell_648_kernel_m:	?U
Bassignvariableop_21_adam_lstm_648_lstm_cell_648_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_648_lstm_cell_648_bias_m:	?K
8assignvariableop_23_adam_lstm_649_lstm_cell_649_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_649_lstm_cell_649_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_649_lstm_cell_649_bias_m:	?J
8assignvariableop_26_adam_lstm_650_lstm_cell_650_kernel_m:2(T
Bassignvariableop_27_adam_lstm_650_lstm_cell_650_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_650_lstm_cell_650_bias_m:(=
+assignvariableop_29_adam_dense_216_kernel_v:
7
)assignvariableop_30_adam_dense_216_bias_v:K
8assignvariableop_31_adam_lstm_648_lstm_cell_648_kernel_v:	?U
Bassignvariableop_32_adam_lstm_648_lstm_cell_648_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_648_lstm_cell_648_bias_v:	?K
8assignvariableop_34_adam_lstm_649_lstm_cell_649_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_649_lstm_cell_649_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_649_lstm_cell_649_bias_v:	?J
8assignvariableop_37_adam_lstm_650_lstm_cell_650_kernel_v:2(T
Bassignvariableop_38_adam_lstm_650_lstm_cell_650_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_650_lstm_cell_650_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_216_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_216_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_648_lstm_cell_648_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_648_lstm_cell_648_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_648_lstm_cell_648_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_649_lstm_cell_649_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_649_lstm_cell_649_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_649_lstm_cell_649_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_650_lstm_cell_650_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_650_lstm_cell_650_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_650_lstm_cell_650_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_216_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_216_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_648_lstm_cell_648_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_648_lstm_cell_648_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_648_lstm_cell_648_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_649_lstm_cell_649_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_649_lstm_cell_649_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_649_lstm_cell_649_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_650_lstm_cell_650_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_650_lstm_cell_650_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_650_lstm_cell_650_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_216_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_216_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_648_lstm_cell_648_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_648_lstm_cell_648_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_648_lstm_cell_648_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_649_lstm_cell_649_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_649_lstm_cell_649_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_649_lstm_cell_649_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_650_lstm_cell_650_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_650_lstm_cell_650_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_650_lstm_cell_650_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4150881

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
?J
?
E__inference_lstm_649_layer_call_and_return_conditional_losses_4147031

inputs?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_4146947*
condR
while_cond_4146946*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_649_layer_call_and_return_conditional_losses_4150082

inputs?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_4149998*
condR
while_cond_4149997*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_649_while_body_4148194.
*lstm_649_while_lstm_649_while_loop_counter4
0lstm_649_while_lstm_649_while_maximum_iterations
lstm_649_while_placeholder 
lstm_649_while_placeholder_1 
lstm_649_while_placeholder_2 
lstm_649_while_placeholder_3-
)lstm_649_while_lstm_649_strided_slice_1_0i
elstm_649_while_tensorarrayv2read_tensorlistgetitem_lstm_649_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_649_while_lstm_cell_649_matmul_readvariableop_resource_0:	d?R
?lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?M
>lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
lstm_649_while_identity
lstm_649_while_identity_1
lstm_649_while_identity_2
lstm_649_while_identity_3
lstm_649_while_identity_4
lstm_649_while_identity_5+
'lstm_649_while_lstm_649_strided_slice_1g
clstm_649_while_tensorarrayv2read_tensorlistgetitem_lstm_649_tensorarrayunstack_tensorlistfromtensorN
;lstm_649_while_lstm_cell_649_matmul_readvariableop_resource:	d?P
=lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource:	2?K
<lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource:	???3lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp?2lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp?4lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp?
@lstm_649/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_649/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_649_while_tensorarrayv2read_tensorlistgetitem_lstm_649_tensorarrayunstack_tensorlistfromtensor_0lstm_649_while_placeholderIlstm_649/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_649/while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp=lstm_649_while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_649/while/lstm_cell_649/MatMulMatMul9lstm_649/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp?lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_649/while/lstm_cell_649/MatMul_1MatMullstm_649_while_placeholder_2<lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_649/while/lstm_cell_649/addAddV2-lstm_649/while/lstm_cell_649/MatMul:product:0/lstm_649/while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp>lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_649/while/lstm_cell_649/BiasAddBiasAdd$lstm_649/while/lstm_cell_649/add:z:0;lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_649/while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_649/while/lstm_cell_649/splitSplit5lstm_649/while/lstm_cell_649/split/split_dim:output:0-lstm_649/while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_649/while/lstm_cell_649/SigmoidSigmoid+lstm_649/while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_649/while/lstm_cell_649/Sigmoid_1Sigmoid+lstm_649/while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_649/while/lstm_cell_649/mulMul*lstm_649/while/lstm_cell_649/Sigmoid_1:y:0lstm_649_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_649/while/lstm_cell_649/ReluRelu+lstm_649/while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_649/while/lstm_cell_649/mul_1Mul(lstm_649/while/lstm_cell_649/Sigmoid:y:0/lstm_649/while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_649/while/lstm_cell_649/add_1AddV2$lstm_649/while/lstm_cell_649/mul:z:0&lstm_649/while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_649/while/lstm_cell_649/Sigmoid_2Sigmoid+lstm_649/while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_649/while/lstm_cell_649/Relu_1Relu&lstm_649/while/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_649/while/lstm_cell_649/mul_2Mul*lstm_649/while/lstm_cell_649/Sigmoid_2:y:01lstm_649/while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_649/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_649_while_placeholder_1lstm_649_while_placeholder&lstm_649/while/lstm_cell_649/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_649/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_649/while/addAddV2lstm_649_while_placeholderlstm_649/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_649/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_649/while/add_1AddV2*lstm_649_while_lstm_649_while_loop_counterlstm_649/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_649/while/IdentityIdentitylstm_649/while/add_1:z:0^lstm_649/while/NoOp*
T0*
_output_shapes
: ?
lstm_649/while/Identity_1Identity0lstm_649_while_lstm_649_while_maximum_iterations^lstm_649/while/NoOp*
T0*
_output_shapes
: t
lstm_649/while/Identity_2Identitylstm_649/while/add:z:0^lstm_649/while/NoOp*
T0*
_output_shapes
: ?
lstm_649/while/Identity_3IdentityClstm_649/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_649/while/NoOp*
T0*
_output_shapes
: ?
lstm_649/while/Identity_4Identity&lstm_649/while/lstm_cell_649/mul_2:z:0^lstm_649/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_649/while/Identity_5Identity&lstm_649/while/lstm_cell_649/add_1:z:0^lstm_649/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_649/while/NoOpNoOp4^lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp3^lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp5^lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_649_while_identity lstm_649/while/Identity:output:0"?
lstm_649_while_identity_1"lstm_649/while/Identity_1:output:0"?
lstm_649_while_identity_2"lstm_649/while/Identity_2:output:0"?
lstm_649_while_identity_3"lstm_649/while/Identity_3:output:0"?
lstm_649_while_identity_4"lstm_649/while/Identity_4:output:0"?
lstm_649_while_identity_5"lstm_649/while/Identity_5:output:0"T
'lstm_649_while_lstm_649_strided_slice_1)lstm_649_while_lstm_649_strided_slice_1_0"~
<lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource>lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource_0"?
=lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource?lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource_0"|
;lstm_649_while_lstm_cell_649_matmul_readvariableop_resource=lstm_649_while_lstm_cell_649_matmul_readvariableop_resource_0"?
clstm_649_while_tensorarrayv2read_tensorlistgetitem_lstm_649_tensorarrayunstack_tensorlistfromtensorelstm_649_while_tensorarrayv2read_tensorlistgetitem_lstm_649_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp3lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp2h
2lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp2lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp2l
4lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp4lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150269
inputs_0>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_4150185*
condR
while_cond_4150184*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_4147097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4149712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4149238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4149238___redundant_placeholder05
1while_while_cond_4149238___redundant_placeholder15
1while_while_cond_4149238___redundant_placeholder25
1while_while_cond_4149238___redundant_placeholder3
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
while_cond_4149711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4149711___redundant_placeholder05
1while_while_cond_4149711___redundant_placeholder15
1while_while_cond_4149711___redundant_placeholder25
1while_while_cond_4149711___redundant_placeholder3
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
while_body_4146797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_650_while_cond_4148759.
*lstm_650_while_lstm_650_while_loop_counter4
0lstm_650_while_lstm_650_while_maximum_iterations
lstm_650_while_placeholder 
lstm_650_while_placeholder_1 
lstm_650_while_placeholder_2 
lstm_650_while_placeholder_30
,lstm_650_while_less_lstm_650_strided_slice_1G
Clstm_650_while_lstm_650_while_cond_4148759___redundant_placeholder0G
Clstm_650_while_lstm_650_while_cond_4148759___redundant_placeholder1G
Clstm_650_while_lstm_650_while_cond_4148759___redundant_placeholder2G
Clstm_650_while_lstm_650_while_cond_4148759___redundant_placeholder3
lstm_650_while_identity
?
lstm_650/while/LessLesslstm_650_while_placeholder,lstm_650_while_less_lstm_650_strided_slice_1*
T0*
_output_shapes
: ]
lstm_650/while/IdentityIdentitylstm_650/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_650_while_identity lstm_650/while/Identity:output:0*(
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4149939

inputs?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_4149855*
condR
while_cond_4149854*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
F__inference_dense_216_layer_call_and_return_conditional_losses_4147199

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
while_cond_4147096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4147096___redundant_placeholder05
1while_while_cond_4147096___redundant_placeholder15
1while_while_cond_4147096___redundant_placeholder25
1while_while_cond_4147096___redundant_placeholder3
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

lstm_649_while_body_4148621.
*lstm_649_while_lstm_649_while_loop_counter4
0lstm_649_while_lstm_649_while_maximum_iterations
lstm_649_while_placeholder 
lstm_649_while_placeholder_1 
lstm_649_while_placeholder_2 
lstm_649_while_placeholder_3-
)lstm_649_while_lstm_649_strided_slice_1_0i
elstm_649_while_tensorarrayv2read_tensorlistgetitem_lstm_649_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_649_while_lstm_cell_649_matmul_readvariableop_resource_0:	d?R
?lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?M
>lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
lstm_649_while_identity
lstm_649_while_identity_1
lstm_649_while_identity_2
lstm_649_while_identity_3
lstm_649_while_identity_4
lstm_649_while_identity_5+
'lstm_649_while_lstm_649_strided_slice_1g
clstm_649_while_tensorarrayv2read_tensorlistgetitem_lstm_649_tensorarrayunstack_tensorlistfromtensorN
;lstm_649_while_lstm_cell_649_matmul_readvariableop_resource:	d?P
=lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource:	2?K
<lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource:	???3lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp?2lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp?4lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp?
@lstm_649/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_649/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_649_while_tensorarrayv2read_tensorlistgetitem_lstm_649_tensorarrayunstack_tensorlistfromtensor_0lstm_649_while_placeholderIlstm_649/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_649/while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp=lstm_649_while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_649/while/lstm_cell_649/MatMulMatMul9lstm_649/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp?lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_649/while/lstm_cell_649/MatMul_1MatMullstm_649_while_placeholder_2<lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_649/while/lstm_cell_649/addAddV2-lstm_649/while/lstm_cell_649/MatMul:product:0/lstm_649/while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp>lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_649/while/lstm_cell_649/BiasAddBiasAdd$lstm_649/while/lstm_cell_649/add:z:0;lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_649/while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_649/while/lstm_cell_649/splitSplit5lstm_649/while/lstm_cell_649/split/split_dim:output:0-lstm_649/while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_649/while/lstm_cell_649/SigmoidSigmoid+lstm_649/while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_649/while/lstm_cell_649/Sigmoid_1Sigmoid+lstm_649/while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_649/while/lstm_cell_649/mulMul*lstm_649/while/lstm_cell_649/Sigmoid_1:y:0lstm_649_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_649/while/lstm_cell_649/ReluRelu+lstm_649/while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_649/while/lstm_cell_649/mul_1Mul(lstm_649/while/lstm_cell_649/Sigmoid:y:0/lstm_649/while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_649/while/lstm_cell_649/add_1AddV2$lstm_649/while/lstm_cell_649/mul:z:0&lstm_649/while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_649/while/lstm_cell_649/Sigmoid_2Sigmoid+lstm_649/while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_649/while/lstm_cell_649/Relu_1Relu&lstm_649/while/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_649/while/lstm_cell_649/mul_2Mul*lstm_649/while/lstm_cell_649/Sigmoid_2:y:01lstm_649/while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_649/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_649_while_placeholder_1lstm_649_while_placeholder&lstm_649/while/lstm_cell_649/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_649/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_649/while/addAddV2lstm_649_while_placeholderlstm_649/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_649/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_649/while/add_1AddV2*lstm_649_while_lstm_649_while_loop_counterlstm_649/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_649/while/IdentityIdentitylstm_649/while/add_1:z:0^lstm_649/while/NoOp*
T0*
_output_shapes
: ?
lstm_649/while/Identity_1Identity0lstm_649_while_lstm_649_while_maximum_iterations^lstm_649/while/NoOp*
T0*
_output_shapes
: t
lstm_649/while/Identity_2Identitylstm_649/while/add:z:0^lstm_649/while/NoOp*
T0*
_output_shapes
: ?
lstm_649/while/Identity_3IdentityClstm_649/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_649/while/NoOp*
T0*
_output_shapes
: ?
lstm_649/while/Identity_4Identity&lstm_649/while/lstm_cell_649/mul_2:z:0^lstm_649/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_649/while/Identity_5Identity&lstm_649/while/lstm_cell_649/add_1:z:0^lstm_649/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_649/while/NoOpNoOp4^lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp3^lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp5^lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_649_while_identity lstm_649/while/Identity:output:0"?
lstm_649_while_identity_1"lstm_649/while/Identity_1:output:0"?
lstm_649_while_identity_2"lstm_649/while/Identity_2:output:0"?
lstm_649_while_identity_3"lstm_649/while/Identity_3:output:0"?
lstm_649_while_identity_4"lstm_649/while/Identity_4:output:0"?
lstm_649_while_identity_5"lstm_649/while/Identity_5:output:0"T
'lstm_649_while_lstm_649_strided_slice_1)lstm_649_while_lstm_649_strided_slice_1_0"~
<lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource>lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource_0"?
=lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource?lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource_0"|
;lstm_649_while_lstm_cell_649_matmul_readvariableop_resource=lstm_649_while_lstm_cell_649_matmul_readvariableop_resource_0"?
clstm_649_while_tensorarrayv2read_tensorlistgetitem_lstm_649_tensorarrayunstack_tensorlistfromtensorelstm_649_while_tensorarrayv2read_tensorlistgetitem_lstm_649_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp3lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp2h
2lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp2lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp2l
4lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp4lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_4147942
lstm_648_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_648_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4145682o
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
_user_specified_namelstm_648_input
?
?
*__inference_lstm_650_layer_call_fn_4150126

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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4147397o
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
while_body_4146654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_650_4146678_0:2(/
while_lstm_cell_650_4146680_0:
(+
while_lstm_cell_650_4146682_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_650_4146678:2(-
while_lstm_cell_650_4146680:
()
while_lstm_cell_650_4146682:(??+while/lstm_cell_650/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_650/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_650_4146678_0while_lstm_cell_650_4146680_0while_lstm_cell_650_4146682_0*
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4146595?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_650/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_650/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_650/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_650/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_650_4146678while_lstm_cell_650_4146678_0"<
while_lstm_cell_650_4146680while_lstm_cell_650_4146680_0"<
while_lstm_cell_650_4146682while_lstm_cell_650_4146682_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_650/StatefulPartitionedCall+while/lstm_cell_650/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_4151154
file_prefix/
+savev2_dense_216_kernel_read_readvariableop-
)savev2_dense_216_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_648_lstm_cell_648_kernel_read_readvariableopF
Bsavev2_lstm_648_lstm_cell_648_recurrent_kernel_read_readvariableop:
6savev2_lstm_648_lstm_cell_648_bias_read_readvariableop<
8savev2_lstm_649_lstm_cell_649_kernel_read_readvariableopF
Bsavev2_lstm_649_lstm_cell_649_recurrent_kernel_read_readvariableop:
6savev2_lstm_649_lstm_cell_649_bias_read_readvariableop<
8savev2_lstm_650_lstm_cell_650_kernel_read_readvariableopF
Bsavev2_lstm_650_lstm_cell_650_recurrent_kernel_read_readvariableop:
6savev2_lstm_650_lstm_cell_650_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_216_kernel_m_read_readvariableop4
0savev2_adam_dense_216_bias_m_read_readvariableopC
?savev2_adam_lstm_648_lstm_cell_648_kernel_m_read_readvariableopM
Isavev2_adam_lstm_648_lstm_cell_648_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_648_lstm_cell_648_bias_m_read_readvariableopC
?savev2_adam_lstm_649_lstm_cell_649_kernel_m_read_readvariableopM
Isavev2_adam_lstm_649_lstm_cell_649_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_649_lstm_cell_649_bias_m_read_readvariableopC
?savev2_adam_lstm_650_lstm_cell_650_kernel_m_read_readvariableopM
Isavev2_adam_lstm_650_lstm_cell_650_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_650_lstm_cell_650_bias_m_read_readvariableop6
2savev2_adam_dense_216_kernel_v_read_readvariableop4
0savev2_adam_dense_216_bias_v_read_readvariableopC
?savev2_adam_lstm_648_lstm_cell_648_kernel_v_read_readvariableopM
Isavev2_adam_lstm_648_lstm_cell_648_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_648_lstm_cell_648_bias_v_read_readvariableopC
?savev2_adam_lstm_649_lstm_cell_649_kernel_v_read_readvariableopM
Isavev2_adam_lstm_649_lstm_cell_649_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_649_lstm_cell_649_bias_v_read_readvariableopC
?savev2_adam_lstm_650_lstm_cell_650_kernel_v_read_readvariableopM
Isavev2_adam_lstm_650_lstm_cell_650_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_650_lstm_cell_650_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_216_kernel_read_readvariableop)savev2_dense_216_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_648_lstm_cell_648_kernel_read_readvariableopBsavev2_lstm_648_lstm_cell_648_recurrent_kernel_read_readvariableop6savev2_lstm_648_lstm_cell_648_bias_read_readvariableop8savev2_lstm_649_lstm_cell_649_kernel_read_readvariableopBsavev2_lstm_649_lstm_cell_649_recurrent_kernel_read_readvariableop6savev2_lstm_649_lstm_cell_649_bias_read_readvariableop8savev2_lstm_650_lstm_cell_650_kernel_read_readvariableopBsavev2_lstm_650_lstm_cell_650_recurrent_kernel_read_readvariableop6savev2_lstm_650_lstm_cell_650_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_216_kernel_m_read_readvariableop0savev2_adam_dense_216_bias_m_read_readvariableop?savev2_adam_lstm_648_lstm_cell_648_kernel_m_read_readvariableopIsavev2_adam_lstm_648_lstm_cell_648_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_648_lstm_cell_648_bias_m_read_readvariableop?savev2_adam_lstm_649_lstm_cell_649_kernel_m_read_readvariableopIsavev2_adam_lstm_649_lstm_cell_649_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_649_lstm_cell_649_bias_m_read_readvariableop?savev2_adam_lstm_650_lstm_cell_650_kernel_m_read_readvariableopIsavev2_adam_lstm_650_lstm_cell_650_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_650_lstm_cell_650_bias_m_read_readvariableop2savev2_adam_dense_216_kernel_v_read_readvariableop0savev2_adam_dense_216_bias_v_read_readvariableop?savev2_adam_lstm_648_lstm_cell_648_kernel_v_read_readvariableopIsavev2_adam_lstm_648_lstm_cell_648_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_648_lstm_cell_648_bias_v_read_readvariableop?savev2_adam_lstm_649_lstm_cell_649_kernel_v_read_readvariableopIsavev2_adam_lstm_649_lstm_cell_649_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_649_lstm_cell_649_bias_v_read_readvariableop?savev2_adam_lstm_650_lstm_cell_650_kernel_v_read_readvariableopIsavev2_adam_lstm_650_lstm_cell_650_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_650_lstm_cell_650_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
/__inference_lstm_cell_648_layer_call_fn_4150734

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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4145749o
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149466

inputs?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_4149382*
condR
while_cond_4149381*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4150471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4149855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4145953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4145953___redundant_placeholder05
1while_while_cond_4145953___redundant_placeholder15
1while_while_cond_4145953___redundant_placeholder25
1while_while_cond_4145953___redundant_placeholder3
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
/__inference_lstm_cell_650_layer_call_fn_4150947

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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4146595o
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
while_cond_4149997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4149997___redundant_placeholder05
1while_while_cond_4149997___redundant_placeholder15
1while_while_cond_4149997___redundant_placeholder25
1while_while_cond_4149997___redundant_placeholder3
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4147727

inputs?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_4147643*
condR
while_cond_4147642*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4147478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_216_lstm_648_while_cond_4145313L
Hsequential_216_lstm_648_while_sequential_216_lstm_648_while_loop_counterR
Nsequential_216_lstm_648_while_sequential_216_lstm_648_while_maximum_iterations-
)sequential_216_lstm_648_while_placeholder/
+sequential_216_lstm_648_while_placeholder_1/
+sequential_216_lstm_648_while_placeholder_2/
+sequential_216_lstm_648_while_placeholder_3N
Jsequential_216_lstm_648_while_less_sequential_216_lstm_648_strided_slice_1e
asequential_216_lstm_648_while_sequential_216_lstm_648_while_cond_4145313___redundant_placeholder0e
asequential_216_lstm_648_while_sequential_216_lstm_648_while_cond_4145313___redundant_placeholder1e
asequential_216_lstm_648_while_sequential_216_lstm_648_while_cond_4145313___redundant_placeholder2e
asequential_216_lstm_648_while_sequential_216_lstm_648_while_cond_4145313___redundant_placeholder3*
&sequential_216_lstm_648_while_identity
?
"sequential_216/lstm_648/while/LessLess)sequential_216_lstm_648_while_placeholderJsequential_216_lstm_648_while_less_sequential_216_lstm_648_strided_slice_1*
T0*
_output_shapes
: {
&sequential_216/lstm_648/while/IdentityIdentity&sequential_216/lstm_648/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_216_lstm_648_while_identity/sequential_216/lstm_648/while/Identity:output:0*(
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4145895

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
while_body_4145954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_648_4145978_0:	?0
while_lstm_cell_648_4145980_0:	d?,
while_lstm_cell_648_4145982_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_648_4145978:	?.
while_lstm_cell_648_4145980:	d?*
while_lstm_cell_648_4145982:	???+while/lstm_cell_648/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_648/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_648_4145978_0while_lstm_cell_648_4145980_0while_lstm_cell_648_4145982_0*
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4145895?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_648/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_648/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_648/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_648/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_648_4145978while_lstm_cell_648_4145978_0"<
while_lstm_cell_648_4145980while_lstm_cell_648_4145980_0"<
while_lstm_cell_648_4145982while_lstm_cell_648_4145982_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_648/StatefulPartitionedCall+while/lstm_cell_648/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4146112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4146112___redundant_placeholder05
1while_while_cond_4146112___redundant_placeholder15
1while_while_cond_4146112___redundant_placeholder25
1while_while_cond_4146112___redundant_placeholder3
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

lstm_648_while_body_4148482.
*lstm_648_while_lstm_648_while_loop_counter4
0lstm_648_while_lstm_648_while_maximum_iterations
lstm_648_while_placeholder 
lstm_648_while_placeholder_1 
lstm_648_while_placeholder_2 
lstm_648_while_placeholder_3-
)lstm_648_while_lstm_648_strided_slice_1_0i
elstm_648_while_tensorarrayv2read_tensorlistgetitem_lstm_648_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_648_while_lstm_cell_648_matmul_readvariableop_resource_0:	?R
?lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?M
>lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
lstm_648_while_identity
lstm_648_while_identity_1
lstm_648_while_identity_2
lstm_648_while_identity_3
lstm_648_while_identity_4
lstm_648_while_identity_5+
'lstm_648_while_lstm_648_strided_slice_1g
clstm_648_while_tensorarrayv2read_tensorlistgetitem_lstm_648_tensorarrayunstack_tensorlistfromtensorN
;lstm_648_while_lstm_cell_648_matmul_readvariableop_resource:	?P
=lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource:	d?K
<lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource:	???3lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp?2lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp?4lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp?
@lstm_648/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_648/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_648_while_tensorarrayv2read_tensorlistgetitem_lstm_648_tensorarrayunstack_tensorlistfromtensor_0lstm_648_while_placeholderIlstm_648/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_648/while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp=lstm_648_while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_648/while/lstm_cell_648/MatMulMatMul9lstm_648/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp?lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_648/while/lstm_cell_648/MatMul_1MatMullstm_648_while_placeholder_2<lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_648/while/lstm_cell_648/addAddV2-lstm_648/while/lstm_cell_648/MatMul:product:0/lstm_648/while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp>lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_648/while/lstm_cell_648/BiasAddBiasAdd$lstm_648/while/lstm_cell_648/add:z:0;lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_648/while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_648/while/lstm_cell_648/splitSplit5lstm_648/while/lstm_cell_648/split/split_dim:output:0-lstm_648/while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_648/while/lstm_cell_648/SigmoidSigmoid+lstm_648/while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_648/while/lstm_cell_648/Sigmoid_1Sigmoid+lstm_648/while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_648/while/lstm_cell_648/mulMul*lstm_648/while/lstm_cell_648/Sigmoid_1:y:0lstm_648_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_648/while/lstm_cell_648/ReluRelu+lstm_648/while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_648/while/lstm_cell_648/mul_1Mul(lstm_648/while/lstm_cell_648/Sigmoid:y:0/lstm_648/while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_648/while/lstm_cell_648/add_1AddV2$lstm_648/while/lstm_cell_648/mul:z:0&lstm_648/while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_648/while/lstm_cell_648/Sigmoid_2Sigmoid+lstm_648/while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_648/while/lstm_cell_648/Relu_1Relu&lstm_648/while/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_648/while/lstm_cell_648/mul_2Mul*lstm_648/while/lstm_cell_648/Sigmoid_2:y:01lstm_648/while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_648/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_648_while_placeholder_1lstm_648_while_placeholder&lstm_648/while/lstm_cell_648/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_648/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_648/while/addAddV2lstm_648_while_placeholderlstm_648/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_648/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_648/while/add_1AddV2*lstm_648_while_lstm_648_while_loop_counterlstm_648/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_648/while/IdentityIdentitylstm_648/while/add_1:z:0^lstm_648/while/NoOp*
T0*
_output_shapes
: ?
lstm_648/while/Identity_1Identity0lstm_648_while_lstm_648_while_maximum_iterations^lstm_648/while/NoOp*
T0*
_output_shapes
: t
lstm_648/while/Identity_2Identitylstm_648/while/add:z:0^lstm_648/while/NoOp*
T0*
_output_shapes
: ?
lstm_648/while/Identity_3IdentityClstm_648/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_648/while/NoOp*
T0*
_output_shapes
: ?
lstm_648/while/Identity_4Identity&lstm_648/while/lstm_cell_648/mul_2:z:0^lstm_648/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_648/while/Identity_5Identity&lstm_648/while/lstm_cell_648/add_1:z:0^lstm_648/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_648/while/NoOpNoOp4^lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp3^lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp5^lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_648_while_identity lstm_648/while/Identity:output:0"?
lstm_648_while_identity_1"lstm_648/while/Identity_1:output:0"?
lstm_648_while_identity_2"lstm_648/while/Identity_2:output:0"?
lstm_648_while_identity_3"lstm_648/while/Identity_3:output:0"?
lstm_648_while_identity_4"lstm_648/while/Identity_4:output:0"?
lstm_648_while_identity_5"lstm_648/while/Identity_5:output:0"T
'lstm_648_while_lstm_648_strided_slice_1)lstm_648_while_lstm_648_strided_slice_1_0"~
<lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource>lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource_0"?
=lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource?lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource_0"|
;lstm_648_while_lstm_cell_648_matmul_readvariableop_resource=lstm_648_while_lstm_cell_648_matmul_readvariableop_resource_0"?
clstm_648_while_tensorarrayv2read_tensorlistgetitem_lstm_648_tensorarrayunstack_tensorlistfromtensorelstm_648_while_tensorarrayv2read_tensorlistgetitem_lstm_648_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp3lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp2h
2lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp2lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp2l
4lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp4lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_216_lstm_650_while_body_4145592L
Hsequential_216_lstm_650_while_sequential_216_lstm_650_while_loop_counterR
Nsequential_216_lstm_650_while_sequential_216_lstm_650_while_maximum_iterations-
)sequential_216_lstm_650_while_placeholder/
+sequential_216_lstm_650_while_placeholder_1/
+sequential_216_lstm_650_while_placeholder_2/
+sequential_216_lstm_650_while_placeholder_3K
Gsequential_216_lstm_650_while_sequential_216_lstm_650_strided_slice_1_0?
?sequential_216_lstm_650_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_650_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_216_lstm_650_while_lstm_cell_650_matmul_readvariableop_resource_0:2(`
Nsequential_216_lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource_0:
([
Msequential_216_lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource_0:(*
&sequential_216_lstm_650_while_identity,
(sequential_216_lstm_650_while_identity_1,
(sequential_216_lstm_650_while_identity_2,
(sequential_216_lstm_650_while_identity_3,
(sequential_216_lstm_650_while_identity_4,
(sequential_216_lstm_650_while_identity_5I
Esequential_216_lstm_650_while_sequential_216_lstm_650_strided_slice_1?
?sequential_216_lstm_650_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_650_tensorarrayunstack_tensorlistfromtensor\
Jsequential_216_lstm_650_while_lstm_cell_650_matmul_readvariableop_resource:2(^
Lsequential_216_lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource:
(Y
Ksequential_216_lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource:(??Bsequential_216/lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp?Asequential_216/lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp?Csequential_216/lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp?
Osequential_216/lstm_650/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_216/lstm_650/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_216_lstm_650_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_650_tensorarrayunstack_tensorlistfromtensor_0)sequential_216_lstm_650_while_placeholderXsequential_216/lstm_650/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_216/lstm_650/while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOpLsequential_216_lstm_650_while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_216/lstm_650/while/lstm_cell_650/MatMulMatMulHsequential_216/lstm_650/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_216/lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_216/lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOpNsequential_216_lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_216/lstm_650/while/lstm_cell_650/MatMul_1MatMul+sequential_216_lstm_650_while_placeholder_2Ksequential_216/lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_216/lstm_650/while/lstm_cell_650/addAddV2<sequential_216/lstm_650/while/lstm_cell_650/MatMul:product:0>sequential_216/lstm_650/while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_216/lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOpMsequential_216_lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_216/lstm_650/while/lstm_cell_650/BiasAddBiasAdd3sequential_216/lstm_650/while/lstm_cell_650/add:z:0Jsequential_216/lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_216/lstm_650/while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_216/lstm_650/while/lstm_cell_650/splitSplitDsequential_216/lstm_650/while/lstm_cell_650/split/split_dim:output:0<sequential_216/lstm_650/while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_216/lstm_650/while/lstm_cell_650/SigmoidSigmoid:sequential_216/lstm_650/while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_216/lstm_650/while/lstm_cell_650/Sigmoid_1Sigmoid:sequential_216/lstm_650/while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_216/lstm_650/while/lstm_cell_650/mulMul9sequential_216/lstm_650/while/lstm_cell_650/Sigmoid_1:y:0+sequential_216_lstm_650_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_216/lstm_650/while/lstm_cell_650/ReluRelu:sequential_216/lstm_650/while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_216/lstm_650/while/lstm_cell_650/mul_1Mul7sequential_216/lstm_650/while/lstm_cell_650/Sigmoid:y:0>sequential_216/lstm_650/while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_216/lstm_650/while/lstm_cell_650/add_1AddV23sequential_216/lstm_650/while/lstm_cell_650/mul:z:05sequential_216/lstm_650/while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_216/lstm_650/while/lstm_cell_650/Sigmoid_2Sigmoid:sequential_216/lstm_650/while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_216/lstm_650/while/lstm_cell_650/Relu_1Relu5sequential_216/lstm_650/while/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_216/lstm_650/while/lstm_cell_650/mul_2Mul9sequential_216/lstm_650/while/lstm_cell_650/Sigmoid_2:y:0@sequential_216/lstm_650/while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_216/lstm_650/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_216_lstm_650_while_placeholder_1)sequential_216_lstm_650_while_placeholder5sequential_216/lstm_650/while/lstm_cell_650/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_216/lstm_650/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_216/lstm_650/while/addAddV2)sequential_216_lstm_650_while_placeholder,sequential_216/lstm_650/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_216/lstm_650/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_216/lstm_650/while/add_1AddV2Hsequential_216_lstm_650_while_sequential_216_lstm_650_while_loop_counter.sequential_216/lstm_650/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_216/lstm_650/while/IdentityIdentity'sequential_216/lstm_650/while/add_1:z:0#^sequential_216/lstm_650/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_650/while/Identity_1IdentityNsequential_216_lstm_650_while_sequential_216_lstm_650_while_maximum_iterations#^sequential_216/lstm_650/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_650/while/Identity_2Identity%sequential_216/lstm_650/while/add:z:0#^sequential_216/lstm_650/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_650/while/Identity_3IdentityRsequential_216/lstm_650/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_216/lstm_650/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_650/while/Identity_4Identity5sequential_216/lstm_650/while/lstm_cell_650/mul_2:z:0#^sequential_216/lstm_650/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_216/lstm_650/while/Identity_5Identity5sequential_216/lstm_650/while/lstm_cell_650/add_1:z:0#^sequential_216/lstm_650/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_216/lstm_650/while/NoOpNoOpC^sequential_216/lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOpB^sequential_216/lstm_650/while/lstm_cell_650/MatMul/ReadVariableOpD^sequential_216/lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_216_lstm_650_while_identity/sequential_216/lstm_650/while/Identity:output:0"]
(sequential_216_lstm_650_while_identity_11sequential_216/lstm_650/while/Identity_1:output:0"]
(sequential_216_lstm_650_while_identity_21sequential_216/lstm_650/while/Identity_2:output:0"]
(sequential_216_lstm_650_while_identity_31sequential_216/lstm_650/while/Identity_3:output:0"]
(sequential_216_lstm_650_while_identity_41sequential_216/lstm_650/while/Identity_4:output:0"]
(sequential_216_lstm_650_while_identity_51sequential_216/lstm_650/while/Identity_5:output:0"?
Ksequential_216_lstm_650_while_lstm_cell_650_biasadd_readvariableop_resourceMsequential_216_lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource_0"?
Lsequential_216_lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resourceNsequential_216_lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource_0"?
Jsequential_216_lstm_650_while_lstm_cell_650_matmul_readvariableop_resourceLsequential_216_lstm_650_while_lstm_cell_650_matmul_readvariableop_resource_0"?
Esequential_216_lstm_650_while_sequential_216_lstm_650_strided_slice_1Gsequential_216_lstm_650_while_sequential_216_lstm_650_strided_slice_1_0"?
?sequential_216_lstm_650_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_650_tensorarrayunstack_tensorlistfromtensor?sequential_216_lstm_650_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_650_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_216/lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOpBsequential_216/lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp2?
Asequential_216/lstm_650/while/lstm_cell_650/MatMul/ReadVariableOpAsequential_216/lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp2?
Csequential_216/lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOpCsequential_216/lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4146304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_649_4146328_0:	d?0
while_lstm_cell_649_4146330_0:	2?,
while_lstm_cell_649_4146332_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_649_4146328:	d?.
while_lstm_cell_649_4146330:	2?*
while_lstm_cell_649_4146332:	???+while/lstm_cell_649/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_649/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_649_4146328_0while_lstm_cell_649_4146330_0while_lstm_cell_649_4146332_0*
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4146245?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_649/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_649/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_649/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_649/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_649_4146328while_lstm_cell_649_4146328_0"<
while_lstm_cell_649_4146330while_lstm_cell_649_4146330_0"<
while_lstm_cell_649_4146332while_lstm_cell_649_4146332_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_649/StatefulPartitionedCall+while/lstm_cell_649/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4146946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4146946___redundant_placeholder05
1while_while_cond_4146946___redundant_placeholder15
1while_while_cond_4146946___redundant_placeholder25
1while_while_cond_4146946___redundant_placeholder3
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
while_body_4150185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_216_layer_call_fn_4147847
lstm_648_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_648_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147795o
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
_user_specified_namelstm_648_input
?
?
+__inference_dense_216_layer_call_fn_4150707

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
F__inference_dense_216_layer_call_and_return_conditional_losses_4147199o
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
?
?
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4146449

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
while_cond_4149568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4149568___redundant_placeholder05
1while_while_cond_4149568___redundant_placeholder15
1while_while_cond_4149568___redundant_placeholder25
1while_while_cond_4149568___redundant_placeholder3
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
while_cond_4147642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4147642___redundant_placeholder05
1while_while_cond_4147642___redundant_placeholder15
1while_while_cond_4147642___redundant_placeholder25
1while_while_cond_4147642___redundant_placeholder3
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
lstm_648_while_cond_4148054.
*lstm_648_while_lstm_648_while_loop_counter4
0lstm_648_while_lstm_648_while_maximum_iterations
lstm_648_while_placeholder 
lstm_648_while_placeholder_1 
lstm_648_while_placeholder_2 
lstm_648_while_placeholder_30
,lstm_648_while_less_lstm_648_strided_slice_1G
Clstm_648_while_lstm_648_while_cond_4148054___redundant_placeholder0G
Clstm_648_while_lstm_648_while_cond_4148054___redundant_placeholder1G
Clstm_648_while_lstm_648_while_cond_4148054___redundant_placeholder2G
Clstm_648_while_lstm_648_while_cond_4148054___redundant_placeholder3
lstm_648_while_identity
?
lstm_648/while/LessLesslstm_648_while_placeholder,lstm_648_while_less_lstm_648_strided_slice_1*
T0*
_output_shapes
: ]
lstm_648/while/IdentityIdentitylstm_648/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_648_while_identity lstm_648/while/Identity:output:0*(
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
*sequential_216_lstm_649_while_body_4145453L
Hsequential_216_lstm_649_while_sequential_216_lstm_649_while_loop_counterR
Nsequential_216_lstm_649_while_sequential_216_lstm_649_while_maximum_iterations-
)sequential_216_lstm_649_while_placeholder/
+sequential_216_lstm_649_while_placeholder_1/
+sequential_216_lstm_649_while_placeholder_2/
+sequential_216_lstm_649_while_placeholder_3K
Gsequential_216_lstm_649_while_sequential_216_lstm_649_strided_slice_1_0?
?sequential_216_lstm_649_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_649_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_216_lstm_649_while_lstm_cell_649_matmul_readvariableop_resource_0:	d?a
Nsequential_216_lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?\
Msequential_216_lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource_0:	?*
&sequential_216_lstm_649_while_identity,
(sequential_216_lstm_649_while_identity_1,
(sequential_216_lstm_649_while_identity_2,
(sequential_216_lstm_649_while_identity_3,
(sequential_216_lstm_649_while_identity_4,
(sequential_216_lstm_649_while_identity_5I
Esequential_216_lstm_649_while_sequential_216_lstm_649_strided_slice_1?
?sequential_216_lstm_649_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_649_tensorarrayunstack_tensorlistfromtensor]
Jsequential_216_lstm_649_while_lstm_cell_649_matmul_readvariableop_resource:	d?_
Lsequential_216_lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource:	2?Z
Ksequential_216_lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource:	???Bsequential_216/lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp?Asequential_216/lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp?Csequential_216/lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp?
Osequential_216/lstm_649/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_216/lstm_649/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_216_lstm_649_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_649_tensorarrayunstack_tensorlistfromtensor_0)sequential_216_lstm_649_while_placeholderXsequential_216/lstm_649/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_216/lstm_649/while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOpLsequential_216_lstm_649_while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_216/lstm_649/while/lstm_cell_649/MatMulMatMulHsequential_216/lstm_649/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_216/lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_216/lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOpNsequential_216_lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_216/lstm_649/while/lstm_cell_649/MatMul_1MatMul+sequential_216_lstm_649_while_placeholder_2Ksequential_216/lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_216/lstm_649/while/lstm_cell_649/addAddV2<sequential_216/lstm_649/while/lstm_cell_649/MatMul:product:0>sequential_216/lstm_649/while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_216/lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOpMsequential_216_lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_216/lstm_649/while/lstm_cell_649/BiasAddBiasAdd3sequential_216/lstm_649/while/lstm_cell_649/add:z:0Jsequential_216/lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_216/lstm_649/while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_216/lstm_649/while/lstm_cell_649/splitSplitDsequential_216/lstm_649/while/lstm_cell_649/split/split_dim:output:0<sequential_216/lstm_649/while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_216/lstm_649/while/lstm_cell_649/SigmoidSigmoid:sequential_216/lstm_649/while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_216/lstm_649/while/lstm_cell_649/Sigmoid_1Sigmoid:sequential_216/lstm_649/while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_216/lstm_649/while/lstm_cell_649/mulMul9sequential_216/lstm_649/while/lstm_cell_649/Sigmoid_1:y:0+sequential_216_lstm_649_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_216/lstm_649/while/lstm_cell_649/ReluRelu:sequential_216/lstm_649/while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_216/lstm_649/while/lstm_cell_649/mul_1Mul7sequential_216/lstm_649/while/lstm_cell_649/Sigmoid:y:0>sequential_216/lstm_649/while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_216/lstm_649/while/lstm_cell_649/add_1AddV23sequential_216/lstm_649/while/lstm_cell_649/mul:z:05sequential_216/lstm_649/while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_216/lstm_649/while/lstm_cell_649/Sigmoid_2Sigmoid:sequential_216/lstm_649/while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_216/lstm_649/while/lstm_cell_649/Relu_1Relu5sequential_216/lstm_649/while/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_216/lstm_649/while/lstm_cell_649/mul_2Mul9sequential_216/lstm_649/while/lstm_cell_649/Sigmoid_2:y:0@sequential_216/lstm_649/while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_216/lstm_649/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_216_lstm_649_while_placeholder_1)sequential_216_lstm_649_while_placeholder5sequential_216/lstm_649/while/lstm_cell_649/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_216/lstm_649/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_216/lstm_649/while/addAddV2)sequential_216_lstm_649_while_placeholder,sequential_216/lstm_649/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_216/lstm_649/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_216/lstm_649/while/add_1AddV2Hsequential_216_lstm_649_while_sequential_216_lstm_649_while_loop_counter.sequential_216/lstm_649/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_216/lstm_649/while/IdentityIdentity'sequential_216/lstm_649/while/add_1:z:0#^sequential_216/lstm_649/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_649/while/Identity_1IdentityNsequential_216_lstm_649_while_sequential_216_lstm_649_while_maximum_iterations#^sequential_216/lstm_649/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_649/while/Identity_2Identity%sequential_216/lstm_649/while/add:z:0#^sequential_216/lstm_649/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_649/while/Identity_3IdentityRsequential_216/lstm_649/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_216/lstm_649/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_649/while/Identity_4Identity5sequential_216/lstm_649/while/lstm_cell_649/mul_2:z:0#^sequential_216/lstm_649/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_216/lstm_649/while/Identity_5Identity5sequential_216/lstm_649/while/lstm_cell_649/add_1:z:0#^sequential_216/lstm_649/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_216/lstm_649/while/NoOpNoOpC^sequential_216/lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOpB^sequential_216/lstm_649/while/lstm_cell_649/MatMul/ReadVariableOpD^sequential_216/lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_216_lstm_649_while_identity/sequential_216/lstm_649/while/Identity:output:0"]
(sequential_216_lstm_649_while_identity_11sequential_216/lstm_649/while/Identity_1:output:0"]
(sequential_216_lstm_649_while_identity_21sequential_216/lstm_649/while/Identity_2:output:0"]
(sequential_216_lstm_649_while_identity_31sequential_216/lstm_649/while/Identity_3:output:0"]
(sequential_216_lstm_649_while_identity_41sequential_216/lstm_649/while/Identity_4:output:0"]
(sequential_216_lstm_649_while_identity_51sequential_216/lstm_649/while/Identity_5:output:0"?
Ksequential_216_lstm_649_while_lstm_cell_649_biasadd_readvariableop_resourceMsequential_216_lstm_649_while_lstm_cell_649_biasadd_readvariableop_resource_0"?
Lsequential_216_lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resourceNsequential_216_lstm_649_while_lstm_cell_649_matmul_1_readvariableop_resource_0"?
Jsequential_216_lstm_649_while_lstm_cell_649_matmul_readvariableop_resourceLsequential_216_lstm_649_while_lstm_cell_649_matmul_readvariableop_resource_0"?
Esequential_216_lstm_649_while_sequential_216_lstm_649_strided_slice_1Gsequential_216_lstm_649_while_sequential_216_lstm_649_strided_slice_1_0"?
?sequential_216_lstm_649_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_649_tensorarrayunstack_tensorlistfromtensor?sequential_216_lstm_649_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_649_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_216/lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOpBsequential_216/lstm_649/while/lstm_cell_649/BiasAdd/ReadVariableOp2?
Asequential_216/lstm_649/while/lstm_cell_649/MatMul/ReadVariableOpAsequential_216/lstm_649/while/lstm_cell_649/MatMul/ReadVariableOp2?
Csequential_216/lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOpCsequential_216/lstm_649/while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_649_layer_call_fn_4149488
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4146373|
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
F__inference_dense_216_layer_call_and_return_conditional_losses_4150717

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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4147397

inputs>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_4147313*
condR
while_cond_4147312*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4149998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4145763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_648_4145787_0:	?0
while_lstm_cell_648_4145789_0:	d?,
while_lstm_cell_648_4145791_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_648_4145787:	?.
while_lstm_cell_648_4145789:	d?*
while_lstm_cell_648_4145791:	???+while/lstm_cell_648/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_648/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_648_4145787_0while_lstm_cell_648_4145789_0while_lstm_cell_648_4145791_0*
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4145749?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_648/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_648/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_648/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_648/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_648_4145787while_lstm_cell_648_4145787_0"<
while_lstm_cell_648_4145789while_lstm_cell_648_4145789_0"<
while_lstm_cell_648_4145791while_lstm_cell_648_4145791_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_648/StatefulPartitionedCall+while/lstm_cell_648/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*sequential_216_lstm_650_while_cond_4145591L
Hsequential_216_lstm_650_while_sequential_216_lstm_650_while_loop_counterR
Nsequential_216_lstm_650_while_sequential_216_lstm_650_while_maximum_iterations-
)sequential_216_lstm_650_while_placeholder/
+sequential_216_lstm_650_while_placeholder_1/
+sequential_216_lstm_650_while_placeholder_2/
+sequential_216_lstm_650_while_placeholder_3N
Jsequential_216_lstm_650_while_less_sequential_216_lstm_650_strided_slice_1e
asequential_216_lstm_650_while_sequential_216_lstm_650_while_cond_4145591___redundant_placeholder0e
asequential_216_lstm_650_while_sequential_216_lstm_650_while_cond_4145591___redundant_placeholder1e
asequential_216_lstm_650_while_sequential_216_lstm_650_while_cond_4145591___redundant_placeholder2e
asequential_216_lstm_650_while_sequential_216_lstm_650_while_cond_4145591___redundant_placeholder3*
&sequential_216_lstm_650_while_identity
?
"sequential_216/lstm_650/while/LessLess)sequential_216_lstm_650_while_placeholderJsequential_216_lstm_650_while_less_sequential_216_lstm_650_strided_slice_1*
T0*
_output_shapes
: {
&sequential_216/lstm_650/while/IdentityIdentity&sequential_216/lstm_650/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_216_lstm_650_while_identity/sequential_216/lstm_650/while/Identity:output:0*(
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
while_body_4147643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147795

inputs#
lstm_648_4147768:	?#
lstm_648_4147770:	d?
lstm_648_4147772:	?#
lstm_649_4147775:	d?#
lstm_649_4147777:	2?
lstm_649_4147779:	?"
lstm_650_4147782:2("
lstm_650_4147784:
(
lstm_650_4147786:(#
dense_216_4147789:

dense_216_4147791:
identity??!dense_216/StatefulPartitionedCall? lstm_648/StatefulPartitionedCall? lstm_649/StatefulPartitionedCall? lstm_650/StatefulPartitionedCall?
 lstm_648/StatefulPartitionedCallStatefulPartitionedCallinputslstm_648_4147768lstm_648_4147770lstm_648_4147772*
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4147727?
 lstm_649/StatefulPartitionedCallStatefulPartitionedCall)lstm_648/StatefulPartitionedCall:output:0lstm_649_4147775lstm_649_4147777lstm_649_4147779*
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4147562?
 lstm_650/StatefulPartitionedCallStatefulPartitionedCall)lstm_649/StatefulPartitionedCall:output:0lstm_650_4147782lstm_650_4147784lstm_650_4147786*
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4147397?
!dense_216/StatefulPartitionedCallStatefulPartitionedCall)lstm_650/StatefulPartitionedCall:output:0dense_216_4147789dense_216_4147791*
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
F__inference_dense_216_layer_call_and_return_conditional_losses_4147199y
IdentityIdentity*dense_216/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_216/StatefulPartitionedCall!^lstm_648/StatefulPartitionedCall!^lstm_649/StatefulPartitionedCall!^lstm_650/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_216/StatefulPartitionedCall!dense_216/StatefulPartitionedCall2D
 lstm_648/StatefulPartitionedCall lstm_648/StatefulPartitionedCall2D
 lstm_649/StatefulPartitionedCall lstm_649/StatefulPartitionedCall2D
 lstm_650/StatefulPartitionedCall lstm_650/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4150815

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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4151011

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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4146182

inputs(
lstm_cell_649_4146100:	d?(
lstm_cell_649_4146102:	2?$
lstm_cell_649_4146104:	?
identity??%lstm_cell_649/StatefulPartitionedCall?while;
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
%lstm_cell_649/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_649_4146100lstm_cell_649_4146102lstm_cell_649_4146104*
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4146099n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_649_4146100lstm_cell_649_4146102lstm_cell_649_4146104*
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
while_body_4146113*
condR
while_cond_4146112*K
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
NoOpNoOp&^lstm_cell_649/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_649/StatefulPartitionedCall%lstm_cell_649/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4146796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4146796___redundant_placeholder05
1while_while_cond_4146796___redundant_placeholder15
1while_while_cond_4146796___redundant_placeholder25
1while_while_cond_4146796___redundant_placeholder3
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
while_cond_4147312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4147312___redundant_placeholder05
1while_while_cond_4147312___redundant_placeholder15
1while_while_cond_4147312___redundant_placeholder25
1while_while_cond_4147312___redundant_placeholder3
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
while_body_4148953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_650_while_cond_4148332.
*lstm_650_while_lstm_650_while_loop_counter4
0lstm_650_while_lstm_650_while_maximum_iterations
lstm_650_while_placeholder 
lstm_650_while_placeholder_1 
lstm_650_while_placeholder_2 
lstm_650_while_placeholder_30
,lstm_650_while_less_lstm_650_strided_slice_1G
Clstm_650_while_lstm_650_while_cond_4148332___redundant_placeholder0G
Clstm_650_while_lstm_650_while_cond_4148332___redundant_placeholder1G
Clstm_650_while_lstm_650_while_cond_4148332___redundant_placeholder2G
Clstm_650_while_lstm_650_while_cond_4148332___redundant_placeholder3
lstm_650_while_identity
?
lstm_650/while/LessLesslstm_650_while_placeholder,lstm_650_while_less_lstm_650_strided_slice_1*
T0*
_output_shapes
: ]
lstm_650/while/IdentityIdentitylstm_650/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_650_while_identity lstm_650/while/Identity:output:0*(
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
lstm_649_while_cond_4148193.
*lstm_649_while_lstm_649_while_loop_counter4
0lstm_649_while_lstm_649_while_maximum_iterations
lstm_649_while_placeholder 
lstm_649_while_placeholder_1 
lstm_649_while_placeholder_2 
lstm_649_while_placeholder_30
,lstm_649_while_less_lstm_649_strided_slice_1G
Clstm_649_while_lstm_649_while_cond_4148193___redundant_placeholder0G
Clstm_649_while_lstm_649_while_cond_4148193___redundant_placeholder1G
Clstm_649_while_lstm_649_while_cond_4148193___redundant_placeholder2G
Clstm_649_while_lstm_649_while_cond_4148193___redundant_placeholder3
lstm_649_while_identity
?
lstm_649/while/LessLesslstm_649_while_placeholder,lstm_649_while_less_lstm_649_strided_slice_1*
T0*
_output_shapes
: ]
lstm_649/while/IdentityIdentitylstm_649/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_649_while_identity lstm_649/while/Identity:output:0*(
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4146373

inputs(
lstm_cell_649_4146291:	d?(
lstm_cell_649_4146293:	2?$
lstm_cell_649_4146295:	?
identity??%lstm_cell_649/StatefulPartitionedCall?while;
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
%lstm_cell_649/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_649_4146291lstm_cell_649_4146293lstm_cell_649_4146295*
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4146245n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_649_4146291lstm_cell_649_4146293lstm_cell_649_4146295*
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
while_body_4146304*
condR
while_cond_4146303*K
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
NoOpNoOp&^lstm_cell_649/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_649/StatefulPartitionedCall%lstm_cell_649/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4146653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4146653___redundant_placeholder05
1while_while_cond_4146653___redundant_placeholder15
1while_while_cond_4146653___redundant_placeholder25
1while_while_cond_4146653___redundant_placeholder3
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150412
inputs_0>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_4150328*
condR
while_cond_4150327*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4146462
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4146462___redundant_placeholder05
1while_while_cond_4146462___redundant_placeholder15
1while_while_cond_4146462___redundant_placeholder25
1while_while_cond_4146462___redundant_placeholder3
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
while_cond_4150613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4150613___redundant_placeholder05
1while_while_cond_4150613___redundant_placeholder15
1while_while_cond_4150613___redundant_placeholder25
1while_while_cond_4150613___redundant_placeholder3
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
0__inference_sequential_216_layer_call_fn_4147969

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
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147206o
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

lstm_650_while_body_4148333.
*lstm_650_while_lstm_650_while_loop_counter4
0lstm_650_while_lstm_650_while_maximum_iterations
lstm_650_while_placeholder 
lstm_650_while_placeholder_1 
lstm_650_while_placeholder_2 
lstm_650_while_placeholder_3-
)lstm_650_while_lstm_650_strided_slice_1_0i
elstm_650_while_tensorarrayv2read_tensorlistgetitem_lstm_650_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_650_while_lstm_cell_650_matmul_readvariableop_resource_0:2(Q
?lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(L
>lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource_0:(
lstm_650_while_identity
lstm_650_while_identity_1
lstm_650_while_identity_2
lstm_650_while_identity_3
lstm_650_while_identity_4
lstm_650_while_identity_5+
'lstm_650_while_lstm_650_strided_slice_1g
clstm_650_while_tensorarrayv2read_tensorlistgetitem_lstm_650_tensorarrayunstack_tensorlistfromtensorM
;lstm_650_while_lstm_cell_650_matmul_readvariableop_resource:2(O
=lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource:
(J
<lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource:(??3lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp?2lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp?4lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp?
@lstm_650/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_650/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_650_while_tensorarrayv2read_tensorlistgetitem_lstm_650_tensorarrayunstack_tensorlistfromtensor_0lstm_650_while_placeholderIlstm_650/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_650/while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp=lstm_650_while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_650/while/lstm_cell_650/MatMulMatMul9lstm_650/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp?lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_650/while/lstm_cell_650/MatMul_1MatMullstm_650_while_placeholder_2<lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_650/while/lstm_cell_650/addAddV2-lstm_650/while/lstm_cell_650/MatMul:product:0/lstm_650/while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp>lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_650/while/lstm_cell_650/BiasAddBiasAdd$lstm_650/while/lstm_cell_650/add:z:0;lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_650/while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_650/while/lstm_cell_650/splitSplit5lstm_650/while/lstm_cell_650/split/split_dim:output:0-lstm_650/while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_650/while/lstm_cell_650/SigmoidSigmoid+lstm_650/while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_650/while/lstm_cell_650/Sigmoid_1Sigmoid+lstm_650/while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_650/while/lstm_cell_650/mulMul*lstm_650/while/lstm_cell_650/Sigmoid_1:y:0lstm_650_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_650/while/lstm_cell_650/ReluRelu+lstm_650/while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_650/while/lstm_cell_650/mul_1Mul(lstm_650/while/lstm_cell_650/Sigmoid:y:0/lstm_650/while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_650/while/lstm_cell_650/add_1AddV2$lstm_650/while/lstm_cell_650/mul:z:0&lstm_650/while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_650/while/lstm_cell_650/Sigmoid_2Sigmoid+lstm_650/while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_650/while/lstm_cell_650/Relu_1Relu&lstm_650/while/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_650/while/lstm_cell_650/mul_2Mul*lstm_650/while/lstm_cell_650/Sigmoid_2:y:01lstm_650/while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_650/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_650_while_placeholder_1lstm_650_while_placeholder&lstm_650/while/lstm_cell_650/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_650/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_650/while/addAddV2lstm_650_while_placeholderlstm_650/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_650/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_650/while/add_1AddV2*lstm_650_while_lstm_650_while_loop_counterlstm_650/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_650/while/IdentityIdentitylstm_650/while/add_1:z:0^lstm_650/while/NoOp*
T0*
_output_shapes
: ?
lstm_650/while/Identity_1Identity0lstm_650_while_lstm_650_while_maximum_iterations^lstm_650/while/NoOp*
T0*
_output_shapes
: t
lstm_650/while/Identity_2Identitylstm_650/while/add:z:0^lstm_650/while/NoOp*
T0*
_output_shapes
: ?
lstm_650/while/Identity_3IdentityClstm_650/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_650/while/NoOp*
T0*
_output_shapes
: ?
lstm_650/while/Identity_4Identity&lstm_650/while/lstm_cell_650/mul_2:z:0^lstm_650/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_650/while/Identity_5Identity&lstm_650/while/lstm_cell_650/add_1:z:0^lstm_650/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_650/while/NoOpNoOp4^lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp3^lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp5^lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_650_while_identity lstm_650/while/Identity:output:0"?
lstm_650_while_identity_1"lstm_650/while/Identity_1:output:0"?
lstm_650_while_identity_2"lstm_650/while/Identity_2:output:0"?
lstm_650_while_identity_3"lstm_650/while/Identity_3:output:0"?
lstm_650_while_identity_4"lstm_650/while/Identity_4:output:0"?
lstm_650_while_identity_5"lstm_650/while/Identity_5:output:0"T
'lstm_650_while_lstm_650_strided_slice_1)lstm_650_while_lstm_650_strided_slice_1_0"~
<lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource>lstm_650_while_lstm_cell_650_biasadd_readvariableop_resource_0"?
=lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource?lstm_650_while_lstm_cell_650_matmul_1_readvariableop_resource_0"|
;lstm_650_while_lstm_cell_650_matmul_readvariableop_resource=lstm_650_while_lstm_cell_650_matmul_readvariableop_resource_0"?
clstm_650_while_tensorarrayv2read_tensorlistgetitem_lstm_650_tensorarrayunstack_tensorlistfromtensorelstm_650_while_tensorarrayv2read_tensorlistgetitem_lstm_650_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp3lstm_650/while/lstm_cell_650/BiasAdd/ReadVariableOp2h
2lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp2lstm_650/while/lstm_cell_650/MatMul/ReadVariableOp2l
4lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp4lstm_650/while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150555

inputs>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_4150471*
condR
while_cond_4150470*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_649_while_cond_4148620.
*lstm_649_while_lstm_649_while_loop_counter4
0lstm_649_while_lstm_649_while_maximum_iterations
lstm_649_while_placeholder 
lstm_649_while_placeholder_1 
lstm_649_while_placeholder_2 
lstm_649_while_placeholder_30
,lstm_649_while_less_lstm_649_strided_slice_1G
Clstm_649_while_lstm_649_while_cond_4148620___redundant_placeholder0G
Clstm_649_while_lstm_649_while_cond_4148620___redundant_placeholder1G
Clstm_649_while_lstm_649_while_cond_4148620___redundant_placeholder2G
Clstm_649_while_lstm_649_while_cond_4148620___redundant_placeholder3
lstm_649_while_identity
?
lstm_649/while/LessLesslstm_649_while_placeholder,lstm_649_while_less_lstm_649_strided_slice_1*
T0*
_output_shapes
: ]
lstm_649/while/IdentityIdentitylstm_649/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_649_while_identity lstm_649/while/Identity:output:0*(
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4150913

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
while_cond_4149381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4149381___redundant_placeholder05
1while_while_cond_4149381___redundant_placeholder15
1while_while_cond_4149381___redundant_placeholder25
1while_while_cond_4149381___redundant_placeholder3
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4149796
inputs_0?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_4149712*
condR
while_cond_4149711*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4150614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4149382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4149854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4149854___redundant_placeholder05
1while_while_cond_4149854___redundant_placeholder15
1while_while_cond_4149854___redundant_placeholder25
1while_while_cond_4149854___redundant_placeholder3
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
?
?
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147907
lstm_648_input#
lstm_648_4147880:	?#
lstm_648_4147882:	d?
lstm_648_4147884:	?#
lstm_649_4147887:	d?#
lstm_649_4147889:	2?
lstm_649_4147891:	?"
lstm_650_4147894:2("
lstm_650_4147896:
(
lstm_650_4147898:(#
dense_216_4147901:

dense_216_4147903:
identity??!dense_216/StatefulPartitionedCall? lstm_648/StatefulPartitionedCall? lstm_649/StatefulPartitionedCall? lstm_650/StatefulPartitionedCall?
 lstm_648/StatefulPartitionedCallStatefulPartitionedCalllstm_648_inputlstm_648_4147880lstm_648_4147882lstm_648_4147884*
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4147727?
 lstm_649/StatefulPartitionedCallStatefulPartitionedCall)lstm_648/StatefulPartitionedCall:output:0lstm_649_4147887lstm_649_4147889lstm_649_4147891*
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4147562?
 lstm_650/StatefulPartitionedCallStatefulPartitionedCall)lstm_649/StatefulPartitionedCall:output:0lstm_650_4147894lstm_650_4147896lstm_650_4147898*
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4147397?
!dense_216/StatefulPartitionedCallStatefulPartitionedCall)lstm_650/StatefulPartitionedCall:output:0dense_216_4147901dense_216_4147903*
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
F__inference_dense_216_layer_call_and_return_conditional_losses_4147199y
IdentityIdentity*dense_216/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_216/StatefulPartitionedCall!^lstm_648/StatefulPartitionedCall!^lstm_649/StatefulPartitionedCall!^lstm_650/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_216/StatefulPartitionedCall!dense_216/StatefulPartitionedCall2D
 lstm_648/StatefulPartitionedCall lstm_648/StatefulPartitionedCall2D
 lstm_649/StatefulPartitionedCall lstm_649/StatefulPartitionedCall2D
 lstm_650/StatefulPartitionedCall lstm_650/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_648_input
?#
?
while_body_4146463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_650_4146487_0:2(/
while_lstm_cell_650_4146489_0:
(+
while_lstm_cell_650_4146491_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_650_4146487:2(-
while_lstm_cell_650_4146489:
()
while_lstm_cell_650_4146491:(??+while/lstm_cell_650/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_650/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_650_4146487_0while_lstm_cell_650_4146489_0while_lstm_cell_650_4146491_0*
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4146449?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_650/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_650/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_650/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_650/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_650_4146487while_lstm_cell_650_4146487_0"<
while_lstm_cell_650_4146489while_lstm_cell_650_4146489_0"<
while_lstm_cell_650_4146491while_lstm_cell_650_4146491_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_650/StatefulPartitionedCall+while/lstm_cell_650/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4146023

inputs(
lstm_cell_648_4145941:	?(
lstm_cell_648_4145943:	d?$
lstm_cell_648_4145945:	?
identity??%lstm_cell_648/StatefulPartitionedCall?while;
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
%lstm_cell_648/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_648_4145941lstm_cell_648_4145943lstm_cell_648_4145945*
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4145895n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_648_4145941lstm_cell_648_4145943lstm_cell_648_4145945*
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
while_body_4145954*
condR
while_cond_4145953*K
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
NoOpNoOp&^lstm_cell_648/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_648/StatefulPartitionedCall%lstm_cell_648/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4146303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4146303___redundant_placeholder05
1while_while_cond_4146303___redundant_placeholder15
1while_while_cond_4146303___redundant_placeholder25
1while_while_cond_4146303___redundant_placeholder3
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
"__inference__wrapped_model_4145682
lstm_648_inputW
Dsequential_216_lstm_648_lstm_cell_648_matmul_readvariableop_resource:	?Y
Fsequential_216_lstm_648_lstm_cell_648_matmul_1_readvariableop_resource:	d?T
Esequential_216_lstm_648_lstm_cell_648_biasadd_readvariableop_resource:	?W
Dsequential_216_lstm_649_lstm_cell_649_matmul_readvariableop_resource:	d?Y
Fsequential_216_lstm_649_lstm_cell_649_matmul_1_readvariableop_resource:	2?T
Esequential_216_lstm_649_lstm_cell_649_biasadd_readvariableop_resource:	?V
Dsequential_216_lstm_650_lstm_cell_650_matmul_readvariableop_resource:2(X
Fsequential_216_lstm_650_lstm_cell_650_matmul_1_readvariableop_resource:
(S
Esequential_216_lstm_650_lstm_cell_650_biasadd_readvariableop_resource:(I
7sequential_216_dense_216_matmul_readvariableop_resource:
F
8sequential_216_dense_216_biasadd_readvariableop_resource:
identity??/sequential_216/dense_216/BiasAdd/ReadVariableOp?.sequential_216/dense_216/MatMul/ReadVariableOp?<sequential_216/lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp?;sequential_216/lstm_648/lstm_cell_648/MatMul/ReadVariableOp?=sequential_216/lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp?sequential_216/lstm_648/while?<sequential_216/lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp?;sequential_216/lstm_649/lstm_cell_649/MatMul/ReadVariableOp?=sequential_216/lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp?sequential_216/lstm_649/while?<sequential_216/lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp?;sequential_216/lstm_650/lstm_cell_650/MatMul/ReadVariableOp?=sequential_216/lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp?sequential_216/lstm_650/while[
sequential_216/lstm_648/ShapeShapelstm_648_input*
T0*
_output_shapes
:u
+sequential_216/lstm_648/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_216/lstm_648/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_216/lstm_648/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_216/lstm_648/strided_sliceStridedSlice&sequential_216/lstm_648/Shape:output:04sequential_216/lstm_648/strided_slice/stack:output:06sequential_216/lstm_648/strided_slice/stack_1:output:06sequential_216/lstm_648/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_216/lstm_648/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_216/lstm_648/zeros/packedPack.sequential_216/lstm_648/strided_slice:output:0/sequential_216/lstm_648/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_216/lstm_648/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_216/lstm_648/zerosFill-sequential_216/lstm_648/zeros/packed:output:0,sequential_216/lstm_648/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_216/lstm_648/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_216/lstm_648/zeros_1/packedPack.sequential_216/lstm_648/strided_slice:output:01sequential_216/lstm_648/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_216/lstm_648/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_216/lstm_648/zeros_1Fill/sequential_216/lstm_648/zeros_1/packed:output:0.sequential_216/lstm_648/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_216/lstm_648/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_216/lstm_648/transpose	Transposelstm_648_input/sequential_216/lstm_648/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_216/lstm_648/Shape_1Shape%sequential_216/lstm_648/transpose:y:0*
T0*
_output_shapes
:w
-sequential_216/lstm_648/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_216/lstm_648/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_216/lstm_648/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_216/lstm_648/strided_slice_1StridedSlice(sequential_216/lstm_648/Shape_1:output:06sequential_216/lstm_648/strided_slice_1/stack:output:08sequential_216/lstm_648/strided_slice_1/stack_1:output:08sequential_216/lstm_648/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_216/lstm_648/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_216/lstm_648/TensorArrayV2TensorListReserve<sequential_216/lstm_648/TensorArrayV2/element_shape:output:00sequential_216/lstm_648/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_216/lstm_648/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_216/lstm_648/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_216/lstm_648/transpose:y:0Vsequential_216/lstm_648/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_216/lstm_648/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_216/lstm_648/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_216/lstm_648/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_216/lstm_648/strided_slice_2StridedSlice%sequential_216/lstm_648/transpose:y:06sequential_216/lstm_648/strided_slice_2/stack:output:08sequential_216/lstm_648/strided_slice_2/stack_1:output:08sequential_216/lstm_648/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_216/lstm_648/lstm_cell_648/MatMul/ReadVariableOpReadVariableOpDsequential_216_lstm_648_lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_216/lstm_648/lstm_cell_648/MatMulMatMul0sequential_216/lstm_648/strided_slice_2:output:0Csequential_216/lstm_648/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_216/lstm_648/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOpFsequential_216_lstm_648_lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_216/lstm_648/lstm_cell_648/MatMul_1MatMul&sequential_216/lstm_648/zeros:output:0Esequential_216/lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_216/lstm_648/lstm_cell_648/addAddV26sequential_216/lstm_648/lstm_cell_648/MatMul:product:08sequential_216/lstm_648/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_216/lstm_648/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOpEsequential_216_lstm_648_lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_216/lstm_648/lstm_cell_648/BiasAddBiasAdd-sequential_216/lstm_648/lstm_cell_648/add:z:0Dsequential_216/lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_216/lstm_648/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_216/lstm_648/lstm_cell_648/splitSplit>sequential_216/lstm_648/lstm_cell_648/split/split_dim:output:06sequential_216/lstm_648/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_216/lstm_648/lstm_cell_648/SigmoidSigmoid4sequential_216/lstm_648/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_216/lstm_648/lstm_cell_648/Sigmoid_1Sigmoid4sequential_216/lstm_648/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_216/lstm_648/lstm_cell_648/mulMul3sequential_216/lstm_648/lstm_cell_648/Sigmoid_1:y:0(sequential_216/lstm_648/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_216/lstm_648/lstm_cell_648/ReluRelu4sequential_216/lstm_648/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_216/lstm_648/lstm_cell_648/mul_1Mul1sequential_216/lstm_648/lstm_cell_648/Sigmoid:y:08sequential_216/lstm_648/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_216/lstm_648/lstm_cell_648/add_1AddV2-sequential_216/lstm_648/lstm_cell_648/mul:z:0/sequential_216/lstm_648/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_216/lstm_648/lstm_cell_648/Sigmoid_2Sigmoid4sequential_216/lstm_648/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_216/lstm_648/lstm_cell_648/Relu_1Relu/sequential_216/lstm_648/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_216/lstm_648/lstm_cell_648/mul_2Mul3sequential_216/lstm_648/lstm_cell_648/Sigmoid_2:y:0:sequential_216/lstm_648/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_216/lstm_648/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_216/lstm_648/TensorArrayV2_1TensorListReserve>sequential_216/lstm_648/TensorArrayV2_1/element_shape:output:00sequential_216/lstm_648/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_216/lstm_648/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_216/lstm_648/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_216/lstm_648/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_216/lstm_648/whileWhile3sequential_216/lstm_648/while/loop_counter:output:09sequential_216/lstm_648/while/maximum_iterations:output:0%sequential_216/lstm_648/time:output:00sequential_216/lstm_648/TensorArrayV2_1:handle:0&sequential_216/lstm_648/zeros:output:0(sequential_216/lstm_648/zeros_1:output:00sequential_216/lstm_648/strided_slice_1:output:0Osequential_216/lstm_648/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_216_lstm_648_lstm_cell_648_matmul_readvariableop_resourceFsequential_216_lstm_648_lstm_cell_648_matmul_1_readvariableop_resourceEsequential_216_lstm_648_lstm_cell_648_biasadd_readvariableop_resource*
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
*sequential_216_lstm_648_while_body_4145314*6
cond.R,
*sequential_216_lstm_648_while_cond_4145313*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_216/lstm_648/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_216/lstm_648/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_216/lstm_648/while:output:3Qsequential_216/lstm_648/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_216/lstm_648/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_216/lstm_648/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_216/lstm_648/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_216/lstm_648/strided_slice_3StridedSliceCsequential_216/lstm_648/TensorArrayV2Stack/TensorListStack:tensor:06sequential_216/lstm_648/strided_slice_3/stack:output:08sequential_216/lstm_648/strided_slice_3/stack_1:output:08sequential_216/lstm_648/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_216/lstm_648/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_216/lstm_648/transpose_1	TransposeCsequential_216/lstm_648/TensorArrayV2Stack/TensorListStack:tensor:01sequential_216/lstm_648/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_216/lstm_648/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_216/lstm_649/ShapeShape'sequential_216/lstm_648/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_216/lstm_649/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_216/lstm_649/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_216/lstm_649/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_216/lstm_649/strided_sliceStridedSlice&sequential_216/lstm_649/Shape:output:04sequential_216/lstm_649/strided_slice/stack:output:06sequential_216/lstm_649/strided_slice/stack_1:output:06sequential_216/lstm_649/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_216/lstm_649/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_216/lstm_649/zeros/packedPack.sequential_216/lstm_649/strided_slice:output:0/sequential_216/lstm_649/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_216/lstm_649/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_216/lstm_649/zerosFill-sequential_216/lstm_649/zeros/packed:output:0,sequential_216/lstm_649/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_216/lstm_649/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_216/lstm_649/zeros_1/packedPack.sequential_216/lstm_649/strided_slice:output:01sequential_216/lstm_649/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_216/lstm_649/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_216/lstm_649/zeros_1Fill/sequential_216/lstm_649/zeros_1/packed:output:0.sequential_216/lstm_649/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_216/lstm_649/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_216/lstm_649/transpose	Transpose'sequential_216/lstm_648/transpose_1:y:0/sequential_216/lstm_649/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_216/lstm_649/Shape_1Shape%sequential_216/lstm_649/transpose:y:0*
T0*
_output_shapes
:w
-sequential_216/lstm_649/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_216/lstm_649/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_216/lstm_649/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_216/lstm_649/strided_slice_1StridedSlice(sequential_216/lstm_649/Shape_1:output:06sequential_216/lstm_649/strided_slice_1/stack:output:08sequential_216/lstm_649/strided_slice_1/stack_1:output:08sequential_216/lstm_649/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_216/lstm_649/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_216/lstm_649/TensorArrayV2TensorListReserve<sequential_216/lstm_649/TensorArrayV2/element_shape:output:00sequential_216/lstm_649/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_216/lstm_649/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_216/lstm_649/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_216/lstm_649/transpose:y:0Vsequential_216/lstm_649/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_216/lstm_649/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_216/lstm_649/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_216/lstm_649/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_216/lstm_649/strided_slice_2StridedSlice%sequential_216/lstm_649/transpose:y:06sequential_216/lstm_649/strided_slice_2/stack:output:08sequential_216/lstm_649/strided_slice_2/stack_1:output:08sequential_216/lstm_649/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_216/lstm_649/lstm_cell_649/MatMul/ReadVariableOpReadVariableOpDsequential_216_lstm_649_lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_216/lstm_649/lstm_cell_649/MatMulMatMul0sequential_216/lstm_649/strided_slice_2:output:0Csequential_216/lstm_649/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_216/lstm_649/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOpFsequential_216_lstm_649_lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_216/lstm_649/lstm_cell_649/MatMul_1MatMul&sequential_216/lstm_649/zeros:output:0Esequential_216/lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_216/lstm_649/lstm_cell_649/addAddV26sequential_216/lstm_649/lstm_cell_649/MatMul:product:08sequential_216/lstm_649/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_216/lstm_649/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOpEsequential_216_lstm_649_lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_216/lstm_649/lstm_cell_649/BiasAddBiasAdd-sequential_216/lstm_649/lstm_cell_649/add:z:0Dsequential_216/lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_216/lstm_649/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_216/lstm_649/lstm_cell_649/splitSplit>sequential_216/lstm_649/lstm_cell_649/split/split_dim:output:06sequential_216/lstm_649/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_216/lstm_649/lstm_cell_649/SigmoidSigmoid4sequential_216/lstm_649/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_216/lstm_649/lstm_cell_649/Sigmoid_1Sigmoid4sequential_216/lstm_649/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_216/lstm_649/lstm_cell_649/mulMul3sequential_216/lstm_649/lstm_cell_649/Sigmoid_1:y:0(sequential_216/lstm_649/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_216/lstm_649/lstm_cell_649/ReluRelu4sequential_216/lstm_649/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_216/lstm_649/lstm_cell_649/mul_1Mul1sequential_216/lstm_649/lstm_cell_649/Sigmoid:y:08sequential_216/lstm_649/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_216/lstm_649/lstm_cell_649/add_1AddV2-sequential_216/lstm_649/lstm_cell_649/mul:z:0/sequential_216/lstm_649/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_216/lstm_649/lstm_cell_649/Sigmoid_2Sigmoid4sequential_216/lstm_649/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_216/lstm_649/lstm_cell_649/Relu_1Relu/sequential_216/lstm_649/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_216/lstm_649/lstm_cell_649/mul_2Mul3sequential_216/lstm_649/lstm_cell_649/Sigmoid_2:y:0:sequential_216/lstm_649/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_216/lstm_649/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_216/lstm_649/TensorArrayV2_1TensorListReserve>sequential_216/lstm_649/TensorArrayV2_1/element_shape:output:00sequential_216/lstm_649/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_216/lstm_649/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_216/lstm_649/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_216/lstm_649/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_216/lstm_649/whileWhile3sequential_216/lstm_649/while/loop_counter:output:09sequential_216/lstm_649/while/maximum_iterations:output:0%sequential_216/lstm_649/time:output:00sequential_216/lstm_649/TensorArrayV2_1:handle:0&sequential_216/lstm_649/zeros:output:0(sequential_216/lstm_649/zeros_1:output:00sequential_216/lstm_649/strided_slice_1:output:0Osequential_216/lstm_649/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_216_lstm_649_lstm_cell_649_matmul_readvariableop_resourceFsequential_216_lstm_649_lstm_cell_649_matmul_1_readvariableop_resourceEsequential_216_lstm_649_lstm_cell_649_biasadd_readvariableop_resource*
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
*sequential_216_lstm_649_while_body_4145453*6
cond.R,
*sequential_216_lstm_649_while_cond_4145452*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_216/lstm_649/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_216/lstm_649/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_216/lstm_649/while:output:3Qsequential_216/lstm_649/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_216/lstm_649/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_216/lstm_649/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_216/lstm_649/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_216/lstm_649/strided_slice_3StridedSliceCsequential_216/lstm_649/TensorArrayV2Stack/TensorListStack:tensor:06sequential_216/lstm_649/strided_slice_3/stack:output:08sequential_216/lstm_649/strided_slice_3/stack_1:output:08sequential_216/lstm_649/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_216/lstm_649/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_216/lstm_649/transpose_1	TransposeCsequential_216/lstm_649/TensorArrayV2Stack/TensorListStack:tensor:01sequential_216/lstm_649/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_216/lstm_649/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_216/lstm_650/ShapeShape'sequential_216/lstm_649/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_216/lstm_650/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_216/lstm_650/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_216/lstm_650/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_216/lstm_650/strided_sliceStridedSlice&sequential_216/lstm_650/Shape:output:04sequential_216/lstm_650/strided_slice/stack:output:06sequential_216/lstm_650/strided_slice/stack_1:output:06sequential_216/lstm_650/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_216/lstm_650/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_216/lstm_650/zeros/packedPack.sequential_216/lstm_650/strided_slice:output:0/sequential_216/lstm_650/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_216/lstm_650/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_216/lstm_650/zerosFill-sequential_216/lstm_650/zeros/packed:output:0,sequential_216/lstm_650/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_216/lstm_650/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_216/lstm_650/zeros_1/packedPack.sequential_216/lstm_650/strided_slice:output:01sequential_216/lstm_650/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_216/lstm_650/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_216/lstm_650/zeros_1Fill/sequential_216/lstm_650/zeros_1/packed:output:0.sequential_216/lstm_650/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_216/lstm_650/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_216/lstm_650/transpose	Transpose'sequential_216/lstm_649/transpose_1:y:0/sequential_216/lstm_650/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_216/lstm_650/Shape_1Shape%sequential_216/lstm_650/transpose:y:0*
T0*
_output_shapes
:w
-sequential_216/lstm_650/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_216/lstm_650/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_216/lstm_650/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_216/lstm_650/strided_slice_1StridedSlice(sequential_216/lstm_650/Shape_1:output:06sequential_216/lstm_650/strided_slice_1/stack:output:08sequential_216/lstm_650/strided_slice_1/stack_1:output:08sequential_216/lstm_650/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_216/lstm_650/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_216/lstm_650/TensorArrayV2TensorListReserve<sequential_216/lstm_650/TensorArrayV2/element_shape:output:00sequential_216/lstm_650/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_216/lstm_650/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_216/lstm_650/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_216/lstm_650/transpose:y:0Vsequential_216/lstm_650/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_216/lstm_650/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_216/lstm_650/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_216/lstm_650/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_216/lstm_650/strided_slice_2StridedSlice%sequential_216/lstm_650/transpose:y:06sequential_216/lstm_650/strided_slice_2/stack:output:08sequential_216/lstm_650/strided_slice_2/stack_1:output:08sequential_216/lstm_650/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_216/lstm_650/lstm_cell_650/MatMul/ReadVariableOpReadVariableOpDsequential_216_lstm_650_lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_216/lstm_650/lstm_cell_650/MatMulMatMul0sequential_216/lstm_650/strided_slice_2:output:0Csequential_216/lstm_650/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_216/lstm_650/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOpFsequential_216_lstm_650_lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_216/lstm_650/lstm_cell_650/MatMul_1MatMul&sequential_216/lstm_650/zeros:output:0Esequential_216/lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_216/lstm_650/lstm_cell_650/addAddV26sequential_216/lstm_650/lstm_cell_650/MatMul:product:08sequential_216/lstm_650/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_216/lstm_650/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOpEsequential_216_lstm_650_lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_216/lstm_650/lstm_cell_650/BiasAddBiasAdd-sequential_216/lstm_650/lstm_cell_650/add:z:0Dsequential_216/lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_216/lstm_650/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_216/lstm_650/lstm_cell_650/splitSplit>sequential_216/lstm_650/lstm_cell_650/split/split_dim:output:06sequential_216/lstm_650/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_216/lstm_650/lstm_cell_650/SigmoidSigmoid4sequential_216/lstm_650/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_216/lstm_650/lstm_cell_650/Sigmoid_1Sigmoid4sequential_216/lstm_650/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_216/lstm_650/lstm_cell_650/mulMul3sequential_216/lstm_650/lstm_cell_650/Sigmoid_1:y:0(sequential_216/lstm_650/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_216/lstm_650/lstm_cell_650/ReluRelu4sequential_216/lstm_650/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_216/lstm_650/lstm_cell_650/mul_1Mul1sequential_216/lstm_650/lstm_cell_650/Sigmoid:y:08sequential_216/lstm_650/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_216/lstm_650/lstm_cell_650/add_1AddV2-sequential_216/lstm_650/lstm_cell_650/mul:z:0/sequential_216/lstm_650/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_216/lstm_650/lstm_cell_650/Sigmoid_2Sigmoid4sequential_216/lstm_650/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_216/lstm_650/lstm_cell_650/Relu_1Relu/sequential_216/lstm_650/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_216/lstm_650/lstm_cell_650/mul_2Mul3sequential_216/lstm_650/lstm_cell_650/Sigmoid_2:y:0:sequential_216/lstm_650/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_216/lstm_650/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_216/lstm_650/TensorArrayV2_1TensorListReserve>sequential_216/lstm_650/TensorArrayV2_1/element_shape:output:00sequential_216/lstm_650/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_216/lstm_650/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_216/lstm_650/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_216/lstm_650/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_216/lstm_650/whileWhile3sequential_216/lstm_650/while/loop_counter:output:09sequential_216/lstm_650/while/maximum_iterations:output:0%sequential_216/lstm_650/time:output:00sequential_216/lstm_650/TensorArrayV2_1:handle:0&sequential_216/lstm_650/zeros:output:0(sequential_216/lstm_650/zeros_1:output:00sequential_216/lstm_650/strided_slice_1:output:0Osequential_216/lstm_650/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_216_lstm_650_lstm_cell_650_matmul_readvariableop_resourceFsequential_216_lstm_650_lstm_cell_650_matmul_1_readvariableop_resourceEsequential_216_lstm_650_lstm_cell_650_biasadd_readvariableop_resource*
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
*sequential_216_lstm_650_while_body_4145592*6
cond.R,
*sequential_216_lstm_650_while_cond_4145591*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_216/lstm_650/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_216/lstm_650/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_216/lstm_650/while:output:3Qsequential_216/lstm_650/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_216/lstm_650/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_216/lstm_650/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_216/lstm_650/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_216/lstm_650/strided_slice_3StridedSliceCsequential_216/lstm_650/TensorArrayV2Stack/TensorListStack:tensor:06sequential_216/lstm_650/strided_slice_3/stack:output:08sequential_216/lstm_650/strided_slice_3/stack_1:output:08sequential_216/lstm_650/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_216/lstm_650/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_216/lstm_650/transpose_1	TransposeCsequential_216/lstm_650/TensorArrayV2Stack/TensorListStack:tensor:01sequential_216/lstm_650/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_216/lstm_650/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_216/dense_216/MatMul/ReadVariableOpReadVariableOp7sequential_216_dense_216_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_216/dense_216/MatMulMatMul0sequential_216/lstm_650/strided_slice_3:output:06sequential_216/dense_216/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_216/dense_216/BiasAdd/ReadVariableOpReadVariableOp8sequential_216_dense_216_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_216/dense_216/BiasAddBiasAdd)sequential_216/dense_216/MatMul:product:07sequential_216/dense_216/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_216/dense_216/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_216/dense_216/BiasAdd/ReadVariableOp/^sequential_216/dense_216/MatMul/ReadVariableOp=^sequential_216/lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp<^sequential_216/lstm_648/lstm_cell_648/MatMul/ReadVariableOp>^sequential_216/lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp^sequential_216/lstm_648/while=^sequential_216/lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp<^sequential_216/lstm_649/lstm_cell_649/MatMul/ReadVariableOp>^sequential_216/lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp^sequential_216/lstm_649/while=^sequential_216/lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp<^sequential_216/lstm_650/lstm_cell_650/MatMul/ReadVariableOp>^sequential_216/lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp^sequential_216/lstm_650/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_216/dense_216/BiasAdd/ReadVariableOp/sequential_216/dense_216/BiasAdd/ReadVariableOp2`
.sequential_216/dense_216/MatMul/ReadVariableOp.sequential_216/dense_216/MatMul/ReadVariableOp2|
<sequential_216/lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp<sequential_216/lstm_648/lstm_cell_648/BiasAdd/ReadVariableOp2z
;sequential_216/lstm_648/lstm_cell_648/MatMul/ReadVariableOp;sequential_216/lstm_648/lstm_cell_648/MatMul/ReadVariableOp2~
=sequential_216/lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp=sequential_216/lstm_648/lstm_cell_648/MatMul_1/ReadVariableOp2>
sequential_216/lstm_648/whilesequential_216/lstm_648/while2|
<sequential_216/lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp<sequential_216/lstm_649/lstm_cell_649/BiasAdd/ReadVariableOp2z
;sequential_216/lstm_649/lstm_cell_649/MatMul/ReadVariableOp;sequential_216/lstm_649/lstm_cell_649/MatMul/ReadVariableOp2~
=sequential_216/lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp=sequential_216/lstm_649/lstm_cell_649/MatMul_1/ReadVariableOp2>
sequential_216/lstm_649/whilesequential_216/lstm_649/while2|
<sequential_216/lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp<sequential_216/lstm_650/lstm_cell_650/BiasAdd/ReadVariableOp2z
;sequential_216/lstm_650/lstm_cell_650/MatMul/ReadVariableOp;sequential_216/lstm_650/lstm_cell_650/MatMul/ReadVariableOp2~
=sequential_216/lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp=sequential_216/lstm_650/lstm_cell_650/MatMul_1/ReadVariableOp2>
sequential_216/lstm_650/whilesequential_216/lstm_650/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_648_input
?8
?
while_body_4147313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4146595

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
while_cond_4150470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4150470___redundant_placeholder05
1while_while_cond_4150470___redundant_placeholder15
1while_while_cond_4150470___redundant_placeholder25
1while_while_cond_4150470___redundant_placeholder3
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
/__inference_lstm_cell_648_layer_call_fn_4150751

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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4145895o
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
?
/__inference_lstm_cell_650_layer_call_fn_4150930

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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4146449o
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
while_body_4146113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_649_4146137_0:	d?0
while_lstm_cell_649_4146139_0:	2?,
while_lstm_cell_649_4146141_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_649_4146137:	d?.
while_lstm_cell_649_4146139:	2?*
while_lstm_cell_649_4146141:	???+while/lstm_cell_649/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_649/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_649_4146137_0while_lstm_cell_649_4146139_0while_lstm_cell_649_4146141_0*
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4146099?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_649/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_649/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_649/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_649/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_649_4146137while_lstm_cell_649_4146137_0"<
while_lstm_cell_649_4146139while_lstm_cell_649_4146139_0"<
while_lstm_cell_649_4146141while_lstm_cell_649_4146141_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_649/StatefulPartitionedCall+while/lstm_cell_649/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_648_layer_call_fn_4148861
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4145832|
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149323

inputs?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_4149239*
condR
while_cond_4149238*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4149095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4149095___redundant_placeholder05
1while_while_cond_4149095___redundant_placeholder15
1while_while_cond_4149095___redundant_placeholder25
1while_while_cond_4149095___redundant_placeholder3
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4145832

inputs(
lstm_cell_648_4145750:	?(
lstm_cell_648_4145752:	d?$
lstm_cell_648_4145754:	?
identity??%lstm_cell_648/StatefulPartitionedCall?while;
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
%lstm_cell_648/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_648_4145750lstm_cell_648_4145752lstm_cell_648_4145754*
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4145749n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_648_4145750lstm_cell_648_4145752lstm_cell_648_4145754*
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
while_body_4145763*
condR
while_cond_4145762*K
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
NoOpNoOp&^lstm_cell_648/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_648/StatefulPartitionedCall%lstm_cell_648/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_4149096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_648_layer_call_fn_4148872
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4146023|
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
0__inference_sequential_216_layer_call_fn_4147231
lstm_648_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_648_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147206o
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
_user_specified_namelstm_648_input
?
?
while_cond_4145762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4145762___redundant_placeholder05
1while_while_cond_4145762___redundant_placeholder15
1while_while_cond_4145762___redundant_placeholder25
1while_while_cond_4145762___redundant_placeholder3
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
*__inference_lstm_649_layer_call_fn_4149510

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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4147562s
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
while_body_4149569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_650_layer_call_fn_4150115

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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4147181o
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149180
inputs_0?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_4149096*
condR
while_cond_4149095*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_4149239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_649_layer_call_fn_4149477
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4146182|
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
?
E__inference_lstm_650_layer_call_and_return_conditional_losses_4146532

inputs'
lstm_cell_650_4146450:2('
lstm_cell_650_4146452:
(#
lstm_cell_650_4146454:(
identity??%lstm_cell_650/StatefulPartitionedCall?while;
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
%lstm_cell_650/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_650_4146450lstm_cell_650_4146452lstm_cell_650_4146454*
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4146449n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_650_4146450lstm_cell_650_4146452lstm_cell_650_4146454*
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
while_body_4146463*
condR
while_cond_4146462*K
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
NoOpNoOp&^lstm_cell_650/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_650/StatefulPartitionedCall%lstm_cell_650/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
lstm_648_while_cond_4148481.
*lstm_648_while_lstm_648_while_loop_counter4
0lstm_648_while_lstm_648_while_maximum_iterations
lstm_648_while_placeholder 
lstm_648_while_placeholder_1 
lstm_648_while_placeholder_2 
lstm_648_while_placeholder_30
,lstm_648_while_less_lstm_648_strided_slice_1G
Clstm_648_while_lstm_648_while_cond_4148481___redundant_placeholder0G
Clstm_648_while_lstm_648_while_cond_4148481___redundant_placeholder1G
Clstm_648_while_lstm_648_while_cond_4148481___redundant_placeholder2G
Clstm_648_while_lstm_648_while_cond_4148481___redundant_placeholder3
lstm_648_while_identity
?
lstm_648/while/LessLesslstm_648_while_placeholder,lstm_648_while_less_lstm_648_strided_slice_1*
T0*
_output_shapes
: ]
lstm_648/while/IdentityIdentitylstm_648/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_648_while_identity lstm_648/while/Identity:output:0*(
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
*sequential_216_lstm_648_while_body_4145314L
Hsequential_216_lstm_648_while_sequential_216_lstm_648_while_loop_counterR
Nsequential_216_lstm_648_while_sequential_216_lstm_648_while_maximum_iterations-
)sequential_216_lstm_648_while_placeholder/
+sequential_216_lstm_648_while_placeholder_1/
+sequential_216_lstm_648_while_placeholder_2/
+sequential_216_lstm_648_while_placeholder_3K
Gsequential_216_lstm_648_while_sequential_216_lstm_648_strided_slice_1_0?
?sequential_216_lstm_648_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_648_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_216_lstm_648_while_lstm_cell_648_matmul_readvariableop_resource_0:	?a
Nsequential_216_lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?\
Msequential_216_lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource_0:	?*
&sequential_216_lstm_648_while_identity,
(sequential_216_lstm_648_while_identity_1,
(sequential_216_lstm_648_while_identity_2,
(sequential_216_lstm_648_while_identity_3,
(sequential_216_lstm_648_while_identity_4,
(sequential_216_lstm_648_while_identity_5I
Esequential_216_lstm_648_while_sequential_216_lstm_648_strided_slice_1?
?sequential_216_lstm_648_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_648_tensorarrayunstack_tensorlistfromtensor]
Jsequential_216_lstm_648_while_lstm_cell_648_matmul_readvariableop_resource:	?_
Lsequential_216_lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource:	d?Z
Ksequential_216_lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource:	???Bsequential_216/lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp?Asequential_216/lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp?Csequential_216/lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp?
Osequential_216/lstm_648/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_216/lstm_648/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_216_lstm_648_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_648_tensorarrayunstack_tensorlistfromtensor_0)sequential_216_lstm_648_while_placeholderXsequential_216/lstm_648/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_216/lstm_648/while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOpLsequential_216_lstm_648_while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_216/lstm_648/while/lstm_cell_648/MatMulMatMulHsequential_216/lstm_648/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_216/lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_216/lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOpNsequential_216_lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_216/lstm_648/while/lstm_cell_648/MatMul_1MatMul+sequential_216_lstm_648_while_placeholder_2Ksequential_216/lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_216/lstm_648/while/lstm_cell_648/addAddV2<sequential_216/lstm_648/while/lstm_cell_648/MatMul:product:0>sequential_216/lstm_648/while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_216/lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOpMsequential_216_lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_216/lstm_648/while/lstm_cell_648/BiasAddBiasAdd3sequential_216/lstm_648/while/lstm_cell_648/add:z:0Jsequential_216/lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_216/lstm_648/while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_216/lstm_648/while/lstm_cell_648/splitSplitDsequential_216/lstm_648/while/lstm_cell_648/split/split_dim:output:0<sequential_216/lstm_648/while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_216/lstm_648/while/lstm_cell_648/SigmoidSigmoid:sequential_216/lstm_648/while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_216/lstm_648/while/lstm_cell_648/Sigmoid_1Sigmoid:sequential_216/lstm_648/while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_216/lstm_648/while/lstm_cell_648/mulMul9sequential_216/lstm_648/while/lstm_cell_648/Sigmoid_1:y:0+sequential_216_lstm_648_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_216/lstm_648/while/lstm_cell_648/ReluRelu:sequential_216/lstm_648/while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_216/lstm_648/while/lstm_cell_648/mul_1Mul7sequential_216/lstm_648/while/lstm_cell_648/Sigmoid:y:0>sequential_216/lstm_648/while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_216/lstm_648/while/lstm_cell_648/add_1AddV23sequential_216/lstm_648/while/lstm_cell_648/mul:z:05sequential_216/lstm_648/while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_216/lstm_648/while/lstm_cell_648/Sigmoid_2Sigmoid:sequential_216/lstm_648/while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_216/lstm_648/while/lstm_cell_648/Relu_1Relu5sequential_216/lstm_648/while/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_216/lstm_648/while/lstm_cell_648/mul_2Mul9sequential_216/lstm_648/while/lstm_cell_648/Sigmoid_2:y:0@sequential_216/lstm_648/while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_216/lstm_648/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_216_lstm_648_while_placeholder_1)sequential_216_lstm_648_while_placeholder5sequential_216/lstm_648/while/lstm_cell_648/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_216/lstm_648/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_216/lstm_648/while/addAddV2)sequential_216_lstm_648_while_placeholder,sequential_216/lstm_648/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_216/lstm_648/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_216/lstm_648/while/add_1AddV2Hsequential_216_lstm_648_while_sequential_216_lstm_648_while_loop_counter.sequential_216/lstm_648/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_216/lstm_648/while/IdentityIdentity'sequential_216/lstm_648/while/add_1:z:0#^sequential_216/lstm_648/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_648/while/Identity_1IdentityNsequential_216_lstm_648_while_sequential_216_lstm_648_while_maximum_iterations#^sequential_216/lstm_648/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_648/while/Identity_2Identity%sequential_216/lstm_648/while/add:z:0#^sequential_216/lstm_648/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_648/while/Identity_3IdentityRsequential_216/lstm_648/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_216/lstm_648/while/NoOp*
T0*
_output_shapes
: ?
(sequential_216/lstm_648/while/Identity_4Identity5sequential_216/lstm_648/while/lstm_cell_648/mul_2:z:0#^sequential_216/lstm_648/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_216/lstm_648/while/Identity_5Identity5sequential_216/lstm_648/while/lstm_cell_648/add_1:z:0#^sequential_216/lstm_648/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_216/lstm_648/while/NoOpNoOpC^sequential_216/lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOpB^sequential_216/lstm_648/while/lstm_cell_648/MatMul/ReadVariableOpD^sequential_216/lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_216_lstm_648_while_identity/sequential_216/lstm_648/while/Identity:output:0"]
(sequential_216_lstm_648_while_identity_11sequential_216/lstm_648/while/Identity_1:output:0"]
(sequential_216_lstm_648_while_identity_21sequential_216/lstm_648/while/Identity_2:output:0"]
(sequential_216_lstm_648_while_identity_31sequential_216/lstm_648/while/Identity_3:output:0"]
(sequential_216_lstm_648_while_identity_41sequential_216/lstm_648/while/Identity_4:output:0"]
(sequential_216_lstm_648_while_identity_51sequential_216/lstm_648/while/Identity_5:output:0"?
Ksequential_216_lstm_648_while_lstm_cell_648_biasadd_readvariableop_resourceMsequential_216_lstm_648_while_lstm_cell_648_biasadd_readvariableop_resource_0"?
Lsequential_216_lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resourceNsequential_216_lstm_648_while_lstm_cell_648_matmul_1_readvariableop_resource_0"?
Jsequential_216_lstm_648_while_lstm_cell_648_matmul_readvariableop_resourceLsequential_216_lstm_648_while_lstm_cell_648_matmul_readvariableop_resource_0"?
Esequential_216_lstm_648_while_sequential_216_lstm_648_strided_slice_1Gsequential_216_lstm_648_while_sequential_216_lstm_648_strided_slice_1_0"?
?sequential_216_lstm_648_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_648_tensorarrayunstack_tensorlistfromtensor?sequential_216_lstm_648_while_tensorarrayv2read_tensorlistgetitem_sequential_216_lstm_648_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_216/lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOpBsequential_216/lstm_648/while/lstm_cell_648/BiasAdd/ReadVariableOp2?
Asequential_216/lstm_648/while/lstm_cell_648/MatMul/ReadVariableOpAsequential_216/lstm_648/while/lstm_cell_648/MatMul/ReadVariableOp2?
Csequential_216/lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOpCsequential_216/lstm_648/while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_650_layer_call_fn_4150093
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4146532o
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
*__inference_lstm_648_layer_call_fn_4148894

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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4147727s
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
lstm_648_input;
 serving_default_lstm_648_input:0?????????=
	dense_2160
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
2dense_216/kernel
:2dense_216/bias
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
0:.	?2lstm_648/lstm_cell_648/kernel
::8	d?2'lstm_648/lstm_cell_648/recurrent_kernel
*:(?2lstm_648/lstm_cell_648/bias
0:.	d?2lstm_649/lstm_cell_649/kernel
::8	2?2'lstm_649/lstm_cell_649/recurrent_kernel
*:(?2lstm_649/lstm_cell_649/bias
/:-2(2lstm_650/lstm_cell_650/kernel
9:7
(2'lstm_650/lstm_cell_650/recurrent_kernel
):'(2lstm_650/lstm_cell_650/bias
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
2Adam/dense_216/kernel/m
!:2Adam/dense_216/bias/m
5:3	?2$Adam/lstm_648/lstm_cell_648/kernel/m
?:=	d?2.Adam/lstm_648/lstm_cell_648/recurrent_kernel/m
/:-?2"Adam/lstm_648/lstm_cell_648/bias/m
5:3	d?2$Adam/lstm_649/lstm_cell_649/kernel/m
?:=	2?2.Adam/lstm_649/lstm_cell_649/recurrent_kernel/m
/:-?2"Adam/lstm_649/lstm_cell_649/bias/m
4:22(2$Adam/lstm_650/lstm_cell_650/kernel/m
>:<
(2.Adam/lstm_650/lstm_cell_650/recurrent_kernel/m
.:,(2"Adam/lstm_650/lstm_cell_650/bias/m
':%
2Adam/dense_216/kernel/v
!:2Adam/dense_216/bias/v
5:3	?2$Adam/lstm_648/lstm_cell_648/kernel/v
?:=	d?2.Adam/lstm_648/lstm_cell_648/recurrent_kernel/v
/:-?2"Adam/lstm_648/lstm_cell_648/bias/v
5:3	d?2$Adam/lstm_649/lstm_cell_649/kernel/v
?:=	2?2.Adam/lstm_649/lstm_cell_649/recurrent_kernel/v
/:-?2"Adam/lstm_649/lstm_cell_649/bias/v
4:22(2$Adam/lstm_650/lstm_cell_650/kernel/v
>:<
(2.Adam/lstm_650/lstm_cell_650/recurrent_kernel/v
.:,(2"Adam/lstm_650/lstm_cell_650/bias/v
?2?
0__inference_sequential_216_layer_call_fn_4147231
0__inference_sequential_216_layer_call_fn_4147969
0__inference_sequential_216_layer_call_fn_4147996
0__inference_sequential_216_layer_call_fn_4147847?
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
K__inference_sequential_216_layer_call_and_return_conditional_losses_4148423
K__inference_sequential_216_layer_call_and_return_conditional_losses_4148850
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147877
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147907?
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
"__inference__wrapped_model_4145682lstm_648_input"?
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
*__inference_lstm_648_layer_call_fn_4148861
*__inference_lstm_648_layer_call_fn_4148872
*__inference_lstm_648_layer_call_fn_4148883
*__inference_lstm_648_layer_call_fn_4148894?
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149037
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149180
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149323
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149466?
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
*__inference_lstm_649_layer_call_fn_4149477
*__inference_lstm_649_layer_call_fn_4149488
*__inference_lstm_649_layer_call_fn_4149499
*__inference_lstm_649_layer_call_fn_4149510?
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4149653
E__inference_lstm_649_layer_call_and_return_conditional_losses_4149796
E__inference_lstm_649_layer_call_and_return_conditional_losses_4149939
E__inference_lstm_649_layer_call_and_return_conditional_losses_4150082?
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
*__inference_lstm_650_layer_call_fn_4150093
*__inference_lstm_650_layer_call_fn_4150104
*__inference_lstm_650_layer_call_fn_4150115
*__inference_lstm_650_layer_call_fn_4150126?
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150269
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150412
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150555
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150698?
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
+__inference_dense_216_layer_call_fn_4150707?
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
F__inference_dense_216_layer_call_and_return_conditional_losses_4150717?
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
%__inference_signature_wrapper_4147942lstm_648_input"?
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
/__inference_lstm_cell_648_layer_call_fn_4150734
/__inference_lstm_cell_648_layer_call_fn_4150751?
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4150783
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4150815?
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
/__inference_lstm_cell_649_layer_call_fn_4150832
/__inference_lstm_cell_649_layer_call_fn_4150849?
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4150881
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4150913?
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
/__inference_lstm_cell_650_layer_call_fn_4150930
/__inference_lstm_cell_650_layer_call_fn_4150947?
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4150979
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4151011?
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
"__inference__wrapped_model_4145682?()*+,-./0;?8
1?.
,?)
lstm_648_input?????????
? "5?2
0
	dense_216#? 
	dense_216??????????
F__inference_dense_216_layer_call_and_return_conditional_losses_4150717\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_216_layer_call_fn_4150707O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149037?()*O?L
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149180?()*O?L
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149323q()*??<
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
E__inference_lstm_648_layer_call_and_return_conditional_losses_4149466q()*??<
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
*__inference_lstm_648_layer_call_fn_4148861}()*O?L
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
*__inference_lstm_648_layer_call_fn_4148872}()*O?L
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
*__inference_lstm_648_layer_call_fn_4148883d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_648_layer_call_fn_4148894d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_649_layer_call_and_return_conditional_losses_4149653?+,-O?L
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4149796?+,-O?L
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4149939q+,-??<
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
E__inference_lstm_649_layer_call_and_return_conditional_losses_4150082q+,-??<
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
*__inference_lstm_649_layer_call_fn_4149477}+,-O?L
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
*__inference_lstm_649_layer_call_fn_4149488}+,-O?L
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
*__inference_lstm_649_layer_call_fn_4149499d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_649_layer_call_fn_4149510d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150269}./0O?L
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150412}./0O?L
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150555m./0??<
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
E__inference_lstm_650_layer_call_and_return_conditional_losses_4150698m./0??<
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
*__inference_lstm_650_layer_call_fn_4150093p./0O?L
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
*__inference_lstm_650_layer_call_fn_4150104p./0O?L
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
*__inference_lstm_650_layer_call_fn_4150115`./0??<
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
*__inference_lstm_650_layer_call_fn_4150126`./0??<
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4150783?()*??}
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_4150815?()*??}
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
/__inference_lstm_cell_648_layer_call_fn_4150734?()*??}
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
/__inference_lstm_cell_648_layer_call_fn_4150751?()*??}
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4150881?+,-??}
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_4150913?+,-??}
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
/__inference_lstm_cell_649_layer_call_fn_4150832?+,-??}
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
/__inference_lstm_cell_649_layer_call_fn_4150849?+,-??}
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4150979?./0??}
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_4151011?./0??}
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
/__inference_lstm_cell_650_layer_call_fn_4150930?./0??}
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
/__inference_lstm_cell_650_layer_call_fn_4150947?./0??}
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
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147877y()*+,-./0C?@
9?6
,?)
lstm_648_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_216_layer_call_and_return_conditional_losses_4147907y()*+,-./0C?@
9?6
,?)
lstm_648_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_216_layer_call_and_return_conditional_losses_4148423q()*+,-./0;?8
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
K__inference_sequential_216_layer_call_and_return_conditional_losses_4148850q()*+,-./0;?8
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
0__inference_sequential_216_layer_call_fn_4147231l()*+,-./0C?@
9?6
,?)
lstm_648_input?????????
p 

 
? "???????????
0__inference_sequential_216_layer_call_fn_4147847l()*+,-./0C?@
9?6
,?)
lstm_648_input?????????
p

 
? "???????????
0__inference_sequential_216_layer_call_fn_4147969d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_216_layer_call_fn_4147996d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4147942?()*+,-./0M?J
? 
C?@
>
lstm_648_input,?)
lstm_648_input?????????"5?2
0
	dense_216#? 
	dense_216?????????