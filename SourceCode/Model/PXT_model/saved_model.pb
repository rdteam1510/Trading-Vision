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
dense_257/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_257/kernel
u
$dense_257/kernel/Read/ReadVariableOpReadVariableOpdense_257/kernel*
_output_shapes

:
*
dtype0
t
dense_257/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_257/bias
m
"dense_257/bias/Read/ReadVariableOpReadVariableOpdense_257/bias*
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
lstm_771/lstm_cell_771/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_771/lstm_cell_771/kernel
?
1lstm_771/lstm_cell_771/kernel/Read/ReadVariableOpReadVariableOplstm_771/lstm_cell_771/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_771/lstm_cell_771/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_771/lstm_cell_771/recurrent_kernel
?
;lstm_771/lstm_cell_771/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_771/lstm_cell_771/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_771/lstm_cell_771/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_771/lstm_cell_771/bias
?
/lstm_771/lstm_cell_771/bias/Read/ReadVariableOpReadVariableOplstm_771/lstm_cell_771/bias*
_output_shapes	
:?*
dtype0
?
lstm_772/lstm_cell_772/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_772/lstm_cell_772/kernel
?
1lstm_772/lstm_cell_772/kernel/Read/ReadVariableOpReadVariableOplstm_772/lstm_cell_772/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_772/lstm_cell_772/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_772/lstm_cell_772/recurrent_kernel
?
;lstm_772/lstm_cell_772/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_772/lstm_cell_772/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_772/lstm_cell_772/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_772/lstm_cell_772/bias
?
/lstm_772/lstm_cell_772/bias/Read/ReadVariableOpReadVariableOplstm_772/lstm_cell_772/bias*
_output_shapes	
:?*
dtype0
?
lstm_773/lstm_cell_773/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_773/lstm_cell_773/kernel
?
1lstm_773/lstm_cell_773/kernel/Read/ReadVariableOpReadVariableOplstm_773/lstm_cell_773/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_773/lstm_cell_773/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_773/lstm_cell_773/recurrent_kernel
?
;lstm_773/lstm_cell_773/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_773/lstm_cell_773/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_773/lstm_cell_773/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_773/lstm_cell_773/bias
?
/lstm_773/lstm_cell_773/bias/Read/ReadVariableOpReadVariableOplstm_773/lstm_cell_773/bias*
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
Adam/dense_257/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_257/kernel/m
?
+Adam/dense_257/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_257/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_257/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_257/bias/m
{
)Adam/dense_257/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_257/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_771/lstm_cell_771/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_771/lstm_cell_771/kernel/m
?
8Adam/lstm_771/lstm_cell_771/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_771/lstm_cell_771/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_771/lstm_cell_771/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_771/lstm_cell_771/recurrent_kernel/m
?
BAdam/lstm_771/lstm_cell_771/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_771/lstm_cell_771/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_771/lstm_cell_771/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_771/lstm_cell_771/bias/m
?
6Adam/lstm_771/lstm_cell_771/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_771/lstm_cell_771/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_772/lstm_cell_772/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_772/lstm_cell_772/kernel/m
?
8Adam/lstm_772/lstm_cell_772/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_772/lstm_cell_772/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_772/lstm_cell_772/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_772/lstm_cell_772/recurrent_kernel/m
?
BAdam/lstm_772/lstm_cell_772/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_772/lstm_cell_772/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_772/lstm_cell_772/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_772/lstm_cell_772/bias/m
?
6Adam/lstm_772/lstm_cell_772/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_772/lstm_cell_772/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_773/lstm_cell_773/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_773/lstm_cell_773/kernel/m
?
8Adam/lstm_773/lstm_cell_773/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_773/lstm_cell_773/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_773/lstm_cell_773/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_773/lstm_cell_773/recurrent_kernel/m
?
BAdam/lstm_773/lstm_cell_773/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_773/lstm_cell_773/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_773/lstm_cell_773/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_773/lstm_cell_773/bias/m
?
6Adam/lstm_773/lstm_cell_773/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_773/lstm_cell_773/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_257/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_257/kernel/v
?
+Adam/dense_257/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_257/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_257/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_257/bias/v
{
)Adam/dense_257/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_257/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_771/lstm_cell_771/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_771/lstm_cell_771/kernel/v
?
8Adam/lstm_771/lstm_cell_771/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_771/lstm_cell_771/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_771/lstm_cell_771/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_771/lstm_cell_771/recurrent_kernel/v
?
BAdam/lstm_771/lstm_cell_771/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_771/lstm_cell_771/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_771/lstm_cell_771/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_771/lstm_cell_771/bias/v
?
6Adam/lstm_771/lstm_cell_771/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_771/lstm_cell_771/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_772/lstm_cell_772/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_772/lstm_cell_772/kernel/v
?
8Adam/lstm_772/lstm_cell_772/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_772/lstm_cell_772/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_772/lstm_cell_772/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_772/lstm_cell_772/recurrent_kernel/v
?
BAdam/lstm_772/lstm_cell_772/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_772/lstm_cell_772/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_772/lstm_cell_772/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_772/lstm_cell_772/bias/v
?
6Adam/lstm_772/lstm_cell_772/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_772/lstm_cell_772/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_773/lstm_cell_773/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_773/lstm_cell_773/kernel/v
?
8Adam/lstm_773/lstm_cell_773/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_773/lstm_cell_773/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_773/lstm_cell_773/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_773/lstm_cell_773/recurrent_kernel/v
?
BAdam/lstm_773/lstm_cell_773/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_773/lstm_cell_773/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_773/lstm_cell_773/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_773/lstm_cell_773/bias/v
?
6Adam/lstm_773/lstm_cell_773/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_773/lstm_cell_773/bias/v*
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
VARIABLE_VALUEdense_257/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_257/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_771/lstm_cell_771/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_771/lstm_cell_771/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_771/lstm_cell_771/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_772/lstm_cell_772/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_772/lstm_cell_772/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_772/lstm_cell_772/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_773/lstm_cell_773/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_773/lstm_cell_773/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_773/lstm_cell_773/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_257/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_257/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_771/lstm_cell_771/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_771/lstm_cell_771/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_771/lstm_cell_771/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_772/lstm_cell_772/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_772/lstm_cell_772/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_772/lstm_cell_772/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_773/lstm_cell_773/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_773/lstm_cell_773/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_773/lstm_cell_773/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_257/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_257/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_771/lstm_cell_771/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_771/lstm_cell_771/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_771/lstm_cell_771/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_772/lstm_cell_772/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_772/lstm_cell_772/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_772/lstm_cell_772/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_773/lstm_cell_773/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_773/lstm_cell_773/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_773/lstm_cell_773/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_771_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_771_inputlstm_771/lstm_cell_771/kernel'lstm_771/lstm_cell_771/recurrent_kernellstm_771/lstm_cell_771/biaslstm_772/lstm_cell_772/kernel'lstm_772/lstm_cell_772/recurrent_kernellstm_772/lstm_cell_772/biaslstm_773/lstm_cell_773/kernel'lstm_773/lstm_cell_773/recurrent_kernellstm_773/lstm_cell_773/biasdense_257/kerneldense_257/bias*
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
%__inference_signature_wrapper_4722714
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_257/kernel/Read/ReadVariableOp"dense_257/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_771/lstm_cell_771/kernel/Read/ReadVariableOp;lstm_771/lstm_cell_771/recurrent_kernel/Read/ReadVariableOp/lstm_771/lstm_cell_771/bias/Read/ReadVariableOp1lstm_772/lstm_cell_772/kernel/Read/ReadVariableOp;lstm_772/lstm_cell_772/recurrent_kernel/Read/ReadVariableOp/lstm_772/lstm_cell_772/bias/Read/ReadVariableOp1lstm_773/lstm_cell_773/kernel/Read/ReadVariableOp;lstm_773/lstm_cell_773/recurrent_kernel/Read/ReadVariableOp/lstm_773/lstm_cell_773/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_257/kernel/m/Read/ReadVariableOp)Adam/dense_257/bias/m/Read/ReadVariableOp8Adam/lstm_771/lstm_cell_771/kernel/m/Read/ReadVariableOpBAdam/lstm_771/lstm_cell_771/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_771/lstm_cell_771/bias/m/Read/ReadVariableOp8Adam/lstm_772/lstm_cell_772/kernel/m/Read/ReadVariableOpBAdam/lstm_772/lstm_cell_772/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_772/lstm_cell_772/bias/m/Read/ReadVariableOp8Adam/lstm_773/lstm_cell_773/kernel/m/Read/ReadVariableOpBAdam/lstm_773/lstm_cell_773/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_773/lstm_cell_773/bias/m/Read/ReadVariableOp+Adam/dense_257/kernel/v/Read/ReadVariableOp)Adam/dense_257/bias/v/Read/ReadVariableOp8Adam/lstm_771/lstm_cell_771/kernel/v/Read/ReadVariableOpBAdam/lstm_771/lstm_cell_771/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_771/lstm_cell_771/bias/v/Read/ReadVariableOp8Adam/lstm_772/lstm_cell_772/kernel/v/Read/ReadVariableOpBAdam/lstm_772/lstm_cell_772/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_772/lstm_cell_772/bias/v/Read/ReadVariableOp8Adam/lstm_773/lstm_cell_773/kernel/v/Read/ReadVariableOpBAdam/lstm_773/lstm_cell_773/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_773/lstm_cell_773/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4725926
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_257/kerneldense_257/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_771/lstm_cell_771/kernel'lstm_771/lstm_cell_771/recurrent_kernellstm_771/lstm_cell_771/biaslstm_772/lstm_cell_772/kernel'lstm_772/lstm_cell_772/recurrent_kernellstm_772/lstm_cell_772/biaslstm_773/lstm_cell_773/kernel'lstm_773/lstm_cell_773/recurrent_kernellstm_773/lstm_cell_773/biastotalcountAdam/dense_257/kernel/mAdam/dense_257/bias/m$Adam/lstm_771/lstm_cell_771/kernel/m.Adam/lstm_771/lstm_cell_771/recurrent_kernel/m"Adam/lstm_771/lstm_cell_771/bias/m$Adam/lstm_772/lstm_cell_772/kernel/m.Adam/lstm_772/lstm_cell_772/recurrent_kernel/m"Adam/lstm_772/lstm_cell_772/bias/m$Adam/lstm_773/lstm_cell_773/kernel/m.Adam/lstm_773/lstm_cell_773/recurrent_kernel/m"Adam/lstm_773/lstm_cell_773/bias/mAdam/dense_257/kernel/vAdam/dense_257/bias/v$Adam/lstm_771/lstm_cell_771/kernel/v.Adam/lstm_771/lstm_cell_771/recurrent_kernel/v"Adam/lstm_771/lstm_cell_771/bias/v$Adam/lstm_772/lstm_cell_772/kernel/v.Adam/lstm_772/lstm_cell_772/recurrent_kernel/v"Adam/lstm_772/lstm_cell_772/bias/v$Adam/lstm_773/lstm_cell_773/kernel/v.Adam/lstm_773/lstm_cell_773/recurrent_kernel/v"Adam/lstm_773/lstm_cell_773/bias/v*4
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
#__inference__traced_restore_4726056??+
?
?
while_cond_4721234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4721234___redundant_placeholder05
1while_while_cond_4721234___redundant_placeholder15
1while_while_cond_4721234___redundant_placeholder25
1while_while_cond_4721234___redundant_placeholder3
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
*__inference_lstm_772_layer_call_fn_4724282

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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4722334s
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

?
%__inference_signature_wrapper_4722714
lstm_771_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_771_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4720454o
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
_user_specified_namelstm_771_input
?
?
*__inference_lstm_772_layer_call_fn_4724249
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4720954|
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
while_cond_4724769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4724769___redundant_placeholder05
1while_while_cond_4724769___redundant_placeholder15
1while_while_cond_4724769___redundant_placeholder25
1while_while_cond_4724769___redundant_placeholder3
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
while_cond_4722414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4722414___redundant_placeholder05
1while_while_cond_4722414___redundant_placeholder15
1while_while_cond_4722414___redundant_placeholder25
1while_while_cond_4722414___redundant_placeholder3
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4720604

inputs(
lstm_cell_771_4720522:	?(
lstm_cell_771_4720524:	d?$
lstm_cell_771_4720526:	?
identity??%lstm_cell_771/StatefulPartitionedCall?while;
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
%lstm_cell_771/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_771_4720522lstm_cell_771_4720524lstm_cell_771_4720526*
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4720521n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_771_4720522lstm_cell_771_4720524lstm_cell_771_4720526*
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
while_body_4720535*
condR
while_cond_4720534*K
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
NoOpNoOp&^lstm_cell_771/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_771/StatefulPartitionedCall%lstm_cell_771/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4725926
file_prefix/
+savev2_dense_257_kernel_read_readvariableop-
)savev2_dense_257_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_771_lstm_cell_771_kernel_read_readvariableopF
Bsavev2_lstm_771_lstm_cell_771_recurrent_kernel_read_readvariableop:
6savev2_lstm_771_lstm_cell_771_bias_read_readvariableop<
8savev2_lstm_772_lstm_cell_772_kernel_read_readvariableopF
Bsavev2_lstm_772_lstm_cell_772_recurrent_kernel_read_readvariableop:
6savev2_lstm_772_lstm_cell_772_bias_read_readvariableop<
8savev2_lstm_773_lstm_cell_773_kernel_read_readvariableopF
Bsavev2_lstm_773_lstm_cell_773_recurrent_kernel_read_readvariableop:
6savev2_lstm_773_lstm_cell_773_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_257_kernel_m_read_readvariableop4
0savev2_adam_dense_257_bias_m_read_readvariableopC
?savev2_adam_lstm_771_lstm_cell_771_kernel_m_read_readvariableopM
Isavev2_adam_lstm_771_lstm_cell_771_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_771_lstm_cell_771_bias_m_read_readvariableopC
?savev2_adam_lstm_772_lstm_cell_772_kernel_m_read_readvariableopM
Isavev2_adam_lstm_772_lstm_cell_772_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_772_lstm_cell_772_bias_m_read_readvariableopC
?savev2_adam_lstm_773_lstm_cell_773_kernel_m_read_readvariableopM
Isavev2_adam_lstm_773_lstm_cell_773_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_773_lstm_cell_773_bias_m_read_readvariableop6
2savev2_adam_dense_257_kernel_v_read_readvariableop4
0savev2_adam_dense_257_bias_v_read_readvariableopC
?savev2_adam_lstm_771_lstm_cell_771_kernel_v_read_readvariableopM
Isavev2_adam_lstm_771_lstm_cell_771_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_771_lstm_cell_771_bias_v_read_readvariableopC
?savev2_adam_lstm_772_lstm_cell_772_kernel_v_read_readvariableopM
Isavev2_adam_lstm_772_lstm_cell_772_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_772_lstm_cell_772_bias_v_read_readvariableopC
?savev2_adam_lstm_773_lstm_cell_773_kernel_v_read_readvariableopM
Isavev2_adam_lstm_773_lstm_cell_773_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_773_lstm_cell_773_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_257_kernel_read_readvariableop)savev2_dense_257_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_771_lstm_cell_771_kernel_read_readvariableopBsavev2_lstm_771_lstm_cell_771_recurrent_kernel_read_readvariableop6savev2_lstm_771_lstm_cell_771_bias_read_readvariableop8savev2_lstm_772_lstm_cell_772_kernel_read_readvariableopBsavev2_lstm_772_lstm_cell_772_recurrent_kernel_read_readvariableop6savev2_lstm_772_lstm_cell_772_bias_read_readvariableop8savev2_lstm_773_lstm_cell_773_kernel_read_readvariableopBsavev2_lstm_773_lstm_cell_773_recurrent_kernel_read_readvariableop6savev2_lstm_773_lstm_cell_773_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_257_kernel_m_read_readvariableop0savev2_adam_dense_257_bias_m_read_readvariableop?savev2_adam_lstm_771_lstm_cell_771_kernel_m_read_readvariableopIsavev2_adam_lstm_771_lstm_cell_771_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_771_lstm_cell_771_bias_m_read_readvariableop?savev2_adam_lstm_772_lstm_cell_772_kernel_m_read_readvariableopIsavev2_adam_lstm_772_lstm_cell_772_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_772_lstm_cell_772_bias_m_read_readvariableop?savev2_adam_lstm_773_lstm_cell_773_kernel_m_read_readvariableopIsavev2_adam_lstm_773_lstm_cell_773_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_773_lstm_cell_773_bias_m_read_readvariableop2savev2_adam_dense_257_kernel_v_read_readvariableop0savev2_adam_dense_257_bias_v_read_readvariableop?savev2_adam_lstm_771_lstm_cell_771_kernel_v_read_readvariableopIsavev2_adam_lstm_771_lstm_cell_771_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_771_lstm_cell_771_bias_v_read_readvariableop?savev2_adam_lstm_772_lstm_cell_772_kernel_v_read_readvariableopIsavev2_adam_lstm_772_lstm_cell_772_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_772_lstm_cell_772_bias_v_read_readvariableop?savev2_adam_lstm_773_lstm_cell_773_kernel_v_read_readvariableopIsavev2_adam_lstm_773_lstm_cell_773_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_773_lstm_cell_773_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725327

inputs>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4725243*
condR
while_cond_4725242*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_4720726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_771_4720750_0:	?0
while_lstm_cell_771_4720752_0:	d?,
while_lstm_cell_771_4720754_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_771_4720750:	?.
while_lstm_cell_771_4720752:	d?*
while_lstm_cell_771_4720754:	???+while/lstm_cell_771/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_771/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_771_4720750_0while_lstm_cell_771_4720752_0while_lstm_cell_771_4720754_0*
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4720667?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_771/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_771/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_771/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_771/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_771_4720750while_lstm_cell_771_4720750_0"<
while_lstm_cell_771_4720752while_lstm_cell_771_4720752_0"<
while_lstm_cell_771_4720754while_lstm_cell_771_4720754_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_771/StatefulPartitionedCall+while/lstm_cell_771/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4725099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4725099___redundant_placeholder05
1while_while_cond_4725099___redundant_placeholder15
1while_while_cond_4725099___redundant_placeholder25
1while_while_cond_4725099___redundant_placeholder3
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

lstm_773_while_body_4723105.
*lstm_773_while_lstm_773_while_loop_counter4
0lstm_773_while_lstm_773_while_maximum_iterations
lstm_773_while_placeholder 
lstm_773_while_placeholder_1 
lstm_773_while_placeholder_2 
lstm_773_while_placeholder_3-
)lstm_773_while_lstm_773_strided_slice_1_0i
elstm_773_while_tensorarrayv2read_tensorlistgetitem_lstm_773_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_773_while_lstm_cell_773_matmul_readvariableop_resource_0:2(Q
?lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(L
>lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource_0:(
lstm_773_while_identity
lstm_773_while_identity_1
lstm_773_while_identity_2
lstm_773_while_identity_3
lstm_773_while_identity_4
lstm_773_while_identity_5+
'lstm_773_while_lstm_773_strided_slice_1g
clstm_773_while_tensorarrayv2read_tensorlistgetitem_lstm_773_tensorarrayunstack_tensorlistfromtensorM
;lstm_773_while_lstm_cell_773_matmul_readvariableop_resource:2(O
=lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource:
(J
<lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource:(??3lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp?2lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp?4lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp?
@lstm_773/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_773/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_773_while_tensorarrayv2read_tensorlistgetitem_lstm_773_tensorarrayunstack_tensorlistfromtensor_0lstm_773_while_placeholderIlstm_773/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_773/while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp=lstm_773_while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_773/while/lstm_cell_773/MatMulMatMul9lstm_773/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp?lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_773/while/lstm_cell_773/MatMul_1MatMullstm_773_while_placeholder_2<lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_773/while/lstm_cell_773/addAddV2-lstm_773/while/lstm_cell_773/MatMul:product:0/lstm_773/while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp>lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_773/while/lstm_cell_773/BiasAddBiasAdd$lstm_773/while/lstm_cell_773/add:z:0;lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_773/while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_773/while/lstm_cell_773/splitSplit5lstm_773/while/lstm_cell_773/split/split_dim:output:0-lstm_773/while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_773/while/lstm_cell_773/SigmoidSigmoid+lstm_773/while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_773/while/lstm_cell_773/Sigmoid_1Sigmoid+lstm_773/while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_773/while/lstm_cell_773/mulMul*lstm_773/while/lstm_cell_773/Sigmoid_1:y:0lstm_773_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_773/while/lstm_cell_773/ReluRelu+lstm_773/while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_773/while/lstm_cell_773/mul_1Mul(lstm_773/while/lstm_cell_773/Sigmoid:y:0/lstm_773/while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_773/while/lstm_cell_773/add_1AddV2$lstm_773/while/lstm_cell_773/mul:z:0&lstm_773/while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_773/while/lstm_cell_773/Sigmoid_2Sigmoid+lstm_773/while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_773/while/lstm_cell_773/Relu_1Relu&lstm_773/while/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_773/while/lstm_cell_773/mul_2Mul*lstm_773/while/lstm_cell_773/Sigmoid_2:y:01lstm_773/while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_773/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_773_while_placeholder_1lstm_773_while_placeholder&lstm_773/while/lstm_cell_773/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_773/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_773/while/addAddV2lstm_773_while_placeholderlstm_773/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_773/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_773/while/add_1AddV2*lstm_773_while_lstm_773_while_loop_counterlstm_773/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_773/while/IdentityIdentitylstm_773/while/add_1:z:0^lstm_773/while/NoOp*
T0*
_output_shapes
: ?
lstm_773/while/Identity_1Identity0lstm_773_while_lstm_773_while_maximum_iterations^lstm_773/while/NoOp*
T0*
_output_shapes
: t
lstm_773/while/Identity_2Identitylstm_773/while/add:z:0^lstm_773/while/NoOp*
T0*
_output_shapes
: ?
lstm_773/while/Identity_3IdentityClstm_773/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_773/while/NoOp*
T0*
_output_shapes
: ?
lstm_773/while/Identity_4Identity&lstm_773/while/lstm_cell_773/mul_2:z:0^lstm_773/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_773/while/Identity_5Identity&lstm_773/while/lstm_cell_773/add_1:z:0^lstm_773/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_773/while/NoOpNoOp4^lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp3^lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp5^lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_773_while_identity lstm_773/while/Identity:output:0"?
lstm_773_while_identity_1"lstm_773/while/Identity_1:output:0"?
lstm_773_while_identity_2"lstm_773/while/Identity_2:output:0"?
lstm_773_while_identity_3"lstm_773/while/Identity_3:output:0"?
lstm_773_while_identity_4"lstm_773/while/Identity_4:output:0"?
lstm_773_while_identity_5"lstm_773/while/Identity_5:output:0"T
'lstm_773_while_lstm_773_strided_slice_1)lstm_773_while_lstm_773_strided_slice_1_0"~
<lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource>lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource_0"?
=lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource?lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource_0"|
;lstm_773_while_lstm_cell_773_matmul_readvariableop_resource=lstm_773_while_lstm_cell_773_matmul_readvariableop_resource_0"?
clstm_773_while_tensorarrayv2read_tensorlistgetitem_lstm_773_tensorarrayunstack_tensorlistfromtensorelstm_773_while_tensorarrayv2read_tensorlistgetitem_lstm_773_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp3lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp2h
2lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp2lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp2l
4lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp4lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_771_layer_call_fn_4723633
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4720604|
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4721653

inputs?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4721569*
condR
while_cond_4721568*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4720535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_771_4720559_0:	?0
while_lstm_cell_771_4720561_0:	d?,
while_lstm_cell_771_4720563_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_771_4720559:	?.
while_lstm_cell_771_4720561:	d?*
while_lstm_cell_771_4720563:	???+while/lstm_cell_771/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_771/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_771_4720559_0while_lstm_cell_771_4720561_0while_lstm_cell_771_4720563_0*
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4720521?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_771/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_771/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_771/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_771/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_771_4720559while_lstm_cell_771_4720559_0"<
while_lstm_cell_771_4720561while_lstm_cell_771_4720561_0"<
while_lstm_cell_771_4720563while_lstm_cell_771_4720563_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_771/StatefulPartitionedCall+while/lstm_cell_771/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4725100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_771_layer_call_fn_4723655

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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4721653s
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
?#
?
while_body_4721426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_773_4721450_0:2(/
while_lstm_cell_773_4721452_0:
(+
while_lstm_cell_773_4721454_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_773_4721450:2(-
while_lstm_cell_773_4721452:
()
while_lstm_cell_773_4721454:(??+while/lstm_cell_773/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_773/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_773_4721450_0while_lstm_cell_773_4721452_0while_lstm_cell_773_4721454_0*
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4721367?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_773/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_773/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_773/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_773/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_773_4721450while_lstm_cell_773_4721450_0"<
while_lstm_cell_773_4721452while_lstm_cell_773_4721452_0"<
while_lstm_cell_773_4721454while_lstm_cell_773_4721454_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_773/StatefulPartitionedCall+while/lstm_cell_773/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4723195

inputsH
5lstm_771_lstm_cell_771_matmul_readvariableop_resource:	?J
7lstm_771_lstm_cell_771_matmul_1_readvariableop_resource:	d?E
6lstm_771_lstm_cell_771_biasadd_readvariableop_resource:	?H
5lstm_772_lstm_cell_772_matmul_readvariableop_resource:	d?J
7lstm_772_lstm_cell_772_matmul_1_readvariableop_resource:	2?E
6lstm_772_lstm_cell_772_biasadd_readvariableop_resource:	?G
5lstm_773_lstm_cell_773_matmul_readvariableop_resource:2(I
7lstm_773_lstm_cell_773_matmul_1_readvariableop_resource:
(D
6lstm_773_lstm_cell_773_biasadd_readvariableop_resource:(:
(dense_257_matmul_readvariableop_resource:
7
)dense_257_biasadd_readvariableop_resource:
identity?? dense_257/BiasAdd/ReadVariableOp?dense_257/MatMul/ReadVariableOp?-lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp?,lstm_771/lstm_cell_771/MatMul/ReadVariableOp?.lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp?lstm_771/while?-lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp?,lstm_772/lstm_cell_772/MatMul/ReadVariableOp?.lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp?lstm_772/while?-lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp?,lstm_773/lstm_cell_773/MatMul/ReadVariableOp?.lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp?lstm_773/whileD
lstm_771/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_771/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_771/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_771/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_771/strided_sliceStridedSlicelstm_771/Shape:output:0%lstm_771/strided_slice/stack:output:0'lstm_771/strided_slice/stack_1:output:0'lstm_771/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_771/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_771/zeros/packedPacklstm_771/strided_slice:output:0 lstm_771/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_771/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_771/zerosFilllstm_771/zeros/packed:output:0lstm_771/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_771/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_771/zeros_1/packedPacklstm_771/strided_slice:output:0"lstm_771/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_771/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_771/zeros_1Fill lstm_771/zeros_1/packed:output:0lstm_771/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_771/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_771/transpose	Transposeinputs lstm_771/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_771/Shape_1Shapelstm_771/transpose:y:0*
T0*
_output_shapes
:h
lstm_771/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_771/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_771/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_771/strided_slice_1StridedSlicelstm_771/Shape_1:output:0'lstm_771/strided_slice_1/stack:output:0)lstm_771/strided_slice_1/stack_1:output:0)lstm_771/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_771/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_771/TensorArrayV2TensorListReserve-lstm_771/TensorArrayV2/element_shape:output:0!lstm_771/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_771/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_771/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_771/transpose:y:0Glstm_771/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_771/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_771/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_771/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_771/strided_slice_2StridedSlicelstm_771/transpose:y:0'lstm_771/strided_slice_2/stack:output:0)lstm_771/strided_slice_2/stack_1:output:0)lstm_771/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_771/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp5lstm_771_lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_771/lstm_cell_771/MatMulMatMul!lstm_771/strided_slice_2:output:04lstm_771/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_771/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp7lstm_771_lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_771/lstm_cell_771/MatMul_1MatMullstm_771/zeros:output:06lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_771/lstm_cell_771/addAddV2'lstm_771/lstm_cell_771/MatMul:product:0)lstm_771/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_771/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp6lstm_771_lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_771/lstm_cell_771/BiasAddBiasAddlstm_771/lstm_cell_771/add:z:05lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_771/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_771/lstm_cell_771/splitSplit/lstm_771/lstm_cell_771/split/split_dim:output:0'lstm_771/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_771/lstm_cell_771/SigmoidSigmoid%lstm_771/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_771/lstm_cell_771/Sigmoid_1Sigmoid%lstm_771/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_771/lstm_cell_771/mulMul$lstm_771/lstm_cell_771/Sigmoid_1:y:0lstm_771/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_771/lstm_cell_771/ReluRelu%lstm_771/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_771/lstm_cell_771/mul_1Mul"lstm_771/lstm_cell_771/Sigmoid:y:0)lstm_771/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_771/lstm_cell_771/add_1AddV2lstm_771/lstm_cell_771/mul:z:0 lstm_771/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_771/lstm_cell_771/Sigmoid_2Sigmoid%lstm_771/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_771/lstm_cell_771/Relu_1Relu lstm_771/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_771/lstm_cell_771/mul_2Mul$lstm_771/lstm_cell_771/Sigmoid_2:y:0+lstm_771/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_771/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_771/TensorArrayV2_1TensorListReserve/lstm_771/TensorArrayV2_1/element_shape:output:0!lstm_771/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_771/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_771/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_771/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_771/whileWhile$lstm_771/while/loop_counter:output:0*lstm_771/while/maximum_iterations:output:0lstm_771/time:output:0!lstm_771/TensorArrayV2_1:handle:0lstm_771/zeros:output:0lstm_771/zeros_1:output:0!lstm_771/strided_slice_1:output:0@lstm_771/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_771_lstm_cell_771_matmul_readvariableop_resource7lstm_771_lstm_cell_771_matmul_1_readvariableop_resource6lstm_771_lstm_cell_771_biasadd_readvariableop_resource*
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
lstm_771_while_body_4722827*'
condR
lstm_771_while_cond_4722826*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_771/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_771/TensorArrayV2Stack/TensorListStackTensorListStacklstm_771/while:output:3Blstm_771/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_771/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_771/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_771/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_771/strided_slice_3StridedSlice4lstm_771/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_771/strided_slice_3/stack:output:0)lstm_771/strided_slice_3/stack_1:output:0)lstm_771/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_771/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_771/transpose_1	Transpose4lstm_771/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_771/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_771/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_772/ShapeShapelstm_771/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_772/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_772/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_772/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_772/strided_sliceStridedSlicelstm_772/Shape:output:0%lstm_772/strided_slice/stack:output:0'lstm_772/strided_slice/stack_1:output:0'lstm_772/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_772/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_772/zeros/packedPacklstm_772/strided_slice:output:0 lstm_772/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_772/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_772/zerosFilllstm_772/zeros/packed:output:0lstm_772/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_772/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_772/zeros_1/packedPacklstm_772/strided_slice:output:0"lstm_772/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_772/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_772/zeros_1Fill lstm_772/zeros_1/packed:output:0lstm_772/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_772/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_772/transpose	Transposelstm_771/transpose_1:y:0 lstm_772/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_772/Shape_1Shapelstm_772/transpose:y:0*
T0*
_output_shapes
:h
lstm_772/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_772/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_772/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_772/strided_slice_1StridedSlicelstm_772/Shape_1:output:0'lstm_772/strided_slice_1/stack:output:0)lstm_772/strided_slice_1/stack_1:output:0)lstm_772/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_772/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_772/TensorArrayV2TensorListReserve-lstm_772/TensorArrayV2/element_shape:output:0!lstm_772/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_772/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_772/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_772/transpose:y:0Glstm_772/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_772/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_772/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_772/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_772/strided_slice_2StridedSlicelstm_772/transpose:y:0'lstm_772/strided_slice_2/stack:output:0)lstm_772/strided_slice_2/stack_1:output:0)lstm_772/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_772/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp5lstm_772_lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_772/lstm_cell_772/MatMulMatMul!lstm_772/strided_slice_2:output:04lstm_772/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_772/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp7lstm_772_lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_772/lstm_cell_772/MatMul_1MatMullstm_772/zeros:output:06lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_772/lstm_cell_772/addAddV2'lstm_772/lstm_cell_772/MatMul:product:0)lstm_772/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_772/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp6lstm_772_lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_772/lstm_cell_772/BiasAddBiasAddlstm_772/lstm_cell_772/add:z:05lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_772/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_772/lstm_cell_772/splitSplit/lstm_772/lstm_cell_772/split/split_dim:output:0'lstm_772/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_772/lstm_cell_772/SigmoidSigmoid%lstm_772/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_772/lstm_cell_772/Sigmoid_1Sigmoid%lstm_772/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_772/lstm_cell_772/mulMul$lstm_772/lstm_cell_772/Sigmoid_1:y:0lstm_772/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_772/lstm_cell_772/ReluRelu%lstm_772/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_772/lstm_cell_772/mul_1Mul"lstm_772/lstm_cell_772/Sigmoid:y:0)lstm_772/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_772/lstm_cell_772/add_1AddV2lstm_772/lstm_cell_772/mul:z:0 lstm_772/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_772/lstm_cell_772/Sigmoid_2Sigmoid%lstm_772/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_772/lstm_cell_772/Relu_1Relu lstm_772/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_772/lstm_cell_772/mul_2Mul$lstm_772/lstm_cell_772/Sigmoid_2:y:0+lstm_772/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_772/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_772/TensorArrayV2_1TensorListReserve/lstm_772/TensorArrayV2_1/element_shape:output:0!lstm_772/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_772/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_772/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_772/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_772/whileWhile$lstm_772/while/loop_counter:output:0*lstm_772/while/maximum_iterations:output:0lstm_772/time:output:0!lstm_772/TensorArrayV2_1:handle:0lstm_772/zeros:output:0lstm_772/zeros_1:output:0!lstm_772/strided_slice_1:output:0@lstm_772/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_772_lstm_cell_772_matmul_readvariableop_resource7lstm_772_lstm_cell_772_matmul_1_readvariableop_resource6lstm_772_lstm_cell_772_biasadd_readvariableop_resource*
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
lstm_772_while_body_4722966*'
condR
lstm_772_while_cond_4722965*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_772/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_772/TensorArrayV2Stack/TensorListStackTensorListStacklstm_772/while:output:3Blstm_772/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_772/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_772/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_772/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_772/strided_slice_3StridedSlice4lstm_772/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_772/strided_slice_3/stack:output:0)lstm_772/strided_slice_3/stack_1:output:0)lstm_772/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_772/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_772/transpose_1	Transpose4lstm_772/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_772/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_772/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_773/ShapeShapelstm_772/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_773/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_773/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_773/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_773/strided_sliceStridedSlicelstm_773/Shape:output:0%lstm_773/strided_slice/stack:output:0'lstm_773/strided_slice/stack_1:output:0'lstm_773/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_773/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_773/zeros/packedPacklstm_773/strided_slice:output:0 lstm_773/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_773/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_773/zerosFilllstm_773/zeros/packed:output:0lstm_773/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_773/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_773/zeros_1/packedPacklstm_773/strided_slice:output:0"lstm_773/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_773/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_773/zeros_1Fill lstm_773/zeros_1/packed:output:0lstm_773/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_773/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_773/transpose	Transposelstm_772/transpose_1:y:0 lstm_773/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_773/Shape_1Shapelstm_773/transpose:y:0*
T0*
_output_shapes
:h
lstm_773/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_773/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_773/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_773/strided_slice_1StridedSlicelstm_773/Shape_1:output:0'lstm_773/strided_slice_1/stack:output:0)lstm_773/strided_slice_1/stack_1:output:0)lstm_773/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_773/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_773/TensorArrayV2TensorListReserve-lstm_773/TensorArrayV2/element_shape:output:0!lstm_773/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_773/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_773/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_773/transpose:y:0Glstm_773/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_773/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_773/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_773/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_773/strided_slice_2StridedSlicelstm_773/transpose:y:0'lstm_773/strided_slice_2/stack:output:0)lstm_773/strided_slice_2/stack_1:output:0)lstm_773/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_773/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp5lstm_773_lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_773/lstm_cell_773/MatMulMatMul!lstm_773/strided_slice_2:output:04lstm_773/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_773/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp7lstm_773_lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_773/lstm_cell_773/MatMul_1MatMullstm_773/zeros:output:06lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_773/lstm_cell_773/addAddV2'lstm_773/lstm_cell_773/MatMul:product:0)lstm_773/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_773/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp6lstm_773_lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_773/lstm_cell_773/BiasAddBiasAddlstm_773/lstm_cell_773/add:z:05lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_773/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_773/lstm_cell_773/splitSplit/lstm_773/lstm_cell_773/split/split_dim:output:0'lstm_773/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_773/lstm_cell_773/SigmoidSigmoid%lstm_773/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_773/lstm_cell_773/Sigmoid_1Sigmoid%lstm_773/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_773/lstm_cell_773/mulMul$lstm_773/lstm_cell_773/Sigmoid_1:y:0lstm_773/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_773/lstm_cell_773/ReluRelu%lstm_773/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_773/lstm_cell_773/mul_1Mul"lstm_773/lstm_cell_773/Sigmoid:y:0)lstm_773/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_773/lstm_cell_773/add_1AddV2lstm_773/lstm_cell_773/mul:z:0 lstm_773/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_773/lstm_cell_773/Sigmoid_2Sigmoid%lstm_773/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_773/lstm_cell_773/Relu_1Relu lstm_773/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_773/lstm_cell_773/mul_2Mul$lstm_773/lstm_cell_773/Sigmoid_2:y:0+lstm_773/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_773/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_773/TensorArrayV2_1TensorListReserve/lstm_773/TensorArrayV2_1/element_shape:output:0!lstm_773/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_773/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_773/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_773/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_773/whileWhile$lstm_773/while/loop_counter:output:0*lstm_773/while/maximum_iterations:output:0lstm_773/time:output:0!lstm_773/TensorArrayV2_1:handle:0lstm_773/zeros:output:0lstm_773/zeros_1:output:0!lstm_773/strided_slice_1:output:0@lstm_773/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_773_lstm_cell_773_matmul_readvariableop_resource7lstm_773_lstm_cell_773_matmul_1_readvariableop_resource6lstm_773_lstm_cell_773_biasadd_readvariableop_resource*
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
lstm_773_while_body_4723105*'
condR
lstm_773_while_cond_4723104*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_773/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_773/TensorArrayV2Stack/TensorListStackTensorListStacklstm_773/while:output:3Blstm_773/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_773/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_773/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_773/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_773/strided_slice_3StridedSlice4lstm_773/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_773/strided_slice_3/stack:output:0)lstm_773/strided_slice_3/stack_1:output:0)lstm_773/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_773/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_773/transpose_1	Transpose4lstm_773/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_773/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_773/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_257/MatMul/ReadVariableOpReadVariableOp(dense_257_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_257/MatMulMatMul!lstm_773/strided_slice_3:output:0'dense_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_257/BiasAdd/ReadVariableOpReadVariableOp)dense_257_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_257/BiasAddBiasAdddense_257/MatMul:product:0(dense_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_257/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_257/BiasAdd/ReadVariableOp ^dense_257/MatMul/ReadVariableOp.^lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp-^lstm_771/lstm_cell_771/MatMul/ReadVariableOp/^lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp^lstm_771/while.^lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp-^lstm_772/lstm_cell_772/MatMul/ReadVariableOp/^lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp^lstm_772/while.^lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp-^lstm_773/lstm_cell_773/MatMul/ReadVariableOp/^lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp^lstm_773/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_257/BiasAdd/ReadVariableOp dense_257/BiasAdd/ReadVariableOp2B
dense_257/MatMul/ReadVariableOpdense_257/MatMul/ReadVariableOp2^
-lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp-lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp2\
,lstm_771/lstm_cell_771/MatMul/ReadVariableOp,lstm_771/lstm_cell_771/MatMul/ReadVariableOp2`
.lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp.lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp2 
lstm_771/whilelstm_771/while2^
-lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp-lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp2\
,lstm_772/lstm_cell_772/MatMul/ReadVariableOp,lstm_772/lstm_cell_772/MatMul/ReadVariableOp2`
.lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp.lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp2 
lstm_772/whilelstm_772/while2^
-lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp-lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp2\
,lstm_773/lstm_cell_773/MatMul/ReadVariableOp,lstm_773/lstm_cell_773/MatMul/ReadVariableOp2`
.lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp.lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp2 
lstm_773/whilelstm_773/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4725685

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
lstm_772_while_cond_4722965.
*lstm_772_while_lstm_772_while_loop_counter4
0lstm_772_while_lstm_772_while_maximum_iterations
lstm_772_while_placeholder 
lstm_772_while_placeholder_1 
lstm_772_while_placeholder_2 
lstm_772_while_placeholder_30
,lstm_772_while_less_lstm_772_strided_slice_1G
Clstm_772_while_lstm_772_while_cond_4722965___redundant_placeholder0G
Clstm_772_while_lstm_772_while_cond_4722965___redundant_placeholder1G
Clstm_772_while_lstm_772_while_cond_4722965___redundant_placeholder2G
Clstm_772_while_lstm_772_while_cond_4722965___redundant_placeholder3
lstm_772_while_identity
?
lstm_772/while/LessLesslstm_772_while_placeholder,lstm_772_while_less_lstm_772_strided_slice_1*
T0*
_output_shapes
: ]
lstm_772/while/IdentityIdentitylstm_772/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_772_while_identity lstm_772/while/Identity:output:0*(
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
lstm_772_while_cond_4723392.
*lstm_772_while_lstm_772_while_loop_counter4
0lstm_772_while_lstm_772_while_maximum_iterations
lstm_772_while_placeholder 
lstm_772_while_placeholder_1 
lstm_772_while_placeholder_2 
lstm_772_while_placeholder_30
,lstm_772_while_less_lstm_772_strided_slice_1G
Clstm_772_while_lstm_772_while_cond_4723392___redundant_placeholder0G
Clstm_772_while_lstm_772_while_cond_4723392___redundant_placeholder1G
Clstm_772_while_lstm_772_while_cond_4723392___redundant_placeholder2G
Clstm_772_while_lstm_772_while_cond_4723392___redundant_placeholder3
lstm_772_while_identity
?
lstm_772/while/LessLesslstm_772_while_placeholder,lstm_772_while_less_lstm_772_strided_slice_1*
T0*
_output_shapes
: ]
lstm_772/while/IdentityIdentitylstm_772/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_772_while_identity lstm_772/while/Identity:output:0*(
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4720871

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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4720667

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
while_body_4721235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_773_4721259_0:2(/
while_lstm_cell_773_4721261_0:
(+
while_lstm_cell_773_4721263_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_773_4721259:2(-
while_lstm_cell_773_4721261:
()
while_lstm_cell_773_4721263:(??+while/lstm_cell_773/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_773/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_773_4721259_0while_lstm_cell_773_4721261_0while_lstm_cell_773_4721263_0*
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4721221?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_773/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_773/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_773/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_773/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_773_4721259while_lstm_cell_773_4721259_0"<
while_lstm_cell_773_4721261while_lstm_cell_773_4721261_0"<
while_lstm_cell_773_4721263while_lstm_cell_773_4721263_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_773/StatefulPartitionedCall+while/lstm_cell_773/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4725653

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
while_body_4723868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_257_lstm_771_while_body_4720086L
Hsequential_257_lstm_771_while_sequential_257_lstm_771_while_loop_counterR
Nsequential_257_lstm_771_while_sequential_257_lstm_771_while_maximum_iterations-
)sequential_257_lstm_771_while_placeholder/
+sequential_257_lstm_771_while_placeholder_1/
+sequential_257_lstm_771_while_placeholder_2/
+sequential_257_lstm_771_while_placeholder_3K
Gsequential_257_lstm_771_while_sequential_257_lstm_771_strided_slice_1_0?
?sequential_257_lstm_771_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_771_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_257_lstm_771_while_lstm_cell_771_matmul_readvariableop_resource_0:	?a
Nsequential_257_lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?\
Msequential_257_lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource_0:	?*
&sequential_257_lstm_771_while_identity,
(sequential_257_lstm_771_while_identity_1,
(sequential_257_lstm_771_while_identity_2,
(sequential_257_lstm_771_while_identity_3,
(sequential_257_lstm_771_while_identity_4,
(sequential_257_lstm_771_while_identity_5I
Esequential_257_lstm_771_while_sequential_257_lstm_771_strided_slice_1?
?sequential_257_lstm_771_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_771_tensorarrayunstack_tensorlistfromtensor]
Jsequential_257_lstm_771_while_lstm_cell_771_matmul_readvariableop_resource:	?_
Lsequential_257_lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource:	d?Z
Ksequential_257_lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource:	???Bsequential_257/lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp?Asequential_257/lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp?Csequential_257/lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp?
Osequential_257/lstm_771/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_257/lstm_771/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_257_lstm_771_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_771_tensorarrayunstack_tensorlistfromtensor_0)sequential_257_lstm_771_while_placeholderXsequential_257/lstm_771/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_257/lstm_771/while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOpLsequential_257_lstm_771_while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_257/lstm_771/while/lstm_cell_771/MatMulMatMulHsequential_257/lstm_771/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_257/lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_257/lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOpNsequential_257_lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_257/lstm_771/while/lstm_cell_771/MatMul_1MatMul+sequential_257_lstm_771_while_placeholder_2Ksequential_257/lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_257/lstm_771/while/lstm_cell_771/addAddV2<sequential_257/lstm_771/while/lstm_cell_771/MatMul:product:0>sequential_257/lstm_771/while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_257/lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOpMsequential_257_lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_257/lstm_771/while/lstm_cell_771/BiasAddBiasAdd3sequential_257/lstm_771/while/lstm_cell_771/add:z:0Jsequential_257/lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_257/lstm_771/while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_257/lstm_771/while/lstm_cell_771/splitSplitDsequential_257/lstm_771/while/lstm_cell_771/split/split_dim:output:0<sequential_257/lstm_771/while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_257/lstm_771/while/lstm_cell_771/SigmoidSigmoid:sequential_257/lstm_771/while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_257/lstm_771/while/lstm_cell_771/Sigmoid_1Sigmoid:sequential_257/lstm_771/while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_257/lstm_771/while/lstm_cell_771/mulMul9sequential_257/lstm_771/while/lstm_cell_771/Sigmoid_1:y:0+sequential_257_lstm_771_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_257/lstm_771/while/lstm_cell_771/ReluRelu:sequential_257/lstm_771/while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_257/lstm_771/while/lstm_cell_771/mul_1Mul7sequential_257/lstm_771/while/lstm_cell_771/Sigmoid:y:0>sequential_257/lstm_771/while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_257/lstm_771/while/lstm_cell_771/add_1AddV23sequential_257/lstm_771/while/lstm_cell_771/mul:z:05sequential_257/lstm_771/while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_257/lstm_771/while/lstm_cell_771/Sigmoid_2Sigmoid:sequential_257/lstm_771/while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_257/lstm_771/while/lstm_cell_771/Relu_1Relu5sequential_257/lstm_771/while/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_257/lstm_771/while/lstm_cell_771/mul_2Mul9sequential_257/lstm_771/while/lstm_cell_771/Sigmoid_2:y:0@sequential_257/lstm_771/while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_257/lstm_771/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_257_lstm_771_while_placeholder_1)sequential_257_lstm_771_while_placeholder5sequential_257/lstm_771/while/lstm_cell_771/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_257/lstm_771/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_257/lstm_771/while/addAddV2)sequential_257_lstm_771_while_placeholder,sequential_257/lstm_771/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_257/lstm_771/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_257/lstm_771/while/add_1AddV2Hsequential_257_lstm_771_while_sequential_257_lstm_771_while_loop_counter.sequential_257/lstm_771/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_257/lstm_771/while/IdentityIdentity'sequential_257/lstm_771/while/add_1:z:0#^sequential_257/lstm_771/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_771/while/Identity_1IdentityNsequential_257_lstm_771_while_sequential_257_lstm_771_while_maximum_iterations#^sequential_257/lstm_771/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_771/while/Identity_2Identity%sequential_257/lstm_771/while/add:z:0#^sequential_257/lstm_771/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_771/while/Identity_3IdentityRsequential_257/lstm_771/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_257/lstm_771/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_771/while/Identity_4Identity5sequential_257/lstm_771/while/lstm_cell_771/mul_2:z:0#^sequential_257/lstm_771/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_257/lstm_771/while/Identity_5Identity5sequential_257/lstm_771/while/lstm_cell_771/add_1:z:0#^sequential_257/lstm_771/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_257/lstm_771/while/NoOpNoOpC^sequential_257/lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOpB^sequential_257/lstm_771/while/lstm_cell_771/MatMul/ReadVariableOpD^sequential_257/lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_257_lstm_771_while_identity/sequential_257/lstm_771/while/Identity:output:0"]
(sequential_257_lstm_771_while_identity_11sequential_257/lstm_771/while/Identity_1:output:0"]
(sequential_257_lstm_771_while_identity_21sequential_257/lstm_771/while/Identity_2:output:0"]
(sequential_257_lstm_771_while_identity_31sequential_257/lstm_771/while/Identity_3:output:0"]
(sequential_257_lstm_771_while_identity_41sequential_257/lstm_771/while/Identity_4:output:0"]
(sequential_257_lstm_771_while_identity_51sequential_257/lstm_771/while/Identity_5:output:0"?
Ksequential_257_lstm_771_while_lstm_cell_771_biasadd_readvariableop_resourceMsequential_257_lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource_0"?
Lsequential_257_lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resourceNsequential_257_lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource_0"?
Jsequential_257_lstm_771_while_lstm_cell_771_matmul_readvariableop_resourceLsequential_257_lstm_771_while_lstm_cell_771_matmul_readvariableop_resource_0"?
Esequential_257_lstm_771_while_sequential_257_lstm_771_strided_slice_1Gsequential_257_lstm_771_while_sequential_257_lstm_771_strided_slice_1_0"?
?sequential_257_lstm_771_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_771_tensorarrayunstack_tensorlistfromtensor?sequential_257_lstm_771_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_771_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_257/lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOpBsequential_257/lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp2?
Asequential_257/lstm_771/while/lstm_cell_771/MatMul/ReadVariableOpAsequential_257/lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp2?
Csequential_257/lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOpCsequential_257/lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_771_layer_call_fn_4723666

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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4722499s
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
/__inference_lstm_cell_771_layer_call_fn_4725506

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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4720521o
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
?
*__inference_lstm_771_layer_call_fn_4723644
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4720795|
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4721953

inputs>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4721869*
condR
while_cond_4721868*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4723725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_257_lstm_772_while_body_4720225L
Hsequential_257_lstm_772_while_sequential_257_lstm_772_while_loop_counterR
Nsequential_257_lstm_772_while_sequential_257_lstm_772_while_maximum_iterations-
)sequential_257_lstm_772_while_placeholder/
+sequential_257_lstm_772_while_placeholder_1/
+sequential_257_lstm_772_while_placeholder_2/
+sequential_257_lstm_772_while_placeholder_3K
Gsequential_257_lstm_772_while_sequential_257_lstm_772_strided_slice_1_0?
?sequential_257_lstm_772_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_772_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_257_lstm_772_while_lstm_cell_772_matmul_readvariableop_resource_0:	d?a
Nsequential_257_lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?\
Msequential_257_lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource_0:	?*
&sequential_257_lstm_772_while_identity,
(sequential_257_lstm_772_while_identity_1,
(sequential_257_lstm_772_while_identity_2,
(sequential_257_lstm_772_while_identity_3,
(sequential_257_lstm_772_while_identity_4,
(sequential_257_lstm_772_while_identity_5I
Esequential_257_lstm_772_while_sequential_257_lstm_772_strided_slice_1?
?sequential_257_lstm_772_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_772_tensorarrayunstack_tensorlistfromtensor]
Jsequential_257_lstm_772_while_lstm_cell_772_matmul_readvariableop_resource:	d?_
Lsequential_257_lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource:	2?Z
Ksequential_257_lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource:	???Bsequential_257/lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp?Asequential_257/lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp?Csequential_257/lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp?
Osequential_257/lstm_772/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_257/lstm_772/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_257_lstm_772_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_772_tensorarrayunstack_tensorlistfromtensor_0)sequential_257_lstm_772_while_placeholderXsequential_257/lstm_772/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_257/lstm_772/while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOpLsequential_257_lstm_772_while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_257/lstm_772/while/lstm_cell_772/MatMulMatMulHsequential_257/lstm_772/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_257/lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_257/lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOpNsequential_257_lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_257/lstm_772/while/lstm_cell_772/MatMul_1MatMul+sequential_257_lstm_772_while_placeholder_2Ksequential_257/lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_257/lstm_772/while/lstm_cell_772/addAddV2<sequential_257/lstm_772/while/lstm_cell_772/MatMul:product:0>sequential_257/lstm_772/while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_257/lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOpMsequential_257_lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_257/lstm_772/while/lstm_cell_772/BiasAddBiasAdd3sequential_257/lstm_772/while/lstm_cell_772/add:z:0Jsequential_257/lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_257/lstm_772/while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_257/lstm_772/while/lstm_cell_772/splitSplitDsequential_257/lstm_772/while/lstm_cell_772/split/split_dim:output:0<sequential_257/lstm_772/while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_257/lstm_772/while/lstm_cell_772/SigmoidSigmoid:sequential_257/lstm_772/while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_257/lstm_772/while/lstm_cell_772/Sigmoid_1Sigmoid:sequential_257/lstm_772/while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_257/lstm_772/while/lstm_cell_772/mulMul9sequential_257/lstm_772/while/lstm_cell_772/Sigmoid_1:y:0+sequential_257_lstm_772_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_257/lstm_772/while/lstm_cell_772/ReluRelu:sequential_257/lstm_772/while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_257/lstm_772/while/lstm_cell_772/mul_1Mul7sequential_257/lstm_772/while/lstm_cell_772/Sigmoid:y:0>sequential_257/lstm_772/while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_257/lstm_772/while/lstm_cell_772/add_1AddV23sequential_257/lstm_772/while/lstm_cell_772/mul:z:05sequential_257/lstm_772/while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_257/lstm_772/while/lstm_cell_772/Sigmoid_2Sigmoid:sequential_257/lstm_772/while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_257/lstm_772/while/lstm_cell_772/Relu_1Relu5sequential_257/lstm_772/while/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_257/lstm_772/while/lstm_cell_772/mul_2Mul9sequential_257/lstm_772/while/lstm_cell_772/Sigmoid_2:y:0@sequential_257/lstm_772/while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_257/lstm_772/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_257_lstm_772_while_placeholder_1)sequential_257_lstm_772_while_placeholder5sequential_257/lstm_772/while/lstm_cell_772/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_257/lstm_772/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_257/lstm_772/while/addAddV2)sequential_257_lstm_772_while_placeholder,sequential_257/lstm_772/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_257/lstm_772/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_257/lstm_772/while/add_1AddV2Hsequential_257_lstm_772_while_sequential_257_lstm_772_while_loop_counter.sequential_257/lstm_772/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_257/lstm_772/while/IdentityIdentity'sequential_257/lstm_772/while/add_1:z:0#^sequential_257/lstm_772/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_772/while/Identity_1IdentityNsequential_257_lstm_772_while_sequential_257_lstm_772_while_maximum_iterations#^sequential_257/lstm_772/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_772/while/Identity_2Identity%sequential_257/lstm_772/while/add:z:0#^sequential_257/lstm_772/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_772/while/Identity_3IdentityRsequential_257/lstm_772/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_257/lstm_772/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_772/while/Identity_4Identity5sequential_257/lstm_772/while/lstm_cell_772/mul_2:z:0#^sequential_257/lstm_772/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_257/lstm_772/while/Identity_5Identity5sequential_257/lstm_772/while/lstm_cell_772/add_1:z:0#^sequential_257/lstm_772/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_257/lstm_772/while/NoOpNoOpC^sequential_257/lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOpB^sequential_257/lstm_772/while/lstm_cell_772/MatMul/ReadVariableOpD^sequential_257/lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_257_lstm_772_while_identity/sequential_257/lstm_772/while/Identity:output:0"]
(sequential_257_lstm_772_while_identity_11sequential_257/lstm_772/while/Identity_1:output:0"]
(sequential_257_lstm_772_while_identity_21sequential_257/lstm_772/while/Identity_2:output:0"]
(sequential_257_lstm_772_while_identity_31sequential_257/lstm_772/while/Identity_3:output:0"]
(sequential_257_lstm_772_while_identity_41sequential_257/lstm_772/while/Identity_4:output:0"]
(sequential_257_lstm_772_while_identity_51sequential_257/lstm_772/while/Identity_5:output:0"?
Ksequential_257_lstm_772_while_lstm_cell_772_biasadd_readvariableop_resourceMsequential_257_lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource_0"?
Lsequential_257_lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resourceNsequential_257_lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource_0"?
Jsequential_257_lstm_772_while_lstm_cell_772_matmul_readvariableop_resourceLsequential_257_lstm_772_while_lstm_cell_772_matmul_readvariableop_resource_0"?
Esequential_257_lstm_772_while_sequential_257_lstm_772_strided_slice_1Gsequential_257_lstm_772_while_sequential_257_lstm_772_strided_slice_1_0"?
?sequential_257_lstm_772_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_772_tensorarrayunstack_tensorlistfromtensor?sequential_257_lstm_772_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_772_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_257/lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOpBsequential_257/lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp2?
Asequential_257/lstm_772/while/lstm_cell_772/MatMul/ReadVariableOpAsequential_257/lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp2?
Csequential_257/lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOpCsequential_257/lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4722649
lstm_771_input#
lstm_771_4722622:	?#
lstm_771_4722624:	d?
lstm_771_4722626:	?#
lstm_772_4722629:	d?#
lstm_772_4722631:	2?
lstm_772_4722633:	?"
lstm_773_4722636:2("
lstm_773_4722638:
(
lstm_773_4722640:(#
dense_257_4722643:

dense_257_4722645:
identity??!dense_257/StatefulPartitionedCall? lstm_771/StatefulPartitionedCall? lstm_772/StatefulPartitionedCall? lstm_773/StatefulPartitionedCall?
 lstm_771/StatefulPartitionedCallStatefulPartitionedCalllstm_771_inputlstm_771_4722622lstm_771_4722624lstm_771_4722626*
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4721653?
 lstm_772/StatefulPartitionedCallStatefulPartitionedCall)lstm_771/StatefulPartitionedCall:output:0lstm_772_4722629lstm_772_4722631lstm_772_4722633*
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4721803?
 lstm_773/StatefulPartitionedCallStatefulPartitionedCall)lstm_772/StatefulPartitionedCall:output:0lstm_773_4722636lstm_773_4722638lstm_773_4722640*
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4721953?
!dense_257/StatefulPartitionedCallStatefulPartitionedCall)lstm_773/StatefulPartitionedCall:output:0dense_257_4722643dense_257_4722645*
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
F__inference_dense_257_layer_call_and_return_conditional_losses_4721971y
IdentityIdentity*dense_257/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_257/StatefulPartitionedCall!^lstm_771/StatefulPartitionedCall!^lstm_772/StatefulPartitionedCall!^lstm_773/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_257/StatefulPartitionedCall!dense_257/StatefulPartitionedCall2D
 lstm_771/StatefulPartitionedCall lstm_771/StatefulPartitionedCall2D
 lstm_772/StatefulPartitionedCall lstm_772/StatefulPartitionedCall2D
 lstm_773/StatefulPartitionedCall lstm_773/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_771_input
?J
?
E__inference_lstm_772_layer_call_and_return_conditional_losses_4721803

inputs?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4721719*
condR
while_cond_4721718*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_773_layer_call_fn_4725719

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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4721367o
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
??
?
#__inference__traced_restore_4726056
file_prefix3
!assignvariableop_dense_257_kernel:
/
!assignvariableop_1_dense_257_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_771_lstm_cell_771_kernel:	?M
:assignvariableop_8_lstm_771_lstm_cell_771_recurrent_kernel:	d?=
.assignvariableop_9_lstm_771_lstm_cell_771_bias:	?D
1assignvariableop_10_lstm_772_lstm_cell_772_kernel:	d?N
;assignvariableop_11_lstm_772_lstm_cell_772_recurrent_kernel:	2?>
/assignvariableop_12_lstm_772_lstm_cell_772_bias:	?C
1assignvariableop_13_lstm_773_lstm_cell_773_kernel:2(M
;assignvariableop_14_lstm_773_lstm_cell_773_recurrent_kernel:
(=
/assignvariableop_15_lstm_773_lstm_cell_773_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_257_kernel_m:
7
)assignvariableop_19_adam_dense_257_bias_m:K
8assignvariableop_20_adam_lstm_771_lstm_cell_771_kernel_m:	?U
Bassignvariableop_21_adam_lstm_771_lstm_cell_771_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_771_lstm_cell_771_bias_m:	?K
8assignvariableop_23_adam_lstm_772_lstm_cell_772_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_772_lstm_cell_772_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_772_lstm_cell_772_bias_m:	?J
8assignvariableop_26_adam_lstm_773_lstm_cell_773_kernel_m:2(T
Bassignvariableop_27_adam_lstm_773_lstm_cell_773_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_773_lstm_cell_773_bias_m:(=
+assignvariableop_29_adam_dense_257_kernel_v:
7
)assignvariableop_30_adam_dense_257_bias_v:K
8assignvariableop_31_adam_lstm_771_lstm_cell_771_kernel_v:	?U
Bassignvariableop_32_adam_lstm_771_lstm_cell_771_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_771_lstm_cell_771_bias_v:	?K
8assignvariableop_34_adam_lstm_772_lstm_cell_772_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_772_lstm_cell_772_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_772_lstm_cell_772_bias_v:	?J
8assignvariableop_37_adam_lstm_773_lstm_cell_773_kernel_v:2(T
Bassignvariableop_38_adam_lstm_773_lstm_cell_773_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_773_lstm_cell_773_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_257_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_257_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_771_lstm_cell_771_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_771_lstm_cell_771_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_771_lstm_cell_771_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_772_lstm_cell_772_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_772_lstm_cell_772_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_772_lstm_cell_772_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_773_lstm_cell_773_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_773_lstm_cell_773_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_773_lstm_cell_773_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_257_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_257_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_771_lstm_cell_771_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_771_lstm_cell_771_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_771_lstm_cell_771_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_772_lstm_cell_772_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_772_lstm_cell_772_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_772_lstm_cell_772_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_773_lstm_cell_773_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_773_lstm_cell_773_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_773_lstm_cell_773_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_257_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_257_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_771_lstm_cell_771_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_771_lstm_cell_771_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_771_lstm_cell_771_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_772_lstm_cell_772_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_772_lstm_cell_772_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_772_lstm_cell_772_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_773_lstm_cell_773_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_773_lstm_cell_773_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_773_lstm_cell_773_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_4722084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4722084___redundant_placeholder05
1while_while_cond_4722084___redundant_placeholder15
1while_while_cond_4722084___redundant_placeholder25
1while_while_cond_4722084___redundant_placeholder3
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724711

inputs?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4724627*
condR
while_cond_4724626*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_257_layer_call_and_return_conditional_losses_4722567

inputs#
lstm_771_4722540:	?#
lstm_771_4722542:	d?
lstm_771_4722544:	?#
lstm_772_4722547:	d?#
lstm_772_4722549:	2?
lstm_772_4722551:	?"
lstm_773_4722554:2("
lstm_773_4722556:
(
lstm_773_4722558:(#
dense_257_4722561:

dense_257_4722563:
identity??!dense_257/StatefulPartitionedCall? lstm_771/StatefulPartitionedCall? lstm_772/StatefulPartitionedCall? lstm_773/StatefulPartitionedCall?
 lstm_771/StatefulPartitionedCallStatefulPartitionedCallinputslstm_771_4722540lstm_771_4722542lstm_771_4722544*
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4722499?
 lstm_772/StatefulPartitionedCallStatefulPartitionedCall)lstm_771/StatefulPartitionedCall:output:0lstm_772_4722547lstm_772_4722549lstm_772_4722551*
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4722334?
 lstm_773/StatefulPartitionedCallStatefulPartitionedCall)lstm_772/StatefulPartitionedCall:output:0lstm_773_4722554lstm_773_4722556lstm_773_4722558*
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4722169?
!dense_257/StatefulPartitionedCallStatefulPartitionedCall)lstm_773/StatefulPartitionedCall:output:0dense_257_4722561dense_257_4722563*
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
F__inference_dense_257_layer_call_and_return_conditional_losses_4721971y
IdentityIdentity*dense_257/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_257/StatefulPartitionedCall!^lstm_771/StatefulPartitionedCall!^lstm_772/StatefulPartitionedCall!^lstm_773/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_257/StatefulPartitionedCall!dense_257/StatefulPartitionedCall2D
 lstm_771/StatefulPartitionedCall lstm_771/StatefulPartitionedCall2D
 lstm_772/StatefulPartitionedCall lstm_772/StatefulPartitionedCall2D
 lstm_773/StatefulPartitionedCall lstm_773/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_257_lstm_772_while_cond_4720224L
Hsequential_257_lstm_772_while_sequential_257_lstm_772_while_loop_counterR
Nsequential_257_lstm_772_while_sequential_257_lstm_772_while_maximum_iterations-
)sequential_257_lstm_772_while_placeholder/
+sequential_257_lstm_772_while_placeholder_1/
+sequential_257_lstm_772_while_placeholder_2/
+sequential_257_lstm_772_while_placeholder_3N
Jsequential_257_lstm_772_while_less_sequential_257_lstm_772_strided_slice_1e
asequential_257_lstm_772_while_sequential_257_lstm_772_while_cond_4720224___redundant_placeholder0e
asequential_257_lstm_772_while_sequential_257_lstm_772_while_cond_4720224___redundant_placeholder1e
asequential_257_lstm_772_while_sequential_257_lstm_772_while_cond_4720224___redundant_placeholder2e
asequential_257_lstm_772_while_sequential_257_lstm_772_while_cond_4720224___redundant_placeholder3*
&sequential_257_lstm_772_while_identity
?
"sequential_257/lstm_772/while/LessLess)sequential_257_lstm_772_while_placeholderJsequential_257_lstm_772_while_less_sequential_257_lstm_772_strided_slice_1*
T0*
_output_shapes
: {
&sequential_257/lstm_772/while/IdentityIdentity&sequential_257/lstm_772/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_257_lstm_772_while_identity/sequential_257/lstm_772/while/Identity:output:0*(
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
while_cond_4721718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4721718___redundant_placeholder05
1while_while_cond_4721718___redundant_placeholder15
1while_while_cond_4721718___redundant_placeholder25
1while_while_cond_4721718___redundant_placeholder3
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
while_cond_4723724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4723724___redundant_placeholder05
1while_while_cond_4723724___redundant_placeholder15
1while_while_cond_4723724___redundant_placeholder25
1while_while_cond_4723724___redundant_placeholder3
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
/__inference_lstm_cell_772_layer_call_fn_4725604

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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4720871o
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
while_body_4724957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4724627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4721425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4721425___redundant_placeholder05
1while_while_cond_4721425___redundant_placeholder15
1while_while_cond_4721425___redundant_placeholder25
1while_while_cond_4721425___redundant_placeholder3
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725184
inputs_0>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4725100*
condR
while_cond_4725099*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_4721076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_772_4721100_0:	d?0
while_lstm_cell_772_4721102_0:	2?,
while_lstm_cell_772_4721104_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_772_4721100:	d?.
while_lstm_cell_772_4721102:	2?*
while_lstm_cell_772_4721104:	???+while/lstm_cell_772/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_772/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_772_4721100_0while_lstm_cell_772_4721102_0while_lstm_cell_772_4721104_0*
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4721017?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_772/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_772/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_772/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_772/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_772_4721100while_lstm_cell_772_4721100_0"<
while_lstm_cell_772_4721102while_lstm_cell_772_4721102_0"<
while_lstm_cell_772_4721104while_lstm_cell_772_4721104_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_772/StatefulPartitionedCall+while/lstm_cell_772/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4721978

inputs#
lstm_771_4721654:	?#
lstm_771_4721656:	d?
lstm_771_4721658:	?#
lstm_772_4721804:	d?#
lstm_772_4721806:	2?
lstm_772_4721808:	?"
lstm_773_4721954:2("
lstm_773_4721956:
(
lstm_773_4721958:(#
dense_257_4721972:

dense_257_4721974:
identity??!dense_257/StatefulPartitionedCall? lstm_771/StatefulPartitionedCall? lstm_772/StatefulPartitionedCall? lstm_773/StatefulPartitionedCall?
 lstm_771/StatefulPartitionedCallStatefulPartitionedCallinputslstm_771_4721654lstm_771_4721656lstm_771_4721658*
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4721653?
 lstm_772/StatefulPartitionedCallStatefulPartitionedCall)lstm_771/StatefulPartitionedCall:output:0lstm_772_4721804lstm_772_4721806lstm_772_4721808*
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4721803?
 lstm_773/StatefulPartitionedCallStatefulPartitionedCall)lstm_772/StatefulPartitionedCall:output:0lstm_773_4721954lstm_773_4721956lstm_773_4721958*
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4721953?
!dense_257/StatefulPartitionedCallStatefulPartitionedCall)lstm_773/StatefulPartitionedCall:output:0dense_257_4721972dense_257_4721974*
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
F__inference_dense_257_layer_call_and_return_conditional_losses_4721971y
IdentityIdentity*dense_257/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_257/StatefulPartitionedCall!^lstm_771/StatefulPartitionedCall!^lstm_772/StatefulPartitionedCall!^lstm_773/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_257/StatefulPartitionedCall!dense_257/StatefulPartitionedCall2D
 lstm_771/StatefulPartitionedCall lstm_771/StatefulPartitionedCall2D
 lstm_772/StatefulPartitionedCall lstm_772/StatefulPartitionedCall2D
 lstm_773/StatefulPartitionedCall lstm_773/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4721869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_771_while_cond_4722826.
*lstm_771_while_lstm_771_while_loop_counter4
0lstm_771_while_lstm_771_while_maximum_iterations
lstm_771_while_placeholder 
lstm_771_while_placeholder_1 
lstm_771_while_placeholder_2 
lstm_771_while_placeholder_30
,lstm_771_while_less_lstm_771_strided_slice_1G
Clstm_771_while_lstm_771_while_cond_4722826___redundant_placeholder0G
Clstm_771_while_lstm_771_while_cond_4722826___redundant_placeholder1G
Clstm_771_while_lstm_771_while_cond_4722826___redundant_placeholder2G
Clstm_771_while_lstm_771_while_cond_4722826___redundant_placeholder3
lstm_771_while_identity
?
lstm_771/while/LessLesslstm_771_while_placeholder,lstm_771_while_less_lstm_771_strided_slice_1*
T0*
_output_shapes
: ]
lstm_771/while/IdentityIdentitylstm_771/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_771_while_identity lstm_771/while/Identity:output:0*(
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4724095

inputs?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4724011*
condR
while_cond_4724010*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4721569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4721145

inputs(
lstm_cell_772_4721063:	d?(
lstm_cell_772_4721065:	2?$
lstm_cell_772_4721067:	?
identity??%lstm_cell_772/StatefulPartitionedCall?while;
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
%lstm_cell_772/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_772_4721063lstm_cell_772_4721065lstm_cell_772_4721067*
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4721017n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_772_4721063lstm_cell_772_4721065lstm_cell_772_4721067*
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
while_body_4721076*
condR
while_cond_4721075*K
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
NoOpNoOp&^lstm_cell_772/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_772/StatefulPartitionedCall%lstm_cell_772/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_773_while_cond_4723531.
*lstm_773_while_lstm_773_while_loop_counter4
0lstm_773_while_lstm_773_while_maximum_iterations
lstm_773_while_placeholder 
lstm_773_while_placeholder_1 
lstm_773_while_placeholder_2 
lstm_773_while_placeholder_30
,lstm_773_while_less_lstm_773_strided_slice_1G
Clstm_773_while_lstm_773_while_cond_4723531___redundant_placeholder0G
Clstm_773_while_lstm_773_while_cond_4723531___redundant_placeholder1G
Clstm_773_while_lstm_773_while_cond_4723531___redundant_placeholder2G
Clstm_773_while_lstm_773_while_cond_4723531___redundant_placeholder3
lstm_773_while_identity
?
lstm_773/while/LessLesslstm_773_while_placeholder,lstm_773_while_less_lstm_773_strided_slice_1*
T0*
_output_shapes
: ]
lstm_773/while/IdentityIdentitylstm_773/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_773_while_identity lstm_773/while/Identity:output:0*(
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
while_body_4724154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4723867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4723867___redundant_placeholder05
1while_while_cond_4723867___redundant_placeholder15
1while_while_cond_4723867___redundant_placeholder25
1while_while_cond_4723867___redundant_placeholder3
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
*sequential_257_lstm_773_while_cond_4720363L
Hsequential_257_lstm_773_while_sequential_257_lstm_773_while_loop_counterR
Nsequential_257_lstm_773_while_sequential_257_lstm_773_while_maximum_iterations-
)sequential_257_lstm_773_while_placeholder/
+sequential_257_lstm_773_while_placeholder_1/
+sequential_257_lstm_773_while_placeholder_2/
+sequential_257_lstm_773_while_placeholder_3N
Jsequential_257_lstm_773_while_less_sequential_257_lstm_773_strided_slice_1e
asequential_257_lstm_773_while_sequential_257_lstm_773_while_cond_4720363___redundant_placeholder0e
asequential_257_lstm_773_while_sequential_257_lstm_773_while_cond_4720363___redundant_placeholder1e
asequential_257_lstm_773_while_sequential_257_lstm_773_while_cond_4720363___redundant_placeholder2e
asequential_257_lstm_773_while_sequential_257_lstm_773_while_cond_4720363___redundant_placeholder3*
&sequential_257_lstm_773_while_identity
?
"sequential_257/lstm_773/while/LessLess)sequential_257_lstm_773_while_placeholderJsequential_257_lstm_773_while_less_sequential_257_lstm_773_strided_slice_1*
T0*
_output_shapes
: {
&sequential_257/lstm_773/while/IdentityIdentity&sequential_257/lstm_773/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_257_lstm_773_while_identity/sequential_257/lstm_773/while/Identity:output:0*(
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725041
inputs_0>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4724957*
condR
while_cond_4724956*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_773_layer_call_and_return_conditional_losses_4721495

inputs'
lstm_cell_773_4721413:2('
lstm_cell_773_4721415:
(#
lstm_cell_773_4721417:(
identity??%lstm_cell_773/StatefulPartitionedCall?while;
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
%lstm_cell_773/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_773_4721413lstm_cell_773_4721415lstm_cell_773_4721417*
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4721367n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_773_4721413lstm_cell_773_4721415lstm_cell_773_4721417*
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
while_body_4721426*
condR
while_cond_4721425*K
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
NoOpNoOp&^lstm_cell_773/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_773/StatefulPartitionedCall%lstm_cell_773/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4724770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4724011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4725386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_773_layer_call_fn_4724887

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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4721953o
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
*sequential_257_lstm_771_while_cond_4720085L
Hsequential_257_lstm_771_while_sequential_257_lstm_771_while_loop_counterR
Nsequential_257_lstm_771_while_sequential_257_lstm_771_while_maximum_iterations-
)sequential_257_lstm_771_while_placeholder/
+sequential_257_lstm_771_while_placeholder_1/
+sequential_257_lstm_771_while_placeholder_2/
+sequential_257_lstm_771_while_placeholder_3N
Jsequential_257_lstm_771_while_less_sequential_257_lstm_771_strided_slice_1e
asequential_257_lstm_771_while_sequential_257_lstm_771_while_cond_4720085___redundant_placeholder0e
asequential_257_lstm_771_while_sequential_257_lstm_771_while_cond_4720085___redundant_placeholder1e
asequential_257_lstm_771_while_sequential_257_lstm_771_while_cond_4720085___redundant_placeholder2e
asequential_257_lstm_771_while_sequential_257_lstm_771_while_cond_4720085___redundant_placeholder3*
&sequential_257_lstm_771_while_identity
?
"sequential_257/lstm_771/while/LessLess)sequential_257_lstm_771_while_placeholderJsequential_257_lstm_771_while_less_sequential_257_lstm_771_strided_slice_1*
T0*
_output_shapes
: {
&sequential_257/lstm_771/while/IdentityIdentity&sequential_257/lstm_771/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_257_lstm_771_while_identity/sequential_257/lstm_771/while/Identity:output:0*(
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4720954

inputs(
lstm_cell_772_4720872:	d?(
lstm_cell_772_4720874:	2?$
lstm_cell_772_4720876:	?
identity??%lstm_cell_772/StatefulPartitionedCall?while;
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
%lstm_cell_772/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_772_4720872lstm_cell_772_4720874lstm_cell_772_4720876*
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4720871n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_772_4720872lstm_cell_772_4720874lstm_cell_772_4720876*
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
while_body_4720885*
condR
while_cond_4720884*K
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
NoOpNoOp&^lstm_cell_772/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_772/StatefulPartitionedCall%lstm_cell_772/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_4724010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4724010___redundant_placeholder05
1while_while_cond_4724010___redundant_placeholder15
1while_while_cond_4724010___redundant_placeholder25
1while_while_cond_4724010___redundant_placeholder3
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
while_cond_4720725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4720725___redundant_placeholder05
1while_while_cond_4720725___redundant_placeholder15
1while_while_cond_4720725___redundant_placeholder25
1while_while_cond_4720725___redundant_placeholder3
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
*__inference_lstm_773_layer_call_fn_4724898

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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4722169o
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
while_body_4720885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_772_4720909_0:	d?0
while_lstm_cell_772_4720911_0:	2?,
while_lstm_cell_772_4720913_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_772_4720909:	d?.
while_lstm_cell_772_4720911:	2?*
while_lstm_cell_772_4720913:	???+while/lstm_cell_772/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_772/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_772_4720909_0while_lstm_cell_772_4720911_0while_lstm_cell_772_4720913_0*
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4720871?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_772/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_772/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_772/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_772/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_772_4720909while_lstm_cell_772_4720909_0"<
while_lstm_cell_772_4720911while_lstm_cell_772_4720911_0"<
while_lstm_cell_772_4720913while_lstm_cell_772_4720913_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_772/StatefulPartitionedCall+while/lstm_cell_772/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4723622

inputsH
5lstm_771_lstm_cell_771_matmul_readvariableop_resource:	?J
7lstm_771_lstm_cell_771_matmul_1_readvariableop_resource:	d?E
6lstm_771_lstm_cell_771_biasadd_readvariableop_resource:	?H
5lstm_772_lstm_cell_772_matmul_readvariableop_resource:	d?J
7lstm_772_lstm_cell_772_matmul_1_readvariableop_resource:	2?E
6lstm_772_lstm_cell_772_biasadd_readvariableop_resource:	?G
5lstm_773_lstm_cell_773_matmul_readvariableop_resource:2(I
7lstm_773_lstm_cell_773_matmul_1_readvariableop_resource:
(D
6lstm_773_lstm_cell_773_biasadd_readvariableop_resource:(:
(dense_257_matmul_readvariableop_resource:
7
)dense_257_biasadd_readvariableop_resource:
identity?? dense_257/BiasAdd/ReadVariableOp?dense_257/MatMul/ReadVariableOp?-lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp?,lstm_771/lstm_cell_771/MatMul/ReadVariableOp?.lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp?lstm_771/while?-lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp?,lstm_772/lstm_cell_772/MatMul/ReadVariableOp?.lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp?lstm_772/while?-lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp?,lstm_773/lstm_cell_773/MatMul/ReadVariableOp?.lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp?lstm_773/whileD
lstm_771/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_771/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_771/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_771/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_771/strided_sliceStridedSlicelstm_771/Shape:output:0%lstm_771/strided_slice/stack:output:0'lstm_771/strided_slice/stack_1:output:0'lstm_771/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_771/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_771/zeros/packedPacklstm_771/strided_slice:output:0 lstm_771/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_771/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_771/zerosFilllstm_771/zeros/packed:output:0lstm_771/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_771/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_771/zeros_1/packedPacklstm_771/strided_slice:output:0"lstm_771/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_771/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_771/zeros_1Fill lstm_771/zeros_1/packed:output:0lstm_771/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_771/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_771/transpose	Transposeinputs lstm_771/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_771/Shape_1Shapelstm_771/transpose:y:0*
T0*
_output_shapes
:h
lstm_771/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_771/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_771/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_771/strided_slice_1StridedSlicelstm_771/Shape_1:output:0'lstm_771/strided_slice_1/stack:output:0)lstm_771/strided_slice_1/stack_1:output:0)lstm_771/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_771/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_771/TensorArrayV2TensorListReserve-lstm_771/TensorArrayV2/element_shape:output:0!lstm_771/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_771/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_771/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_771/transpose:y:0Glstm_771/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_771/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_771/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_771/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_771/strided_slice_2StridedSlicelstm_771/transpose:y:0'lstm_771/strided_slice_2/stack:output:0)lstm_771/strided_slice_2/stack_1:output:0)lstm_771/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_771/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp5lstm_771_lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_771/lstm_cell_771/MatMulMatMul!lstm_771/strided_slice_2:output:04lstm_771/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_771/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp7lstm_771_lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_771/lstm_cell_771/MatMul_1MatMullstm_771/zeros:output:06lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_771/lstm_cell_771/addAddV2'lstm_771/lstm_cell_771/MatMul:product:0)lstm_771/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_771/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp6lstm_771_lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_771/lstm_cell_771/BiasAddBiasAddlstm_771/lstm_cell_771/add:z:05lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_771/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_771/lstm_cell_771/splitSplit/lstm_771/lstm_cell_771/split/split_dim:output:0'lstm_771/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_771/lstm_cell_771/SigmoidSigmoid%lstm_771/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_771/lstm_cell_771/Sigmoid_1Sigmoid%lstm_771/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_771/lstm_cell_771/mulMul$lstm_771/lstm_cell_771/Sigmoid_1:y:0lstm_771/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_771/lstm_cell_771/ReluRelu%lstm_771/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_771/lstm_cell_771/mul_1Mul"lstm_771/lstm_cell_771/Sigmoid:y:0)lstm_771/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_771/lstm_cell_771/add_1AddV2lstm_771/lstm_cell_771/mul:z:0 lstm_771/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_771/lstm_cell_771/Sigmoid_2Sigmoid%lstm_771/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_771/lstm_cell_771/Relu_1Relu lstm_771/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_771/lstm_cell_771/mul_2Mul$lstm_771/lstm_cell_771/Sigmoid_2:y:0+lstm_771/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_771/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_771/TensorArrayV2_1TensorListReserve/lstm_771/TensorArrayV2_1/element_shape:output:0!lstm_771/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_771/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_771/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_771/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_771/whileWhile$lstm_771/while/loop_counter:output:0*lstm_771/while/maximum_iterations:output:0lstm_771/time:output:0!lstm_771/TensorArrayV2_1:handle:0lstm_771/zeros:output:0lstm_771/zeros_1:output:0!lstm_771/strided_slice_1:output:0@lstm_771/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_771_lstm_cell_771_matmul_readvariableop_resource7lstm_771_lstm_cell_771_matmul_1_readvariableop_resource6lstm_771_lstm_cell_771_biasadd_readvariableop_resource*
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
lstm_771_while_body_4723254*'
condR
lstm_771_while_cond_4723253*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_771/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_771/TensorArrayV2Stack/TensorListStackTensorListStacklstm_771/while:output:3Blstm_771/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_771/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_771/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_771/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_771/strided_slice_3StridedSlice4lstm_771/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_771/strided_slice_3/stack:output:0)lstm_771/strided_slice_3/stack_1:output:0)lstm_771/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_771/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_771/transpose_1	Transpose4lstm_771/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_771/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_771/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_772/ShapeShapelstm_771/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_772/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_772/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_772/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_772/strided_sliceStridedSlicelstm_772/Shape:output:0%lstm_772/strided_slice/stack:output:0'lstm_772/strided_slice/stack_1:output:0'lstm_772/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_772/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_772/zeros/packedPacklstm_772/strided_slice:output:0 lstm_772/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_772/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_772/zerosFilllstm_772/zeros/packed:output:0lstm_772/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_772/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_772/zeros_1/packedPacklstm_772/strided_slice:output:0"lstm_772/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_772/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_772/zeros_1Fill lstm_772/zeros_1/packed:output:0lstm_772/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_772/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_772/transpose	Transposelstm_771/transpose_1:y:0 lstm_772/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_772/Shape_1Shapelstm_772/transpose:y:0*
T0*
_output_shapes
:h
lstm_772/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_772/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_772/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_772/strided_slice_1StridedSlicelstm_772/Shape_1:output:0'lstm_772/strided_slice_1/stack:output:0)lstm_772/strided_slice_1/stack_1:output:0)lstm_772/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_772/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_772/TensorArrayV2TensorListReserve-lstm_772/TensorArrayV2/element_shape:output:0!lstm_772/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_772/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_772/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_772/transpose:y:0Glstm_772/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_772/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_772/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_772/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_772/strided_slice_2StridedSlicelstm_772/transpose:y:0'lstm_772/strided_slice_2/stack:output:0)lstm_772/strided_slice_2/stack_1:output:0)lstm_772/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_772/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp5lstm_772_lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_772/lstm_cell_772/MatMulMatMul!lstm_772/strided_slice_2:output:04lstm_772/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_772/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp7lstm_772_lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_772/lstm_cell_772/MatMul_1MatMullstm_772/zeros:output:06lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_772/lstm_cell_772/addAddV2'lstm_772/lstm_cell_772/MatMul:product:0)lstm_772/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_772/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp6lstm_772_lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_772/lstm_cell_772/BiasAddBiasAddlstm_772/lstm_cell_772/add:z:05lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_772/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_772/lstm_cell_772/splitSplit/lstm_772/lstm_cell_772/split/split_dim:output:0'lstm_772/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_772/lstm_cell_772/SigmoidSigmoid%lstm_772/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_772/lstm_cell_772/Sigmoid_1Sigmoid%lstm_772/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_772/lstm_cell_772/mulMul$lstm_772/lstm_cell_772/Sigmoid_1:y:0lstm_772/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_772/lstm_cell_772/ReluRelu%lstm_772/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_772/lstm_cell_772/mul_1Mul"lstm_772/lstm_cell_772/Sigmoid:y:0)lstm_772/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_772/lstm_cell_772/add_1AddV2lstm_772/lstm_cell_772/mul:z:0 lstm_772/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_772/lstm_cell_772/Sigmoid_2Sigmoid%lstm_772/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_772/lstm_cell_772/Relu_1Relu lstm_772/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_772/lstm_cell_772/mul_2Mul$lstm_772/lstm_cell_772/Sigmoid_2:y:0+lstm_772/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_772/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_772/TensorArrayV2_1TensorListReserve/lstm_772/TensorArrayV2_1/element_shape:output:0!lstm_772/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_772/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_772/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_772/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_772/whileWhile$lstm_772/while/loop_counter:output:0*lstm_772/while/maximum_iterations:output:0lstm_772/time:output:0!lstm_772/TensorArrayV2_1:handle:0lstm_772/zeros:output:0lstm_772/zeros_1:output:0!lstm_772/strided_slice_1:output:0@lstm_772/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_772_lstm_cell_772_matmul_readvariableop_resource7lstm_772_lstm_cell_772_matmul_1_readvariableop_resource6lstm_772_lstm_cell_772_biasadd_readvariableop_resource*
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
lstm_772_while_body_4723393*'
condR
lstm_772_while_cond_4723392*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_772/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_772/TensorArrayV2Stack/TensorListStackTensorListStacklstm_772/while:output:3Blstm_772/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_772/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_772/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_772/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_772/strided_slice_3StridedSlice4lstm_772/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_772/strided_slice_3/stack:output:0)lstm_772/strided_slice_3/stack_1:output:0)lstm_772/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_772/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_772/transpose_1	Transpose4lstm_772/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_772/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_772/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_773/ShapeShapelstm_772/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_773/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_773/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_773/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_773/strided_sliceStridedSlicelstm_773/Shape:output:0%lstm_773/strided_slice/stack:output:0'lstm_773/strided_slice/stack_1:output:0'lstm_773/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_773/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_773/zeros/packedPacklstm_773/strided_slice:output:0 lstm_773/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_773/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_773/zerosFilllstm_773/zeros/packed:output:0lstm_773/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_773/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_773/zeros_1/packedPacklstm_773/strided_slice:output:0"lstm_773/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_773/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_773/zeros_1Fill lstm_773/zeros_1/packed:output:0lstm_773/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_773/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_773/transpose	Transposelstm_772/transpose_1:y:0 lstm_773/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_773/Shape_1Shapelstm_773/transpose:y:0*
T0*
_output_shapes
:h
lstm_773/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_773/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_773/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_773/strided_slice_1StridedSlicelstm_773/Shape_1:output:0'lstm_773/strided_slice_1/stack:output:0)lstm_773/strided_slice_1/stack_1:output:0)lstm_773/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_773/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_773/TensorArrayV2TensorListReserve-lstm_773/TensorArrayV2/element_shape:output:0!lstm_773/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_773/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_773/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_773/transpose:y:0Glstm_773/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_773/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_773/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_773/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_773/strided_slice_2StridedSlicelstm_773/transpose:y:0'lstm_773/strided_slice_2/stack:output:0)lstm_773/strided_slice_2/stack_1:output:0)lstm_773/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_773/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp5lstm_773_lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_773/lstm_cell_773/MatMulMatMul!lstm_773/strided_slice_2:output:04lstm_773/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_773/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp7lstm_773_lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_773/lstm_cell_773/MatMul_1MatMullstm_773/zeros:output:06lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_773/lstm_cell_773/addAddV2'lstm_773/lstm_cell_773/MatMul:product:0)lstm_773/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_773/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp6lstm_773_lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_773/lstm_cell_773/BiasAddBiasAddlstm_773/lstm_cell_773/add:z:05lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_773/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_773/lstm_cell_773/splitSplit/lstm_773/lstm_cell_773/split/split_dim:output:0'lstm_773/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_773/lstm_cell_773/SigmoidSigmoid%lstm_773/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_773/lstm_cell_773/Sigmoid_1Sigmoid%lstm_773/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_773/lstm_cell_773/mulMul$lstm_773/lstm_cell_773/Sigmoid_1:y:0lstm_773/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_773/lstm_cell_773/ReluRelu%lstm_773/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_773/lstm_cell_773/mul_1Mul"lstm_773/lstm_cell_773/Sigmoid:y:0)lstm_773/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_773/lstm_cell_773/add_1AddV2lstm_773/lstm_cell_773/mul:z:0 lstm_773/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_773/lstm_cell_773/Sigmoid_2Sigmoid%lstm_773/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_773/lstm_cell_773/Relu_1Relu lstm_773/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_773/lstm_cell_773/mul_2Mul$lstm_773/lstm_cell_773/Sigmoid_2:y:0+lstm_773/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_773/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_773/TensorArrayV2_1TensorListReserve/lstm_773/TensorArrayV2_1/element_shape:output:0!lstm_773/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_773/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_773/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_773/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_773/whileWhile$lstm_773/while/loop_counter:output:0*lstm_773/while/maximum_iterations:output:0lstm_773/time:output:0!lstm_773/TensorArrayV2_1:handle:0lstm_773/zeros:output:0lstm_773/zeros_1:output:0!lstm_773/strided_slice_1:output:0@lstm_773/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_773_lstm_cell_773_matmul_readvariableop_resource7lstm_773_lstm_cell_773_matmul_1_readvariableop_resource6lstm_773_lstm_cell_773_biasadd_readvariableop_resource*
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
lstm_773_while_body_4723532*'
condR
lstm_773_while_cond_4723531*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_773/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_773/TensorArrayV2Stack/TensorListStackTensorListStacklstm_773/while:output:3Blstm_773/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_773/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_773/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_773/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_773/strided_slice_3StridedSlice4lstm_773/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_773/strided_slice_3/stack:output:0)lstm_773/strided_slice_3/stack_1:output:0)lstm_773/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_773/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_773/transpose_1	Transpose4lstm_773/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_773/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_773/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_257/MatMul/ReadVariableOpReadVariableOp(dense_257_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_257/MatMulMatMul!lstm_773/strided_slice_3:output:0'dense_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_257/BiasAdd/ReadVariableOpReadVariableOp)dense_257_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_257/BiasAddBiasAdddense_257/MatMul:product:0(dense_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_257/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_257/BiasAdd/ReadVariableOp ^dense_257/MatMul/ReadVariableOp.^lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp-^lstm_771/lstm_cell_771/MatMul/ReadVariableOp/^lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp^lstm_771/while.^lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp-^lstm_772/lstm_cell_772/MatMul/ReadVariableOp/^lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp^lstm_772/while.^lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp-^lstm_773/lstm_cell_773/MatMul/ReadVariableOp/^lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp^lstm_773/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_257/BiasAdd/ReadVariableOp dense_257/BiasAdd/ReadVariableOp2B
dense_257/MatMul/ReadVariableOpdense_257/MatMul/ReadVariableOp2^
-lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp-lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp2\
,lstm_771/lstm_cell_771/MatMul/ReadVariableOp,lstm_771/lstm_cell_771/MatMul/ReadVariableOp2`
.lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp.lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp2 
lstm_771/whilelstm_771/while2^
-lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp-lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp2\
,lstm_772/lstm_cell_772/MatMul/ReadVariableOp,lstm_772/lstm_cell_772/MatMul/ReadVariableOp2`
.lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp.lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp2 
lstm_772/whilelstm_772/while2^
-lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp-lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp2\
,lstm_773/lstm_cell_773/MatMul/ReadVariableOp,lstm_773/lstm_cell_773/MatMul/ReadVariableOp2`
.lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp.lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp2 
lstm_773/whilelstm_773/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_771_layer_call_and_return_conditional_losses_4720795

inputs(
lstm_cell_771_4720713:	?(
lstm_cell_771_4720715:	d?$
lstm_cell_771_4720717:	?
identity??%lstm_cell_771/StatefulPartitionedCall?while;
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
%lstm_cell_771/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_771_4720713lstm_cell_771_4720715lstm_cell_771_4720717*
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4720667n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_771_4720713lstm_cell_771_4720715lstm_cell_771_4720717*
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
while_body_4720726*
condR
while_cond_4720725*K
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
NoOpNoOp&^lstm_cell_771/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_771/StatefulPartitionedCall%lstm_cell_771/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_771_layer_call_and_return_conditional_losses_4722499

inputs?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4722415*
condR
while_cond_4722414*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_772_while_body_4723393.
*lstm_772_while_lstm_772_while_loop_counter4
0lstm_772_while_lstm_772_while_maximum_iterations
lstm_772_while_placeholder 
lstm_772_while_placeholder_1 
lstm_772_while_placeholder_2 
lstm_772_while_placeholder_3-
)lstm_772_while_lstm_772_strided_slice_1_0i
elstm_772_while_tensorarrayv2read_tensorlistgetitem_lstm_772_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_772_while_lstm_cell_772_matmul_readvariableop_resource_0:	d?R
?lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?M
>lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
lstm_772_while_identity
lstm_772_while_identity_1
lstm_772_while_identity_2
lstm_772_while_identity_3
lstm_772_while_identity_4
lstm_772_while_identity_5+
'lstm_772_while_lstm_772_strided_slice_1g
clstm_772_while_tensorarrayv2read_tensorlistgetitem_lstm_772_tensorarrayunstack_tensorlistfromtensorN
;lstm_772_while_lstm_cell_772_matmul_readvariableop_resource:	d?P
=lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource:	2?K
<lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource:	???3lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp?2lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp?4lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp?
@lstm_772/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_772/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_772_while_tensorarrayv2read_tensorlistgetitem_lstm_772_tensorarrayunstack_tensorlistfromtensor_0lstm_772_while_placeholderIlstm_772/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_772/while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp=lstm_772_while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_772/while/lstm_cell_772/MatMulMatMul9lstm_772/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp?lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_772/while/lstm_cell_772/MatMul_1MatMullstm_772_while_placeholder_2<lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_772/while/lstm_cell_772/addAddV2-lstm_772/while/lstm_cell_772/MatMul:product:0/lstm_772/while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp>lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_772/while/lstm_cell_772/BiasAddBiasAdd$lstm_772/while/lstm_cell_772/add:z:0;lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_772/while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_772/while/lstm_cell_772/splitSplit5lstm_772/while/lstm_cell_772/split/split_dim:output:0-lstm_772/while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_772/while/lstm_cell_772/SigmoidSigmoid+lstm_772/while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_772/while/lstm_cell_772/Sigmoid_1Sigmoid+lstm_772/while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_772/while/lstm_cell_772/mulMul*lstm_772/while/lstm_cell_772/Sigmoid_1:y:0lstm_772_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_772/while/lstm_cell_772/ReluRelu+lstm_772/while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_772/while/lstm_cell_772/mul_1Mul(lstm_772/while/lstm_cell_772/Sigmoid:y:0/lstm_772/while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_772/while/lstm_cell_772/add_1AddV2$lstm_772/while/lstm_cell_772/mul:z:0&lstm_772/while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_772/while/lstm_cell_772/Sigmoid_2Sigmoid+lstm_772/while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_772/while/lstm_cell_772/Relu_1Relu&lstm_772/while/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_772/while/lstm_cell_772/mul_2Mul*lstm_772/while/lstm_cell_772/Sigmoid_2:y:01lstm_772/while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_772/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_772_while_placeholder_1lstm_772_while_placeholder&lstm_772/while/lstm_cell_772/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_772/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_772/while/addAddV2lstm_772_while_placeholderlstm_772/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_772/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_772/while/add_1AddV2*lstm_772_while_lstm_772_while_loop_counterlstm_772/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_772/while/IdentityIdentitylstm_772/while/add_1:z:0^lstm_772/while/NoOp*
T0*
_output_shapes
: ?
lstm_772/while/Identity_1Identity0lstm_772_while_lstm_772_while_maximum_iterations^lstm_772/while/NoOp*
T0*
_output_shapes
: t
lstm_772/while/Identity_2Identitylstm_772/while/add:z:0^lstm_772/while/NoOp*
T0*
_output_shapes
: ?
lstm_772/while/Identity_3IdentityClstm_772/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_772/while/NoOp*
T0*
_output_shapes
: ?
lstm_772/while/Identity_4Identity&lstm_772/while/lstm_cell_772/mul_2:z:0^lstm_772/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_772/while/Identity_5Identity&lstm_772/while/lstm_cell_772/add_1:z:0^lstm_772/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_772/while/NoOpNoOp4^lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp3^lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp5^lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_772_while_identity lstm_772/while/Identity:output:0"?
lstm_772_while_identity_1"lstm_772/while/Identity_1:output:0"?
lstm_772_while_identity_2"lstm_772/while/Identity_2:output:0"?
lstm_772_while_identity_3"lstm_772/while/Identity_3:output:0"?
lstm_772_while_identity_4"lstm_772/while/Identity_4:output:0"?
lstm_772_while_identity_5"lstm_772/while/Identity_5:output:0"T
'lstm_772_while_lstm_772_strided_slice_1)lstm_772_while_lstm_772_strided_slice_1_0"~
<lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource>lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource_0"?
=lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource?lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource_0"|
;lstm_772_while_lstm_cell_772_matmul_readvariableop_resource=lstm_772_while_lstm_cell_772_matmul_readvariableop_resource_0"?
clstm_772_while_tensorarrayv2read_tensorlistgetitem_lstm_772_tensorarrayunstack_tensorlistfromtensorelstm_772_while_tensorarrayv2read_tensorlistgetitem_lstm_772_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp3lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp2h
2lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp2lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp2l
4lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp4lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_771_while_body_4722827.
*lstm_771_while_lstm_771_while_loop_counter4
0lstm_771_while_lstm_771_while_maximum_iterations
lstm_771_while_placeholder 
lstm_771_while_placeholder_1 
lstm_771_while_placeholder_2 
lstm_771_while_placeholder_3-
)lstm_771_while_lstm_771_strided_slice_1_0i
elstm_771_while_tensorarrayv2read_tensorlistgetitem_lstm_771_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_771_while_lstm_cell_771_matmul_readvariableop_resource_0:	?R
?lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?M
>lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
lstm_771_while_identity
lstm_771_while_identity_1
lstm_771_while_identity_2
lstm_771_while_identity_3
lstm_771_while_identity_4
lstm_771_while_identity_5+
'lstm_771_while_lstm_771_strided_slice_1g
clstm_771_while_tensorarrayv2read_tensorlistgetitem_lstm_771_tensorarrayunstack_tensorlistfromtensorN
;lstm_771_while_lstm_cell_771_matmul_readvariableop_resource:	?P
=lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource:	d?K
<lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource:	???3lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp?2lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp?4lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp?
@lstm_771/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_771/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_771_while_tensorarrayv2read_tensorlistgetitem_lstm_771_tensorarrayunstack_tensorlistfromtensor_0lstm_771_while_placeholderIlstm_771/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_771/while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp=lstm_771_while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_771/while/lstm_cell_771/MatMulMatMul9lstm_771/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp?lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_771/while/lstm_cell_771/MatMul_1MatMullstm_771_while_placeholder_2<lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_771/while/lstm_cell_771/addAddV2-lstm_771/while/lstm_cell_771/MatMul:product:0/lstm_771/while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp>lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_771/while/lstm_cell_771/BiasAddBiasAdd$lstm_771/while/lstm_cell_771/add:z:0;lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_771/while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_771/while/lstm_cell_771/splitSplit5lstm_771/while/lstm_cell_771/split/split_dim:output:0-lstm_771/while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_771/while/lstm_cell_771/SigmoidSigmoid+lstm_771/while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_771/while/lstm_cell_771/Sigmoid_1Sigmoid+lstm_771/while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_771/while/lstm_cell_771/mulMul*lstm_771/while/lstm_cell_771/Sigmoid_1:y:0lstm_771_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_771/while/lstm_cell_771/ReluRelu+lstm_771/while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_771/while/lstm_cell_771/mul_1Mul(lstm_771/while/lstm_cell_771/Sigmoid:y:0/lstm_771/while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_771/while/lstm_cell_771/add_1AddV2$lstm_771/while/lstm_cell_771/mul:z:0&lstm_771/while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_771/while/lstm_cell_771/Sigmoid_2Sigmoid+lstm_771/while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_771/while/lstm_cell_771/Relu_1Relu&lstm_771/while/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_771/while/lstm_cell_771/mul_2Mul*lstm_771/while/lstm_cell_771/Sigmoid_2:y:01lstm_771/while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_771/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_771_while_placeholder_1lstm_771_while_placeholder&lstm_771/while/lstm_cell_771/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_771/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_771/while/addAddV2lstm_771_while_placeholderlstm_771/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_771/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_771/while/add_1AddV2*lstm_771_while_lstm_771_while_loop_counterlstm_771/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_771/while/IdentityIdentitylstm_771/while/add_1:z:0^lstm_771/while/NoOp*
T0*
_output_shapes
: ?
lstm_771/while/Identity_1Identity0lstm_771_while_lstm_771_while_maximum_iterations^lstm_771/while/NoOp*
T0*
_output_shapes
: t
lstm_771/while/Identity_2Identitylstm_771/while/add:z:0^lstm_771/while/NoOp*
T0*
_output_shapes
: ?
lstm_771/while/Identity_3IdentityClstm_771/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_771/while/NoOp*
T0*
_output_shapes
: ?
lstm_771/while/Identity_4Identity&lstm_771/while/lstm_cell_771/mul_2:z:0^lstm_771/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_771/while/Identity_5Identity&lstm_771/while/lstm_cell_771/add_1:z:0^lstm_771/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_771/while/NoOpNoOp4^lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp3^lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp5^lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_771_while_identity lstm_771/while/Identity:output:0"?
lstm_771_while_identity_1"lstm_771/while/Identity_1:output:0"?
lstm_771_while_identity_2"lstm_771/while/Identity_2:output:0"?
lstm_771_while_identity_3"lstm_771/while/Identity_3:output:0"?
lstm_771_while_identity_4"lstm_771/while/Identity_4:output:0"?
lstm_771_while_identity_5"lstm_771/while/Identity_5:output:0"T
'lstm_771_while_lstm_771_strided_slice_1)lstm_771_while_lstm_771_strided_slice_1_0"~
<lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource>lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource_0"?
=lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource?lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource_0"|
;lstm_771_while_lstm_cell_771_matmul_readvariableop_resource=lstm_771_while_lstm_cell_771_matmul_readvariableop_resource_0"?
clstm_771_while_tensorarrayv2read_tensorlistgetitem_lstm_771_tensorarrayunstack_tensorlistfromtensorelstm_771_while_tensorarrayv2read_tensorlistgetitem_lstm_771_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp3lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp2h
2lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp2lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp2l
4lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp4lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_773_while_cond_4723104.
*lstm_773_while_lstm_773_while_loop_counter4
0lstm_773_while_lstm_773_while_maximum_iterations
lstm_773_while_placeholder 
lstm_773_while_placeholder_1 
lstm_773_while_placeholder_2 
lstm_773_while_placeholder_30
,lstm_773_while_less_lstm_773_strided_slice_1G
Clstm_773_while_lstm_773_while_cond_4723104___redundant_placeholder0G
Clstm_773_while_lstm_773_while_cond_4723104___redundant_placeholder1G
Clstm_773_while_lstm_773_while_cond_4723104___redundant_placeholder2G
Clstm_773_while_lstm_773_while_cond_4723104___redundant_placeholder3
lstm_773_while_identity
?
lstm_773/while/LessLesslstm_773_while_placeholder,lstm_773_while_less_lstm_773_strided_slice_1*
T0*
_output_shapes
: ]
lstm_773/while/IdentityIdentitylstm_773/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_773_while_identity lstm_773/while/Identity:output:0*(
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724568
inputs_0?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4724484*
condR
while_cond_4724483*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4724341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4725555

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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4725751

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
while_cond_4725242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4725242___redundant_placeholder05
1while_while_cond_4725242___redundant_placeholder15
1while_while_cond_4725242___redundant_placeholder25
1while_while_cond_4725242___redundant_placeholder3
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
while_body_4725243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4721017

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

lstm_771_while_body_4723254.
*lstm_771_while_lstm_771_while_loop_counter4
0lstm_771_while_lstm_771_while_maximum_iterations
lstm_771_while_placeholder 
lstm_771_while_placeholder_1 
lstm_771_while_placeholder_2 
lstm_771_while_placeholder_3-
)lstm_771_while_lstm_771_strided_slice_1_0i
elstm_771_while_tensorarrayv2read_tensorlistgetitem_lstm_771_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_771_while_lstm_cell_771_matmul_readvariableop_resource_0:	?R
?lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?M
>lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
lstm_771_while_identity
lstm_771_while_identity_1
lstm_771_while_identity_2
lstm_771_while_identity_3
lstm_771_while_identity_4
lstm_771_while_identity_5+
'lstm_771_while_lstm_771_strided_slice_1g
clstm_771_while_tensorarrayv2read_tensorlistgetitem_lstm_771_tensorarrayunstack_tensorlistfromtensorN
;lstm_771_while_lstm_cell_771_matmul_readvariableop_resource:	?P
=lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource:	d?K
<lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource:	???3lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp?2lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp?4lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp?
@lstm_771/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_771/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_771_while_tensorarrayv2read_tensorlistgetitem_lstm_771_tensorarrayunstack_tensorlistfromtensor_0lstm_771_while_placeholderIlstm_771/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_771/while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp=lstm_771_while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_771/while/lstm_cell_771/MatMulMatMul9lstm_771/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp?lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_771/while/lstm_cell_771/MatMul_1MatMullstm_771_while_placeholder_2<lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_771/while/lstm_cell_771/addAddV2-lstm_771/while/lstm_cell_771/MatMul:product:0/lstm_771/while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp>lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_771/while/lstm_cell_771/BiasAddBiasAdd$lstm_771/while/lstm_cell_771/add:z:0;lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_771/while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_771/while/lstm_cell_771/splitSplit5lstm_771/while/lstm_cell_771/split/split_dim:output:0-lstm_771/while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_771/while/lstm_cell_771/SigmoidSigmoid+lstm_771/while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_771/while/lstm_cell_771/Sigmoid_1Sigmoid+lstm_771/while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_771/while/lstm_cell_771/mulMul*lstm_771/while/lstm_cell_771/Sigmoid_1:y:0lstm_771_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_771/while/lstm_cell_771/ReluRelu+lstm_771/while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_771/while/lstm_cell_771/mul_1Mul(lstm_771/while/lstm_cell_771/Sigmoid:y:0/lstm_771/while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_771/while/lstm_cell_771/add_1AddV2$lstm_771/while/lstm_cell_771/mul:z:0&lstm_771/while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_771/while/lstm_cell_771/Sigmoid_2Sigmoid+lstm_771/while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_771/while/lstm_cell_771/Relu_1Relu&lstm_771/while/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_771/while/lstm_cell_771/mul_2Mul*lstm_771/while/lstm_cell_771/Sigmoid_2:y:01lstm_771/while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_771/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_771_while_placeholder_1lstm_771_while_placeholder&lstm_771/while/lstm_cell_771/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_771/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_771/while/addAddV2lstm_771_while_placeholderlstm_771/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_771/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_771/while/add_1AddV2*lstm_771_while_lstm_771_while_loop_counterlstm_771/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_771/while/IdentityIdentitylstm_771/while/add_1:z:0^lstm_771/while/NoOp*
T0*
_output_shapes
: ?
lstm_771/while/Identity_1Identity0lstm_771_while_lstm_771_while_maximum_iterations^lstm_771/while/NoOp*
T0*
_output_shapes
: t
lstm_771/while/Identity_2Identitylstm_771/while/add:z:0^lstm_771/while/NoOp*
T0*
_output_shapes
: ?
lstm_771/while/Identity_3IdentityClstm_771/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_771/while/NoOp*
T0*
_output_shapes
: ?
lstm_771/while/Identity_4Identity&lstm_771/while/lstm_cell_771/mul_2:z:0^lstm_771/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_771/while/Identity_5Identity&lstm_771/while/lstm_cell_771/add_1:z:0^lstm_771/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_771/while/NoOpNoOp4^lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp3^lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp5^lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_771_while_identity lstm_771/while/Identity:output:0"?
lstm_771_while_identity_1"lstm_771/while/Identity_1:output:0"?
lstm_771_while_identity_2"lstm_771/while/Identity_2:output:0"?
lstm_771_while_identity_3"lstm_771/while/Identity_3:output:0"?
lstm_771_while_identity_4"lstm_771/while/Identity_4:output:0"?
lstm_771_while_identity_5"lstm_771/while/Identity_5:output:0"T
'lstm_771_while_lstm_771_strided_slice_1)lstm_771_while_lstm_771_strided_slice_1_0"~
<lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource>lstm_771_while_lstm_cell_771_biasadd_readvariableop_resource_0"?
=lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource?lstm_771_while_lstm_cell_771_matmul_1_readvariableop_resource_0"|
;lstm_771_while_lstm_cell_771_matmul_readvariableop_resource=lstm_771_while_lstm_cell_771_matmul_readvariableop_resource_0"?
clstm_771_while_tensorarrayv2read_tensorlistgetitem_lstm_771_tensorarrayunstack_tensorlistfromtensorelstm_771_while_tensorarrayv2read_tensorlistgetitem_lstm_771_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp3lstm_771/while/lstm_cell_771/BiasAdd/ReadVariableOp2h
2lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp2lstm_771/while/lstm_cell_771/MatMul/ReadVariableOp2l
4lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp4lstm_771/while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4723809
inputs_0?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4723725*
condR
while_cond_4723724*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
+__inference_dense_257_layer_call_fn_4725479

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
F__inference_dense_257_layer_call_and_return_conditional_losses_4721971o
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

?
0__inference_sequential_257_layer_call_fn_4722619
lstm_771_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_771_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4722567o
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
_user_specified_namelstm_771_input
?
?
/__inference_lstm_cell_772_layer_call_fn_4725621

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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4721017o
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
while_cond_4721075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4721075___redundant_placeholder05
1while_while_cond_4721075___redundant_placeholder15
1while_while_cond_4721075___redundant_placeholder25
1while_while_cond_4721075___redundant_placeholder3
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
while_cond_4724340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4724340___redundant_placeholder05
1while_while_cond_4724340___redundant_placeholder15
1while_while_cond_4724340___redundant_placeholder25
1while_while_cond_4724340___redundant_placeholder3
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
0__inference_sequential_257_layer_call_fn_4722003
lstm_771_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_771_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4721978o
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
_user_specified_namelstm_771_input
?	
?
F__inference_dense_257_layer_call_and_return_conditional_losses_4721971

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
while_cond_4724956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4724956___redundant_placeholder05
1while_while_cond_4724956___redundant_placeholder15
1while_while_cond_4724956___redundant_placeholder25
1while_while_cond_4724956___redundant_placeholder3
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4723952
inputs_0?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4723868*
condR
while_cond_4723867*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_773_layer_call_fn_4725702

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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4721221o
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

lstm_773_while_body_4723532.
*lstm_773_while_lstm_773_while_loop_counter4
0lstm_773_while_lstm_773_while_maximum_iterations
lstm_773_while_placeholder 
lstm_773_while_placeholder_1 
lstm_773_while_placeholder_2 
lstm_773_while_placeholder_3-
)lstm_773_while_lstm_773_strided_slice_1_0i
elstm_773_while_tensorarrayv2read_tensorlistgetitem_lstm_773_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_773_while_lstm_cell_773_matmul_readvariableop_resource_0:2(Q
?lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(L
>lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource_0:(
lstm_773_while_identity
lstm_773_while_identity_1
lstm_773_while_identity_2
lstm_773_while_identity_3
lstm_773_while_identity_4
lstm_773_while_identity_5+
'lstm_773_while_lstm_773_strided_slice_1g
clstm_773_while_tensorarrayv2read_tensorlistgetitem_lstm_773_tensorarrayunstack_tensorlistfromtensorM
;lstm_773_while_lstm_cell_773_matmul_readvariableop_resource:2(O
=lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource:
(J
<lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource:(??3lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp?2lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp?4lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp?
@lstm_773/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_773/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_773_while_tensorarrayv2read_tensorlistgetitem_lstm_773_tensorarrayunstack_tensorlistfromtensor_0lstm_773_while_placeholderIlstm_773/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_773/while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp=lstm_773_while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_773/while/lstm_cell_773/MatMulMatMul9lstm_773/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp?lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_773/while/lstm_cell_773/MatMul_1MatMullstm_773_while_placeholder_2<lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_773/while/lstm_cell_773/addAddV2-lstm_773/while/lstm_cell_773/MatMul:product:0/lstm_773/while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp>lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_773/while/lstm_cell_773/BiasAddBiasAdd$lstm_773/while/lstm_cell_773/add:z:0;lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_773/while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_773/while/lstm_cell_773/splitSplit5lstm_773/while/lstm_cell_773/split/split_dim:output:0-lstm_773/while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_773/while/lstm_cell_773/SigmoidSigmoid+lstm_773/while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_773/while/lstm_cell_773/Sigmoid_1Sigmoid+lstm_773/while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_773/while/lstm_cell_773/mulMul*lstm_773/while/lstm_cell_773/Sigmoid_1:y:0lstm_773_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_773/while/lstm_cell_773/ReluRelu+lstm_773/while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_773/while/lstm_cell_773/mul_1Mul(lstm_773/while/lstm_cell_773/Sigmoid:y:0/lstm_773/while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_773/while/lstm_cell_773/add_1AddV2$lstm_773/while/lstm_cell_773/mul:z:0&lstm_773/while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_773/while/lstm_cell_773/Sigmoid_2Sigmoid+lstm_773/while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_773/while/lstm_cell_773/Relu_1Relu&lstm_773/while/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_773/while/lstm_cell_773/mul_2Mul*lstm_773/while/lstm_cell_773/Sigmoid_2:y:01lstm_773/while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_773/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_773_while_placeholder_1lstm_773_while_placeholder&lstm_773/while/lstm_cell_773/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_773/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_773/while/addAddV2lstm_773_while_placeholderlstm_773/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_773/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_773/while/add_1AddV2*lstm_773_while_lstm_773_while_loop_counterlstm_773/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_773/while/IdentityIdentitylstm_773/while/add_1:z:0^lstm_773/while/NoOp*
T0*
_output_shapes
: ?
lstm_773/while/Identity_1Identity0lstm_773_while_lstm_773_while_maximum_iterations^lstm_773/while/NoOp*
T0*
_output_shapes
: t
lstm_773/while/Identity_2Identitylstm_773/while/add:z:0^lstm_773/while/NoOp*
T0*
_output_shapes
: ?
lstm_773/while/Identity_3IdentityClstm_773/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_773/while/NoOp*
T0*
_output_shapes
: ?
lstm_773/while/Identity_4Identity&lstm_773/while/lstm_cell_773/mul_2:z:0^lstm_773/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_773/while/Identity_5Identity&lstm_773/while/lstm_cell_773/add_1:z:0^lstm_773/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_773/while/NoOpNoOp4^lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp3^lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp5^lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_773_while_identity lstm_773/while/Identity:output:0"?
lstm_773_while_identity_1"lstm_773/while/Identity_1:output:0"?
lstm_773_while_identity_2"lstm_773/while/Identity_2:output:0"?
lstm_773_while_identity_3"lstm_773/while/Identity_3:output:0"?
lstm_773_while_identity_4"lstm_773/while/Identity_4:output:0"?
lstm_773_while_identity_5"lstm_773/while/Identity_5:output:0"T
'lstm_773_while_lstm_773_strided_slice_1)lstm_773_while_lstm_773_strided_slice_1_0"~
<lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource>lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource_0"?
=lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource?lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource_0"|
;lstm_773_while_lstm_cell_773_matmul_readvariableop_resource=lstm_773_while_lstm_cell_773_matmul_readvariableop_resource_0"?
clstm_773_while_tensorarrayv2read_tensorlistgetitem_lstm_773_tensorarrayunstack_tensorlistfromtensorelstm_773_while_tensorarrayv2read_tensorlistgetitem_lstm_773_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp3lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp2h
2lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp2lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp2l
4lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp4lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4725587

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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4722334

inputs?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4722250*
condR
while_cond_4722249*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4722250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4722169

inputs>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4722085*
condR
while_cond_4722084*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4720521

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
*__inference_lstm_772_layer_call_fn_4724271

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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4721803s
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
?
*__inference_lstm_773_layer_call_fn_4724876
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4721495o
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
while_cond_4724483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4724483___redundant_placeholder05
1while_while_cond_4724483___redundant_placeholder15
1while_while_cond_4724483___redundant_placeholder25
1while_while_cond_4724483___redundant_placeholder3
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
"__inference__wrapped_model_4720454
lstm_771_inputW
Dsequential_257_lstm_771_lstm_cell_771_matmul_readvariableop_resource:	?Y
Fsequential_257_lstm_771_lstm_cell_771_matmul_1_readvariableop_resource:	d?T
Esequential_257_lstm_771_lstm_cell_771_biasadd_readvariableop_resource:	?W
Dsequential_257_lstm_772_lstm_cell_772_matmul_readvariableop_resource:	d?Y
Fsequential_257_lstm_772_lstm_cell_772_matmul_1_readvariableop_resource:	2?T
Esequential_257_lstm_772_lstm_cell_772_biasadd_readvariableop_resource:	?V
Dsequential_257_lstm_773_lstm_cell_773_matmul_readvariableop_resource:2(X
Fsequential_257_lstm_773_lstm_cell_773_matmul_1_readvariableop_resource:
(S
Esequential_257_lstm_773_lstm_cell_773_biasadd_readvariableop_resource:(I
7sequential_257_dense_257_matmul_readvariableop_resource:
F
8sequential_257_dense_257_biasadd_readvariableop_resource:
identity??/sequential_257/dense_257/BiasAdd/ReadVariableOp?.sequential_257/dense_257/MatMul/ReadVariableOp?<sequential_257/lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp?;sequential_257/lstm_771/lstm_cell_771/MatMul/ReadVariableOp?=sequential_257/lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp?sequential_257/lstm_771/while?<sequential_257/lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp?;sequential_257/lstm_772/lstm_cell_772/MatMul/ReadVariableOp?=sequential_257/lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp?sequential_257/lstm_772/while?<sequential_257/lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp?;sequential_257/lstm_773/lstm_cell_773/MatMul/ReadVariableOp?=sequential_257/lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp?sequential_257/lstm_773/while[
sequential_257/lstm_771/ShapeShapelstm_771_input*
T0*
_output_shapes
:u
+sequential_257/lstm_771/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_257/lstm_771/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_257/lstm_771/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_257/lstm_771/strided_sliceStridedSlice&sequential_257/lstm_771/Shape:output:04sequential_257/lstm_771/strided_slice/stack:output:06sequential_257/lstm_771/strided_slice/stack_1:output:06sequential_257/lstm_771/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_257/lstm_771/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_257/lstm_771/zeros/packedPack.sequential_257/lstm_771/strided_slice:output:0/sequential_257/lstm_771/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_257/lstm_771/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_257/lstm_771/zerosFill-sequential_257/lstm_771/zeros/packed:output:0,sequential_257/lstm_771/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_257/lstm_771/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_257/lstm_771/zeros_1/packedPack.sequential_257/lstm_771/strided_slice:output:01sequential_257/lstm_771/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_257/lstm_771/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_257/lstm_771/zeros_1Fill/sequential_257/lstm_771/zeros_1/packed:output:0.sequential_257/lstm_771/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_257/lstm_771/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_257/lstm_771/transpose	Transposelstm_771_input/sequential_257/lstm_771/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_257/lstm_771/Shape_1Shape%sequential_257/lstm_771/transpose:y:0*
T0*
_output_shapes
:w
-sequential_257/lstm_771/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_257/lstm_771/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_257/lstm_771/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_257/lstm_771/strided_slice_1StridedSlice(sequential_257/lstm_771/Shape_1:output:06sequential_257/lstm_771/strided_slice_1/stack:output:08sequential_257/lstm_771/strided_slice_1/stack_1:output:08sequential_257/lstm_771/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_257/lstm_771/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_257/lstm_771/TensorArrayV2TensorListReserve<sequential_257/lstm_771/TensorArrayV2/element_shape:output:00sequential_257/lstm_771/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_257/lstm_771/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_257/lstm_771/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_257/lstm_771/transpose:y:0Vsequential_257/lstm_771/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_257/lstm_771/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_257/lstm_771/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_257/lstm_771/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_257/lstm_771/strided_slice_2StridedSlice%sequential_257/lstm_771/transpose:y:06sequential_257/lstm_771/strided_slice_2/stack:output:08sequential_257/lstm_771/strided_slice_2/stack_1:output:08sequential_257/lstm_771/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_257/lstm_771/lstm_cell_771/MatMul/ReadVariableOpReadVariableOpDsequential_257_lstm_771_lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_257/lstm_771/lstm_cell_771/MatMulMatMul0sequential_257/lstm_771/strided_slice_2:output:0Csequential_257/lstm_771/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_257/lstm_771/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOpFsequential_257_lstm_771_lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_257/lstm_771/lstm_cell_771/MatMul_1MatMul&sequential_257/lstm_771/zeros:output:0Esequential_257/lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_257/lstm_771/lstm_cell_771/addAddV26sequential_257/lstm_771/lstm_cell_771/MatMul:product:08sequential_257/lstm_771/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_257/lstm_771/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOpEsequential_257_lstm_771_lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_257/lstm_771/lstm_cell_771/BiasAddBiasAdd-sequential_257/lstm_771/lstm_cell_771/add:z:0Dsequential_257/lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_257/lstm_771/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_257/lstm_771/lstm_cell_771/splitSplit>sequential_257/lstm_771/lstm_cell_771/split/split_dim:output:06sequential_257/lstm_771/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_257/lstm_771/lstm_cell_771/SigmoidSigmoid4sequential_257/lstm_771/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_257/lstm_771/lstm_cell_771/Sigmoid_1Sigmoid4sequential_257/lstm_771/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_257/lstm_771/lstm_cell_771/mulMul3sequential_257/lstm_771/lstm_cell_771/Sigmoid_1:y:0(sequential_257/lstm_771/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_257/lstm_771/lstm_cell_771/ReluRelu4sequential_257/lstm_771/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_257/lstm_771/lstm_cell_771/mul_1Mul1sequential_257/lstm_771/lstm_cell_771/Sigmoid:y:08sequential_257/lstm_771/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_257/lstm_771/lstm_cell_771/add_1AddV2-sequential_257/lstm_771/lstm_cell_771/mul:z:0/sequential_257/lstm_771/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_257/lstm_771/lstm_cell_771/Sigmoid_2Sigmoid4sequential_257/lstm_771/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_257/lstm_771/lstm_cell_771/Relu_1Relu/sequential_257/lstm_771/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_257/lstm_771/lstm_cell_771/mul_2Mul3sequential_257/lstm_771/lstm_cell_771/Sigmoid_2:y:0:sequential_257/lstm_771/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_257/lstm_771/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_257/lstm_771/TensorArrayV2_1TensorListReserve>sequential_257/lstm_771/TensorArrayV2_1/element_shape:output:00sequential_257/lstm_771/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_257/lstm_771/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_257/lstm_771/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_257/lstm_771/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_257/lstm_771/whileWhile3sequential_257/lstm_771/while/loop_counter:output:09sequential_257/lstm_771/while/maximum_iterations:output:0%sequential_257/lstm_771/time:output:00sequential_257/lstm_771/TensorArrayV2_1:handle:0&sequential_257/lstm_771/zeros:output:0(sequential_257/lstm_771/zeros_1:output:00sequential_257/lstm_771/strided_slice_1:output:0Osequential_257/lstm_771/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_257_lstm_771_lstm_cell_771_matmul_readvariableop_resourceFsequential_257_lstm_771_lstm_cell_771_matmul_1_readvariableop_resourceEsequential_257_lstm_771_lstm_cell_771_biasadd_readvariableop_resource*
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
*sequential_257_lstm_771_while_body_4720086*6
cond.R,
*sequential_257_lstm_771_while_cond_4720085*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_257/lstm_771/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_257/lstm_771/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_257/lstm_771/while:output:3Qsequential_257/lstm_771/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_257/lstm_771/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_257/lstm_771/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_257/lstm_771/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_257/lstm_771/strided_slice_3StridedSliceCsequential_257/lstm_771/TensorArrayV2Stack/TensorListStack:tensor:06sequential_257/lstm_771/strided_slice_3/stack:output:08sequential_257/lstm_771/strided_slice_3/stack_1:output:08sequential_257/lstm_771/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_257/lstm_771/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_257/lstm_771/transpose_1	TransposeCsequential_257/lstm_771/TensorArrayV2Stack/TensorListStack:tensor:01sequential_257/lstm_771/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_257/lstm_771/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_257/lstm_772/ShapeShape'sequential_257/lstm_771/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_257/lstm_772/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_257/lstm_772/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_257/lstm_772/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_257/lstm_772/strided_sliceStridedSlice&sequential_257/lstm_772/Shape:output:04sequential_257/lstm_772/strided_slice/stack:output:06sequential_257/lstm_772/strided_slice/stack_1:output:06sequential_257/lstm_772/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_257/lstm_772/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_257/lstm_772/zeros/packedPack.sequential_257/lstm_772/strided_slice:output:0/sequential_257/lstm_772/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_257/lstm_772/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_257/lstm_772/zerosFill-sequential_257/lstm_772/zeros/packed:output:0,sequential_257/lstm_772/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_257/lstm_772/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_257/lstm_772/zeros_1/packedPack.sequential_257/lstm_772/strided_slice:output:01sequential_257/lstm_772/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_257/lstm_772/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_257/lstm_772/zeros_1Fill/sequential_257/lstm_772/zeros_1/packed:output:0.sequential_257/lstm_772/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_257/lstm_772/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_257/lstm_772/transpose	Transpose'sequential_257/lstm_771/transpose_1:y:0/sequential_257/lstm_772/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_257/lstm_772/Shape_1Shape%sequential_257/lstm_772/transpose:y:0*
T0*
_output_shapes
:w
-sequential_257/lstm_772/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_257/lstm_772/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_257/lstm_772/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_257/lstm_772/strided_slice_1StridedSlice(sequential_257/lstm_772/Shape_1:output:06sequential_257/lstm_772/strided_slice_1/stack:output:08sequential_257/lstm_772/strided_slice_1/stack_1:output:08sequential_257/lstm_772/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_257/lstm_772/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_257/lstm_772/TensorArrayV2TensorListReserve<sequential_257/lstm_772/TensorArrayV2/element_shape:output:00sequential_257/lstm_772/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_257/lstm_772/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_257/lstm_772/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_257/lstm_772/transpose:y:0Vsequential_257/lstm_772/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_257/lstm_772/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_257/lstm_772/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_257/lstm_772/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_257/lstm_772/strided_slice_2StridedSlice%sequential_257/lstm_772/transpose:y:06sequential_257/lstm_772/strided_slice_2/stack:output:08sequential_257/lstm_772/strided_slice_2/stack_1:output:08sequential_257/lstm_772/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_257/lstm_772/lstm_cell_772/MatMul/ReadVariableOpReadVariableOpDsequential_257_lstm_772_lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_257/lstm_772/lstm_cell_772/MatMulMatMul0sequential_257/lstm_772/strided_slice_2:output:0Csequential_257/lstm_772/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_257/lstm_772/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOpFsequential_257_lstm_772_lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_257/lstm_772/lstm_cell_772/MatMul_1MatMul&sequential_257/lstm_772/zeros:output:0Esequential_257/lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_257/lstm_772/lstm_cell_772/addAddV26sequential_257/lstm_772/lstm_cell_772/MatMul:product:08sequential_257/lstm_772/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_257/lstm_772/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOpEsequential_257_lstm_772_lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_257/lstm_772/lstm_cell_772/BiasAddBiasAdd-sequential_257/lstm_772/lstm_cell_772/add:z:0Dsequential_257/lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_257/lstm_772/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_257/lstm_772/lstm_cell_772/splitSplit>sequential_257/lstm_772/lstm_cell_772/split/split_dim:output:06sequential_257/lstm_772/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_257/lstm_772/lstm_cell_772/SigmoidSigmoid4sequential_257/lstm_772/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_257/lstm_772/lstm_cell_772/Sigmoid_1Sigmoid4sequential_257/lstm_772/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_257/lstm_772/lstm_cell_772/mulMul3sequential_257/lstm_772/lstm_cell_772/Sigmoid_1:y:0(sequential_257/lstm_772/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_257/lstm_772/lstm_cell_772/ReluRelu4sequential_257/lstm_772/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_257/lstm_772/lstm_cell_772/mul_1Mul1sequential_257/lstm_772/lstm_cell_772/Sigmoid:y:08sequential_257/lstm_772/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_257/lstm_772/lstm_cell_772/add_1AddV2-sequential_257/lstm_772/lstm_cell_772/mul:z:0/sequential_257/lstm_772/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_257/lstm_772/lstm_cell_772/Sigmoid_2Sigmoid4sequential_257/lstm_772/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_257/lstm_772/lstm_cell_772/Relu_1Relu/sequential_257/lstm_772/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_257/lstm_772/lstm_cell_772/mul_2Mul3sequential_257/lstm_772/lstm_cell_772/Sigmoid_2:y:0:sequential_257/lstm_772/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_257/lstm_772/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_257/lstm_772/TensorArrayV2_1TensorListReserve>sequential_257/lstm_772/TensorArrayV2_1/element_shape:output:00sequential_257/lstm_772/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_257/lstm_772/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_257/lstm_772/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_257/lstm_772/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_257/lstm_772/whileWhile3sequential_257/lstm_772/while/loop_counter:output:09sequential_257/lstm_772/while/maximum_iterations:output:0%sequential_257/lstm_772/time:output:00sequential_257/lstm_772/TensorArrayV2_1:handle:0&sequential_257/lstm_772/zeros:output:0(sequential_257/lstm_772/zeros_1:output:00sequential_257/lstm_772/strided_slice_1:output:0Osequential_257/lstm_772/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_257_lstm_772_lstm_cell_772_matmul_readvariableop_resourceFsequential_257_lstm_772_lstm_cell_772_matmul_1_readvariableop_resourceEsequential_257_lstm_772_lstm_cell_772_biasadd_readvariableop_resource*
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
*sequential_257_lstm_772_while_body_4720225*6
cond.R,
*sequential_257_lstm_772_while_cond_4720224*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_257/lstm_772/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_257/lstm_772/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_257/lstm_772/while:output:3Qsequential_257/lstm_772/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_257/lstm_772/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_257/lstm_772/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_257/lstm_772/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_257/lstm_772/strided_slice_3StridedSliceCsequential_257/lstm_772/TensorArrayV2Stack/TensorListStack:tensor:06sequential_257/lstm_772/strided_slice_3/stack:output:08sequential_257/lstm_772/strided_slice_3/stack_1:output:08sequential_257/lstm_772/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_257/lstm_772/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_257/lstm_772/transpose_1	TransposeCsequential_257/lstm_772/TensorArrayV2Stack/TensorListStack:tensor:01sequential_257/lstm_772/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_257/lstm_772/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_257/lstm_773/ShapeShape'sequential_257/lstm_772/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_257/lstm_773/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_257/lstm_773/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_257/lstm_773/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_257/lstm_773/strided_sliceStridedSlice&sequential_257/lstm_773/Shape:output:04sequential_257/lstm_773/strided_slice/stack:output:06sequential_257/lstm_773/strided_slice/stack_1:output:06sequential_257/lstm_773/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_257/lstm_773/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_257/lstm_773/zeros/packedPack.sequential_257/lstm_773/strided_slice:output:0/sequential_257/lstm_773/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_257/lstm_773/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_257/lstm_773/zerosFill-sequential_257/lstm_773/zeros/packed:output:0,sequential_257/lstm_773/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_257/lstm_773/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_257/lstm_773/zeros_1/packedPack.sequential_257/lstm_773/strided_slice:output:01sequential_257/lstm_773/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_257/lstm_773/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_257/lstm_773/zeros_1Fill/sequential_257/lstm_773/zeros_1/packed:output:0.sequential_257/lstm_773/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_257/lstm_773/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_257/lstm_773/transpose	Transpose'sequential_257/lstm_772/transpose_1:y:0/sequential_257/lstm_773/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_257/lstm_773/Shape_1Shape%sequential_257/lstm_773/transpose:y:0*
T0*
_output_shapes
:w
-sequential_257/lstm_773/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_257/lstm_773/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_257/lstm_773/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_257/lstm_773/strided_slice_1StridedSlice(sequential_257/lstm_773/Shape_1:output:06sequential_257/lstm_773/strided_slice_1/stack:output:08sequential_257/lstm_773/strided_slice_1/stack_1:output:08sequential_257/lstm_773/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_257/lstm_773/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_257/lstm_773/TensorArrayV2TensorListReserve<sequential_257/lstm_773/TensorArrayV2/element_shape:output:00sequential_257/lstm_773/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_257/lstm_773/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_257/lstm_773/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_257/lstm_773/transpose:y:0Vsequential_257/lstm_773/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_257/lstm_773/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_257/lstm_773/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_257/lstm_773/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_257/lstm_773/strided_slice_2StridedSlice%sequential_257/lstm_773/transpose:y:06sequential_257/lstm_773/strided_slice_2/stack:output:08sequential_257/lstm_773/strided_slice_2/stack_1:output:08sequential_257/lstm_773/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_257/lstm_773/lstm_cell_773/MatMul/ReadVariableOpReadVariableOpDsequential_257_lstm_773_lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_257/lstm_773/lstm_cell_773/MatMulMatMul0sequential_257/lstm_773/strided_slice_2:output:0Csequential_257/lstm_773/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_257/lstm_773/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOpFsequential_257_lstm_773_lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_257/lstm_773/lstm_cell_773/MatMul_1MatMul&sequential_257/lstm_773/zeros:output:0Esequential_257/lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_257/lstm_773/lstm_cell_773/addAddV26sequential_257/lstm_773/lstm_cell_773/MatMul:product:08sequential_257/lstm_773/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_257/lstm_773/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOpEsequential_257_lstm_773_lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_257/lstm_773/lstm_cell_773/BiasAddBiasAdd-sequential_257/lstm_773/lstm_cell_773/add:z:0Dsequential_257/lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_257/lstm_773/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_257/lstm_773/lstm_cell_773/splitSplit>sequential_257/lstm_773/lstm_cell_773/split/split_dim:output:06sequential_257/lstm_773/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_257/lstm_773/lstm_cell_773/SigmoidSigmoid4sequential_257/lstm_773/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_257/lstm_773/lstm_cell_773/Sigmoid_1Sigmoid4sequential_257/lstm_773/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_257/lstm_773/lstm_cell_773/mulMul3sequential_257/lstm_773/lstm_cell_773/Sigmoid_1:y:0(sequential_257/lstm_773/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_257/lstm_773/lstm_cell_773/ReluRelu4sequential_257/lstm_773/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_257/lstm_773/lstm_cell_773/mul_1Mul1sequential_257/lstm_773/lstm_cell_773/Sigmoid:y:08sequential_257/lstm_773/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_257/lstm_773/lstm_cell_773/add_1AddV2-sequential_257/lstm_773/lstm_cell_773/mul:z:0/sequential_257/lstm_773/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_257/lstm_773/lstm_cell_773/Sigmoid_2Sigmoid4sequential_257/lstm_773/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_257/lstm_773/lstm_cell_773/Relu_1Relu/sequential_257/lstm_773/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_257/lstm_773/lstm_cell_773/mul_2Mul3sequential_257/lstm_773/lstm_cell_773/Sigmoid_2:y:0:sequential_257/lstm_773/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_257/lstm_773/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_257/lstm_773/TensorArrayV2_1TensorListReserve>sequential_257/lstm_773/TensorArrayV2_1/element_shape:output:00sequential_257/lstm_773/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_257/lstm_773/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_257/lstm_773/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_257/lstm_773/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_257/lstm_773/whileWhile3sequential_257/lstm_773/while/loop_counter:output:09sequential_257/lstm_773/while/maximum_iterations:output:0%sequential_257/lstm_773/time:output:00sequential_257/lstm_773/TensorArrayV2_1:handle:0&sequential_257/lstm_773/zeros:output:0(sequential_257/lstm_773/zeros_1:output:00sequential_257/lstm_773/strided_slice_1:output:0Osequential_257/lstm_773/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_257_lstm_773_lstm_cell_773_matmul_readvariableop_resourceFsequential_257_lstm_773_lstm_cell_773_matmul_1_readvariableop_resourceEsequential_257_lstm_773_lstm_cell_773_biasadd_readvariableop_resource*
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
*sequential_257_lstm_773_while_body_4720364*6
cond.R,
*sequential_257_lstm_773_while_cond_4720363*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_257/lstm_773/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_257/lstm_773/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_257/lstm_773/while:output:3Qsequential_257/lstm_773/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_257/lstm_773/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_257/lstm_773/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_257/lstm_773/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_257/lstm_773/strided_slice_3StridedSliceCsequential_257/lstm_773/TensorArrayV2Stack/TensorListStack:tensor:06sequential_257/lstm_773/strided_slice_3/stack:output:08sequential_257/lstm_773/strided_slice_3/stack_1:output:08sequential_257/lstm_773/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_257/lstm_773/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_257/lstm_773/transpose_1	TransposeCsequential_257/lstm_773/TensorArrayV2Stack/TensorListStack:tensor:01sequential_257/lstm_773/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_257/lstm_773/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_257/dense_257/MatMul/ReadVariableOpReadVariableOp7sequential_257_dense_257_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_257/dense_257/MatMulMatMul0sequential_257/lstm_773/strided_slice_3:output:06sequential_257/dense_257/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_257/dense_257/BiasAdd/ReadVariableOpReadVariableOp8sequential_257_dense_257_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_257/dense_257/BiasAddBiasAdd)sequential_257/dense_257/MatMul:product:07sequential_257/dense_257/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_257/dense_257/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_257/dense_257/BiasAdd/ReadVariableOp/^sequential_257/dense_257/MatMul/ReadVariableOp=^sequential_257/lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp<^sequential_257/lstm_771/lstm_cell_771/MatMul/ReadVariableOp>^sequential_257/lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp^sequential_257/lstm_771/while=^sequential_257/lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp<^sequential_257/lstm_772/lstm_cell_772/MatMul/ReadVariableOp>^sequential_257/lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp^sequential_257/lstm_772/while=^sequential_257/lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp<^sequential_257/lstm_773/lstm_cell_773/MatMul/ReadVariableOp>^sequential_257/lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp^sequential_257/lstm_773/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_257/dense_257/BiasAdd/ReadVariableOp/sequential_257/dense_257/BiasAdd/ReadVariableOp2`
.sequential_257/dense_257/MatMul/ReadVariableOp.sequential_257/dense_257/MatMul/ReadVariableOp2|
<sequential_257/lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp<sequential_257/lstm_771/lstm_cell_771/BiasAdd/ReadVariableOp2z
;sequential_257/lstm_771/lstm_cell_771/MatMul/ReadVariableOp;sequential_257/lstm_771/lstm_cell_771/MatMul/ReadVariableOp2~
=sequential_257/lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp=sequential_257/lstm_771/lstm_cell_771/MatMul_1/ReadVariableOp2>
sequential_257/lstm_771/whilesequential_257/lstm_771/while2|
<sequential_257/lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp<sequential_257/lstm_772/lstm_cell_772/BiasAdd/ReadVariableOp2z
;sequential_257/lstm_772/lstm_cell_772/MatMul/ReadVariableOp;sequential_257/lstm_772/lstm_cell_772/MatMul/ReadVariableOp2~
=sequential_257/lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp=sequential_257/lstm_772/lstm_cell_772/MatMul_1/ReadVariableOp2>
sequential_257/lstm_772/whilesequential_257/lstm_772/while2|
<sequential_257/lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp<sequential_257/lstm_773/lstm_cell_773/BiasAdd/ReadVariableOp2z
;sequential_257/lstm_773/lstm_cell_773/MatMul/ReadVariableOp;sequential_257/lstm_773/lstm_cell_773/MatMul/ReadVariableOp2~
=sequential_257/lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp=sequential_257/lstm_773/lstm_cell_773/MatMul_1/ReadVariableOp2>
sequential_257/lstm_773/whilesequential_257/lstm_773/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_771_input
?
?
while_cond_4724153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4724153___redundant_placeholder05
1while_while_cond_4724153___redundant_placeholder15
1while_while_cond_4724153___redundant_placeholder25
1while_while_cond_4724153___redundant_placeholder3
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
while_body_4721719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_772_while_body_4722966.
*lstm_772_while_lstm_772_while_loop_counter4
0lstm_772_while_lstm_772_while_maximum_iterations
lstm_772_while_placeholder 
lstm_772_while_placeholder_1 
lstm_772_while_placeholder_2 
lstm_772_while_placeholder_3-
)lstm_772_while_lstm_772_strided_slice_1_0i
elstm_772_while_tensorarrayv2read_tensorlistgetitem_lstm_772_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_772_while_lstm_cell_772_matmul_readvariableop_resource_0:	d?R
?lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?M
>lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
lstm_772_while_identity
lstm_772_while_identity_1
lstm_772_while_identity_2
lstm_772_while_identity_3
lstm_772_while_identity_4
lstm_772_while_identity_5+
'lstm_772_while_lstm_772_strided_slice_1g
clstm_772_while_tensorarrayv2read_tensorlistgetitem_lstm_772_tensorarrayunstack_tensorlistfromtensorN
;lstm_772_while_lstm_cell_772_matmul_readvariableop_resource:	d?P
=lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource:	2?K
<lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource:	???3lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp?2lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp?4lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp?
@lstm_772/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_772/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_772_while_tensorarrayv2read_tensorlistgetitem_lstm_772_tensorarrayunstack_tensorlistfromtensor_0lstm_772_while_placeholderIlstm_772/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_772/while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp=lstm_772_while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_772/while/lstm_cell_772/MatMulMatMul9lstm_772/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp?lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_772/while/lstm_cell_772/MatMul_1MatMullstm_772_while_placeholder_2<lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_772/while/lstm_cell_772/addAddV2-lstm_772/while/lstm_cell_772/MatMul:product:0/lstm_772/while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp>lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_772/while/lstm_cell_772/BiasAddBiasAdd$lstm_772/while/lstm_cell_772/add:z:0;lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_772/while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_772/while/lstm_cell_772/splitSplit5lstm_772/while/lstm_cell_772/split/split_dim:output:0-lstm_772/while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_772/while/lstm_cell_772/SigmoidSigmoid+lstm_772/while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_772/while/lstm_cell_772/Sigmoid_1Sigmoid+lstm_772/while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_772/while/lstm_cell_772/mulMul*lstm_772/while/lstm_cell_772/Sigmoid_1:y:0lstm_772_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_772/while/lstm_cell_772/ReluRelu+lstm_772/while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_772/while/lstm_cell_772/mul_1Mul(lstm_772/while/lstm_cell_772/Sigmoid:y:0/lstm_772/while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_772/while/lstm_cell_772/add_1AddV2$lstm_772/while/lstm_cell_772/mul:z:0&lstm_772/while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_772/while/lstm_cell_772/Sigmoid_2Sigmoid+lstm_772/while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_772/while/lstm_cell_772/Relu_1Relu&lstm_772/while/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_772/while/lstm_cell_772/mul_2Mul*lstm_772/while/lstm_cell_772/Sigmoid_2:y:01lstm_772/while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_772/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_772_while_placeholder_1lstm_772_while_placeholder&lstm_772/while/lstm_cell_772/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_772/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_772/while/addAddV2lstm_772_while_placeholderlstm_772/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_772/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_772/while/add_1AddV2*lstm_772_while_lstm_772_while_loop_counterlstm_772/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_772/while/IdentityIdentitylstm_772/while/add_1:z:0^lstm_772/while/NoOp*
T0*
_output_shapes
: ?
lstm_772/while/Identity_1Identity0lstm_772_while_lstm_772_while_maximum_iterations^lstm_772/while/NoOp*
T0*
_output_shapes
: t
lstm_772/while/Identity_2Identitylstm_772/while/add:z:0^lstm_772/while/NoOp*
T0*
_output_shapes
: ?
lstm_772/while/Identity_3IdentityClstm_772/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_772/while/NoOp*
T0*
_output_shapes
: ?
lstm_772/while/Identity_4Identity&lstm_772/while/lstm_cell_772/mul_2:z:0^lstm_772/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_772/while/Identity_5Identity&lstm_772/while/lstm_cell_772/add_1:z:0^lstm_772/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_772/while/NoOpNoOp4^lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp3^lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp5^lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_772_while_identity lstm_772/while/Identity:output:0"?
lstm_772_while_identity_1"lstm_772/while/Identity_1:output:0"?
lstm_772_while_identity_2"lstm_772/while/Identity_2:output:0"?
lstm_772_while_identity_3"lstm_772/while/Identity_3:output:0"?
lstm_772_while_identity_4"lstm_772/while/Identity_4:output:0"?
lstm_772_while_identity_5"lstm_772/while/Identity_5:output:0"T
'lstm_772_while_lstm_772_strided_slice_1)lstm_772_while_lstm_772_strided_slice_1_0"~
<lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource>lstm_772_while_lstm_cell_772_biasadd_readvariableop_resource_0"?
=lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource?lstm_772_while_lstm_cell_772_matmul_1_readvariableop_resource_0"|
;lstm_772_while_lstm_cell_772_matmul_readvariableop_resource=lstm_772_while_lstm_cell_772_matmul_readvariableop_resource_0"?
clstm_772_while_tensorarrayv2read_tensorlistgetitem_lstm_772_tensorarrayunstack_tensorlistfromtensorelstm_772_while_tensorarrayv2read_tensorlistgetitem_lstm_772_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp3lstm_772/while/lstm_cell_772/BiasAdd/ReadVariableOp2h
2lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp2lstm_772/while/lstm_cell_772/MatMul/ReadVariableOp2l
4lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp4lstm_772/while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4720534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4720534___redundant_placeholder05
1while_while_cond_4720534___redundant_placeholder15
1while_while_cond_4720534___redundant_placeholder25
1while_while_cond_4720534___redundant_placeholder3
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725470

inputs>
,lstm_cell_773_matmul_readvariableop_resource:2(@
.lstm_cell_773_matmul_1_readvariableop_resource:
(;
-lstm_cell_773_biasadd_readvariableop_resource:(
identity??$lstm_cell_773/BiasAdd/ReadVariableOp?#lstm_cell_773/MatMul/ReadVariableOp?%lstm_cell_773/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_773/MatMul/ReadVariableOpReadVariableOp,lstm_cell_773_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_773/MatMulMatMulstrided_slice_2:output:0+lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_773_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_773/MatMul_1MatMulzeros:output:0-lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_773/addAddV2lstm_cell_773/MatMul:product:0 lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_773_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_773/BiasAddBiasAddlstm_cell_773/add:z:0,lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_773/splitSplit&lstm_cell_773/split/split_dim:output:0lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_773/SigmoidSigmoidlstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_1Sigmoidlstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_773/mulMullstm_cell_773/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_773/ReluRelulstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_1Mullstm_cell_773/Sigmoid:y:0 lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_773/add_1AddV2lstm_cell_773/mul:z:0lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_773/Sigmoid_2Sigmoidlstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_773/Relu_1Relulstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_773/mul_2Mullstm_cell_773/Sigmoid_2:y:0"lstm_cell_773/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_773_matmul_readvariableop_resource.lstm_cell_773_matmul_1_readvariableop_resource-lstm_cell_773_biasadd_readvariableop_resource*
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
while_body_4725386*
condR
while_cond_4725385*K
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
NoOpNoOp%^lstm_cell_773/BiasAdd/ReadVariableOp$^lstm_cell_773/MatMul/ReadVariableOp&^lstm_cell_773/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_773/BiasAdd/ReadVariableOp$lstm_cell_773/BiasAdd/ReadVariableOp2J
#lstm_cell_773/MatMul/ReadVariableOp#lstm_cell_773/MatMul/ReadVariableOp2N
%lstm_cell_773/MatMul_1/ReadVariableOp%lstm_cell_773/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4721221

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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4725783

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
lstm_771_while_cond_4723253.
*lstm_771_while_lstm_771_while_loop_counter4
0lstm_771_while_lstm_771_while_maximum_iterations
lstm_771_while_placeholder 
lstm_771_while_placeholder_1 
lstm_771_while_placeholder_2 
lstm_771_while_placeholder_30
,lstm_771_while_less_lstm_771_strided_slice_1G
Clstm_771_while_lstm_771_while_cond_4723253___redundant_placeholder0G
Clstm_771_while_lstm_771_while_cond_4723253___redundant_placeholder1G
Clstm_771_while_lstm_771_while_cond_4723253___redundant_placeholder2G
Clstm_771_while_lstm_771_while_cond_4723253___redundant_placeholder3
lstm_771_while_identity
?
lstm_771/while/LessLesslstm_771_while_placeholder,lstm_771_while_less_lstm_771_strided_slice_1*
T0*
_output_shapes
: ]
lstm_771/while/IdentityIdentitylstm_771/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_771_while_identity lstm_771/while/Identity:output:0*(
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4724238

inputs?
,lstm_cell_771_matmul_readvariableop_resource:	?A
.lstm_cell_771_matmul_1_readvariableop_resource:	d?<
-lstm_cell_771_biasadd_readvariableop_resource:	?
identity??$lstm_cell_771/BiasAdd/ReadVariableOp?#lstm_cell_771/MatMul/ReadVariableOp?%lstm_cell_771/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_771/MatMul/ReadVariableOpReadVariableOp,lstm_cell_771_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_771/MatMulMatMulstrided_slice_2:output:0+lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_771_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_771/MatMul_1MatMulzeros:output:0-lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_771/addAddV2lstm_cell_771/MatMul:product:0 lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_771_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_771/BiasAddBiasAddlstm_cell_771/add:z:0,lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_771/splitSplit&lstm_cell_771/split/split_dim:output:0lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_771/SigmoidSigmoidlstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_1Sigmoidlstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_771/mulMullstm_cell_771/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_771/ReluRelulstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_1Mullstm_cell_771/Sigmoid:y:0 lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_771/add_1AddV2lstm_cell_771/mul:z:0lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_771/Sigmoid_2Sigmoidlstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_771/Relu_1Relulstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_771/mul_2Mullstm_cell_771/Sigmoid_2:y:0"lstm_cell_771/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_771_matmul_readvariableop_resource.lstm_cell_771_matmul_1_readvariableop_resource-lstm_cell_771_biasadd_readvariableop_resource*
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
while_body_4724154*
condR
while_cond_4724153*K
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
NoOpNoOp%^lstm_cell_771/BiasAdd/ReadVariableOp$^lstm_cell_771/MatMul/ReadVariableOp&^lstm_cell_771/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_771/BiasAdd/ReadVariableOp$lstm_cell_771/BiasAdd/ReadVariableOp2J
#lstm_cell_771/MatMul/ReadVariableOp#lstm_cell_771/MatMul/ReadVariableOp2N
%lstm_cell_771/MatMul_1/ReadVariableOp%lstm_cell_771/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_257_layer_call_and_return_conditional_losses_4722679
lstm_771_input#
lstm_771_4722652:	?#
lstm_771_4722654:	d?
lstm_771_4722656:	?#
lstm_772_4722659:	d?#
lstm_772_4722661:	2?
lstm_772_4722663:	?"
lstm_773_4722666:2("
lstm_773_4722668:
(
lstm_773_4722670:(#
dense_257_4722673:

dense_257_4722675:
identity??!dense_257/StatefulPartitionedCall? lstm_771/StatefulPartitionedCall? lstm_772/StatefulPartitionedCall? lstm_773/StatefulPartitionedCall?
 lstm_771/StatefulPartitionedCallStatefulPartitionedCalllstm_771_inputlstm_771_4722652lstm_771_4722654lstm_771_4722656*
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4722499?
 lstm_772/StatefulPartitionedCallStatefulPartitionedCall)lstm_771/StatefulPartitionedCall:output:0lstm_772_4722659lstm_772_4722661lstm_772_4722663*
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4722334?
 lstm_773/StatefulPartitionedCallStatefulPartitionedCall)lstm_772/StatefulPartitionedCall:output:0lstm_773_4722666lstm_773_4722668lstm_773_4722670*
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4722169?
!dense_257/StatefulPartitionedCallStatefulPartitionedCall)lstm_773/StatefulPartitionedCall:output:0dense_257_4722673dense_257_4722675*
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
F__inference_dense_257_layer_call_and_return_conditional_losses_4721971y
IdentityIdentity*dense_257/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_257/StatefulPartitionedCall!^lstm_771/StatefulPartitionedCall!^lstm_772/StatefulPartitionedCall!^lstm_773/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_257/StatefulPartitionedCall!dense_257/StatefulPartitionedCall2D
 lstm_771/StatefulPartitionedCall lstm_771/StatefulPartitionedCall2D
 lstm_772/StatefulPartitionedCall lstm_772/StatefulPartitionedCall2D
 lstm_773/StatefulPartitionedCall lstm_773/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_771_input
?8
?
E__inference_lstm_773_layer_call_and_return_conditional_losses_4721304

inputs'
lstm_cell_773_4721222:2('
lstm_cell_773_4721224:
(#
lstm_cell_773_4721226:(
identity??%lstm_cell_773/StatefulPartitionedCall?while;
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
%lstm_cell_773/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_773_4721222lstm_cell_773_4721224lstm_cell_773_4721226*
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4721221n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_773_4721222lstm_cell_773_4721224lstm_cell_773_4721226*
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
while_body_4721235*
condR
while_cond_4721234*K
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
NoOpNoOp&^lstm_cell_773/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_773/StatefulPartitionedCall%lstm_cell_773/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4721367

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

?
0__inference_sequential_257_layer_call_fn_4722741

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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4721978o
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
?
F__inference_dense_257_layer_call_and_return_conditional_losses_4725489

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
while_cond_4724626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4724626___redundant_placeholder05
1while_while_cond_4724626___redundant_placeholder15
1while_while_cond_4724626___redundant_placeholder25
1while_while_cond_4724626___redundant_placeholder3
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
0__inference_sequential_257_layer_call_fn_4722768

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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4722567o
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
*sequential_257_lstm_773_while_body_4720364L
Hsequential_257_lstm_773_while_sequential_257_lstm_773_while_loop_counterR
Nsequential_257_lstm_773_while_sequential_257_lstm_773_while_maximum_iterations-
)sequential_257_lstm_773_while_placeholder/
+sequential_257_lstm_773_while_placeholder_1/
+sequential_257_lstm_773_while_placeholder_2/
+sequential_257_lstm_773_while_placeholder_3K
Gsequential_257_lstm_773_while_sequential_257_lstm_773_strided_slice_1_0?
?sequential_257_lstm_773_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_773_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_257_lstm_773_while_lstm_cell_773_matmul_readvariableop_resource_0:2(`
Nsequential_257_lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource_0:
([
Msequential_257_lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource_0:(*
&sequential_257_lstm_773_while_identity,
(sequential_257_lstm_773_while_identity_1,
(sequential_257_lstm_773_while_identity_2,
(sequential_257_lstm_773_while_identity_3,
(sequential_257_lstm_773_while_identity_4,
(sequential_257_lstm_773_while_identity_5I
Esequential_257_lstm_773_while_sequential_257_lstm_773_strided_slice_1?
?sequential_257_lstm_773_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_773_tensorarrayunstack_tensorlistfromtensor\
Jsequential_257_lstm_773_while_lstm_cell_773_matmul_readvariableop_resource:2(^
Lsequential_257_lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource:
(Y
Ksequential_257_lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource:(??Bsequential_257/lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp?Asequential_257/lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp?Csequential_257/lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp?
Osequential_257/lstm_773/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_257/lstm_773/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_257_lstm_773_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_773_tensorarrayunstack_tensorlistfromtensor_0)sequential_257_lstm_773_while_placeholderXsequential_257/lstm_773/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_257/lstm_773/while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOpLsequential_257_lstm_773_while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_257/lstm_773/while/lstm_cell_773/MatMulMatMulHsequential_257/lstm_773/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_257/lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_257/lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOpNsequential_257_lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_257/lstm_773/while/lstm_cell_773/MatMul_1MatMul+sequential_257_lstm_773_while_placeholder_2Ksequential_257/lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_257/lstm_773/while/lstm_cell_773/addAddV2<sequential_257/lstm_773/while/lstm_cell_773/MatMul:product:0>sequential_257/lstm_773/while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_257/lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOpMsequential_257_lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_257/lstm_773/while/lstm_cell_773/BiasAddBiasAdd3sequential_257/lstm_773/while/lstm_cell_773/add:z:0Jsequential_257/lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_257/lstm_773/while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_257/lstm_773/while/lstm_cell_773/splitSplitDsequential_257/lstm_773/while/lstm_cell_773/split/split_dim:output:0<sequential_257/lstm_773/while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_257/lstm_773/while/lstm_cell_773/SigmoidSigmoid:sequential_257/lstm_773/while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_257/lstm_773/while/lstm_cell_773/Sigmoid_1Sigmoid:sequential_257/lstm_773/while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_257/lstm_773/while/lstm_cell_773/mulMul9sequential_257/lstm_773/while/lstm_cell_773/Sigmoid_1:y:0+sequential_257_lstm_773_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_257/lstm_773/while/lstm_cell_773/ReluRelu:sequential_257/lstm_773/while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_257/lstm_773/while/lstm_cell_773/mul_1Mul7sequential_257/lstm_773/while/lstm_cell_773/Sigmoid:y:0>sequential_257/lstm_773/while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_257/lstm_773/while/lstm_cell_773/add_1AddV23sequential_257/lstm_773/while/lstm_cell_773/mul:z:05sequential_257/lstm_773/while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_257/lstm_773/while/lstm_cell_773/Sigmoid_2Sigmoid:sequential_257/lstm_773/while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_257/lstm_773/while/lstm_cell_773/Relu_1Relu5sequential_257/lstm_773/while/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_257/lstm_773/while/lstm_cell_773/mul_2Mul9sequential_257/lstm_773/while/lstm_cell_773/Sigmoid_2:y:0@sequential_257/lstm_773/while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_257/lstm_773/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_257_lstm_773_while_placeholder_1)sequential_257_lstm_773_while_placeholder5sequential_257/lstm_773/while/lstm_cell_773/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_257/lstm_773/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_257/lstm_773/while/addAddV2)sequential_257_lstm_773_while_placeholder,sequential_257/lstm_773/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_257/lstm_773/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_257/lstm_773/while/add_1AddV2Hsequential_257_lstm_773_while_sequential_257_lstm_773_while_loop_counter.sequential_257/lstm_773/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_257/lstm_773/while/IdentityIdentity'sequential_257/lstm_773/while/add_1:z:0#^sequential_257/lstm_773/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_773/while/Identity_1IdentityNsequential_257_lstm_773_while_sequential_257_lstm_773_while_maximum_iterations#^sequential_257/lstm_773/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_773/while/Identity_2Identity%sequential_257/lstm_773/while/add:z:0#^sequential_257/lstm_773/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_773/while/Identity_3IdentityRsequential_257/lstm_773/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_257/lstm_773/while/NoOp*
T0*
_output_shapes
: ?
(sequential_257/lstm_773/while/Identity_4Identity5sequential_257/lstm_773/while/lstm_cell_773/mul_2:z:0#^sequential_257/lstm_773/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_257/lstm_773/while/Identity_5Identity5sequential_257/lstm_773/while/lstm_cell_773/add_1:z:0#^sequential_257/lstm_773/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_257/lstm_773/while/NoOpNoOpC^sequential_257/lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOpB^sequential_257/lstm_773/while/lstm_cell_773/MatMul/ReadVariableOpD^sequential_257/lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_257_lstm_773_while_identity/sequential_257/lstm_773/while/Identity:output:0"]
(sequential_257_lstm_773_while_identity_11sequential_257/lstm_773/while/Identity_1:output:0"]
(sequential_257_lstm_773_while_identity_21sequential_257/lstm_773/while/Identity_2:output:0"]
(sequential_257_lstm_773_while_identity_31sequential_257/lstm_773/while/Identity_3:output:0"]
(sequential_257_lstm_773_while_identity_41sequential_257/lstm_773/while/Identity_4:output:0"]
(sequential_257_lstm_773_while_identity_51sequential_257/lstm_773/while/Identity_5:output:0"?
Ksequential_257_lstm_773_while_lstm_cell_773_biasadd_readvariableop_resourceMsequential_257_lstm_773_while_lstm_cell_773_biasadd_readvariableop_resource_0"?
Lsequential_257_lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resourceNsequential_257_lstm_773_while_lstm_cell_773_matmul_1_readvariableop_resource_0"?
Jsequential_257_lstm_773_while_lstm_cell_773_matmul_readvariableop_resourceLsequential_257_lstm_773_while_lstm_cell_773_matmul_readvariableop_resource_0"?
Esequential_257_lstm_773_while_sequential_257_lstm_773_strided_slice_1Gsequential_257_lstm_773_while_sequential_257_lstm_773_strided_slice_1_0"?
?sequential_257_lstm_773_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_773_tensorarrayunstack_tensorlistfromtensor?sequential_257_lstm_773_while_tensorarrayv2read_tensorlistgetitem_sequential_257_lstm_773_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_257/lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOpBsequential_257/lstm_773/while/lstm_cell_773/BiasAdd/ReadVariableOp2?
Asequential_257/lstm_773/while/lstm_cell_773/MatMul/ReadVariableOpAsequential_257/lstm_773/while/lstm_cell_773/MatMul/ReadVariableOp2?
Csequential_257/lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOpCsequential_257/lstm_773/while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4721868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4721868___redundant_placeholder05
1while_while_cond_4721868___redundant_placeholder15
1while_while_cond_4721868___redundant_placeholder25
1while_while_cond_4721868___redundant_placeholder3
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
while_body_4722415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_771_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_771_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_771_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_771_matmul_readvariableop_resource:	?G
4while_lstm_cell_771_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_771_biasadd_readvariableop_resource:	???*while/lstm_cell_771/BiasAdd/ReadVariableOp?)while/lstm_cell_771/MatMul/ReadVariableOp?+while/lstm_cell_771/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_771/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_771_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_771/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_771/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_771/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_771_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_771/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_771/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_771/addAddV2$while/lstm_cell_771/MatMul:product:0&while/lstm_cell_771/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_771/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_771_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_771/BiasAddBiasAddwhile/lstm_cell_771/add:z:02while/lstm_cell_771/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_771/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_771/splitSplit,while/lstm_cell_771/split/split_dim:output:0$while/lstm_cell_771/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_771/SigmoidSigmoid"while/lstm_cell_771/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_1Sigmoid"while/lstm_cell_771/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mulMul!while/lstm_cell_771/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_771/ReluRelu"while/lstm_cell_771/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_1Mulwhile/lstm_cell_771/Sigmoid:y:0&while/lstm_cell_771/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/add_1AddV2while/lstm_cell_771/mul:z:0while/lstm_cell_771/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_771/Sigmoid_2Sigmoid"while/lstm_cell_771/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_771/Relu_1Reluwhile/lstm_cell_771/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_771/mul_2Mul!while/lstm_cell_771/Sigmoid_2:y:0(while/lstm_cell_771/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_771/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_771/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_771/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_771/BiasAdd/ReadVariableOp*^while/lstm_cell_771/MatMul/ReadVariableOp,^while/lstm_cell_771/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_771_biasadd_readvariableop_resource5while_lstm_cell_771_biasadd_readvariableop_resource_0"n
4while_lstm_cell_771_matmul_1_readvariableop_resource6while_lstm_cell_771_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_771_matmul_readvariableop_resource4while_lstm_cell_771_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_771/BiasAdd/ReadVariableOp*while/lstm_cell_771/BiasAdd/ReadVariableOp2V
)while/lstm_cell_771/MatMul/ReadVariableOp)while/lstm_cell_771/MatMul/ReadVariableOp2Z
+while/lstm_cell_771/MatMul_1/ReadVariableOp+while/lstm_cell_771/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4720884
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4720884___redundant_placeholder05
1while_while_cond_4720884___redundant_placeholder15
1while_while_cond_4720884___redundant_placeholder25
1while_while_cond_4720884___redundant_placeholder3
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
while_cond_4722249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4722249___redundant_placeholder05
1while_while_cond_4722249___redundant_placeholder15
1while_while_cond_4722249___redundant_placeholder25
1while_while_cond_4722249___redundant_placeholder3
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
while_body_4722085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_773_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_773_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_773_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_773_matmul_readvariableop_resource:2(F
4while_lstm_cell_773_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_773_biasadd_readvariableop_resource:(??*while/lstm_cell_773/BiasAdd/ReadVariableOp?)while/lstm_cell_773/MatMul/ReadVariableOp?+while/lstm_cell_773/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_773/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_773_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_773/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_773/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_773/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_773_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_773/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_773/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_773/addAddV2$while/lstm_cell_773/MatMul:product:0&while/lstm_cell_773/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_773/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_773_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_773/BiasAddBiasAddwhile/lstm_cell_773/add:z:02while/lstm_cell_773/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_773/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_773/splitSplit,while/lstm_cell_773/split/split_dim:output:0$while/lstm_cell_773/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_773/SigmoidSigmoid"while/lstm_cell_773/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_1Sigmoid"while/lstm_cell_773/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mulMul!while/lstm_cell_773/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_773/ReluRelu"while/lstm_cell_773/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_1Mulwhile/lstm_cell_773/Sigmoid:y:0&while/lstm_cell_773/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/add_1AddV2while/lstm_cell_773/mul:z:0while/lstm_cell_773/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_773/Sigmoid_2Sigmoid"while/lstm_cell_773/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_773/Relu_1Reluwhile/lstm_cell_773/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_773/mul_2Mul!while/lstm_cell_773/Sigmoid_2:y:0(while/lstm_cell_773/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_773/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_773/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_773/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_773/BiasAdd/ReadVariableOp*^while/lstm_cell_773/MatMul/ReadVariableOp,^while/lstm_cell_773/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_773_biasadd_readvariableop_resource5while_lstm_cell_773_biasadd_readvariableop_resource_0"n
4while_lstm_cell_773_matmul_1_readvariableop_resource6while_lstm_cell_773_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_773_matmul_readvariableop_resource4while_lstm_cell_773_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_773/BiasAdd/ReadVariableOp*while/lstm_cell_773/BiasAdd/ReadVariableOp2V
)while/lstm_cell_773/MatMul/ReadVariableOp)while/lstm_cell_773/MatMul/ReadVariableOp2Z
+while/lstm_cell_773/MatMul_1/ReadVariableOp+while/lstm_cell_773/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4724484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_772_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_772_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_772_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_772_matmul_readvariableop_resource:	d?G
4while_lstm_cell_772_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_772_biasadd_readvariableop_resource:	???*while/lstm_cell_772/BiasAdd/ReadVariableOp?)while/lstm_cell_772/MatMul/ReadVariableOp?+while/lstm_cell_772/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_772/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_772_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_772/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_772_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_772/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_772/addAddV2$while/lstm_cell_772/MatMul:product:0&while/lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_772_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_772/BiasAddBiasAddwhile/lstm_cell_772/add:z:02while/lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_772/splitSplit,while/lstm_cell_772/split/split_dim:output:0$while/lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_772/SigmoidSigmoid"while/lstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_1Sigmoid"while/lstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mulMul!while/lstm_cell_772/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_772/ReluRelu"while/lstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_1Mulwhile/lstm_cell_772/Sigmoid:y:0&while/lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/add_1AddV2while/lstm_cell_772/mul:z:0while/lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_772/Sigmoid_2Sigmoid"while/lstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_772/Relu_1Reluwhile/lstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_772/mul_2Mul!while/lstm_cell_772/Sigmoid_2:y:0(while/lstm_cell_772/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_772/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_772/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_772/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_772/BiasAdd/ReadVariableOp*^while/lstm_cell_772/MatMul/ReadVariableOp,^while/lstm_cell_772/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_772_biasadd_readvariableop_resource5while_lstm_cell_772_biasadd_readvariableop_resource_0"n
4while_lstm_cell_772_matmul_1_readvariableop_resource6while_lstm_cell_772_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_772_matmul_readvariableop_resource4while_lstm_cell_772_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_772/BiasAdd/ReadVariableOp*while/lstm_cell_772/BiasAdd/ReadVariableOp2V
)while/lstm_cell_772/MatMul/ReadVariableOp)while/lstm_cell_772/MatMul/ReadVariableOp2Z
+while/lstm_cell_772/MatMul_1/ReadVariableOp+while/lstm_cell_772/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_772_layer_call_fn_4724260
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4721145|
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724425
inputs_0?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4724341*
condR
while_cond_4724340*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_773_layer_call_fn_4724865
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4721304o
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724854

inputs?
,lstm_cell_772_matmul_readvariableop_resource:	d?A
.lstm_cell_772_matmul_1_readvariableop_resource:	2?<
-lstm_cell_772_biasadd_readvariableop_resource:	?
identity??$lstm_cell_772/BiasAdd/ReadVariableOp?#lstm_cell_772/MatMul/ReadVariableOp?%lstm_cell_772/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_772/MatMul/ReadVariableOpReadVariableOp,lstm_cell_772_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_772/MatMulMatMulstrided_slice_2:output:0+lstm_cell_772/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_772/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_772_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_772/MatMul_1MatMulzeros:output:0-lstm_cell_772/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_772/addAddV2lstm_cell_772/MatMul:product:0 lstm_cell_772/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_772/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_772_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_772/BiasAddBiasAddlstm_cell_772/add:z:0,lstm_cell_772/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_772/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_772/splitSplit&lstm_cell_772/split/split_dim:output:0lstm_cell_772/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_772/SigmoidSigmoidlstm_cell_772/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_1Sigmoidlstm_cell_772/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_772/mulMullstm_cell_772/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_772/ReluRelulstm_cell_772/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_1Mullstm_cell_772/Sigmoid:y:0 lstm_cell_772/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_772/add_1AddV2lstm_cell_772/mul:z:0lstm_cell_772/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_772/Sigmoid_2Sigmoidlstm_cell_772/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_772/Relu_1Relulstm_cell_772/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_772/mul_2Mullstm_cell_772/Sigmoid_2:y:0"lstm_cell_772/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_772_matmul_readvariableop_resource.lstm_cell_772_matmul_1_readvariableop_resource-lstm_cell_772_biasadd_readvariableop_resource*
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
while_body_4724770*
condR
while_cond_4724769*K
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
NoOpNoOp%^lstm_cell_772/BiasAdd/ReadVariableOp$^lstm_cell_772/MatMul/ReadVariableOp&^lstm_cell_772/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_772/BiasAdd/ReadVariableOp$lstm_cell_772/BiasAdd/ReadVariableOp2J
#lstm_cell_772/MatMul/ReadVariableOp#lstm_cell_772/MatMul/ReadVariableOp2N
%lstm_cell_772/MatMul_1/ReadVariableOp%lstm_cell_772/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4725385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4725385___redundant_placeholder05
1while_while_cond_4725385___redundant_placeholder15
1while_while_cond_4725385___redundant_placeholder25
1while_while_cond_4725385___redundant_placeholder3
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
/__inference_lstm_cell_771_layer_call_fn_4725523

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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4720667o
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
while_cond_4721568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4721568___redundant_placeholder05
1while_while_cond_4721568___redundant_placeholder15
1while_while_cond_4721568___redundant_placeholder25
1while_while_cond_4721568___redundant_placeholder3
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
lstm_771_input;
 serving_default_lstm_771_input:0?????????=
	dense_2570
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
2dense_257/kernel
:2dense_257/bias
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
0:.	?2lstm_771/lstm_cell_771/kernel
::8	d?2'lstm_771/lstm_cell_771/recurrent_kernel
*:(?2lstm_771/lstm_cell_771/bias
0:.	d?2lstm_772/lstm_cell_772/kernel
::8	2?2'lstm_772/lstm_cell_772/recurrent_kernel
*:(?2lstm_772/lstm_cell_772/bias
/:-2(2lstm_773/lstm_cell_773/kernel
9:7
(2'lstm_773/lstm_cell_773/recurrent_kernel
):'(2lstm_773/lstm_cell_773/bias
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
2Adam/dense_257/kernel/m
!:2Adam/dense_257/bias/m
5:3	?2$Adam/lstm_771/lstm_cell_771/kernel/m
?:=	d?2.Adam/lstm_771/lstm_cell_771/recurrent_kernel/m
/:-?2"Adam/lstm_771/lstm_cell_771/bias/m
5:3	d?2$Adam/lstm_772/lstm_cell_772/kernel/m
?:=	2?2.Adam/lstm_772/lstm_cell_772/recurrent_kernel/m
/:-?2"Adam/lstm_772/lstm_cell_772/bias/m
4:22(2$Adam/lstm_773/lstm_cell_773/kernel/m
>:<
(2.Adam/lstm_773/lstm_cell_773/recurrent_kernel/m
.:,(2"Adam/lstm_773/lstm_cell_773/bias/m
':%
2Adam/dense_257/kernel/v
!:2Adam/dense_257/bias/v
5:3	?2$Adam/lstm_771/lstm_cell_771/kernel/v
?:=	d?2.Adam/lstm_771/lstm_cell_771/recurrent_kernel/v
/:-?2"Adam/lstm_771/lstm_cell_771/bias/v
5:3	d?2$Adam/lstm_772/lstm_cell_772/kernel/v
?:=	2?2.Adam/lstm_772/lstm_cell_772/recurrent_kernel/v
/:-?2"Adam/lstm_772/lstm_cell_772/bias/v
4:22(2$Adam/lstm_773/lstm_cell_773/kernel/v
>:<
(2.Adam/lstm_773/lstm_cell_773/recurrent_kernel/v
.:,(2"Adam/lstm_773/lstm_cell_773/bias/v
?2?
0__inference_sequential_257_layer_call_fn_4722003
0__inference_sequential_257_layer_call_fn_4722741
0__inference_sequential_257_layer_call_fn_4722768
0__inference_sequential_257_layer_call_fn_4722619?
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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4723195
K__inference_sequential_257_layer_call_and_return_conditional_losses_4723622
K__inference_sequential_257_layer_call_and_return_conditional_losses_4722649
K__inference_sequential_257_layer_call_and_return_conditional_losses_4722679?
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
"__inference__wrapped_model_4720454lstm_771_input"?
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
*__inference_lstm_771_layer_call_fn_4723633
*__inference_lstm_771_layer_call_fn_4723644
*__inference_lstm_771_layer_call_fn_4723655
*__inference_lstm_771_layer_call_fn_4723666?
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4723809
E__inference_lstm_771_layer_call_and_return_conditional_losses_4723952
E__inference_lstm_771_layer_call_and_return_conditional_losses_4724095
E__inference_lstm_771_layer_call_and_return_conditional_losses_4724238?
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
*__inference_lstm_772_layer_call_fn_4724249
*__inference_lstm_772_layer_call_fn_4724260
*__inference_lstm_772_layer_call_fn_4724271
*__inference_lstm_772_layer_call_fn_4724282?
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724425
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724568
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724711
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724854?
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
*__inference_lstm_773_layer_call_fn_4724865
*__inference_lstm_773_layer_call_fn_4724876
*__inference_lstm_773_layer_call_fn_4724887
*__inference_lstm_773_layer_call_fn_4724898?
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725041
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725184
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725327
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725470?
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
+__inference_dense_257_layer_call_fn_4725479?
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
F__inference_dense_257_layer_call_and_return_conditional_losses_4725489?
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
%__inference_signature_wrapper_4722714lstm_771_input"?
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
/__inference_lstm_cell_771_layer_call_fn_4725506
/__inference_lstm_cell_771_layer_call_fn_4725523?
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4725555
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4725587?
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
/__inference_lstm_cell_772_layer_call_fn_4725604
/__inference_lstm_cell_772_layer_call_fn_4725621?
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4725653
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4725685?
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
/__inference_lstm_cell_773_layer_call_fn_4725702
/__inference_lstm_cell_773_layer_call_fn_4725719?
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4725751
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4725783?
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
"__inference__wrapped_model_4720454?()*+,-./0;?8
1?.
,?)
lstm_771_input?????????
? "5?2
0
	dense_257#? 
	dense_257??????????
F__inference_dense_257_layer_call_and_return_conditional_losses_4725489\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_257_layer_call_fn_4725479O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_771_layer_call_and_return_conditional_losses_4723809?()*O?L
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4723952?()*O?L
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4724095q()*??<
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
E__inference_lstm_771_layer_call_and_return_conditional_losses_4724238q()*??<
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
*__inference_lstm_771_layer_call_fn_4723633}()*O?L
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
*__inference_lstm_771_layer_call_fn_4723644}()*O?L
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
*__inference_lstm_771_layer_call_fn_4723655d()*??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_771_layer_call_fn_4723666d()*??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724425?+,-O?L
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724568?+,-O?L
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724711q+,-??<
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
E__inference_lstm_772_layer_call_and_return_conditional_losses_4724854q+,-??<
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
*__inference_lstm_772_layer_call_fn_4724249}+,-O?L
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
*__inference_lstm_772_layer_call_fn_4724260}+,-O?L
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
*__inference_lstm_772_layer_call_fn_4724271d+,-??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_772_layer_call_fn_4724282d+,-??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725041}./0O?L
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725184}./0O?L
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725327m./0??<
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
E__inference_lstm_773_layer_call_and_return_conditional_losses_4725470m./0??<
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
*__inference_lstm_773_layer_call_fn_4724865p./0O?L
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
*__inference_lstm_773_layer_call_fn_4724876p./0O?L
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
*__inference_lstm_773_layer_call_fn_4724887`./0??<
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
*__inference_lstm_773_layer_call_fn_4724898`./0??<
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4725555?()*??}
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
J__inference_lstm_cell_771_layer_call_and_return_conditional_losses_4725587?()*??}
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
/__inference_lstm_cell_771_layer_call_fn_4725506?()*??}
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
/__inference_lstm_cell_771_layer_call_fn_4725523?()*??}
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4725653?+,-??}
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
J__inference_lstm_cell_772_layer_call_and_return_conditional_losses_4725685?+,-??}
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
/__inference_lstm_cell_772_layer_call_fn_4725604?+,-??}
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
/__inference_lstm_cell_772_layer_call_fn_4725621?+,-??}
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4725751?./0??}
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
J__inference_lstm_cell_773_layer_call_and_return_conditional_losses_4725783?./0??}
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
/__inference_lstm_cell_773_layer_call_fn_4725702?./0??}
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
/__inference_lstm_cell_773_layer_call_fn_4725719?./0??}
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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4722649y()*+,-./0C?@
9?6
,?)
lstm_771_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_257_layer_call_and_return_conditional_losses_4722679y()*+,-./0C?@
9?6
,?)
lstm_771_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_257_layer_call_and_return_conditional_losses_4723195q()*+,-./0;?8
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
K__inference_sequential_257_layer_call_and_return_conditional_losses_4723622q()*+,-./0;?8
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
0__inference_sequential_257_layer_call_fn_4722003l()*+,-./0C?@
9?6
,?)
lstm_771_input?????????
p 

 
? "???????????
0__inference_sequential_257_layer_call_fn_4722619l()*+,-./0C?@
9?6
,?)
lstm_771_input?????????
p

 
? "???????????
0__inference_sequential_257_layer_call_fn_4722741d()*+,-./0;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_257_layer_call_fn_4722768d()*+,-./0;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4722714?()*+,-./0M?J
? 
C?@
>
lstm_771_input,?)
lstm_771_input?????????"5?2
0
	dense_257#? 
	dense_257?????????